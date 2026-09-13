Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.15?download=true
inline.NumInlined: 5570
inline.NumDeleted: 2226
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules25unnecessary_generator_set25unnecessary_generator_set:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !13, !align !27, !noundef !13
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.ad, %bb.ae
  %.sroa.02.0 = phi ptr [ %i.cr, %bb.ae ], [ %i.cp, %bb.ad ]
  %i.cs = load i32, ptr %i.ah, align 8, !range !18, !noundef !13
  %i.ct = zext nneg i32 %i.cs to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.ct
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %switch.ext
  %.sroa.34.0.i = load i32, ptr %i.cu, align 4, !noundef !13 ; 2 uses
  %i.cv = load i32, ptr %i.ay, align 4, !noundef !13 ; 2 uses
  %.not22 = icmp ugt i32 %.sroa.34.0.i, %i.cv
  br i1 %.not22, label %bb.ag, label %bb.ah, !prof !16

bb.af:                                            ; preds = %bb.ao, %bb.al, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit, %bb.ah, %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ag:                                            ; preds = %switch.lookup
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @360) #52
          to label %bb.ai unwind label %bb.af

bb.ah:                                            ; preds = %switch.lookup
  %i.cx = invoke { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.0, i32 noundef %.sroa.34.0.i, i32 noundef %i.cv)
          to label %bb.aj unwind label %bb.af     ; 2 uses

bb.ai:                                            ; preds = %bb.bi, %bb.bg, %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0      ; 3 uses
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %.idx = mul nuw nsw i64 %i.cz, 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx
  %i.db = icmp eq i64 %i.cz, 0
  br i1 %i.db, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules25unnecessary_generator_set25unnecessary_generator_set0EB2y_.exit.thread, label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.da
  br i1 %i.dd, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules25unnecessary_generator_set25unnecessary_generator_set0EB2y_.exit.thread, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules25unnecessary_generator_set25unnecessary_generator_set0EB2y_.exit.thread: ; preds = %bb.ak, %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.df = load i32, ptr %i.de, align 4, !noundef !13
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %i.dg = phi ptr [ %i.dc, %bb.ak ], [ %i.cy, %bb.aj ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  %i.di = load i8, ptr %i.dh, align 2, !range !64, !noalias !8924, !noundef !13
  %i.dj = icmp eq i8 %i.di, 25
  br i1 %i.dj, label %bb.al, label %bb.ak

bb.al:                                            ; preds = %.lr.ph
  %i.dk = invoke noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) dereferenceable_or_null(12) %i.dg)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.af

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules25unnecessary_generator_set25unnecessary_generator_set0EB2y_.exit.thread, %bb.al
  %.sroa.02.0.i = phi i32 [ %i.df, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules25unnecessary_generator_set25unnecessary_generator_set0EB2y_.exit.thread ], [ %i.dk, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dl = load i32, ptr %i.aw, align 8, !noundef !13
  %i.dm = load i32, ptr %i.ay, align 4, !noundef !13
  %i.dn = load ptr, ptr %i.be, align 8, !nonnull !13, !align !27, !noundef !13
  invoke void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5fixes7pad_end(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 1, i32 noundef %i.dl, i32 noundef %i.dm, ptr noundef nonnull align 8 %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
          to label %bb.am unwind label %bb.af

bb.am:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit
  %i.do = add i32 %.sroa.02.0.i, -1               ; 2 uses
  %i.dp = load i32, ptr %i.ay, align 4, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !8926
  %.not.i40 = icmp ugt i32 %i.do, %i.dp
  br i1 %.not.i40, label %bb.an, label %bb.ao, !prof !16

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #52
          to label %bb.ap unwind label %bb.aq, !noalias !8925

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.do, i32 noundef %i.dp)
          to label %bb.as unwind label %bb.af

bb.ap:                                            ; preds = %bb.an
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #53
          to label %bb.bs unwind label %bb.ar, !noalias !8925

bb.ar:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8925
  unreachable

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.dt = load i8, ptr %i.ds, align 4, !range !20, !noundef !13
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix12unsafe_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.av unwind label %.split

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dv = invoke { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ah)
          to label %bb.ax unwind label %.split.thread ; 2 uses

.body53:                                          ; preds = %bb.be
  br i1 %.sroa.05.2, label %bb.br, label %.body

.split.thread:                                    ; preds = %bb.ba, %switch.lookup91, %bb.az, %bb.au
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.split:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.at
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.bq unwind label %bb.w

bb.ax:                                            ; preds = %bb.au
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %i.dx = extractvalue { i64, ptr } %i.dv, 1
  %i.dy = load ptr, ptr %i.co, align 8, !align !27, !noundef !13 ; 2 uses
  %.not23 = icmp eq ptr %i.dy, null
  br i1 %.not23, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !13, !align !27, !noundef !13
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.sroa.03.0 = phi ptr [ %i.ea, %bb.ay ], [ %i.dy, %bb.ax ]
  invoke void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses19parenthesized_range(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.k, i64 noundef %i.dw, ptr noundef %i.dx, i64 noundef 78, ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.03.0)
          to label %switch.lookup91 unwind label %.split.thread

switch.lookup91:                                  ; preds = %bb.az
  %i.eb = load i32, ptr %i.ah, align 8, !range !18, !noundef !13 ; 2 uses
  %i.ec = zext nneg i32 %i.eb to i64
  %switch.gep92 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.844, i64 %i.ec
  %switch.load93 = load i8, ptr %switch.gep92, align 1
  %switch.ext94 = zext i8 %switch.load93 to i64
  %i.ed = zext nneg i32 %i.eb to i64
  %switch.gep95 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.ed
  %switch.load96 = load i8, ptr %switch.gep95, align 1
  %switch.ext97 = zext i8 %switch.load96 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ah, i64 %switch.ext94
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ah, i64 %switch.ext97
  %.sroa.0.0.i47 = load i32, ptr %i.ee, align 4, !noundef !13
  %.sroa.34.0.i48 = load i32, ptr %i.ef, align 4, !noundef !13
  %i.eg = load i32, ptr %i.k, align 4, !range !65, !noundef !13
  %i.eh = trunc nuw i32 %i.eg to i1               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.el = load i32, ptr %i.ek, align 4
  %.sroa.3.0 = select i1 %i.eh, i32 %i.el, i32 %.sroa.34.0.i48
  %.sroa.04.0 = select i1 %i.eh, i32 %i.ej, i32 %.sroa.0.0.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noundef nonnull align 8 %0)
          to label %bb.ba unwind label %.split.thread

