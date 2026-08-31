Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.05?download=true
inline.NumInlined: 9178
inline.NumDeleted: 3311
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayParameterNtB6_11FmtDetailed12fmt_detailed:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ie = invoke noundef zeroext i1 @_RNvXse_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_11DisplayTypeNtB5_11FmtDetailed12fmt_detailed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %_RNvXs1Q_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_15DisplaySettingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit55
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.id)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit unwind label %bb.ao

bb.bl:                                            ; preds = %_RNvXs1Q_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_15DisplaySettingsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit55
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display15DisplaySettingsEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.id)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs12_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayParameterNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  store i64 -1, ptr %i.a, align 8
  %i.c = invoke noundef zeroext i1 @_RNvXs11_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayParameterNtB6_11FmtDetailed12fmt_detailed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load i64, ptr %i.a, align 8, !range !221, !alias.scope !9136, !noundef !3
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !range !221, !alias.scope !9139, !noundef !3
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs14_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_14DisplayOmittedNtB6_11FmtDetailed12fmt_detailed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.d, 1                      ; 2 uses
  %.sink20 = select i1 %i.e, i64 8, i64 24
  %.sink19.in.idx = select i1 %i.e, i64 0, i64 16
  %.sink19.in = getelementptr inbounds nuw i8, ptr %0, i64 %.sink19.in.idx
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink20
  %.sink = load i64, ptr %i.f, align 8, !noundef !3
  %.sink19 = load ptr, ptr %.sink19.in, align 8, !nonnull !3, !noundef !3
  store ptr %.sink19, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink, ptr %i.g, align 8
  %i.h = load i64, ptr %1, align 8, !range !221, !noundef !3
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 0, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.47.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @240, ptr noundef nonnull @434, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_14DisplayOmittedNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.d, align 8
  store i64 -1, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9145
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !9142, !noalias !9147, !noundef !3
  %i.g = icmp eq i64 %i.f, 1                      ; 2 uses
  %.sink20.i = select i1 %i.g, i64 8, i64 24
  %.sink19.in.idx.i = select i1 %i.g, i64 0, i64 16
  %.sink19.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink19.in.idx.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink20.i
  %.sink.i = load i64, ptr %i.h, align 8, !alias.scope !9142, !noalias !9147, !noundef !3
  %.sink19.i = load ptr, ptr %.sink19.in.i, align 8, !alias.scope !9142, !noalias !9147, !nonnull !3, !noundef !3
  store ptr %.sink19.i, ptr %i.b, align 8, !noalias !9145
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink.i, ptr %i.i, align 8, !noalias !9145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9145
  store ptr %i.e, ptr %i.a, align 8, !noalias !9145
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !9145
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8, !noalias !9145
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !9145
  %i.k = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @240, ptr noundef nonnull @434, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i64, ptr %i.c, align 8, !range !221, !alias.scope !9148, !noundef !3
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9145
  %i.o = load i64, ptr %i.c, align 8, !range !221, !alias.scope !9151, !noundef !3
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.k

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs18_NtCsoTR8nlGN3X_18ty_python_semantic4lintNtB6_10LintSourceNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @422) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @8, i64 32, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.c, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx, align 8
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtB6_11FmtDetailed12fmt_detailed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [16 x i8], align 4                ; 5 uses
  %i.m = alloca [16 x i8], align 4                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [80 x i8], align 8                ; 17 uses
  %i.p = alloca [40 x i8], align 8                ; 12 uses
  %.sroa.4461 = alloca [16 x i8], align 8         ; 4 uses
  %i.q = alloca [88 x i8], align 8                ; 21 uses
  %.sroa.4459 = alloca [16 x i8], align 8         ; 4 uses
  %i.r = alloca [88 x i8], align 8                ; 21 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [72 x i8], align 8                ; 16 uses
  %.sroa.4245 = alloca [12 x i8], align 4         ; 3 uses
  %.sroa.5241 = alloca [12 x i8], align 4         ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.68 = alloca [12 x i8], align 4           ; 2 uses
  %i.z = alloca [16 x i8], align 4                ; 6 uses
  %.sroa.7198 = alloca [12 x i8], align 4         ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [1 x i8], align 1                ; 5 uses
  %i.aj = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !3, !align !220, !noundef !3 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3, !align !201, !noundef !3 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !range !247, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !3
  %i.ar = tail call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.al) ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0      ; 10 uses
  %i.at = extractvalue { ptr, i64 } %i.ar, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.aw = load i8, ptr %i.av, align 1, !range !215, !noundef !3 ; 6 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at
  br label %.loopexit.i.i.outer

