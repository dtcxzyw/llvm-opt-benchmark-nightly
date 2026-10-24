Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.15?download=true
inline.NumInlined: 907
inline.NumDeleted: 496
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTarget14call_signature:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !13, !align !17, !noundef !13 ; 2 uses
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support21constructor_signature(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.f = load i64, ptr %i.a, align 8, !range !18, !alias.scope !1524, !noundef !13
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !1525
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCscdodAO9FK5_5alloc6string6StringE7or_elseNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB1A_10GotoTarget14call_signature0EB1C_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support33call_type_simplified_by_overloads(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %i.e)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCscdodAO9FK5_5alloc6string6StringE7or_elseNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB1A_10GotoTarget14call_signature0EB1C_.exit unwind label %bb.e, !noalias !1524

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %common.resume.i unwind label %bb.f, !noalias !1523

common.resume.i:                                  ; preds = %bb.e
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !1523
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCscdodAO9FK5_5alloc6string6StringE7or_elseNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB1A_10GotoTarget14call_signature0EB1C_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCscdodAO9FK5_5alloc6string6StringE7or_elseNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB1A_10GotoTarget14call_signature0EB1C_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTarget15type_qualifiers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !30, !noundef !13
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !43, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  %i.g = tail call noundef i8 @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel15type_qualifiers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.d, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTarget18from_covering_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i32 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 4                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 12 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [96 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [12 x i8], align 4                ; 4 uses
  %i.x = alloca [56 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 10 uses
  %i.ac = alloca [128 x i8], align 8              ; 20 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.al = call { i64, ptr } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB2_12CoveringNode4node(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0      ; 6 uses
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ao = icmp eq i64 %i.am, 46
  br i1 %i.ao, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.ap = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 6
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i64 %i.ap, 4
  br i1 %i.ar, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node10___CALLSITE, align 8, !nonnull !13, !align !17, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !13, !noundef !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noundef !13
  store i64 5, ptr %i.ai, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.au, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.aw, ptr %.sroa.5304.0..sroa_idx, align 8
  %i.ax = tail call { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger() ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ax, 1      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !13, !nonnull !13
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.bd = load ptr, ptr @_RNvNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node10___CALLSITE, align 8, !nonnull !13, !align !17, !noundef !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bf = call { i64, ptr } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB2_12CoveringNode4node(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0
  %i.bh = extractvalue { i64, ptr } %i.bf, 1
  %i.bi = call noundef i8 @_RNvMsal_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRef4kind(i64 noundef %i.bg, ptr noundef %i.bh)
  store i8 %i.bi, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.ae, ptr %i.ad, align 8
  %.sroa.4308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXsdg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8NodeKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4308.0..sroa_idx, align 8
  store ptr @21, ptr %i.af, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ad, ptr %i.bj, align 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @22, ptr %i.bk, align 8
  store i64 1, ptr %i.ah, align 8
  %.sroa.4310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %.sroa.4310.0..sroa_idx, align 8
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1, ptr %.sroa.5311.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.be, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, ptr noundef nonnull %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.b

bb.g:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @_RNvMNtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB2_13SemanticModel23enter_string_annotation(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 8 %i.an)
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  store i64 -1, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = invoke { i64, ptr } @_RNvMs6j_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRef11as_expr_ref(i64 noundef %i.am, ptr noundef %i.an)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.dv, %bb.k
  %.sroa.0298.1 = phi i1 [ %5, %bb.k ], [ false, %bb.dv ]
  %.pn406 = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.mh, %bb.dv ] ; 2 uses
  %i.bn = load i64, ptr %i.ac, align 8, !range !18, !noundef !13
  %.not408 = icmp eq i64 %i.bn, -1
  %brmerge.not = select i1 %.not408, i1 true, i1 %.sroa.0298.1
  br i1 %brmerge.not, label %common.resume, label %bb.gq

bb.k:                                             ; preds = %.invoke, %bb.gj, %bb.fn, %bb.ee, %.thread617, %bb.fx, %bb.fv, %bb.ft, %bb.fs, %bb.fm, %bb.fj, %bb.fi, %bb.ex, %bb.eu, %bb.es, %bb.ej, %bb.eg, %bb.ec, %bb.dy, %bb.ds, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelECskEUeM34gmJU_6ty_ide.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelECskEUeM34gmJU_6ty_ide.exit523, %bb.bo, %bb.bk, %bb.bf, %bb.ap, %switch.lookup753, %bb.ag, %bb.z, %bb.s, %bb.o, %bb.i
  %.sroa.0298.2 = phi i8 [ 1, %bb.gj ], [ 1, %.thread617 ], [ 1, %bb.eg ], [ 1, %bb.ee ], [ 1, %bb.ec ], [ 1, %bb.ds ], [ 1, %bb.i ], [ 1, %bb.bf ], [ 1, %bb.eu ], [ 1, %bb.z ], [ 1, %bb.o ], [ 1, %bb.s ], [ 1, %bb.ag ], [ 1, %bb.dy ], [ 1, %bb.bk ], [ 1, %.invoke ], [ 1, %bb.ap ], [ 1, %switch.lookup753 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelECskEUeM34gmJU_6ty_ide.exit523 ], [ %.sroa.0298.3, %bb.bo ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model13SemanticModelECskEUeM34gmJU_6ty_ide.exit ], [ 1, %bb.fx ], [ 1, %bb.fv ], [ 1, %bb.ft ], [ 1, %bb.fs ], [ 1, %bb.ex ], [ 1, %bb.ej ], [ 1, %bb.fn ], [ 1, %bb.fm ], [ 1, %bb.fj ], [ 1, %bb.fi ], [ 1, %bb.es ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = trunc nuw i8 %.sroa.0298.2 to i1
  %5 = xor i1 %i.bp, true
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.bq = extractvalue { i64, ptr } %i.bm, 0      ; 4 uses
  %i.br = extractvalue { i64, ptr } %i.bm, 1      ; 6 uses
  %.not = icmp eq i64 %i.bq, -1
  br i1 %.not, label %bb.az, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %i.bq, ptr %i.ab, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = load i64, ptr %i.ac, align 8, !range !18, !noundef !13
  %.not370 = icmp eq i64 %i.bt, -1
  br i1 %.not370, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bq, label %.thread574 [
    i64 31, label %bb.o
    i64 19, label %bb.s
    i64 20, label %bb.s
    i64 21, label %bb.s
    i64 22, label %bb.s
    i64 23, label %bb.s
    i64 24, label %bb.s
    i64 3, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  %i.bu = invoke { i32, i32 } @_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
          to label %bb.p unwind label %bb.k       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bv = extractvalue { i32, i32 } %i.bu, 0
  %i.bw = extractvalue { i32, i32 } %i.bu, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !13 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.thread574, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.p
  %.idx.i = shl nuw nsw i64 %i.ca, 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i, %.lr.ph.i.preheader.i
  %i.cd = phi ptr [ %i.ce, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i ], [ %i.cc, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -16 ; 3 uses
  %.val8.i.i = load i64, ptr %i.ce, align 8, !range !14, !noalias !1572, !noundef !13
  %i.cf = getelementptr i8, ptr %i.cd, i64 -8
  %.val9.i.i = load ptr, ptr %i.cf, align 8, !noalias !1572, !noundef !13 ; 3 uses
  %i.cg = icmp eq i64 %.val8.i.i, 53
  br i1 %i.cg, label %switch.lookup, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i

switch.lookup:                                    ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1572, !nonnull !13, !noundef !13 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !range !32, !noalias !1572, !noundef !13 ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTargetNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.ck
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %switch.ext
  %.sroa.0.0.i.i.i.i.i.i = load i32, ptr %i.cl, align 4, !noalias !1572, !noundef !13
  %i.cm = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i, %i.bv
  br i1 %i.cm, label %bb.q, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i

bb.q:                                             ; preds = %switch.lookup
  %i.cn = zext nneg i32 %i.cj to i64
  %switch.gep736 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTargetNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.157, i64 %i.cn
  %switch.load737 = load i8, ptr %switch.gep736, align 1
  %switch.ext738 = zext i8 %switch.load737 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %switch.ext738
  %.sroa.34.0.i.i.i.i.i.i = load i32, ptr %i.co, align 4, !noalias !1572, !noundef !13
  %i.cp = icmp eq i32 %.sroa.34.0.i.i.i.i.i.i, %i.bw
  br i1 %i.cp, label %_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i: ; preds = %bb.q, %switch.lookup, %.lr.ph.i.i
  %i.cq = icmp eq ptr %i.by, %i.ce
  br i1 %i.cq, label %.thread574, label %.lr.ph.i.i

_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit: ; preds = %bb.q
  store i8 0, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 26, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val9.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.aj, %_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit469, %bb.ar, %bb.ab, %bb.aa, %_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.as

bb.s:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.cr = invoke { i32, i32 } @_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
          to label %bb.t unwind label %bb.k       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.cs = extractvalue { i32, i32 } %i.cr, 0
  %i.ct = extractvalue { i32, i32 } %i.cr, 1
  br label %bb.x

bb.u:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.cv = load i8, ptr %i.cu, align 4, !range !46, !noundef !13
  %switch411.not = icmp samesign ult i8 %i.cv, 2
  br i1 %switch411.not, label %.thread574, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.br, align 8, !nonnull !13, !noundef !13
  %i.cx = load i32, ptr %i.cw, align 8, !range !32, !noundef !13
  %.off412 = add nsw i32 %i.cx, -19
  %switch413 = icmp ult i32 %.off412, 6
  br i1 %switch413, label %bb.w, label %.thread574

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !noundef !13
  %i.da = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.db = load i32, ptr %i.da, align 4, !noundef !13
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w
  %.sroa.11.0 = phi i32 [ %i.db, %bb.w ], [ %i.ct, %bb.t ]
  %.sroa.8.0 = phi i32 [ %i.cz, %bb.w ], [ %i.cs, %bb.t ]
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !13 ; 8 uses
  %i.dg = icmp eq i64 %i.df, 0                    ; 2 uses
  br i1 %i.dg, label %.thread580, label %.lr.ph.i.preheader.i442

.lr.ph.i.preheader.i442:                          ; preds = %bb.x
  %.idx.i443 = shl nuw nsw i64 %i.df, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i443
  br label %.lr.ph.i.i444

.lr.ph.i.i444:                                    ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i447, %.lr.ph.i.preheader.i442
  %i.di = phi ptr [ %i.dj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i447 ], [ %i.dh, %.lr.ph.i.preheader.i442 ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -16 ; 3 uses
  %.val8.i.i445 = load i64, ptr %i.dj, align 8, !range !14, !noalias !1573, !noundef !13
  %i.dk = getelementptr i8, ptr %i.di, i64 -8
  %.val9.i.i446 = load ptr, ptr %i.dk, align 8, !noalias !1573, !noundef !13 ; 4 uses
  %i.dl = icmp eq i64 %.val8.i.i445, 53
  br i1 %i.dl, label %switch.lookup739, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i447

switch.lookup739:                                 ; preds = %.lr.ph.i.i444
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i446) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.val9.i.i446, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !1573, !nonnull !13, !noundef !13 ; 4 uses
  %i.do = load i32, ptr %i.dn, align 8, !range !32, !noalias !1573, !noundef !13 ; 3 uses
  %i.dp = zext nneg i32 %i.do to i64
  %switch.gep740 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTargetNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.dp
  %switch.load741 = load i8, ptr %switch.gep740, align 1
  %switch.ext742 = zext i8 %switch.load741 to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %switch.ext742
  %.sroa.0.0.i.i.i.i.i.i452 = load i32, ptr %i.dq, align 4, !noalias !1573, !noundef !13
  %i.dr = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i452, %.sroa.8.0
  br i1 %i.dr, label %bb.y, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i447

bb.y:                                             ; preds = %switch.lookup739
  %i.ds = zext nneg i32 %i.do to i64
  %switch.gep743 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCskEUeM34gmJU_6ty_ide4gotoNtB5_10GotoTargetNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.157, i64 %i.ds
  %switch.load744 = load i8, ptr %switch.gep743, align 1
  %switch.ext745 = zext i8 %switch.load744 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %switch.ext745
  %.sroa.34.0.i.i.i.i.i.i453 = load i32, ptr %i.dt, align 4, !noalias !1573, !noundef !13
  %i.du = icmp eq i32 %.sroa.34.0.i.i.i.i.i.i453, %.sroa.11.0
  br i1 %i.du, label %_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit455, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i447

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i447: ; preds = %bb.y, %switch.lookup739, %.lr.ph.i.i444
  %i.dv = icmp eq ptr %i.dd, %i.dj
  br i1 %i.dv, label %.loopexit628, label %.lr.ph.i.i444

.loopexit628:                                     ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied13copy_try_foldNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefuINtNtNtBa_3ops12control_flow11ControlFlowRNtB15_13ExprSubscriptENCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB13_B2E_NCNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB4d_10GotoTarget18from_covering_node00E0E0B4f_.exit.i.i447
  %.off414 = add i64 %i.bq, -19
  %switch415 = icmp ult i64 %.off414, 6
  br i1 %switch415, label %bb.ac, label %.thread580

_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit455: ; preds = %bb.y
  %i.dw = icmp eq i32 %i.do, 19
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit455
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dy = invoke { ptr, i64 } @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue6to_str(ptr noundef nonnull align 8 %i.dx)
          to label %bb.ab unwind label %bb.k      ; 2 uses

bb.aa:                                            ; preds = %_RNCNvMs0_NtCskEUeM34gmJU_6ty_ide4gotoNtB7_10GotoTarget18from_covering_node0B9_.exit455
  store i8 0, ptr %0, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 26, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val9.i.i446, ptr %.sroa.558.0..sroa_idx, align 8
  br label %bb.r
end_hunk_0