bb.ba:                                            ; preds = %switch.lookup91
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i, ptr noundef nonnull align 8 %i.ah)
          to label %bb.bb unwind label %.split.thread

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.en = load i64, ptr %i.em, align 8, !noundef !13 ; 6 uses
  %i.eo = icmp sgt i64 %i.en, -1
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nsw i64 %i.en, -1                   ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %.not.i51 = icmp eq i64 %i.ep, 0
  br i1 %.not.i51, label %bb.bg, label %2

2:                                                ; preds = %bb.bb
  %.not5.i = icmp samesign ugt i64 %i.en, 1
  br i1 %.not5.i, label %bb.bc, label %.split.i

.split.i:                                         ; preds = %2
  %3 = icmp eq i64 %i.en, 1
  br i1 %3, label %bb.bd, label %bb.bg

bb.bc:                                            ; preds = %2
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !8927, !noundef !13
  %i.eu = icmp sgt i8 %i.et, -65
  br i1 %i.eu, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc, %.split.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !8927, !noundef !13
  %i.ex = icmp sgt i8 %i.ew, -65
  br i1 %i.ex, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.bf
  %.sroa.05.2 = phi i1 [ true, %bb.bi ], [ false, %bb.bm ], [ true, %bb.bk ], [ true, %bb.bf ], [ true, %bb.bg ]
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #53
          to label %.body53 unwind label %bb.u

bb.bf:                                            ; preds = %bb.bd
  %i.ez = add nsw i64 %i.en, -2                   ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ez, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bh unwind label %bb.be

bb.bg:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.en, i64 noundef 1, i64 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #52
          to label %bb.ai unwind label %bb.be