.loopexit.i.i.outer:                              ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i, %bb.b
  %.sroa.0.011.i.i.ph = phi ptr [ %i.as, %bb.b ], [ %i.bb, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  %.sroa.04.0.i.i.ph = phi i8 [ 0, %bb.b ], [ 1, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  %.sroa.03.0.i.i.ph = phi i1 [ false, %bb.b ], [ %.sroa.03.0.i.i.ph520, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  %.sroa.02.0.i.i.ph = phi i1 [ false, %bb.b ], [ %.sroa.02.0.i.i.ph524, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  br label %.loopexit.i.i.outer518

.loopexit.i.i.outer518:                           ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i, %.loopexit.i.i.outer
  %.sroa.0.011.i.i.ph519 = phi ptr [ %.sroa.0.011.i.i.ph, %.loopexit.i.i.outer ], [ %i.bb, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  %.sroa.03.0.i.i.ph520 = phi i1 [ %.sroa.03.0.i.i.ph, %.loopexit.i.i.outer ], [ true, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.ph521 = phi i1 [ %.sroa.02.0.i.i.ph, %.loopexit.i.i.outer ], [ %.sroa.02.0.i.i.ph524, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  br label %.loopexit.i.i.outer522

.loopexit.i.i.outer522:                           ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i, %.loopexit.i.i.outer518
  %.sroa.0.011.i.i.ph523 = phi ptr [ %.sroa.0.011.i.i.ph519, %.loopexit.i.i.outer518 ], [ %i.bb, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  %.sroa.02.0.i.i.ph524 = phi i1 [ %.sroa.02.0.i.i.ph521, %.loopexit.i.i.outer518 ], [ true, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ] ; 3 uses
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i, %.loopexit.i.i.outer522
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.011.i.i.ph523, %.loopexit.i.i.outer522 ], [ %i.bb, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i, %.loopexit.i.i
  %i.az = phi ptr [ %i.bb, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i ], [ %.sroa.0.011.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ba = icmp eq ptr %i.az, %i.ay
  br i1 %i.ba, label %_RNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed0Bc_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9154)
  call void @llvm.experimental.noalias.scope.decl(metadata !9157)
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i32, ptr %i.az, align 4, !alias.scope !9160, !noalias !9161 ; 2 uses
  %i.bc = icmp ne i32 %.sroa.01.0.copyload.i.i.i.i.i.i, 17
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i.i.i, 18
  br i1 %i.bd, label %bb.e, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !noalias !9161
  %i.be = call noundef i8 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType11known_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.k, ptr noundef nonnull %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.al), !noalias !9171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9171
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_16DisplayUnionTypeNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtB11_4TypeEE8call_mutB13_.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.be, %bb.e ], [ -1, %bb.d ]
  switch i8 %.sroa.0.0.i.i.i.i.i.i, label %.loopexit.i.i [
    i8 -1, label %bb.c
    i8 8, label %.loopexit.i.i.outer
    i8 6, label %.loopexit.i.i.outer522
    i8 7, label %.loopexit.i.i.outer518
  ]

_RNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed0Bc_.exit: ; preds = %bb.c
  %or.cond.i.i = and i1 %.sroa.02.0.i.i.ph524, %.sroa.03.0.i.i.ph520
  %.sroa.0.0.i.i = select i1 %or.cond.i.i, i8 %.sroa.04.0.i.i.ph, i8 2
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed0Bc_.exit
  %storemerge = phi i8 [ %.sroa.0.0.i.i, %_RNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed0Bc_.exit ], [ 2, %bb.a ]
  store i8 %storemerge, ptr %i.ai, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.ai, ptr %i.ah, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.ag, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 5 uses
  store i64 0, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 0, ptr %i.af, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i64 0, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %.idx = shl nuw nsw i64 %i.at, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx ; 5 uses
  store ptr %i.as, ptr %i.ad, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %0, ptr %i.bn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.al, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB17_4iter8adapters3map3MapINtNtB2A_6copied6CopiedINtNtNtB17_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENCNvXs18_NtB3U_7displayNtB4P_16DisplayUnionTypeNtB4P_11FmtDetailed12fmt_detaileds0_0EE9from_iterB3W_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ad)
          to label %bb.h unwind label %bb.g

.body194:                                         ; preds = %bb.g, %.body
  %.sroa.045.0 = phi i8 [ %.sroa.045.2, %.body ], [ %.sroa.045.1, %bb.g ]
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %.body ], [ %i.bo, %bb.g ] ; 2 uses
  %cond = icmp eq i8 %.sroa.045.0, 0
  br i1 %cond, label %.body194.thread, label %bb.ff

bb.g:                                             ; preds = %bb.fd, %bb.f
  %.sroa.045.1 = phi i8 [ 0, %bb.fd ], [ 1, %bb.f ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body194

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @8, i64 32, i1 false), !noalias !9175
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bs
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %bb.h
  %i.bw = phi ptr [ %i.bq, %bb.h ], [ %i.by, %.backedge ] ; 5 uses
  %i.bx = icmp eq ptr %i.bw, %i.bt
  br i1 %i.bx, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.bz = load i64, ptr %i.bw, align 8, !range !221, !alias.scope !9177, !noalias !9180, !noundef !3
  %.not.i5.i.i = icmp eq i64 %i.bz, -1
  br i1 %.not.i5.i.i, label %.backedge, label %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEINtB1E_4IterB1X_EENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i

.backedge:                                        ; preds = %bb.j, %bb.q
  br label %bb.i

_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEINtB1E_4IterB1X_EENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !9172, !noalias !9183, !nonnull !3, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !9172, !noalias !9183, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9175
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapRejNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %i.cd)
          to label %bb.n unwind label %bb.r, !noalias !9175

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !9175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9184
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapRejNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @8, i64 32, i1 false), !noalias !9184
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetReNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1F_8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map8IntoIterBO_jENCNvNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB4u_16DisplayUnionTypeNtB4u_11FmtDetailed12fmt_detailed26duplicate_ambiguous_labels0EEB4y_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.f)
          to label %_RNvNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed26duplicate_ambiguous_labels.exit unwind label %bb.l, !noalias !9184

bb.l:                                             ; preds = %.noexc
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body unwind label %bb.m, !noalias !9184

bb.m:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !9184
  unreachable

bb.n:                                             ; preds = %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEINtB1E_4IterB1X_EENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.cg = load ptr, ptr %i.i, align 8, !noalias !9175, !noundef !3 ; 2 uses
  %.not11.i = icmp eq ptr %i.cg, null
  br i1 %.not11.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.421.0.copyload.i = load i64, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !9175
  %.sroa.522.0.copyload.i = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !9175
  %.sroa.623.0.copyload.i = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !9175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9188
  store ptr %i.cg, ptr %i.e, align 8, !noalias !9188
  store i64 %.sroa.421.0.copyload.i, ptr %i.bu, align 8, !noalias !9188
  store i64 0, ptr %i.bv, align 8, !noalias !9188
  %i.ch = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRejEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.522.0.copyload.i, i64 noundef %.sroa.623.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %.noexc.i unwind label %bb.r, !noalias !9175

.noexc.i:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9188
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !9175, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9175
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc.i
  %.pn.i.i = phi ptr [ %i.ch, %.noexc.i ], [ %i.ci, %bb.p ]
  %.sroa.0.0.i12.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8 ; 2 uses
  %i.cj = load i64, ptr %.sroa.0.0.i12.i, align 8, !noalias !9175, !noundef !3
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %.sroa.0.0.i12.i, align 8, !noalias !9175
  br label %.backedge

bb.r:                                             ; preds = %bb.o, %_RNvXsI_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEINtB1E_4IterB1X_EENtNtNtB9_6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRejEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body unwind label %bb.s, !noalias !9175

bb.s:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !9175
  unreachable

_RNvNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed26duplicate_ambiguous_labels.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !9191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9175
  %i.cm = icmp eq i64 %i.at, 0
  br i1 %i.cm, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed26duplicate_ambiguous_labels.exit
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br label %bb.u

.body:                                            ; preds = %.body187, %bb.t, %bb.r, %bb.l
  %.sroa.045.2 = phi i8 [ 1, %bb.l ], [ %.sroa.045.3, %bb.t ], [ 1, %bb.r ], [ %.sroa.045.4, %.body187 ]
  %.pn69.pn = phi { ptr, i32 } [ %i.ce, %bb.l ], [ %i.cp, %bb.t ], [ %lpad.thr_comm.i, %bb.r ], [ %.pn69, %.body187 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #39
          to label %.body194 unwind label %bb.ag

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1x_.exit190, %bb.k
  %.sroa.045.3 = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1x_.exit190 ], [ 1, %bb.k ]
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.01.0439 = phi i64 [ 0, %.lr.ph ], [ %.sroa.01.1, %bb.aa ] ; 3 uses
  %.sroa.04.0438 = phi ptr [ %i.as, %.lr.ph ], [ %i.cq, %bb.aa ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.0438, i64 16 ; 2 uses
  %.sroa.047.0.copyload = load i32, ptr %.sroa.04.0438, align 4 ; 4 uses
  %.sroa.448.0..sroa.046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0438, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.448.0..sroa.046.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.047.0.copyload, ptr %i.m, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.448.0..sroa.046.0..sroa_idx, i64 12, i1 false)
  invoke void @_RNvMs17_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionType20condensable_literals(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.m)
          to label %bb.v unwind label %.loopexit315

._crit_edge:                                      ; preds = %bb.aa, %_RNvNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed26duplicate_ambiguous_labels.exit
  %.sroa.01.0.lcssa = phi i64 [ 0, %_RNvNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detailed26duplicate_ambiguous_labels.exit ], [ %.sroa.01.1, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.as, ptr %i.y, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.bl, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ah, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9192
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %.noexc82 unwind label %.loopexit.split-lp316

.noexc82:                                         ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9192
  %i.ct = invoke noundef i64 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldB1s_jjNCINvNvXs1_NtB7_6filterINtB3y_6FilterppEB2g_5count8to_usizeB1s_NCNvXs18_NtB1u_7displayNtB4x_16DisplayUnionTypeNtB4x_11FmtDetailed12fmt_detaileds1_0E0NCINvXsK_NtB2k_5accumjNtB5V_3Sum3sumINtB2Z_3MapBP_B3n_EE0E0EB1w_(ptr noundef nonnull %i.as, ptr noundef nonnull %i.bl, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.ak unwind label %.loopexit.split-lp316

.body187:                                         ; preds = %.loopexit315, %.loopexit.split-lp316, %bb.fa, %bb.y, %.body182
  %.sroa.045.4 = phi i8 [ 1, %bb.y ], [ 0, %.body182 ], [ 0, %bb.fa ], [ 1, %.loopexit315 ], [ %.sroa.045.5.ph, %.loopexit.split-lp316 ]
  %.pn69 = phi { ptr, i32 } [ %i.dd, %bb.y ], [ %.pn67, %.body182 ], [ %i.pi, %bb.fa ], [ %lpad.loopexit317, %.loopexit315 ], [ %lpad.loopexit.split-lp318, %.loopexit.split-lp316 ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.body unwind label %bb.ag

.loopexit315:                                     ; preds = %bb.u, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, %bb.ai
  %lpad.loopexit317 = landingpad { ptr, i32 }
          cleanup
  br label %.body187

.loopexit.split-lp316:                            ; preds = %bb.al, %._crit_edge, %.noexc82, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i186
  %.sroa.045.5.ph = phi i8 [ 1, %._crit_edge ], [ 1, %.noexc82 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i186 ], [ 1, %bb.al ]
  %lpad.loopexit.split-lp318 = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cu = load i64, ptr %i.ab, align 8, !range !221, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.cu, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr %i.cn, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.cw = load i64, ptr %i.co, align 8, !noundef !3 ; 3 uses
  %i.cx = add i64 %.sroa.01.0439, 1
  %i.cy = icmp ult i64 %i.cw, 576460752303423488
  call void @llvm.assume(i1 %i.cy)
  %.idx453 = shl nuw nsw i64 %i.cw, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.cv, ptr %i.aa, align 8
  store ptr %i.cv, ptr %.sroa.414.0..sroa_idx, align 8
  store i64 %i.cu, ptr %.sroa.515.0..sroa_idx, align 8
  store ptr %i.cz, ptr %.sroa.616.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7198)
  %i.da = icmp eq i64 %i.cw, 0
  br i1 %i.da, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.db = icmp ne i32 %.sroa.047.0.copyload, 17
  call void @llvm.assume(i1 %i.db)
  %i.dc = icmp ult i32 %.sroa.047.0.copyload, 4
  br i1 %i.dc, label %bb.ah, label %bb.aa

bb.y:                                             ; preds = %bb.ad, %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %.body187 unwind label %bb.ag

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit: ; preds = %bb.w, %bb.af
  %i.de = phi ptr [ %i.dr, %bb.af ], [ %i.cv, %bb.w ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9195)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.df, ptr %.sroa.414.0..sroa_idx, align 8, !alias.scope !9195, !noalias !9198
  %.sroa.0196.0.copyload197 = load i32, ptr %i.de, align 4, !noalias !9195 ; 2 uses
  %.sroa.7198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7198, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7198.0..sroa_idx199, i64 12, i1 false), !noalias !9195
  %.not57 = icmp eq i32 %.sroa.0196.0.copyload197, -1
  br i1 %.not57, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %bb.z

bb.z:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 %.sroa.0196.0.copyload197, ptr %i.z, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7198.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7198, i64 12, i1 false)
  %i.dg = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3
  %i.dh = load i64, ptr %i.bi, align 8, !noundef !3
  %i.di = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.z, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dg, i64 noundef %i.dh)
          to label %bb.ab unwind label %bb.y

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit, %bb.af, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7198)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit87 unwind label %.loopexit315

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit87: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit87, %bb.x
  %.sroa.01.1 = phi i64 [ %i.cx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1s_.exit87 ], [ %.sroa.01.0439, %bb.aj ], [ %.sroa.01.0439, %bb.x ] ; 2 uses
  %i.dj = icmp eq ptr %i.cq, %i.bl
  br i1 %i.dj, label %._crit_edge, label %bb.u

