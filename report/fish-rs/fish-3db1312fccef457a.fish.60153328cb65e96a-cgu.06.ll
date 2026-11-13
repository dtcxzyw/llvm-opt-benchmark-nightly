Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.06?download=true
inline.NumInlined: 2312
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 35
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB11_8peekable8PeekableINtNtB11_6copied6CopiedINtNtNtB15_5slice4iter4ItercEEENCINvNtB4_6wcstod18wcstod_underscoresRScE0EEB6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1891
  store i32 %i.eb, ptr %i.a, align 4, !noalias !1893
  %i.ec = call noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0INtB7_5FnMutTRcEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1891
  br i1 %i.ec, label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_6filter6FilterIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0B2x_.exit.i168.peel, label %._crit_edge.i.i.i.i.i170.peel

._crit_edge.i.i.i.i.i170.peel:                    ; preds = %bb.be
  %.pre.i.i.i.i.i171.peel = load ptr, ptr %i.b, align 8, !noalias !1891
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i170.peel, %bb.bd
  %i.ed = phi ptr [ %.pre.i.i.i.i.i171.peel, %._crit_edge.i.i.i.i.i170.peel ], [ %i.r, %bb.bd ]
  %i.ee = call noundef i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0INtNtNtBb_3ops12control_flow11ControlFlowcEEB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull %i.ed), !noalias !1895
  br label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_6filter6FilterIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0B2x_.exit.i168.peel

_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_6filter6FilterIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0B2x_.exit.i168.peel: ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.0.1.i.i.i.i.i169.peel = phi i32 [ %i.ee, %bb.bf ], [ %i.eb, %bb.bd ], [ %i.eb, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1890
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel.sink.split

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel.sink.split: ; preds = %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_6filter6FilterIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0B2x_.exit.i168.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162.thread
  %.sink = phi i32 [ -1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162.thread ], [ %.sroa.0.1.i.i.i.i.i169.peel, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_6filter6FilterIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0B2x_.exit.i168.peel ] ; 2 uses
  %.sroa.0.7374.ph = phi i64 [ %i.ds, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162.thread ], [ %i.dy, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_6filter6FilterIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0B2x_.exit.i168.peel ]
  %.sroa.041.1373.ph = phi i1 [ false, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162.thread ], [ %i.ea, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_6filter6FilterIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0B2x_.exit.i168.peel ]
  store i32 %.sink, ptr %i.r, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel.sink.split, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162
  %.sroa.0.7374 = phi i64 [ %i.ds, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162 ], [ %.sroa.0.7374.ph, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel.sink.split ] ; 3 uses
  %.sroa.041.1373 = phi i1 [ false, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162 ], [ %.sroa.041.1373.ph, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel.sink.split ]
  %i.ef = phi i32 [ %.sroa.0.1.i.i.i.i.i159, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit162 ], [ %.sink, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel.sink.split ] ; 2 uses
  %.not97.peel = icmp eq i32 %i.ef, -1
  br i1 %.not97.peel, label %.loopexit294.thread, label %bb.bg

bb.bg:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel
  %i.eg = add nsw i32 %i.ef, -48                  ; 2 uses
  %i.eh = icmp ult i32 %i.eg, 10
  br i1 %i.eh, label %bb.bh, label %.loopexit294.thread

bb.bh:                                            ; preds = %bb.bg
  %i.ei = icmp eq i64 %.sroa.0.7374, -1
  br i1 %i.ei, label %.loopexit295, label %.peel.next291

.peel.next291:                                    ; preds = %bb.bh, %bb.bn
  %.sroa.049.0 = phi i32 [ %i.ev, %bb.bn ], [ %i.eg, %bb.bh ] ; 5 uses
  %.sroa.0.8.in = phi i64 [ %.sroa.0.8, %bb.bn ], [ %.sroa.0.7374, %bb.bh ]
  %.sroa.0.8 = add nuw i64 %.sroa.0.8.in, 1       ; 5 uses
  store i32 -2, ptr %i.r, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1902
  store ptr %i.r, ptr %i.b, align 8, !noalias !1903
  %i.ej = load i32, ptr %i.s, align 8, !range !16, !alias.scope !1904, !noundef !10 ; 4 uses
  store i32 -2, ptr %i.s, align 8, !alias.scope !1904
  switch i32 %i.ej, label %bb.bi [
    i32 -2, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172
    i32 -1, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.thread
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.thread: ; preds = %.peel.next291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1902
  store i32 -1, ptr %i.r, align 8, !alias.scope !1896
  br label %.loopexit294

bb.bi:                                            ; preds = %.peel.next291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1903
  store i32 %i.ej, ptr %i.a, align 4, !noalias !1905
  %i.ek = call noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0INtB7_5FnMutTRcEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1903
  br i1 %i.ek, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.thread377, label %._crit_edge.i.i.i.i.i170

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.thread377: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1902
  store i32 %i.ej, ptr %i.r, align 8, !alias.scope !1896
  br label %bb.bj

._crit_edge.i.i.i.i.i170:                         ; preds = %bb.bi
  %.pre.i.i.i.i.i171 = load ptr, ptr %i.b, align 8, !noalias !1903
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172: ; preds = %.peel.next291, %._crit_edge.i.i.i.i.i170
  %i.el = phi ptr [ %.pre.i.i.i.i.i171, %._crit_edge.i.i.i.i.i170 ], [ %i.r, %.peel.next291 ]
  %i.em = call noundef i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0INtNtNtBb_3ops12control_flow11ControlFlowcEEB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull %i.el), !noalias !1896 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1902
  store i32 %i.em, ptr %i.r, align 8, !alias.scope !1896
  %.not97 = icmp eq i32 %i.em, -1
  br i1 %.not97, label %.loopexit294, label %bb.bj

bb.bj:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.thread377, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172
  %.sroa.0.1.i.i.i.i.i169380 = phi i32 [ %i.ej, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.thread377 ], [ %i.em, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172 ]
  %i.en = add nsw i32 %.sroa.0.1.i.i.i.i.i169380, -48 ; 2 uses
  %i.eo = icmp ult i32 %i.en, 10
  br i1 %i.eo, label %bb.bk, label %.loopexit294

.loopexit294:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172, %bb.bj, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.thread
  %i.ep = icmp eq i64 %.sroa.0.8, %.sroa.0.7374
  br i1 %i.ep, label %.loopexit294.thread, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.eq = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.049.0, i32 10) ; 2 uses
  %i.er = extractvalue { i32, i1 } %i.eq, 0
  %i.es = extractvalue { i32, i1 } %i.eq, 1
  br i1 %i.es, label %bb.bl, label %bb.bm, !prof !27

bb.bl:                                            ; preds = %bb.bk
  %i.et = icmp sgt i32 %.sroa.049.0, -1
  %. = select i1 %i.et, i32 2147483647, i32 -2147483648
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.066.0 = phi i32 [ %i.er, %bb.bk ], [ %., %bb.bl ]
  %i.eu = icmp eq i64 %.sroa.0.8, -1
  br i1 %i.eu, label %.loopexit295, label %bb.bn

.loopexit295:                                     ; preds = %bb.bm, %bb.bh
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #40
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.ev = call i32 @llvm.sadd.sat.i32(i32 %.sroa.066.0, i32 %i.en)
  br label %.peel.next291, !llvm.loop !1789