bb.bh:                                            ; preds = %bb.bf
  %i.fb = load i64, ptr %i.c, align 8, !range !31, !noundef !13
  %i.fc = trunc nuw i64 %i.fb to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !range !32, !noundef !13 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fc, label %bb.bi, label %bb.bj, !prof !16

bb.bi:                                            ; preds = %bb.bh
  %i.fg = load i64, ptr %i.ff, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fe, i64 %i.fg) #52
          to label %bb.ai unwind label %bb.be

bb.bj:                                            ; preds = %bb.bh
  %i.fh = load ptr, ptr %i.ff, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.fi = icmp samesign ule i64 %i.ez, %i.fe
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not25 = icmp eq i64 %i.ez, 0
  br i1 %.not25, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  store i64 %i.fe, ptr %i.h, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.fh, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ez, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i32 noundef %.sroa.04.0, i32 noundef %.sroa.3.0)
          to label %bb.bm unwind label %bb.be

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull align 1 %i.fa, i64 %i.ez, i1 false)
  br label %bb.bk

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix12unsafe_editsANtNtB5_4edit4Editj2_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.bn unwind label %bb.be

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aw

bb.bq:                                            ; preds = %bb.aw
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.d

bb.br:                                            ; preds = %.split.thread, %.body53
  %.pn2686 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %i.ey, %.body53 ] ; 2 uses
  %.val34 = load ptr, ptr %i.m, align 8, !noundef !13 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val35 = load i64, ptr %i.fm, align 8          ; 2 uses
  %i.fn = icmp eq ptr %.val34, null
  %i.fo = icmp eq i64 %.val35, 0
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %bb.bs, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34, i64 noundef %.val35, i64 noundef 1) #55
  br label %bb.bs

bb.bs:                                            ; preds = %bb.af, %bb.aq, %bb.br, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  %.pn26.pn.ph = phi { ptr, i32 } [ %i.dq, %bb.aq ], [ %i.cw, %bb.af ], [ %.pn2686, %bb.br ], [ %.pn2686, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i ] ; 2 uses
  %.val32 = load ptr, ptr %i.e, align 8, !noundef !13 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val33 = load i64, ptr %i.fp, align 8          ; 2 uses
  %i.fq = icmp eq ptr %.val32, null
  %i.fr = icmp eq i64 %.val33, 0
  %or.cond.i.i56 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond.i.i56, label %.body, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i57

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i57: ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %.val33, i64 noundef 1) #55
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules26unnecessary_generator_list26unnecessary_generator_list(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [12 x i8], align 4                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 3 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [128 x i8], align 8               ; 7 uses
  %i.y = alloca [128 x i8], align 8               ; 8 uses
  %i.z = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !13, !noundef !13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.ae, align 8, !nonnull !13, !noundef !13
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !13
  %i.ai = tail call noundef align 8 ptr @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions7helpers43exactly_one_argument_with_matching_function(ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 4, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.ab, i64 noundef %i.ad, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ah) ; 13 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load i32, ptr %i.ai, align 8, !range !18, !noundef !13
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19has_builtin_binding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 4)
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.q, %bb.c, %bb.br, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !13
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !13 ; 2 uses
  %i.av = icmp ult i64 %i.au, 128102389400760776
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.n, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !13, !align !27, !noundef !13
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules21flake8_comprehensions5rules26unnecessary_generator_list24UnnecessaryGeneratorListEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noundef nonnull align 8 %i.bc, i1 noundef zeroext false, i32 noundef %i.ay, i32 noundef %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.u unwind label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 180
  %i.be = load i8, ptr %i.bd, align 4, !range !20, !noundef !13
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules26unnecessary_generator_list26unnecessary_generator_list:bb.a

bb.ae:                                            ; preds = %bb.ap, %bb.ak, %bb.am, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit, %bb.ag, %bb.af
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.af:                                            ; preds = %switch.lookup
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #52
          to label %bb.ah unwind label %bb.ae

bb.ag:                                            ; preds = %switch.lookup
  %i.dd = invoke { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.0, i32 noundef %.sroa.34.0.i, i32 noundef %i.db)
          to label %bb.ai unwind label %bb.ae     ; 2 uses