bb.ab:                                            ; preds = %bb.z
  br i1 %i.di, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = load i64, ptr %i.bi, align 8, !alias.scope !9200, !noalias !9203, !noundef !3 ; 3 uses
  %i.dl = load i64, ptr %i.ag, align 8, !range !329, !alias.scope !9200, !noalias !9203, !noundef !3
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.ae unwind label %bb.y

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dn = load ptr, ptr %i.bh, align 8, !alias.scope !9200, !noalias !9203, !nonnull !3, !noundef !3
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.do, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.dp = add i64 %i.dk, 1
  store i64 %i.dp, ptr %i.bi, align 8, !alias.scope !9200, !noalias !9203
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7198)
  %i.dq = load ptr, ptr %.sroa.616.0..sroa_idx, align 8, !alias.scope !9205, !noalias !9198, !nonnull !3, !noundef !3
  %i.dr = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !alias.scope !9205, !noalias !9198, !nonnull !3, !noundef !3 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dq
  br i1 %i.ds, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit

bb.ag:                                            ; preds = %bb.el, %bb.db, %bb.y, %.body187, %bb.fg, %bb.ff, %.body182, %bb.dq, %bb.bn, %.body95, %.body
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.ah:                                            ; preds = %bb.x
  %i.du = load i64, ptr %i.bk, align 8, !alias.scope !9207, !noalias !9210, !noundef !3 ; 3 uses
  %i.dv = load i64, ptr %i.af, align 8, !range !329, !alias.scope !9207, !noalias !9210, !noundef !3
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of14SubclassOfTypeE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.aj unwind label %.loopexit315

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dx = load ptr, ptr %i.bj, align 8, !alias.scope !9207, !noalias !9210, !nonnull !3, !noundef !3
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.du ; 2 uses
  store i32 %.sroa.047.0.copyload, ptr %i.dy, align 4
  %.sroa.4.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx201, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68, i64 12, i1 false)
  %i.dz = add i64 %i.du, 1
  store i64 %i.dz, ptr %i.bk, align 8, !alias.scope !9207, !noalias !9210
  br label %bb.aa