bb.bo:                                            ; preds = %.loopexit294
  br i1 %.sroa.041.1373, label %bb.bp, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152.thread

bb.bp:                                            ; preds = %bb.bo
  %i.ew = icmp eq i32 %.sroa.049.0, -2147483648
  br i1 %i.ew, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ex = sub nsw i32 0, %.sroa.049.0
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152.thread

bb.br:                                            ; preds = %bb.bp
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #40
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.peel.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152, %bb.bo, %bb.bq
  %.sroa.0188.1356367 = phi i64 [ %.sroa.0188.1356, %bb.bo ], [ %.sroa.0188.1356, %bb.bq ], [ %.sroa.0188.1356, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152 ], [ %.sroa.0188.0.lcssa329342, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.peel.thread ], [ %.sroa.0188.2.ph465, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.thread ], [ %.sroa.0188.2.ph465, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139 ] ; 3 uses
  %.sroa.049.1 = phi i32 [ %.sroa.049.0, %bb.bo ], [ %i.ex, %bb.bq ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152 ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.peel.thread ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.thread ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139 ] ; 3 uses
  %.sroa.0.9 = phi i64 [ %.sroa.0.8, %bb.bo ], [ %.sroa.0.8, %bb.bq ], [ %.sroa.0.5357, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152 ], [ %.sroa.0.6.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.peel.thread ], [ %.sroa.0.6, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.thread ], [ %.sroa.0.6, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139 ]
  %i.ey = icmp eq i64 %.sroa.0188.1356367, 0
  br i1 %i.ey, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152.thread
  %i.ez = call double @llvm.copysign.f64(double 0.000000e+00, double %.sroa.023.0201217)
  br label %.loopexit294.thread.sink.split

bb.bt:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit152.thread
  %i.fa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0188.1356367, i1 true) ; 2 uses
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = shl i64 %.sroa.0188.1356367, %i.fa      ; 4 uses
  %i.fd = and i64 %i.fc, 2047
  %i.fe = and i64 %i.fc, -2048                    ; 2 uses
  %i.ff = icmp samesign ugt i64 %i.fd, 1024
  %i.fg = and i64 %i.fc, 4095
  %or.cond103.not = icmp eq i64 %i.fg, 3072
  %or.cond230 = or i1 %i.ff, %or.cond103.not
  br i1 %or.cond230, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.fh = icmp ugt i64 %i.fc, -2049
  br i1 %i.fh, label %bb.bx, label %bb.bw, !prof !27

bb.bv:                                            ; preds = %bb.bt, %bb.bw, %bb.bx
  %.sroa.0188.3 = phi i64 [ %i.fe, %bb.bt ], [ 1, %bb.bx ], [ %i.fk, %bb.bw ]
  %.sroa.049.2 = phi i32 [ %.sroa.049.1, %bb.bt ], [ %i.fl, %bb.bx ], [ %.sroa.049.1, %bb.bw ]
  %i.fi = extractvalue { i32, i1 } %.sroa.032.0, 0
  %i.fj = extractvalue { i32, i1 } %.sroa.032.0, 1
  br i1 %i.fj, label %bb.by, label %bb.bz, !prof !27

bb.bw:                                            ; preds = %bb.bu
  %i.fk = add nuw i64 %i.fe, 2048
  br label %bb.bv

bb.bx:                                            ; preds = %bb.bu
  %i.fl = call i32 @llvm.sadd.sat.i32(i32 %.sroa.049.1, i32 1)
  br label %bb.bv

bb.by:                                            ; preds = %bb.bv
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bv, %bb.by
  %.sroa.067.0 = phi i32 [ 2147483647, %bb.by ], [ %i.fi, %bb.bv ]
  %i.fm = add nuw nsw i32 %i.fb, 1
  %i.fn = call i32 @llvm.sadd.sat.i32(i32 %.sroa.067.0, i32 %.sroa.049.2)
  %i.fo = call i32 @llvm.ssub.sat.i32(i32 %i.fn, i32 %i.fm) ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1023
  br i1 %i.fp, label %bb.ca, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.ca:                                            ; preds = %bb.bz
  %i.fq = call double @llvm.copysign.f64(double +inf, double %.sroa.023.0201217)
  br label %.loopexit294.thread.sink.split

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.bz
  %i.fr = call i32 @llvm.smin.i32(i32 %i.fo, i32 -1022) ; 2 uses
  %..i = add nsw i32 %i.fr, 1022
  %..i179 = call noundef range(i32 -1022, 1024) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 1024) %i.fo, i32 -1022)
  %i.fs = add nsw i32 %..i179, 1023
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 52
  %i.fv = lshr i64 %.sroa.0188.3, 11
  %i.fw = and i64 %i.fv, 4503599627370495
  %i.fx = or i64 %i.fw, %.sroa.017.2203215
  %i.fy = or i64 %i.fx, %i.fu                     ; 2 uses
  %i.fz = icmp samesign ult i32 %i.fr, -1022
  %3 = call double @llvm.powi.f64.i32(double 2.000000e+00, i32 %..i)
  %4 = bitcast i64 %i.fy to double
  %5 = fmul double %3, %4
  %6 = bitcast double %5 to i64
  %.sroa.056.0 = select i1 %i.fz, i64 %6, i64 %i.fy
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.056.0, ptr %7, align 8
  br label %.loopexit294.thread.sink.split423

.loopexit294.thread.sink.split423:                ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %.loopexit294.thread.sink.split
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.9, ptr %i.ga, align 8
  br label %.loopexit294.thread