bb.ah:                                            ; preds = %bb.bj, %bb.bh, %bb.am, %bb.af, %bb.v
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.de = extractvalue { ptr, i64 } %i.dd, 0      ; 3 uses
  %i.df = extractvalue { ptr, i64 } %i.dd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  %.idx = mul nuw nsw i64 %i.df, 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules26unnecessary_generator_list26unnecessary_generator_list0EB2y_.exit.thread, label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %i.dm, i64 12 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.dg
  br i1 %i.dj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules26unnecessary_generator_list26unnecessary_generator_list0EB2y_.exit.thread, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules26unnecessary_generator_list26unnecessary_generator_list0EB2y_.exit.thread: ; preds = %bb.aj, %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !13
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %i.dm = phi ptr [ %i.di, %bb.aj ], [ %i.de, %bb.ai ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 10
  %i.do = load i8, ptr %i.dn, align 2, !range !64, !noalias !8943, !noundef !13
  %i.dp = icmp eq i8 %i.do, 25
  br i1 %i.dp, label %bb.ak, label %bb.aj

bb.ak:                                            ; preds = %.lr.ph
  %i.dq = invoke noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) dereferenceable_or_null(12) %i.dm)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ae

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules26unnecessary_generator_list26unnecessary_generator_list0EB2y_.exit.thread, %bb.ak
  %.sroa.02.0.i = phi i32 [ %i.dl, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules26unnecessary_generator_list26unnecessary_generator_list0EB2y_.exit.thread ], [ %i.dq, %bb.ak ]
  %i.dr = add i32 %.sroa.02.0.i, -1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.al unwind label %bb.ae

bb.al:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE6map_orNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNvYBJ_NtNtB1G_6traits6Ranged3endECsEhZmuQNqkz_11ruff_linter.exit
  %i.ds = load i64, ptr %i.d, align 8, !range !31, !noundef !13
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !32, !noundef !13 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.am, label %bb.an, !prof !16

bb.am:                                            ; preds = %bb.al
  %i.dx = load i64, ptr %i.dw, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dx) #52
          to label %bb.ah unwind label %bb.ae

bb.an:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr %i.dw, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.dz = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 93, ptr %i.dy, align 1
  %i.ea = load i32, ptr %i.az, align 4, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8944
  store i64 %i.dv, ptr %i.a, align 8, !noalias !8945
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.dy, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !8945
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.578.0..sroa_idx, align 8, !noalias !8945
  %.not.i53 = icmp ugt i32 %i.dr, %i.ea
  br i1 %.not.i53, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #52
          to label %bb.aq unwind label %bb.ar, !noalias !8944

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.dr, i32 noundef %i.ea)
          to label %bb.at unwind label %bb.ae

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #53
          to label %bb.bt unwind label %bb.as, !noalias !8944

bb.as:                                            ; preds = %bb.ar
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8944
  unreachable

bb.at:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8944
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %i.ee = load i8, ptr %i.ed, align 4, !range !20, !noundef !13
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix12unsafe_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.aw unwind label %.split110

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.eg = invoke { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.ai)
          to label %bb.ay unwind label %.split110.thread ; 2 uses

.body66:                                          ; preds = %bb.bf
  br i1 %.sroa.05.2, label %bb.bs, label %.body

.split110.thread:                                 ; preds = %bb.bb, %switch.lookup116, %bb.ba, %bb.av
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.split110:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.au
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.br unwind label %bb.t

bb.ay:                                            ; preds = %bb.av
  %i.eh = extractvalue { i64, ptr } %i.eg, 0
  %i.ei = extractvalue { i64, ptr } %i.eg, 1
  %i.ej = load ptr, ptr %i.cu, align 8, !align !27, !noundef !13 ; 2 uses
  %.not34 = icmp eq ptr %i.ej, null
  br i1 %.not34, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !13, !align !27, !noundef !13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.sroa.03.0 = phi ptr [ %i.el, %bb.az ], [ %i.ej, %bb.ay ]
  invoke void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses19parenthesized_range(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.m, i64 noundef %i.eh, ptr noundef %i.ei, i64 noundef 78, ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.03.0)
          to label %switch.lookup116 unwind label %.split110.thread