bb.ak:                                            ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ea = load i64, ptr %i.bk, align 8, !noundef !3 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 576460752303423488
  call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.ai, align 1, !range !208, !noundef !3 ; 2 uses
  %i.ed = icmp ne i8 %i.ec, 2
  %i.ee = zext i1 %i.ed to i64
  %i.ef = load i64, ptr %i.bi, align 8, !noundef !3 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 576460752303423488
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp ne i64 %i.ef, 0
  %i.ei = zext i1 %i.eh to i64
  %i.ej = icmp ne i64 %i.ea, 0
  %i.ek = zext i1 %i.ej to i64
  %i.el = add i64 %.sroa.01.0.lcssa, %i.ct
  %i.em = add i64 %i.el, %i.ea
  %i.en = sub i64 %i.at, %i.em
  %i.eo = add i64 %i.en, %i.ek
  %i.ep = add i64 %i.eo, %i.ee
  %i.eq = add i64 %i.ep, %i.ei                    ; 7 uses
  store i64 %i.eq, ptr %i.x, align 8
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.al, label %bb.an, !prof !214

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @435, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #41
          to label %bb.am unwind label %.loopexit.split-lp316

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.et = load i8, ptr %i.es, align 2, !range !215, !noundef !3 ; 6 uses
  %i.eu = trunc nuw i8 %i.et to i1                ; 2 uses
  br i1 %i.eu, label %_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ev = icmp ugt i64 %i.eq, 5
  %spec.store.select.i = select i1 %i.ev, i64 3, i64 5
  %.sroa.0.0.i.i90 = call noundef i64 @llvm.umin.i64(i64 %i.eq, i64 %spec.store.select.i)
  br label %_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit

_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit: ; preds = %bb.ao, %bb.an
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.i90, %bb.ao ], [ %i.eq, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.val79 = load ptr, ptr %i.bp, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.val80 = load i64, ptr %i.br, align 8, !noundef !3
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %.val79, i64 %.val80
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEIBX_INtNtBb_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEEINtB5_7ZipImplBW_B29_E3newB1q_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noundef nonnull %i.as, ptr noundef nonnull %i.bl, ptr noundef nonnull %.val79, ptr noundef nonnull %i.ew)
          to label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionNtNtB2l_6string6StringEEEBN_.exit unwind label %.loopexit.split-lp

