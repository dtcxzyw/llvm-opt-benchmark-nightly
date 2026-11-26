Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7set_one

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History3new(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_7History15resolve_pending(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish12env_dispatch40handle_fish_cursor_selection_mode_change(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish12env_dispatch34handle_fish_cursor_end_mode_change(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtCs8frGy5WneL6_4fish6parserNtB6_6Parser10push_scopeNCNvNtNtB8_6reader6reader11reader_read0EB8_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish6signal24signal_set_handlers_once(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish11tty_handoff24deactivate_tty_protocols() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common46restore_term_foreground_process_group_for_exit() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs0_NtCs8frGy5WneL6_4fish8terminalNtB5_17BufferedOutputter3new(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer6readchB8_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(176)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish6common16get_program_name() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish3ast5parse(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i48, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsz_NtCs8frGy5WneL6_4fish3astNtB5_3Ast4walkB7_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange6length(i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish10parse_util21locate_cmdsubst_range(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8), i1 noundef zeroext, ptr noalias nofree noundef dereferenceable_or_null(1), ptr noalias nofree noundef dereferenceable_or_null(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end(i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal6parent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node10as_keywordB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node8as_tokenB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node7as_leafB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node8describeB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node16try_source_rangeB6_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node12source_rangeB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node10try_sourceB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Node6sourceB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCse7JGOylGlDZ_3nix3sys7termiosNtB4_7TermiosINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu7termiosE4from(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(60)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs8frGy5WneL6_4fish5abbrsNtB4_11Replacement3new(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i32 noundef, i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtCs8frGy5WneL6_4fish6parserNtB6_6Parser10push_scopeNCNvNtNtB8_6reader6reader15expand_replacer0EB8_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvCsbHolxaesP1E_18fish_feature_flags12feature_test(i8 noundef range(i8 0, 10)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6screen7is_dumb() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvNtCs8frGy5WneL6_4fish10parse_util19detect_parse_errors(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable_or_null(24), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser13get_backtrace(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish9tokenizer11tok_command(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXss_Cskr4qsHYS30i_15fish_widestringoNtB5_9ToWString10to_wstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus10is_success(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish4proc19proc_update_jiffies(ptr noalias nofree noundef align 8 dereferenceable(432)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs5_NtCs8frGy5WneL6_4fish6parserNtB6_6Parser10push_scopeNCNvNtNtB8_6reader6reader18reader_write_title0EB8_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter11write_bytes(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @getpid() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish6signal21signal_reset_handlers() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @tcsetpgrp(i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs3pTQYeTDvAj_9fish_util6perror(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common24exit_without_destructors(i32 noundef) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 -1, 134) i32 @_RINvNtNtCse7JGOylGlDZ_3nix3sys6signal6killpgNtB2_6SignalECs8frGy5WneL6_4fish(i32 noundef, i32 noundef range(i32 1, 32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @setpgid(i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCs8frGy5WneL6_4fish8wildcard12wildcard_hasRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i32, i8 } @_RNvNtCs8frGy5WneL6_4fish6expand13expand_string(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i16 noundef, ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common13escape_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 4), i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_13HistorySearch16go_to_next_match(ptr noalias nofree noundef align 8 dereferenceable(208), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish10parse_util18contains_wildcards(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_13HistorySearch14search_forward(ptr noalias nofree noundef align 8 dereferenceable(208), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_13HistorySearch12current_item(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion3new(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i24, i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i16, i16 } @_RNvNtCs8frGy5WneL6_4fish8termsize15termsize_update(ptr noalias nofree noundef align 8 dereferenceable(432)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack8snapshot(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withRNtNtB7_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openReECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @dup2(i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @kill(i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef ptr @ctermid(ptr noundef) unnamed_addr #32

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) unnamed_addr #32

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) unnamed_addr #32

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs8frGy5WneL6_4fish6reader6reader16CommandlineStateE4lockB13_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5UXtnEuoeIl_11fish_common24escape_string_with_quote(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32 noundef range(i32 -1, 1114112), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish9tokenizer30variable_assignment_equals_pos(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvCskeBJdk8gjxq_17fish_wcstringutil9is_prefixNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4skip4SkipBJ_EECs8frGy5WneL6_4fish(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvCskeBJdk8gjxq_17fish_wcstringutil9is_prefixINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseEINtNtNtNtB2K_4iter8adapters4skip4SkipBJ_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvCskeBJdk8gjxq_17fish_wcstringutil22string_prefixes_string(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvCskeBJdk8gjxq_17fish_wcstringutil39string_prefixes_string_case_insensitive(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange18contains_inclusive(i32 noundef, i32 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish5abbrs11abbrs_match(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser13is_breakpoint(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8frGy5WneL6_4fish7history7history10history_id(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish6signal19signal_clear_cancel() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser11last_status(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs8frGy5WneL6_4fish6screenNtB5_6Screen13write_command(ptr noalias nofree noundef align 8 dereferenceable(256), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish4proc8hup_jobs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8frGy5WneL6_4fish5wutil5fstatlEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCse7JGOylGlDZ_3nix6unistd4readNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned10BorrowedFdECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i32 noundef range(i32 0, -1), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9eval_wstr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(432), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), i8 noundef range(i8 0, 14)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtCs8frGy5WneL6_4fish3fds16make_fd_blocking(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish9tokenizer9quote_end(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id15init_not_called() unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCs8frGy5WneL6_4fish5input7binding19input_get_bind_mode(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish10fd_monitorNtB2_16FdEventSignaller11try_consume(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8frGy5WneL6_4fish5event12fire_delayed(ptr noalias nofree noundef align 8 dereferenceable(432)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser19sync_uvars_and_fire(ptr noalias nofree noundef align 8 dereferenceable(432), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #33

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRtNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtB6_5ErrorNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_4Leaf10has_sourceB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish3ast7String_NtB4_5Token12allows_tokenB6_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), i8 noundef range(i8 1, 15)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 -1, 1114112) i32 @_RNvMs0_NtCs3oUPovFnLWP_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedE4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_CshLzK7otsFCg_5errnoNtB4_5ErrnoNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCse7JGOylGlDZ_3nix5errnoNtNtB5_6consts5ErrnoNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataINtNtB7_5boxed3BoxDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTQL1_INtNtNtB1C_6reader6reader6ReaderL0_EEEp6OutputuNtNtB2T_6marker4SendEL_EEEE9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader15HighlightResultEEE9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader20AutosuggestionResultEEE9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #27

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
end_hunk_0