switch.lookup116:                                 ; preds = %bb.ba
  %i.em = load i32, ptr %i.ai, align 8, !range !18, !noundef !13 ; 2 uses
  %i.en = zext nneg i32 %i.em to i64
  %switch.gep117 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.844, i64 %i.en
  %switch.load118 = load i8, ptr %switch.gep117, align 1
  %switch.ext119 = zext i8 %switch.load118 to i64
  %i.eo = zext nneg i32 %i.em to i64
  %switch.gep120 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.eo
  %switch.load121 = load i8, ptr %switch.gep120, align 1
  %switch.ext122 = zext i8 %switch.load121 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ai, i64 %switch.ext119
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %switch.ext122
  %.sroa.0.0.i60 = load i32, ptr %i.ep, align 4, !noundef !13
  %.sroa.34.0.i61 = load i32, ptr %i.eq, align 4, !noundef !13
  %i.er = load i32, ptr %i.m, align 4, !range !65, !noundef !13
  %i.es = trunc nuw i32 %i.er to i1               ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ew = load i32, ptr %i.ev, align 4
  %.sroa.3.0 = select i1 %i.es, i32 %i.ew, i32 %.sroa.34.0.i61
  %.sroa.04.0 = select i1 %i.es, i32 %i.eu, i32 %.sroa.0.0.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noundef nonnull align 8 %0)
          to label %bb.bb unwind label %.split110.thread

bb.bb:                                            ; preds = %switch.lookup116
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.k, ptr noundef nonnull align 8 %i.ai)
          to label %bb.bc unwind label %.split110.thread

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !13 ; 6 uses
  %i.ez = icmp sgt i64 %i.ey, -1
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nsw i64 %i.ey, -1                   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %.not.i64 = icmp eq i64 %i.fa, 0
  br i1 %.not.i64, label %bb.bh, label %2

2:                                                ; preds = %bb.bc
  %.not5.i = icmp samesign ugt i64 %i.ey, 1
  br i1 %.not5.i, label %bb.bd, label %.split.i

.split.i:                                         ; preds = %2
  %3 = icmp eq i64 %i.ey, 1
  br i1 %3, label %bb.be, label %bb.bh

bb.bd:                                            ; preds = %2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !8946, !noundef !13
  %i.ff = icmp sgt i8 %i.fe, -65
  br i1 %i.ff, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd, %.split.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !8946, !noundef !13
  %i.fi = icmp sgt i8 %i.fh, -65
  br i1 %i.fi, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bg
  %.sroa.05.2 = phi i1 [ true, %bb.bj ], [ false, %bb.bn ], [ true, %bb.bl ], [ true, %bb.bg ], [ true, %bb.bh ]
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #53
          to label %.body66 unwind label %bb.r

bb.bg:                                            ; preds = %bb.be
  %i.fk = add nsw i64 %i.ey, -2                   ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.fk, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bi unwind label %bb.bf

bb.bh:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef %i.ey, i64 noundef 1, i64 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #52
          to label %bb.ah unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bg
  %i.fm = load i64, ptr %i.c, align 8, !range !31, !noundef !13
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !range !32, !noundef !13 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fn, label %bb.bj, label %bb.bk, !prof !16

bb.bj:                                            ; preds = %bb.bi
  %i.fr = load i64, ptr %i.fq, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fp, i64 %i.fr) #52
          to label %bb.ah unwind label %bb.bf

bb.bk:                                            ; preds = %bb.bi
  %i.fs = load ptr, ptr %i.fq, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.ft = icmp samesign ule i64 %i.fk, %i.fp
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not36 = icmp eq i64 %i.fk, 0
  br i1 %.not36, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  store i64 %i.fp, ptr %i.j, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fs, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.fk, ptr %.sroa.623.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %.sroa.04.0, i32 noundef %.sroa.3.0)
          to label %bb.bn unwind label %bb.bf

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 1 %i.fl, i64 %i.fk, i1 false)
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix12unsafe_editsANtNtB5_4edit4Editj2_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.bo unwind label %bb.bf

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %.split110

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ax