.body95:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.el, %.body.i146, %bb.db, %.body.i, %bb.ax, %bb.dq, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.lg, %bb.db ], [ %eh.lpad-body.i147, %.body.i146 ], [ %i.ih, %bb.bn ], [ %i.ny, %bb.el ], [ %i.mn, %bb.dq ], [ %i.gz, %bb.ax ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of14SubclassOfTypeEEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %.body182 unwind label %bb.ag

.loopexit:                                        ; preds = %_RNCNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_16DisplayUnionTypeNtB8_11FmtDetailed12fmt_detaileds_0Bc_.exit.thread, %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_15DisplaySettings20force_signature_name.exit, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB1b_.exit.i109, %bb.bw, %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_4Join5entry.exit128, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of14SubclassOfTypeEEB1d_.exit.i, %_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_4Join5entry.exit164
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body95

.loopexit.split-lp:                               ; preds = %bb.et, %_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit, %bb.ep, %bb.eq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body95

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionNtNtB2l_6string6StringEEEBN_.exit: ; preds = %_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit
  %.sroa.0234.0.copyload = load ptr, ptr %i.u, align 8 ; 2 uses
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4236.0.copyload = load ptr, ptr %.sroa.4236.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.5238.0.copyload = load i64, ptr %.sroa.5238.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.7239.0.copyload = load i64, ptr %.sroa.7239.0..sroa_idx, align 8 ; 2 uses
  %i.ex = icmp ult i64 %.sroa.5238.0.copyload, %.sroa.7239.0.copyload
  br i1 %i.ex, label %.lr.ph445, label %.thread

.lr.ph445:                                        ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionNtNtB2l_6string6StringEEEBN_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0234.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4236.0.copyload) ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !3, !align !201 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fb = load i8, ptr %i.fa, align 8, !range !208 ; 5 uses
  %i.fc = load ptr, ptr %i.au, align 8, !nonnull !3 ; 17 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !nonnull !3 ; 17 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !3 ; 17 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !3 ; 17 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fk = load i8, ptr %i.fj, align 4, !range !215 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.6.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.7252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.8253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 57
  %.sroa.9254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 58
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 59
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %.sroa.4245.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.7259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.8260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 57
  %.sroa.9261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 58
  %.sroa.10262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 59
  %.sroa.11263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.fv = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  %i.fz = getelementptr inbounds nuw i8, ptr %i.p, i64 35
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %.sroa.4245.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ge = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.5276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.7277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.9278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.11279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 49
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 50
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 51
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.gk = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.7269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.8270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 57
  %.sroa.9271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  %.sroa.10272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 59
  %.sroa.11273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %.sroa.4459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph445, %bb.dw
  %.sroa.017.0444 = phi i8 [ %i.ec, %.lr.ph445 ], [ %.sroa.017.1, %bb.dw ] ; 7 uses
  %.sroa.018.0443 = phi i64 [ 0, %.lr.ph445 ], [ %.sroa.018.1, %bb.dw ] ; 9 uses
  %.sroa.25.0442 = phi i8 [ 0, %.lr.ph445 ], [ %.sroa.25.1, %bb.dw ] ; 12 uses
  %.sroa.47.0441 = phi i8 [ 0, %.lr.ph445 ], [ %.sroa.47.1, %bb.dw ] ; 8 uses
  %.sroa.5238.0440 = phi i64 [ %.sroa.5238.0.copyload, %.lr.ph445 ], [ %i.gl, %bb.dw ] ; 3 uses
  %i.gl = add i64 %.sroa.5238.0440, 1             ; 2 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0234.0.copyload, i64 %.sroa.5238.0440 ; 3 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4236.0.copyload, i64 %.sroa.5238.0440 ; 3 uses
  %.not59 = icmp ult i64 %.sroa.018.0443, %.sroa.0.0.i
  br i1 %.not59, label %bb.aq, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.dw, %bb.ap
  %.sroa.47.0.lcssa.ph = phi i8 [ %.sroa.47.0441, %bb.ap ], [ %.sroa.47.1, %bb.dw ]
  %.sroa.25.0.lcssa.ph = phi i8 [ %.sroa.25.0442, %bb.ap ], [ %.sroa.25.1, %bb.dw ]
  %.sroa.018.0.lcssa.ph = phi i64 [ %.sroa.018.0443, %bb.ap ], [ %.sroa.018.1, %bb.dw ]
  %i.go = trunc nuw i8 %.sroa.47.0.lcssa.ph to i1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionNtNtB2l_6string6StringEEEBN_.exit
  %.sroa.47.0.lcssa = phi i1 [ false, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionNtNtB2l_6string6StringEEEBN_.exit ], [ %i.go, %.thread.loopexit ]
  %.sroa.25.0.lcssa = phi i8 [ 0, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionNtNtB2l_6string6StringEEEBN_.exit ], [ %.sroa.25.0.lcssa.ph, %.thread.loopexit ] ; 3 uses
  %.sroa.018.0.lcssa = phi i64 [ 0, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBa_6option6OptionNtNtB2l_6string6StringEEEBN_.exit ], [ %.sroa.018.0.lcssa.ph, %.thread.loopexit ] ; 2 uses
  %.not65.not = icmp ule i64 %i.eq, %.sroa.018.0.lcssa
  %or.cond.not = select i1 %i.eu, i1 true, i1 %.not65.not
  br i1 %or.cond.not, label %bb.eu, label %bb.em

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5241)
  %.sroa.0242.0.copyload = load i32, ptr %i.gm, align 4 ; 4 uses
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4245, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4245.0..sroa_idx, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5241, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4245.0..sroa_idx, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !9212)
  %i.gp = load ptr, ptr %i.ah, align 8, !alias.scope !9212, !noalias !9215, !nonnull !3, !noundef !3
  %i.gq = load i8, ptr %i.gp, align 1, !range !208, !noalias !9217, !noundef !3 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtBd_19DynamicClassLiteral7try_mro1__NtB7_8try_mro_NtNtCs45bxiIjzMqg_5salsa10ingredient3Jar18create_ingredients:bb.a
  %i.o = invoke noundef nonnull align 8 ptr %i.n(ptr noundef nonnull %i.j)
          to label %bb.d unwind label %.thread.i, !noalias !9556 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.sroa.02.0.val.i = load ptr, ptr %i.o, align 8, !noalias !9559, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.val.i, i64 8 ; 2 uses
  %i.q = cmpxchg ptr %i.p, i64 1, i64 -1 acquire monotonic, align 8, !noalias !9556
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, !prof !9479

_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.d
  %i.s = load atomic i64, ptr %.sroa.02.0.val.i acquire, align 8, !noalias !9556
  %i.t = icmp eq i64 %i.s, 1
  store atomic i64 1, ptr %i.p release, align 8, !noalias !9556
  br i1 %i.t, label %bb.e, label %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, !prof !9480

_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i: ; preds = %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 68, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @541) #41
          to label %bb.f unwind label %.thread.i, !noalias !9556