.loopexit294.thread:                              ; preds = %.loopexit294.thread.sink.split423, %bb.m, %bb.l, %bb.k, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.peel.thread, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableINtNtB8_6filter6FilterIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE7next_ifNCINvB2_10next_if_eqcE0EB2w_.exit133.thread, %.loopexit, %bb.bg, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel, %.loopexit294
  %.sink.sink = phi i64 [ 1, %bb.bg ], [ 1, %bb.k ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit172.peel ], [ 1, %.loopexit294 ], [ 1, %.loopexit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_6filter6FilterIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE4peek0EB3v_.exit139.peel.thread ], [ 1, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableINtNtB8_6filter6FilterIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE7next_ifNCINvB2_10next_if_eqcE0EB2w_.exit133.thread ], [ 0, %.loopexit294.thread.sink.split423 ]
  store i64 %.sink.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.loopexit294.thread.sink.split:                   ; preds = %bb.bs, %bb.ca
  %.sink421 = phi double [ %i.fq, %bb.ca ], [ %i.ez, %bb.bs ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink421, ptr %i.gb, align 8
  br label %.loopexit294.thread.sink.split423

.loopexit278:                                     ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableINtNtB8_6filter6FilterIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EE7next_ifNCINvB2_10next_if_eqcE0EB2w_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtB11_6copied6CopiedINtNtNtB15_5slice4iter4ItercEEEEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1970
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 23 uses
  store i32 -2, ptr %i.b, align 8, !alias.scope !1971
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 22 uses
  %i.d = load i32, ptr %i.c, align 8, !range !16, !alias.scope !1972, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1972
  %.not.i.i.i = icmp eq i32 %i.d, -2
  br i1 %.not.i.i.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1973
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  switch i32 %.sroa.0.0.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108.thread [
    i32 45, label %bb.c
    i32 43, label %bb.c
  ]

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit
  %i.f = icmp eq i32 %.sroa.0.0.i.i.i, 45         ; 2 uses
  %.sroa.023.0.ph = select i1 %i.f, double -1.000000e+00, double 1.000000e+00 ; 3 uses
  %.sroa.017.2.ph = select i1 %i.f, i64 -9223372036854775808, i64 0 ; 3 uses
  store i32 -2, ptr %i.b, align 8
  %i.g = load i32, ptr %i.c, align 8, !range !16, !alias.scope !1974, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1974
  %.not.i106 = icmp eq i32 %i.g, -2
  br i1 %.not.i106, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108, label %.thread

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit
  store i32 -2, ptr %i.b, align 8
  br label %bb.d

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108: ; preds = %bb.c
  %i.h = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %.pr.pre = load i32, ptr %i.b, align 8          ; 2 uses
  store i32 -2, ptr %i.b, align 8
  %.not86 = icmp eq i32 %.pr.pre, -2
  br i1 %.not86, label %bb.d, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit111

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108.thread, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108
  %.sroa.025.0206.ph = phi i32 [ %i.h, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ %.sroa.0.0.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108.thread ] ; 2 uses
  %.sroa.023.0188204.ph = phi double [ %.sroa.023.0.ph, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ 1.000000e+00, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108.thread ] ; 2 uses
  %.sroa.017.2190202.ph = phi i64 [ %.sroa.017.2.ph, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108.thread ] ; 2 uses
  %.sroa.0.2192200.ph = phi i64 [ 3, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108.thread ] ; 2 uses
  %.pr = load i32, ptr %i.c, align 8, !alias.scope !1975 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1975
  %.not.i109 = icmp eq i32 %.pr, -2
  br i1 %.not.i109, label %.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit111

.thread:                                          ; preds = %bb.c, %bb.d
  %.sroa.0.2192200328 = phi i64 [ %.sroa.0.2192200.ph, %bb.d ], [ 3, %bb.c ]
  %.sroa.017.2190202327 = phi i64 [ %.sroa.017.2190202.ph, %bb.d ], [ %.sroa.017.2.ph, %bb.c ]
  %.sroa.023.0188204326 = phi double [ %.sroa.023.0188204.ph, %bb.d ], [ %.sroa.023.0.ph, %bb.c ]
  %.sroa.025.0206325 = phi i32 [ %.sroa.025.0206.ph, %bb.d ], [ %i.g, %bb.c ]
  %i.i = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit111

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit111: ; preds = %.thread, %bb.d, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108
  %.sroa.025.0205 = phi i32 [ %i.h, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ %.sroa.025.0206.ph, %bb.d ], [ %.sroa.025.0206325, %.thread ] ; 2 uses
  %.sroa.023.0188203 = phi double [ %.sroa.023.0.ph, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ %.sroa.023.0188204.ph, %bb.d ], [ %.sroa.023.0188204326, %.thread ] ; 2 uses
  %.sroa.017.2190201 = phi i64 [ %.sroa.017.2.ph, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ %.sroa.017.2190202.ph, %bb.d ], [ %.sroa.017.2190202327, %.thread ]
  %.sroa.0.2192199 = phi i64 [ 3, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ %.sroa.0.2192200.ph, %bb.d ], [ %.sroa.0.2192200328, %.thread ] ; 2 uses
  %.sroa.027.0 = phi i32 [ %.pr.pre, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit108 ], [ %.pr, %bb.d ], [ %i.i, %.thread ] ; 2 uses
  %.not87 = icmp eq i32 %.sroa.025.0205, -1
  br i1 %.not87, label %.loopexit280.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit111
  %i.j = icmp ne i32 %.sroa.027.0, -1
  %i.k = icmp eq i32 %.sroa.025.0205, 48
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.f, label %.loopexit280.thread

bb.f:                                             ; preds = %bb.e
  switch i32 %.sroa.027.0, label %.loopexit280.thread [
    i32 120, label %.peel.begin
    i32 88, label %.peel.begin
  ]

.peel.begin:                                      ; preds = %bb.f, %bb.f
  %i.l = load i32, ptr %i.b, align 8, !range !16, !alias.scope !1976, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.b, align 8, !alias.scope !1976
  %.not.i112.peel = icmp eq i32 %i.l, -2
  br i1 %.not.i112.peel, label %bb.g, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel

bb.g:                                             ; preds = %.peel.begin
  %i.m = load i32, ptr %i.c, align 8, !range !16, !alias.scope !1977, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1977
  %.not.i.i.peel = icmp eq i32 %i.m, -2
  br i1 %.not.i.i.peel, label %bb.h, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel

bb.h:                                             ; preds = %bb.g
  %i.n = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel: ; preds = %bb.h, %bb.g, %.peel.begin
  %i.o = phi i32 [ %i.l, %.peel.begin ], [ %i.n, %bb.h ], [ %i.m, %bb.g ] ; 2 uses
  %cond.peel = icmp eq i32 %i.o, 48               ; 3 uses
  br i1 %cond.peel, label %.peel.next, label %.loopexit263

.peel.next:                                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEEE7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit
  %.sroa.0.3.in = phi i64 [ %.sroa.0.3, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEEE7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit ], [ %.sroa.0.2192199, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel ]
  %.sroa.0.3 = add nuw i64 %.sroa.0.3.in, 1       ; 3 uses
  %i.p = load i32, ptr %i.b, align 8, !range !16, !alias.scope !1976, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.b, align 8, !alias.scope !1976
  %.not.i112 = icmp eq i32 %i.p, -2
  br i1 %.not.i112, label %bb.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i

bb.i:                                             ; preds = %.peel.next
  %i.q = load i32, ptr %i.c, align 8, !range !16, !alias.scope !1977, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1977
  %.not.i.i = icmp eq i32 %i.q, -2
  br i1 %.not.i.i, label %bb.j, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i

bb.j:                                             ; preds = %bb.i
  %i.r = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j, %bb.i, %.peel.next
  %i.s = phi i32 [ %i.p, %.peel.next ], [ %i.r, %bb.j ], [ %i.q, %bb.i ] ; 2 uses
  %cond = icmp eq i32 %i.s, 48
  br i1 %cond, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEEE7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit, label %.loopexit263

.loopexit263:                                     ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel
  %.pr210.peel = phi i32 [ %i.o, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel ], [ %i.s, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i ] ; 6 uses
  %.sroa.0.3.lcssa = phi i64 [ %.sroa.0.2192199, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.peel ], [ %.sroa.0.3, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i ] ; 6 uses
  %i.t = load i32, ptr %i.b, align 8, !range !16, !alias.scope !1976, !noundef !10
  %.not8.i = icmp eq i32 %i.t, -2
  br i1 %.not8.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit118.peel, label %bb.m, !prof !17

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit118.peel: ; preds = %.loopexit263
  store i32 %.pr210.peel, ptr %i.b, align 8
  %.not89.peel = icmp eq i32 %.pr210.peel, -1
  br i1 %.not89.peel, label %.thread339, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit118.peel
  %i.u = icmp samesign ugt i32 %.pr210.peel, 57
  %i.v = add nsw i32 %.pr210.peel, -65
  %i.w = and i32 %i.v, -33
  %i.x = add nuw nsw i32 %i.w, 10
  %i.y = add nsw i32 %.pr210.peel, -48
  %.sroa.02.0.i.peel = select i1 %i.u, i32 %i.x, i32 %i.y ; 2 uses
  %i.z = icmp ult i32 %.sroa.02.0.i.peel, 16
  br i1 %i.z, label %bb.l, label %.thread339

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %.sroa.0.3.lcssa, -1
  br i1 %i.aa, label %.loopexit269, label %.peel.next266

.peel.next266:                                    ; preds = %bb.l
  %i.ab = zext nneg i32 %.sroa.02.0.i.peel to i64
  %i.ac = shl nuw i64 %i.ab, 60
  br label %.outer

.outer:                                           ; preds = %bb.t, %.peel.next266
  %.sroa.0181.0.ph = phi i32 [ %i.ap, %bb.t ], [ 60, %.peel.next266 ] ; 4 uses
  %.sroa.0176.0.ph = phi i64 [ %i.au, %bb.t ], [ %i.ac, %.peel.next266 ] ; 3 uses
  %.sroa.0.4.in.ph = phi i64 [ %.sroa.0.4, %bb.t ], [ %.sroa.0.3.lcssa, %.peel.next266 ]
  %i.ad = icmp sgt i32 %.sroa.0181.0.ph, 0
  br label %bb.n

bb.m:                                             ; preds = %.loopexit263
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #40
  unreachable

_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEEE7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i
  %i.ae = icmp eq i64 %.sroa.0.3, -1
  br i1 %i.ae, label %.loopexit264, label %.peel.next, !llvm.loop !1925

bb.n:                                             ; preds = %.outer, %bb.r
  %.sroa.0.4.in = phi i64 [ %.sroa.0.4, %bb.r ], [ %.sroa.0.4.in.ph, %.outer ]
  %.sroa.0.4 = add nuw i64 %.sroa.0.4.in, 1       ; 7 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtB11_6copied6CopiedINtNtNtB15_5slice4iter4ItercEEEEB6_:bb.a
bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  %i.cm = load i32, ptr %i.c, align 8, !range !16, !alias.scope !1992, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1992
  %.not.i.i.i150 = icmp eq i32 %i.cm, -2
  br i1 %.not.i.i.i150, label %bb.am, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit153

bb.am:                                            ; preds = %bb.al
  %i.cn = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1990
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit153

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit153: ; preds = %bb.al, %bb.am
  %.sroa.0.0.i.i.i152 = phi i32 [ %i.cn, %bb.am ], [ %i.cm, %bb.al ] ; 4 uses
  store i32 %.sroa.0.0.i.i.i152, ptr %i.b, align 8, !alias.scope !1990
  switch i32 %.sroa.0.0.i.i.i152, label %.peel.begin276 [
    i32 45, label %bb.ao
    i32 43, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40
  unreachable

bb.ao:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit153, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit153
  %i.co = add i64 %.sroa.0.5359, 2                ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.ck
  br i1 %i.cp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #40
  unreachable

.peel.begin276:                                   ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit153
  call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161.peel

bb.aq:                                            ; preds = %bb.ao
  store i32 -2, ptr %i.b, align 8
  %i.cq = icmp eq i32 %.sroa.0.0.i.i.i152, 45
  %i.cr = load i32, ptr %i.c, align 8, !range !16, !alias.scope !1995, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1995
  %.not.i.i.i158.peel = icmp eq i32 %i.cr, -2
  br i1 %.not.i.i.i158.peel, label %bb.ar, label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEEE4peek0Cs8frGy5WneL6_4fish.exit.i159.peel

bb.ar:                                            ; preds = %bb.aq
  %i.cs = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1993
  br label %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEEE4peek0Cs8frGy5WneL6_4fish.exit.i159.peel

_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEEE4peek0Cs8frGy5WneL6_4fish.exit.i159.peel: ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i.i.i160.peel = phi i32 [ %i.cs, %bb.ar ], [ %i.cr, %bb.aq ] ; 2 uses
  store i32 %.sroa.0.0.i.i.i160.peel, ptr %i.b, align 8, !alias.scope !1993
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161.peel

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161.peel: ; preds = %.peel.begin276, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEEE4peek0Cs8frGy5WneL6_4fish.exit.i159.peel
  %.sroa.0.7366 = phi i64 [ %i.ck, %.peel.begin276 ], [ %i.co, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEEE4peek0Cs8frGy5WneL6_4fish.exit.i159.peel ] ; 3 uses
  %.sroa.041.1364 = phi i1 [ false, %.peel.begin276 ], [ %i.cq, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEEE4peek0Cs8frGy5WneL6_4fish.exit.i159.peel ]
  %i.ct = phi i32 [ %.sroa.0.0.i.i.i152, %.peel.begin276 ], [ %.sroa.0.0.i.i.i160.peel, %_RNCNvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB7_8PeekableIBU_INtNtB9_6copied6CopiedINtNtNtBd_5slice4iter4ItercEEEE4peek0Cs8frGy5WneL6_4fish.exit.i159.peel ] ; 2 uses
  %.not97.peel = icmp eq i32 %i.ct, -1
  br i1 %.not97.peel, label %.loopexit280.thread, label %bb.as

bb.as:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161.peel
  %i.cu = add nsw i32 %i.ct, -48                  ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 10
  br i1 %i.cv, label %bb.at, label %.loopexit280.thread

bb.at:                                            ; preds = %bb.as
  %i.cw = icmp eq i64 %.sroa.0.7366, -1
  br i1 %i.cw, label %.loopexit281, label %.peel.next277

.peel.next277:                                    ; preds = %bb.at, %bb.az
  %.sroa.049.0 = phi i32 [ %i.dh, %bb.az ], [ %i.cu, %bb.at ] ; 5 uses
  %.sroa.0.8.in = phi i64 [ %.sroa.0.8, %bb.az ], [ %.sroa.0.7366, %bb.at ]
  %.sroa.0.8 = add nuw i64 %.sroa.0.8.in, 1       ; 5 uses
  store i32 -2, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  %i.cx = load i32, ptr %i.c, align 8, !range !16, !alias.scope !1998, !noundef !10 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1998
  %.not.i.i.i158 = icmp eq i32 %i.cx, -2
  br i1 %.not.i.i.i158, label %bb.au, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161

bb.au:                                            ; preds = %.peel.next277
  %i.cy = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1996
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161: ; preds = %.peel.next277, %bb.au
  %.sroa.0.0.i.i.i160 = phi i32 [ %i.cy, %bb.au ], [ %i.cx, %.peel.next277 ] ; 3 uses
  store i32 %.sroa.0.0.i.i.i160, ptr %i.b, align 8, !alias.scope !1996
  %.not97 = icmp eq i32 %.sroa.0.0.i.i.i160, -1
  br i1 %.not97, label %.loopexit280, label %bb.av

bb.av:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161
  %i.cz = add nsw i32 %.sroa.0.0.i.i.i160, -48    ; 2 uses
  %i.da = icmp ult i32 %i.cz, 10
  br i1 %i.da, label %bb.aw, label %.loopexit280

.loopexit280:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161, %bb.av
  %i.db = icmp eq i64 %.sroa.0.8, %.sroa.0.7366
  br i1 %i.db, label %.loopexit280.thread, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.dc = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.049.0, i32 10) ; 2 uses
  %i.dd = extractvalue { i32, i1 } %i.dc, 0
  %i.de = extractvalue { i32, i1 } %i.dc, 1
  br i1 %i.de, label %bb.ax, label %bb.ay, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.df = icmp sgt i32 %.sroa.049.0, -1
  %. = select i1 %i.df, i32 2147483647, i32 -2147483648
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.066.0 = phi i32 [ %i.dd, %bb.aw ], [ %., %bb.ax ]
  %i.dg = icmp eq i64 %.sroa.0.8, -1
  br i1 %i.dg, label %.loopexit281, label %bb.az

.loopexit281:                                     ; preds = %bb.ay, %bb.at
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #40
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.dh = call i32 @llvm.sadd.sat.i32(i32 %.sroa.066.0, i32 %i.cz)
  br label %.peel.next277, !llvm.loop !1968

bb.ba:                                            ; preds = %.loopexit280
  br i1 %.sroa.041.1364, label %bb.bb, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145.thread

bb.bb:                                            ; preds = %bb.ba
  %i.di = icmp eq i32 %.sroa.049.0, -2147483648
  br i1 %i.di, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dj = sub nsw i32 0, %.sroa.049.0
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145.thread

bb.bd:                                            ; preds = %bb.bb
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #40
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit134, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145, %bb.ba, %bb.bc
  %.sroa.0176.1358372 = phi i64 [ %.sroa.0176.1358, %bb.ba ], [ %.sroa.0176.1358, %bb.bc ], [ %.sroa.0176.1358, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145 ], [ %.sroa.0176.2.ph424, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit134 ] ; 3 uses
  %.sroa.049.1 = phi i32 [ %.sroa.049.0, %bb.ba ], [ %i.dj, %bb.bc ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145 ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit134 ] ; 3 uses
  %.sroa.0.9 = phi i64 [ %.sroa.0.8, %bb.ba ], [ %.sroa.0.8, %bb.bc ], [ %.sroa.0.5359, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145 ], [ %.sroa.0.6, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit134 ]
  %i.dk = icmp eq i64 %.sroa.0176.1358372, 0
  br i1 %i.dk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145.thread
  %i.dl = call double @llvm.copysign.f64(double 0.000000e+00, double %.sroa.023.0188203)
  br label %.loopexit280.thread.sink.split

bb.bf:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit145.thread
  %i.dm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0176.1358372, i1 true) ; 2 uses
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = shl i64 %.sroa.0176.1358372, %i.dm      ; 4 uses
  %i.dp = and i64 %i.do, 2047
  %i.dq = and i64 %i.do, -2048                    ; 2 uses
  %i.dr = icmp samesign ugt i64 %i.dp, 1024
  %i.ds = and i64 %i.do, 4095
  %or.cond103.not = icmp eq i64 %i.ds, 3072
  %or.cond216 = or i1 %i.dr, %or.cond103.not
  br i1 %or.cond216, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dt = icmp ugt i64 %i.do, -2049
  br i1 %i.dt, label %bb.bj, label %bb.bi, !prof !27