bb.br:                                            ; preds = %bb.ax
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.d

bb.bs:                                            ; preds = %.split110.thread, %.body66
  %.pn37111 = phi { ptr, i32 } [ %lpad.thr_comm, %.split110.thread ], [ %i.fj, %.body66 ] ; 2 uses
  %.val47 = load ptr, ptr %i.n, align 8, !noundef !13 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val48 = load i64, ptr %i.fx, align 8          ; 2 uses
  %i.fy = icmp eq ptr %.val47, null
  %i.fz = icmp eq i64 %.val48, 0
  %or.cond.i.i = select i1 %i.fy, i1 true, i1 %i.fz
  br i1 %or.cond.i.i, label %bb.bt, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47, i64 noundef %.val48, i64 noundef 1) #55
  br label %bb.bt

bb.bt:                                            ; preds = %bb.ae, %bb.ar, %bb.bs, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  %.pn39.ph = phi { ptr, i32 } [ %i.eb, %bb.ar ], [ %i.dc, %bb.ae ], [ %.pn37111, %bb.bs ], [ %.pn37111, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i ] ; 2 uses
  %.val45 = load ptr, ptr %i.g, align 8, !noundef !13 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val46 = load i64, ptr %i.ga, align 8          ; 2 uses
  %i.gb = icmp eq ptr %.val45, null
  %i.gc = icmp eq i64 %.val46, 0
  %or.cond.i.i69 = select i1 %i.gb, i1 true, i1 %i.gc
  br i1 %or.cond.i.i69, label %.body, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i70

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i70: ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45, i64 noundef %.val46, i64 noundef 1) #55
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions5rules34unnecessary_double_cast_or_process34unnecessary_double_cast_or_process(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 128102389400760776) %4, ptr noundef nonnull align 8 %5, i64 noundef range(i64 0, 76861433640456466) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !range !18, !noundef !13
  %i.h = icmp eq i32 %i.g, 16
  br i1 %i.h, label %bb.c, label %.thread67

.thread67:                                        ; preds = %bb.q, %.thread, %bb.z, %bb.y, %bb.h, %bb.g, %bb.f, %bb.ac, %bb.ae, %bb.ao, %bb.t, %bb.m, %bb.ab, %bb.aa, %bb.n, %bb.j, %bb.e, %bb.c, %bb.a, %bb.i, %bb.d, %bb.p, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = tail call { ptr, i64 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_builtin_symbol(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.k, ptr noundef nonnull align 8 %2) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 18 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 12 uses
  %.not42 = icmp eq ptr %i.m, null
  br i1 %.not42, label %.thread67, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %.thread67 [
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 3, label %bb.g
    i64 8, label %bb.h
    i64 6, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 1
  %i.p = icmp ne i32 %i.o, 1953720684
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %.thread67

bb.f:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.m, align 1
  %i.t = xor i32 %i.s, 1819309428
  %i.u = getelementptr i8, ptr %i.m, i64 4
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.w, 101
  %i.y = or i32 %i.t, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %.thread67

bb.g:                                             ; preds = %bb.d
  %i.ac = load i16, ptr %i.m, align 1
  %i.ad = xor i16 %i.ac, 25971
  %i.ae = getelementptr i8, ptr %i.m, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i16
  %i.ah = xor i16 %i.ag, 116
  %i.ai = or i16 %i.ad, %i.ah
  %i.aj = icmp ne i16 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %.thread67

bb.h:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.m, align 1
  %i.an = icmp ne i64 %i.am, 7234315311606293874
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %.thread67

bb.i:                                             ; preds = %bb.d
  %i.aq = load i32, ptr %i.m, align 1
  %i.ar = xor i32 %i.aq, 1953656691
  %i.as = getelementptr i8, ptr %i.m, i64 4
  %i.at = load i16, ptr %i.as, align 1
  %i.au = zext i16 %i.at to i32
  %i.av = xor i32 %i.au, 25701
  %i.aw = or i32 %i.ar, %i.av
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.j, label %.thread67
end_hunk_1