bb.e:                                             ; preds = %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.u = load ptr, ptr %i.o, align 8, !noalias !9559, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  invoke void @_RNvMs3_NtNtCs45bxiIjzMqg_5salsa5table4memoNtB5_14MemoTableTypes3set(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i32 noundef %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %_RNvXs3_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create.exit unwind label %.thread.i, !noalias !9560

bb.f:                                             ; preds = %_RNvMsC_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9is_uniqueCsoTR8nlGN3X_18ty_python_semantic.exit.thread.i
  unreachable

_RNvXs3_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create.exit: ; preds = %bb.e
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.f, i64 noundef range(i64 1, 0) 4, i64 noundef 4) #42, !noalias !9557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtCs45bxiIjzMqg_5salsa8functionINtB4_14IngredientImplNtNvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB15_19DynamicClassLiteral7try_mro1__23try_mro__Configuration_E3newB1b_(ptr noalias noundef nonnull sret([584 x i8]) align 8 captures(none) dereferenceable(584) %i.c, i32 noundef %2, i32 noundef %i.i, i64 noundef 0)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.w = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 585) 16, i64 noundef range(i64 4, 9) 8) #42 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !214

bb.g:                                             ; preds = %_RNvXs3_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #41
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.j
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 16, i64 noundef 8) #42
  br label %common.resume

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs3_NtCs45bxiIjzMqg_5salsa23memo_ingredient_indicesNtB5_28MemoIngredientSingletonIndexNtB5_24NewMemoIngredientIndices6create.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %i.b, ptr noundef nonnull align 8 dereferenceable(584) %i.c, i64 584, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !9561
  %i.y = call noundef align 8 dereferenceable_or_null(584) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 585) 584, i64 noundef range(i64 4, 9) 8) #42, !noalias !9561 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.l, !prof !214

bb.i:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 584) #41
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB1z_19DynamicClassLiteral7try_mro1__23try_mro__Configuration_EEB1F_(ptr noalias noundef nonnull align 8 dereferenceable(584) %i.b) #39
          to label %bb.h unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.l:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %i.y, ptr noundef nonnull align 8 dereferenceable(584) %i.c, i64 584, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.y, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @494, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.n:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB1z_19DynamicClassLiteral7try_mro1__23try_mro__Configuration_EEB1F_(ptr noalias noundef nonnull align 8 dereferenceable(584) %i.c) #39
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  store i64 -1, ptr %i.a, align 8
  %i.c = invoke noundef zeroext i1 @_RNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtB6_11FmtDetailed12fmt_detailed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load i64, ptr %i.a, align 8, !range !221, !alias.scope !9564, !noundef !3
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !range !221, !alias.scope !9567, !noundef !3
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit1: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1b_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9570
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !noalias !9570
  store i64 -1, ptr %i.a, align 8, !noalias !9570
  %i.c = invoke noundef zeroext i1 @_RNvXs18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtB6_11FmtDetailed12fmt_detailed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load i64, ptr %i.a, align 8, !range !221, !alias.scope !9574, !noalias !9570, !noundef !3
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !range !221, !alias.scope !9577, !noalias !9570, !noundef !3
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RNvXs1a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display17TypeDetailsWriterEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a)
  br label %_RNvXs1a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display10TypeWriterEBH_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

_RNvXs1a_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16DisplayUnionTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9570
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_22DisplaySubclassOfGroupNtB6_11FmtDetailed12fmt_detailed(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 8                ; 15 uses
  %i.h = alloca [80 x i8], align 8                ; 16 uses
  %i.i = alloca [80 x i8], align 8                ; 16 uses
  %i.j = alloca [40 x i8], align 16               ; 10 uses
  %i.k = alloca [88 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 16               ; 16 uses
  %i.m = alloca [72 x i8], align 16               ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load <2 x ptr>, ptr %i.q, align 8        ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9580)
  %i.s = load i64, ptr %1, align 8, !range !221, !alias.scope !9580, !noalias !9583, !noundef !3
  %.not.i = icmp eq i64 %i.s, -1
  br i1 %.not.i, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.thread

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.thread: ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 5), !noalias !9585
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !9588, !noalias !9585, !noundef !3 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !9588, !noalias !9585, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(5) @495, i64 5, i1 false)
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !9588, !noalias !9585
  %i.z = add i64 %.pre.i.i.i, 5
  store i64 %i.z, ptr %i.t, align 8, !alias.scope !9588, !noalias !9585
  br label %bb.b

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !9580, !noalias !9583, !nonnull !3, !align !220, !noundef !3
  %i.ac = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @495, i64 noundef 5), !noalias !9580
  br i1 %i.ac, label %bb.dg, label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.thread, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB5_10TypeWriterNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.af = load i8, ptr %i.ae, align 1, !range !215, !noundef !3 ; 7 uses
  %i.ag = icmp eq i8 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8            ; 5 uses
  br i1 %i.ag, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ak
  %i.am = extractelement <2 x ptr> %i.r, i64 0
  %i.an = extractelement <2 x ptr> %i.r, i64 1
  br label %.loopexit.i.outer