bb.bh:                                            ; preds = %bb.bf, %bb.bi, %bb.bj
  %.sroa.0176.3 = phi i64 [ %i.dq, %bb.bf ], [ 1, %bb.bj ], [ %i.dw, %bb.bi ]
  %.sroa.049.2 = phi i32 [ %.sroa.049.1, %bb.bf ], [ %i.dx, %bb.bj ], [ %.sroa.049.1, %bb.bi ]
  %i.du = extractvalue { i32, i1 } %.sroa.032.0, 0
  %i.dv = extractvalue { i32, i1 } %.sroa.032.0, 1
  br i1 %i.dv, label %bb.bk, label %bb.bl, !prof !27

bb.bi:                                            ; preds = %bb.bg
  %i.dw = add nuw i64 %i.dq, 2048
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bg
  %i.dx = call i32 @llvm.sadd.sat.i32(i32 %.sroa.049.1, i32 1)
  br label %bb.bh

bb.bk:                                            ; preds = %bb.bh
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bk
  %.sroa.067.0 = phi i32 [ 2147483647, %bb.bk ], [ %i.du, %bb.bh ]
  %i.dy = add nuw nsw i32 %i.dn, 1
  %i.dz = call i32 @llvm.sadd.sat.i32(i32 %.sroa.067.0, i32 %.sroa.049.2)
  %i.ea = call i32 @llvm.ssub.sat.i32(i32 %i.dz, i32 %i.dy) ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1023
  br i1 %i.eb, label %bb.bm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ec = call double @llvm.copysign.f64(double +inf, double %.sroa.023.0188203)
  br label %.loopexit280.thread.sink.split

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.bl
  %i.ed = call i32 @llvm.smin.i32(i32 %i.ea, i32 -1022) ; 2 uses
  %..i = add nsw i32 %i.ed, 1022
  %..i167 = call noundef range(i32 -1022, 1024) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 1024) %i.ea, i32 -1022)
  %i.ee = add nsw i32 %..i167, 1023
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 52
  %i.eh = lshr i64 %.sroa.0176.3, 11
  %i.ei = and i64 %i.eh, 4503599627370495
  %i.ej = or i64 %i.ei, %.sroa.017.2190201
  %i.ek = or i64 %i.ej, %i.eg                     ; 2 uses
  %i.el = icmp samesign ult i32 %i.ed, -1022
  %3 = call double @llvm.powi.f64.i32(double 2.000000e+00, i32 %..i)
  %4 = bitcast i64 %i.ek to double
  %5 = fmul double %3, %4
  %6 = bitcast double %5 to i64
  %.sroa.056.0 = select i1 %i.el, i64 %6, i64 %i.ek
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.056.0, ptr %7, align 8
  br label %.loopexit280.thread.sink.split398