.loopexit.i.outer:                                ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i, %bb.c
  %.sroa.0.011.i.ph = phi ptr [ %i.ai, %bb.c ], [ %i.aq, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  %.sroa.04.0.i.ph = phi i8 [ 0, %bb.c ], [ 1, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  %.sroa.03.0.i.ph = phi i1 [ false, %bb.c ], [ %.sroa.03.0.i.ph1226, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  %.sroa.02.0.i.ph = phi i1 [ false, %bb.c ], [ %.sroa.02.0.i.ph1230, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  br label %.loopexit.i.outer1224

.loopexit.i.outer1224:                            ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i, %.loopexit.i.outer
  %.sroa.0.011.i.ph1225 = phi ptr [ %.sroa.0.011.i.ph, %.loopexit.i.outer ], [ %i.aq, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  %.sroa.03.0.i.ph1226 = phi i1 [ %.sroa.03.0.i.ph, %.loopexit.i.outer ], [ true, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ] ; 2 uses
  %.sroa.02.0.i.ph1227 = phi i1 [ %.sroa.02.0.i.ph, %.loopexit.i.outer ], [ %.sroa.02.0.i.ph1230, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  br label %.loopexit.i.outer1228

.loopexit.i.outer1228:                            ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i, %.loopexit.i.outer1224
  %.sroa.0.011.i.ph1229 = phi ptr [ %.sroa.0.011.i.ph1225, %.loopexit.i.outer1224 ], [ %i.aq, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  %.sroa.02.0.i.ph1230 = phi i1 [ %.sroa.02.0.i.ph1227, %.loopexit.i.outer1224 ], [ true, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ] ; 3 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i, %.loopexit.i.outer1228
  %.sroa.0.011.i = phi ptr [ %.sroa.0.011.i.ph1229, %.loopexit.i.outer1228 ], [ %i.aq, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ]
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i, %.loopexit.i
  %i.ao = phi ptr [ %i.aq, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i ], [ %.sroa.0.011.i, %.loopexit.i ] ; 4 uses
  %i.ap = icmp eq ptr %i.ao, %i.al
  br i1 %i.ap, label %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display19numeric_tower_groupINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB1l_5slice4iter4IterNtNtB4_11subclass_of14SubclassOfTypeENCNCNvXs1c_B2_NtB2_22DisplaySubclassOfGroupNtB2_11FmtDetailed12fmt_detailed00EEB6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9592)
  call void @llvm.experimental.noalias.scope.decl(metadata !9595)
  call void @llvm.experimental.noalias.scope.decl(metadata !9598)
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !9601, !noalias !9602
  %i.ar = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.f, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.2.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !noalias !9602
  %i.as = call noundef i8 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType5known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.e, ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.an), !noalias !9612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9611
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtBZ_22DisplaySubclassOfGroupNtBZ_11FmtDetailed12fmt_detailed00INtB7_5FnMutTRNtNtB11_11subclass_of14SubclassOfTypeEE8call_mutB13_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.as, %bb.f ], [ -1, %bb.e ]
  switch i8 %.sroa.0.0.i.i.i.i.i.i, label %.loopexit.i [
    i8 -1, label %bb.d
    i8 8, label %.loopexit.i.outer
    i8 6, label %.loopexit.i.outer1228
    i8 7, label %.loopexit.i.outer1224
  ]

_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display19numeric_tower_groupINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB1l_5slice4iter4IterNtNtB4_11subclass_of14SubclassOfTypeENCNCNvXs1c_B2_NtB2_22DisplaySubclassOfGroupNtB2_11FmtDetailed12fmt_detailed00EEB6_.exit: ; preds = %bb.d
  %or.cond.i = and i1 %.sroa.02.0.i.ph1230, %.sroa.03.0.i.ph1226
  %.sroa.0.0.i58 = select i1 %or.cond.i, i8 %.sroa.04.0.i.ph, i8 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display19numeric_tower_groupINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB1l_5slice4iter4IterNtNtB4_11subclass_of14SubclassOfTypeENCNCNvXs1c_B2_NtB2_22DisplaySubclassOfGroupNtB2_11FmtDetailed12fmt_detailed00EEB6_.exit
  %storemerge = phi i8 [ %.sroa.0.0.i58, %_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display19numeric_tower_groupINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB1l_5slice4iter4IterNtNtB4_11subclass_of14SubclassOfTypeENCNCNvXs1c_B2_NtB2_22DisplaySubclassOfGroupNtB2_11FmtDetailed12fmt_detailed00EEB6_.exit ], [ 2, %bb.b ]
  store i8 %storemerge, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x ptr> %i.r, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.idx = shl nuw nsw i64 %i.ak, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 4 uses
  store ptr %i.ai, ptr %i.n, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9613
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of14SubclassOfTypeEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9613
  %i.ay = call noundef i64 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_of14SubclassOfTypeEENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldB1s_jjNCINvNvXs1_NtB7_6filterINtB3Y_6FilterppEB2G_5count8to_usizeB1s_NCNvXs1c_NtB1w_7displayNtB4X_22DisplaySubclassOfGroupNtB4X_11FmtDetailed12fmt_detaileds0_0E0NCINvXsK_NtB2K_5accumjNtB6r_3Sum3sumINtB3p_3MapBP_B3N_EE0E0EB1y_(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.av, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.az = icmp ult i64 %i.ak, 576460752303423488
  call void @llvm.assume(i1 %i.az)
  %i.ba = sub i64 %i.ak, %i.ay
  %i.bb = load i8, ptr %i.p, align 1, !range !208, !noundef !3 ; 2 uses
  %i.bc = icmp ne i8 %i.bb, 2
  %i.bd = zext i1 %i.bc to i64
  %i.be = add i64 %i.ba, %i.bd                    ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !range !215, !noundef !3 ; 7 uses
  %i.bh = trunc nuw i8 %i.bg to i1                ; 2 uses
  br i1 %i.bh, label %_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bi = icmp ugt i64 %i.be, 5
  %spec.store.select.i = select i1 %i.bi, i64 3, i64 5
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %spec.store.select.i)
  br label %_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit

_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit: ; preds = %._crit_edge, %bb.g
  %.sroa.0.0.i59 = phi i64 [ %.sroa.0.0.i.i, %bb.g ], [ %i.be, %._crit_edge ]
  %i.bj = icmp eq i64 %i.ak, 0
  br i1 %i.bj, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_RNvMs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB6_16TruncationPolicy13display_limit.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !3, !align !201 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !range !208 ; 6 uses
  %i.bo = load <2 x ptr>, ptr %i.ad, align 8      ; 8 uses
  %i.bp = extractelement <2 x ptr> %i.bo, i64 1   ; 12 uses
  %i.bq = extractelement <2 x ptr> %i.bo, i64 0   ; 12 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load <2 x ptr>, ptr %i.br, align 8      ; 8 uses
  %i.bt = extractelement <2 x ptr> %i.bs, i64 1   ; 12 uses
  %i.bu = extractelement <2 x ptr> %i.bs, i64 0   ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load i8, ptr %i.bv, align 4, !range !215 ; 6 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.7244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.8245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  %.sroa.9246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %.sroa.10247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 51
  %.sroa.11248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.8235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  %.sroa.9236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 50
  %.sroa.10237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 51
  %.sroa.11238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.7224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.8225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  %.sroa.9226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 50
  %.sroa.10227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 51
  %.sroa.11228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.8.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.5212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.8215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %.sroa.9216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 34
  %.sroa.10217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 35
  %.sroa.11218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 35
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.7207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.8208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 57
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %.sroa.11209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.ct = extractelement <2 x ptr> %i.r, i64 0
  %i.cu = extractelement <2 x ptr> %i.r, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.02.0.ph422 = phi i8 [ %i.bb, %.lr.ph.lr.ph ], [ 2, %.outer ] ; 2 uses
  %.sroa.03.0.ph421 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.sroa.03.1, %.outer ]
  %.sroa.07.0.ph420 = phi ptr [ %i.ai, %.lr.ph.lr.ph ], [ %i.cv, %.outer ]
  %.sroa.34.0.ph419 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %.sroa.34.2, %.outer ]
  %.sroa.64.0.ph418 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %.sroa.64.2, %.outer ]
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cc
  %.sroa.03.0408 = phi i64 [ %.sroa.03.0.ph421, %.lr.ph ], [ %i.jj, %bb.cc ] ; 7 uses
  %.sroa.07.0407 = phi ptr [ %.sroa.07.0.ph420, %.lr.ph ], [ %i.cv, %bb.cc ] ; 5 uses
  %.sroa.34.0405 = phi i8 [ %.sroa.34.0.ph419, %.lr.ph ], [ %.sroa.34.1, %bb.cc ] ; 14 uses
  %.sroa.64.0403 = phi i8 [ %.sroa.64.0.ph418, %.lr.ph ], [ 1, %bb.cc ] ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.0407, i64 16 ; 4 uses
  %.not = icmp ult i64 %.sroa.03.0408, %.sroa.0.0.i59
  br i1 %.not, label %bb.i, label %.outer._crit_edge

bb.i:                                             ; preds = %bb.h
  %.sroa.038.0.copyload = load i32, ptr %.sroa.07.0407, align 4 ; 2 uses
  %.sroa.340.0..sroa.08.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0407, i64 4
  %.sroa.340.0.copyload = load i32, ptr %.sroa.340.0..sroa.08.0..sroa_idx, align 4 ; 6 uses
  %.sroa.4.0..sroa.08.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0407, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa.08.0..sroa_idx, align 4 ; 6 uses
  %.sroa.544.0..sroa.08.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0407, i64 12
  %.sroa.544.0.copyload = load i32, ptr %.sroa.544.0..sroa.08.0..sroa_idx, align 4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9616)
  %i.cw = load ptr, ptr %i.o, align 8, !alias.scope !9616, !noalias !9619, !nonnull !3, !noundef !3
  %i.cx = load i8, ptr %i.cw, align 1, !range !208, !noalias !9621, !noundef !3 ; 2 uses
  %.not.i60 = icmp ne i8 %i.cx, 2
  %i.cy = icmp eq i32 %.sroa.038.0.copyload, 0
  %or.cond = select i1 %.not.i60, i1 %i.cy, i1 false
  br i1 %or.cond, label %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display23subclass_of_known_class.exit.i, label %bb.k

_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display23subclass_of_known_class.exit.i: ; preds = %bb.i
  %i.cz = load ptr, ptr %i.at, align 8, !alias.scope !9616, !noalias !9619, !nonnull !3, !noundef !3
  %i.da = load ptr, ptr %i.au, align 8, !alias.scope !9616, !noalias !9619, !nonnull !3, !align !220, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9622
  store i32 %.sroa.340.0.copyload, ptr %i.c, align 4, !noalias !9626
  store i32 %.sroa.4.0.copyload, ptr %.sroa.7.4..sroa_idx, align 4, !noalias !9626
  store i32 %.sroa.544.0.copyload, ptr %.sroa.8.4..sroa_idx, align 4, !noalias !9626
  %i.db = call noundef i8 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType5known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.c, ptr noundef nonnull %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.da), !noalias !9627 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9622
  %.not5.i = icmp eq i8 %i.db, -1
  br i1 %.not5.i, label %.thread256, label %bb.j

.thread256:                                       ; preds = %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display23subclass_of_known_class.exit.i
  %i.dc = add nuw i64 %.sroa.03.0408, 1
  br label %bb.n

bb.j:                                             ; preds = %_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display23subclass_of_known_class.exit.i
  %i.dd = trunc nuw i8 %i.cx to i1
  br i1 %i.dd, label %.split, label %_RNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_22DisplaySubclassOfGroupNtB8_11FmtDetailed12fmt_detaileds_0Bc_.exit

.split:                                           ; preds = %bb.j
  %.off.i = add nsw i8 %i.db, -6
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.l, label %.thread

_RNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_22DisplaySubclassOfGroupNtB8_11FmtDetailed12fmt_detaileds_0Bc_.exit: ; preds = %bb.j
  %i.de = and i8 %i.db, -2
  %switch7.i = icmp eq i8 %i.de, 6
  br i1 %switch7.i, label %bb.l, label %.thread

.thread:                                          ; preds = %.split, %_RNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_22DisplaySubclassOfGroupNtB8_11FmtDetailed12fmt_detaileds_0Bc_.exit
  %i.df = add nuw i64 %.sroa.03.0408, 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.dg = add nuw i64 %.sroa.03.0408, 1           ; 4 uses
  switch i32 %.sroa.038.0.copyload, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.ab
    i32 3, label %bb.ao
  ]

bb.l:                                             ; preds = %.split, %_RNCNvXs1c_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7displayNtB8_22DisplaySubclassOfGroupNtB8_11FmtDetailed12fmt_detaileds_0Bc_.exit
  %.not48 = icmp eq i8 %.sroa.02.0.ph422, 2
  br i1 %.not48, label %.outer, label %bb.ci

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %.thread256, %.thread, %bb.k
  %i.dh = phi i64 [ %i.df, %.thread ], [ %i.dg, %bb.k ], [ %i.dc, %.thread256 ] ; 2 uses
  %i.di = icmp eq i32 %.sroa.340.0.copyload, -1
  br i1 %i.di, label %bb.bb, label %bb.bo

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dj = load i64, ptr %i.bq, align 8, !noalias !9628, !noundef !3 ; 2 uses
  %i.dk = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %i.dk)
  %i.dl = add i64 %i.dj, 1                        ; 2 uses
end_hunk_1