.loopexit280.thread.sink.split398:                ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %.loopexit280.thread.sink.split
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.9, ptr %i.em, align 8
  br label %.loopexit280.thread

.loopexit280.thread:                              ; preds = %.loopexit280.thread.sink.split398, %bb.f, %bb.e, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit111, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEEE7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread, %.loopexit, %bb.as, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161.peel, %.loopexit280
  %.sink.sink = phi i64 [ 1, %bb.as ], [ 1, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit111 ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_INtNtB1j_6copied6CopiedINtNtNtB5_5slice4iter4ItercEEEE4peek0ECs8frGy5WneL6_4fish.exit161.peel ], [ 1, %.loopexit280 ], [ 1, %.loopexit ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEEE7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread ], [ 0, %.loopexit280.thread.sink.split398 ]
  store i64 %.sink.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.loopexit280.thread.sink.split:                   ; preds = %bb.be, %bb.bm
  %.sink396 = phi double [ %i.ec, %bb.bm ], [ %i.dl, %bb.be ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink396, ptr %i.en, align 8
  br label %.loopexit280.thread.sink.split398

.loopexit264:                                     ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableIBT_INtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItercEEEE7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, i32 noundef range(i32 0, 1114112) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %i.e = alloca [4 x i8], align 4                 ; 3 uses
  %i.f = alloca [4 x i8], align 4                 ; 3 uses
  %i.g = alloca [4 x i8], align 4                 ; 3 uses
  %i.h = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.i = icmp eq ptr %1, %2
  br i1 %i.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.k = load i32, ptr %1, align 4, !noalias !2066, !noundef !10 ; 5 uses
  %i.l = xor i32 %i.k, 55296
  %i.m = add i32 %i.l, -1114112
  %i.n = icmp ult i32 %i.m, -1112064
  br i1 %i.n, label %.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit

.split.i.i.i:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2067
  store i32 %i.k, ptr %i.h, align 4, !noalias !2067
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2066
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.o = icmp ult i32 %i.k, 1114112
  tail call void @llvm.assume(i1 %i.o)
  switch i32 %i.k, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108 [
    i32 45, label %bb.d
    i32 43, label %bb.c
  ]

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit
  br label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit, %bb.c
  %.sroa.023.0.ph = phi double [ 1.000000e+00, %bb.c ], [ -1.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.017.2.ph = phi i64 [ 0, %bb.c ], [ -9223372036854775808, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %i.p = icmp eq ptr %i.j, %2
  br i1 %i.p, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.j, align 4, !noalias !2068, !noundef !10 ; 4 uses
  %i.r = xor i32 %i.q, 55296
  %i.s = add i32 %i.r, -1114112
  %i.t = icmp ult i32 %i.s, -1112064
  br i1 %i.t, label %.split.i107, label %.split7.i105

.split7.i105:                                     ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = icmp ult i32 %i.q, 1114112
  tail call void @llvm.assume(i1 %i.v)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108

.split.i107:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2069
  store i32 %i.q, ptr %i.g, align 4, !noalias !2069
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2068
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit, %bb.a, %bb.d, %.split7.i105
  %.sroa.0.2266 = phi i64 [ 3, %.split7.i105 ], [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ 3, %bb.d ], [ 2, %bb.a ] ; 3 uses
  %.sroa.017.2264 = phi i64 [ %.sroa.017.2.ph, %.split7.i105 ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ %.sroa.017.2.ph, %bb.d ], [ 0, %bb.a ]
  %.sroa.023.0262 = phi double [ %.sroa.023.0.ph, %.split7.i105 ], [ 1.000000e+00, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ %.sroa.023.0.ph, %bb.d ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %.sroa.0.3238 = phi ptr [ %i.u, %.split7.i105 ], [ %i.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ %i.j, %bb.d ], [ %1, %bb.a ] ; 4 uses
  %.sroa.025.0 = phi i32 [ %i.q, %.split7.i105 ], [ %i.k, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit ], [ -1, %bb.d ], [ -1, %bb.a ] ; 2 uses
  %i.w = icmp eq ptr %.sroa.0.3238, %2
  br i1 %i.w, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112, label %bb.f

bb.f:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108
  %i.x = load i32, ptr %.sroa.0.3238, align 4, !noalias !2070, !noundef !10 ; 4 uses
  %i.y = xor i32 %i.x, 55296
  %i.z = add i32 %i.y, -1114112
  %i.aa = icmp ult i32 %i.z, -1112064
  br i1 %i.aa, label %.split.i111, label %.split7.i109

.split7.i109:                                     ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.3238, i64 4
  %i.ac = icmp ult i32 %i.x, 1114112
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112

.split.i111:                                      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2071
  store i32 %i.x, ptr %i.f, align 4, !noalias !2071
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2070
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112: ; preds = %.split7.i109, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108
  %.sroa.0.20 = phi ptr [ %.sroa.0.3238, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108 ], [ %i.ab, %.split7.i109 ] ; 4 uses
  %.sroa.0.0.i110 = phi i32 [ -1, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit108 ], [ %i.x, %.split7.i109 ] ; 2 uses
  %.not87 = icmp eq i32 %.sroa.025.0, -1
  br i1 %.not87, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112
  %i.ad = icmp ne i32 %.sroa.0.0.i110, -1
  %i.ae = icmp eq i32 %.sroa.025.0, 48
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.h, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread

bb.h:                                             ; preds = %bb.g
  switch i32 %.sroa.0.0.i110, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread [
    i32 120, label %bb.i
    i32 88, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.af = icmp eq ptr %.sroa.0.20, %2
  br i1 %i.af, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.20, i64 4 ; 4 uses
  %i.ah = load i32, ptr %.sroa.0.20, align 4, !noalias !2072, !noundef !10 ; 5 uses
  %i.ai = xor i32 %i.ah, 55296
  %i.aj = add i32 %i.ai, -1114112
  %i.ak = icmp ult i32 %i.aj, -1112064
  br i1 %i.ak, label %.split.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader
  %i.al = icmp ult i32 %i.ah, 1114112
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i32 %i.ah, 48                   ; 2 uses
  br i1 %i.am, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i

_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel: ; preds = %bb.j
  %i.an = add nuw nsw i64 %.sroa.0.2266, 1        ; 2 uses
  %i.ao = icmp eq ptr %i.ag, %2
  br i1 %i.ao, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel, %bb.bg
  %.sroa.0.3344 = phi i64 [ %i.gu, %bb.bg ], [ %i.an, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ] ; 3 uses
  %.sroa.0.5240342 = phi ptr [ %i.ap, %bb.bg ], [ %i.ag, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit.peel ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.5240342, i64 4 ; 4 uses
  %i.aq = load i32, ptr %.sroa.0.5240342, align 4, !noalias !2072, !noundef !10 ; 5 uses
  %i.ar = xor i32 %i.aq, 55296
  %i.as = add i32 %i.ar, -1114112
  %i.at = icmp ult i32 %i.as, -1112064
  br i1 %i.at, label %.split.i.i, label %bb.k

.split.i.i:                                       ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa396 = phi i32 [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2073
  store i32 %.lcssa396, ptr %i.e, align 4, !noalias !2073
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2072
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.au = icmp ult i32 %i.aq, 1114112
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i32 %i.aq, 48
  br i1 %i.av, label %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %bb.k, %bb.j
  %.sroa.0.3.lcssa = phi i64 [ %.sroa.0.2266, %bb.j ], [ %.sroa.0.3344, %bb.k ] ; 5 uses
  %.sroa.53.9.ph = phi i32 [ %i.ah, %bb.j ], [ %i.aq, %bb.k ] ; 4 uses
  %.sroa.0.23.ph = phi ptr [ %i.ag, %bb.j ], [ %i.ap, %bb.k ] ; 4 uses
  %i.aw = icmp samesign ugt i32 %.sroa.53.9.ph, 57
  %i.ax = add nsw i32 %.sroa.53.9.ph, -65
  %i.ay = and i32 %i.ax, -33
  %i.az = add nuw nsw i32 %i.ay, 10
  %i.ba = add nsw i32 %.sroa.53.9.ph, -48
  %.sroa.02.0.i.peel = select i1 %i.aw, i32 %i.az, i32 %i.ba ; 2 uses
  %i.bb = icmp ult i32 %.sroa.02.0.i.peel, 16
  br i1 %i.bb, label %bb.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread

bb.l:                                             ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  %i.bc = icmp eq i64 %.sroa.0.3.lcssa, -1
  br i1 %i.bc, label %.loopexit404, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit.peel: ; preds = %bb.l
  %i.bd = zext nneg i32 %.sroa.02.0.i.peel to i64
  %i.be = shl nuw i64 %i.bd, 60                   ; 2 uses
  %.sroa.0.4590 = add nuw i64 %.sroa.0.3.lcssa, 1 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.23.ph, %2
end_hunk_1
begin_hunk_2_@_RINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.8243464, i64 4 ; 3 uses
  %i.ef = load i32, ptr %.sroa.0.8243464, align 4, !noalias !2080, !noundef !10 ; 6 uses
  %i.eg = xor i32 %i.ef, 55296
  %i.eh = add i32 %i.eg, -1114112
  %i.ei = icmp ult i32 %i.eh, -1112064
  br i1 %i.ei, label %.split.i.i.i157, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158

.split.i.i.i157:                                  ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2081
  store i32 %i.ef, ptr %i.b, align 4, !noalias !2081
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2080
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158: ; preds = %bb.ai
  %i.ej = icmp ult i32 %i.ef, 1114112
  tail call void @llvm.assume(i1 %i.ej)
  switch i32 %i.ef, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread [
    i32 45, label %bb.ak
    i32 43, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ag
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40
  unreachable

bb.ak:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158
  %i.ek = add i64 %.sroa.0.5465, 2                ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.eb
  br i1 %i.el, label %bb.al, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread.thread

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #40
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread.thread: ; preds = %bb.ak
  %i.em = icmp eq i32 %i.ef, 45
  %i.en = icmp eq ptr %i.ee, %2
  br i1 %i.en, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread, label %bb.am

bb.am:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread.thread
  %i.eo = load i32, ptr %i.ee, align 4, !noalias !2082, !noundef !10 ; 4 uses
  %i.ep = xor i32 %i.eo, 55296
  %i.eq = add i32 %i.ep, -1114112
  %i.er = icmp ult i32 %i.eq, -1112064
  br i1 %i.er, label %.split.i.i.i167, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread297.peel

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread297.peel: ; preds = %bb.am
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.8243464, i64 8
  %i.et = icmp samesign ult i32 %i.eo, 1114112
  tail call void @llvm.assume(i1 %i.et)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread297.peel
  %.sroa.0.7476 = phi i64 [ %i.ek, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread297.peel ], [ %i.eb, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158 ] ; 3 uses
  %.sroa.041.1473 = phi i1 [ %i.em, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread297.peel ], [ false, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158 ]
  %.sroa.0.40302.peel = phi ptr [ %i.es, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread297.peel ], [ %i.ee, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158 ]
  %.sroa.53.15301.peel = phi i32 [ %i.eo, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread297.peel ], [ %i.ef, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158 ]
  %i.eu = add nsw i32 %.sroa.53.15301.peel, -48   ; 2 uses
  %i.ev = icmp ult i32 %i.eu, 10
  br i1 %i.ev, label %bb.an, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread

bb.an:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread
  %i.ew = icmp eq i64 %.sroa.0.7476, -1
  br i1 %i.ew, label %.loopexit412, label %.peel.next410

.peel.next410:                                    ; preds = %bb.an, %bb.as
  %.sroa.0.14 = phi ptr [ %i.fc, %bb.as ], [ %.sroa.0.40302.peel, %bb.an ] ; 4 uses
  %.sroa.049.0 = phi i32 [ %i.fl, %bb.as ], [ %i.eu, %bb.an ] ; 5 uses
  %.sroa.0.8.in = phi i64 [ %.sroa.0.8, %bb.as ], [ %.sroa.0.7476, %bb.an ]
  %.sroa.0.8 = add nuw i64 %.sroa.0.8.in, 1       ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.14) ]
  %i.ex = icmp eq ptr %.sroa.0.14, %2
  br i1 %i.ex, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread, label %bb.ao

bb.ao:                                            ; preds = %.peel.next410
  %i.ey = load i32, ptr %.sroa.0.14, align 4, !noalias !2082, !noundef !10 ; 4 uses
  %i.ez = xor i32 %i.ey, 55296
  %i.fa = add i32 %i.ez, -1114112
  %i.fb = icmp ult i32 %i.fa, -1112064
  br i1 %i.fb, label %.split.i.i.i167, label %bb.ap

.split.i.i.i167:                                  ; preds = %bb.ao, %bb.am
  %.lcssa = phi i32 [ %i.eo, %bb.am ], [ %i.ey, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2083
  store i32 %.lcssa, ptr %i.a, align 4, !noalias !2083
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2082
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.14, i64 4
  %i.fd = icmp samesign ult i32 %i.ey, 1114112
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = add nsw i32 %i.ey, -48                  ; 2 uses
  %i.ff = icmp ult i32 %i.fe, 10
  br i1 %i.ff, label %bb.aq, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread: ; preds = %.peel.next410, %bb.ap
  %i.fg = icmp eq i64 %.sroa.0.8, %.sroa.0.7476
  br i1 %i.fg, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.fh = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.049.0, i32 10) ; 2 uses
  %i.fi = extractvalue { i32, i1 } %i.fh, 0
  %i.fj = extractvalue { i32, i1 } %i.fh, 1
  br i1 %i.fj, label %bb.ar, label %bb.as, !prof !27

bb.ar:                                            ; preds = %bb.aq
  %i.fk = icmp sgt i32 %.sroa.049.0, -1
  %. = select i1 %i.fk, i32 2147483647, i32 -2147483648
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.066.0 = phi i32 [ %i.fi, %bb.aq ], [ %., %bb.ar ]
  %i.fl = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.066.0, i32 %i.fe)
  %i.fm = icmp eq i64 %.sroa.0.8, -1
  br i1 %i.fm, label %.loopexit412, label %.peel.next410, !llvm.loop !2064

.loopexit412:                                     ; preds = %bb.as, %bb.an
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #40
  unreachable

bb.at:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread
  br i1 %.sroa.041.1473, label %bb.au, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148.thread

bb.au:                                            ; preds = %bb.at
  %i.fn = icmp eq i32 %.sroa.049.0, -2147483648
  br i1 %i.fn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fo = sub nsw i32 0, %.sroa.049.0
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148.thread

bb.aw:                                            ; preds = %bb.au
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #40
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148.thread: ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148, %bb.at, %bb.av
  %.sroa.0245.1462490 = phi i64 [ %.sroa.0245.1462, %bb.at ], [ %.sroa.0245.1462, %bb.av ], [ %.sroa.0245.1462, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148 ], [ %.sroa.0245.5.peel, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel ], [ %.sroa.0245.5, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138 ] ; 3 uses
  %.sroa.049.1 = phi i32 [ %.sroa.049.0, %bb.at ], [ %i.fo, %bb.av ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148 ], [ 0, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel ], [ 0, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138 ] ; 3 uses
  %.sroa.0.9 = phi i64 [ %.sroa.0.8, %bb.at ], [ %.sroa.0.8, %bb.av ], [ %.sroa.0.5465, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148 ], [ %.sroa.0.6.peel, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138.peel ], [ %.sroa.0.6, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil9hex_float15parse_hex_floatNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0B8_.exit138 ]
  %i.fp = icmp eq i64 %.sroa.0245.1462490, 0
  br i1 %i.fp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148.thread
  %i.fq = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.sroa.023.0262)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.fq, ptr %i.fr, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread.sink.split

bb.ay:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit148.thread
  %i.fs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0245.1462490, i1 true) ; 2 uses
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %i.fu = shl i64 %.sroa.0245.1462490, %i.fs      ; 4 uses
  %i.fv = and i64 %i.fu, 2047
  %i.fw = and i64 %i.fu, -2048                    ; 2 uses
  %i.fx = icmp samesign ugt i64 %i.fv, 1024
  %i.fy = and i64 %i.fu, 4095
  %or.cond103.not = icmp eq i64 %i.fy, 3072
  %or.cond306 = or i1 %i.fx, %or.cond103.not
  br i1 %or.cond306, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fz = icmp ugt i64 %i.fu, -2049
  br i1 %i.fz, label %bb.bc, label %bb.bb, !prof !27

bb.ba:                                            ; preds = %bb.ay, %bb.bb, %bb.bc
  %.sroa.0245.3 = phi i64 [ %i.fw, %bb.ay ], [ 1, %bb.bc ], [ %i.gc, %bb.bb ]
  %.sroa.049.2 = phi i32 [ %.sroa.049.1, %bb.ay ], [ %i.gd, %bb.bc ], [ %.sroa.049.1, %bb.bb ]
  %i.ga = extractvalue { i32, i1 } %.sroa.032.0, 0
  %i.gb = extractvalue { i32, i1 } %.sroa.032.0, 1
  br i1 %i.gb, label %bb.bd, label %bb.be, !prof !27

bb.bb:                                            ; preds = %bb.az
  %i.gc = add nuw i64 %i.fw, 2048
  br label %bb.ba

bb.bc:                                            ; preds = %bb.az
  %i.gd = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.049.1, i32 1)
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ba
  br label %bb.be

bb.be:                                            ; preds = %bb.ba, %bb.bd
  %.sroa.067.0 = phi i32 [ 2147483647, %bb.bd ], [ %i.ga, %bb.ba ]
  %i.ge = add nuw nsw i32 %i.ft, 1
  %i.gf = tail call i32 @llvm.sadd.sat.i32(i32 %.sroa.067.0, i32 %.sroa.049.2)
  %i.gg = tail call i32 @llvm.ssub.sat.i32(i32 %i.gf, i32 %i.ge) ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 1023
  br i1 %i.gh, label %bb.bf, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

bb.bf:                                            ; preds = %bb.be
  %i.gi = tail call double @llvm.copysign.f64(double +inf, double %.sroa.023.0262)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.gi, ptr %i.gj, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread.sink.split

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.be
  %i.gk = tail call i32 @llvm.smin.i32(i32 %i.gg, i32 -1022) ; 2 uses
  %..i = add nsw i32 %i.gk, 1022
  %..i175 = tail call noundef range(i32 -1022, 1024) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 1024) %i.gg, i32 -1022)
  %i.gl = add nsw i32 %..i175, 1023
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 52
  %i.go = lshr i64 %.sroa.0245.3, 11
  %i.gp = and i64 %i.go, 4503599627370495
  %i.gq = or i64 %i.gp, %.sroa.017.2264
  %i.gr = or i64 %i.gq, %i.gn                     ; 2 uses
  %i.gs = icmp samesign ult i32 %i.gk, -1022
  %4 = tail call double @llvm.powi.f64.i32(double 2.000000e+00, i32 %..i)
  %5 = bitcast i64 %i.gr to double
  %6 = fmul double %4, %5
  %7 = bitcast double %6 to i64
  %.sroa.056.0 = select i1 %i.gs, i64 %7, i64 %i.gr
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.056.0, ptr %8, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread.sink.split

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread.sink.split: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %bb.bf, %bb.ax
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.9, ptr %i.gt, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread.sink.split, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread, %bb.ah, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112, %bb.g, %bb.h
  %.sink = phi i64 [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread ], [ 1, %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit129.thread ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit158.thread.thread ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread ], [ 1, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit112 ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.ah ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit168.thread.thread.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.bg:                                            ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit
  %i.gu = add nuw i64 %.sroa.0.3344, 1            ; 2 uses
  %i.gv = icmp eq ptr %i.ap, %2
  br i1 %i.gv, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit119.thread.thread, label %.lr.ph, !llvm.loop !2065

.loopexit:                                        ; preds = %_RINvMs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB6_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E7next_ifNCINvB2_10next_if_eqcE0ECs8frGy5WneL6_4fish.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB14_10ThreadPool12spawn_thread0uEB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.l, align 8
  store ptr %6, ptr %i.k, align 8
  %i.m = trunc nuw i64 %2 to i1
  br i1 %i.m, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB16_10ThreadPool12spawn_thread0uE0B1a_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !range !24, !noundef !10
  %.not.i = icmp eq i64 %i.p, -1
  br i1 %.not.i, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.n, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB16_10ThreadPool12spawn_thread0uE0B1a_.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2130, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2130, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2130
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u)
          to label %bb.g unwind label %bb.f, !noalias !2130

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #37
          to label %.body34.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.a, align 8, !range !26, !noalias !2130, !noundef !10
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2130
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2130, !nonnull !10, !noundef !10 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !2130, !noundef !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2130
  switch i64 %i.ab, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.z, align 1, !alias.scope !2131, !noalias !2130, !noundef !10 ; 2 uses
  switch i8 %i.ac, label %bb.k [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.z, align 1, !alias.scope !2131, !noalias !2130
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ad = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ac, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ad, 43              ; 2 uses
  %i.ae = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.ab, %i.ae    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.af = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.af, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i90, i64 1
  %i.ah = add nsw i64 %.sroa.15.1.i.i.i89, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.k, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i90 = phi ptr [ %i.ag, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ] ; 2 uses
  %.sroa.15.1.i.i.i89 = phi i64 [ %i.ah, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.k ]
  %.sroa.042.0.i.i.i88 = phi i64 [ %i.aq, %.preheader56.i.i.i ], [ 0, %bb.k ]
  %i.ai = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i88, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.ak = extractvalue { i64, i1 } %i.ai, 0       ; 2 uses
  %i.al = load i8, ptr %.sroa.0.1.i.i.i90, align 1, !alias.scope !2131, !noalias !2130, !noundef !10
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 9
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = add i64 %i.ak, %i.ap                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ak
  %or.cond.i.i = select i1 %i.ao, i1 true, i1 %i.ar, !prof !36
  br i1 %or.cond.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !36

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.as = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !2131, !noalias !2130, !noundef !10
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ugt i32 %i.au, 9
  br i1 %i.av, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = mul i64 %.sroa.042.267.i.i.i, 10
  %i.ax = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.ba, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.aq, %.preheader56.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB18_10ThreadPool12spawn_thread0uE00B1c_.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body34.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB18_10ThreadPool12spawn_thread0uE00B1c_.exit.i: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc36 unwind label %bb.r

.noexc36:                                         ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB18_10ThreadPool12spawn_thread0uE00B1c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %.noexc36, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %.noexc36 ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_2
