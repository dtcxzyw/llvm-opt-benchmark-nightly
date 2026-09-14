Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules16ends_with_period16ends_with_period:bb.a
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %1, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.p = call { ptr, i64 } @_RNvXs2_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  call void @_RNvXNtCs9BeaGo73rC4_16ruff_source_file8newlineseNtB2_17UniversalNewlines18universal_newlines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !6828)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6828, !noalias !6829, !noundef !6 ; 8 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.n, align 8, !alias.scope !6828, !noalias !6829, !nonnull !6, !noundef !6 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6830)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  %i.aa = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !6831, !nonnull !6, !noundef !6
  %i.ab = call { i64, ptr } %i.aa(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.y, ptr noundef nonnull readonly %i.z), !noalias !6832, !inline_history !0 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ae = extractvalue { i64, ptr } %i.ab, 1
  %i.af = call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.ae, ptr noundef nonnull readonly %i.y), !noalias !6833 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.af, %i.w
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !6830, !noalias !6833, !noundef !6
  %cond.i = icmp eq i8 %i.ah, 13
  br i1 %cond.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ai = add nuw i64 %i.af, 1                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.w
  br i1 %i.aj, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !6830, !noalias !6833, !noundef !6
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.an = phi i64 [ 1, %.thread.i ], [ 2, %bb.e ]
  %i.ao = add i64 %i.an, %i.af                    ; 7 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp ult i64 %i.ao, %i.w
  br i1 %.not.i.i, label %bb.h, label %.split3.i.i

.split3.i.i:                                      ; preds = %bb.g
  %i.aq = icmp eq i64 %i.ao, %i.w
  br i1 %i.aq, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !6834, !noalias !6835, !noundef !6
  %i.at = icmp sgt i8 %i.as, -65
  br i1 %i.at, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !6828, !noalias !6829, !noundef !6
  br label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i: ; preds = %.split3.i.i, %bb.h, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !alias.scope !6828, !noalias !6829, !noundef !6
  %i.ay = icmp ugt i64 %i.ao, 4294967295
  br i1 %i.ay, label %bb.j, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !9

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6836
  store i8 2, ptr %i.e, align 1, !noalias !6836
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @139, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1589) #55, !noalias !6833
  unreachable

bb.k:                                             ; preds = %bb.h, %.split3.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.w, i64 noundef 0, i64 noundef %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @550) #55, !noalias !6833
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, %bb.i
  %.sroa.9.0.ph = phi i32 [ %i.av, %bb.i ], [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i ]
  %.sroa.8.0.ph = phi i64 [ %i.w, %bb.i ], [ %i.ao, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.y, ptr %i.m, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.8.0.ph, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8
  %i.az = call { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m) ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  %i.bc = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.bb) ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 14 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1      ; 6 uses
  %.not.i91 = icmp samesign ult i64 %i.be, 6
  br i1 %.not.i91, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge, label %.split

.split:                                           ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %i.bf = load i32, ptr %i.bd, align 1
  %i.bg = xor i32 1918988346, %i.bf
  %i.bh = getelementptr i8, ptr %i.bd, i64 4
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = zext i16 %i.bi to i32
  %i.bk = xor i32 28001, %i.bj
  %i.bl = or i32 %i.bg, %i.bk
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit, label %.split.1

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge: ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.not.i91.1.not = icmp eq i64 %i.be, 5
  br i1 %.not.i91.1.not, label %.split.1.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader

.split.1:                                         ; preds = %.split
  %i.bp = load i32, ptr %i.bd, align 1
  %i.bq = xor i32 1887007802, %i.bp
  %i.br = getelementptr i8, ptr %i.bd, i64 4
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = xor i32 101, %i.bt
  %i.bv = or i32 %i.bq, %i.bu
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1

.split.1.thread:                                  ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge
  %i.bz = load i32, ptr %i.bd, align 1
  %i.ca = xor i32 1887007802, %i.bz
  %i.cb = getelementptr i8, ptr %i.bd, i64 4
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = xor i32 101, %i.cd
  %i.cf = or i32 %i.ca, %i.ce
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1: ; preds = %.split.1
  %.not.i91.2 = icmp eq i64 %i.be, 6
  br i1 %.not.i91.2, label %.split.4, label %.split.2

.split.2:                                         ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1
  %i.cj = load i32, ptr %i.bd, align 1
  %i.ck = xor i32 1767993914, %i.cj
  %i.cl = getelementptr i8, ptr %i.bd, i64 3
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = xor i32 1936028521, %i.cm
  %i.co = or i32 %i.ck, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit, label %.split.3

.split.3:                                         ; preds = %.split.2
  %i.cs = load i32, ptr %i.bd, align 1
  %i.ct = xor i32 1952805434, %i.cs
  %i.cu = getelementptr i8, ptr %i.bd, i64 3
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = xor i32 1852994932, %i.cv
  %i.cx = or i32 %i.ct, %i.cw
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.loopexit, label %.split.4

.split.4:                                         ; preds = %.split.3, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1
  %i.db = load i32, ptr %i.bd, align 1
  %i.dc = xor i32 2037674554, %i.db
  %i.dd = getelementptr i8, ptr %i.bd, i64 4
  %i.de = load i16, ptr %i.dd, align 1
  %i.df = zext i16 %i.de to i32
  %i.dg = xor i32 25968, %i.df
  %i.dh = or i32 %i.dc, %i.dg
  %i.di = icmp ne i32 %i.dh, 0
  %i.dj = zext i1 %i.di to i32
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader: ; preds = %.split.1.thread, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge, %.split.4
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.dl = phi i64 [ %i.dq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader ] ; 2 uses
  %2 = trunc i64 %i.dl to i8
  %switch.tableidx = add nsw i8 %2, -1            ; 2 uses
  %3 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules21ends_with_punctuation21ends_with_punctuation, i64 %3
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 4 uses
  %.not.i94 = icmp samesign ult i64 %i.be, %switch.ext
  br i1 %.not.i94, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4
  %4 = zext nneg i8 %switch.tableidx to i64
  %switch.gep290 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules21ends_with_punctuation21ends_with_punctuation.758, i64 %4
  %switch.load291 = load ptr, ptr %switch.gep290, align 8
  %i.dm = sub nuw i64 %i.be, %switch.ext          ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.dm
  %bcmp.i.i95 = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %switch.load291, ptr noundef nonnull readonly dereferenceable(1) %i.dn, i64 range(i64 0, -9223372036854775808) %switch.ext), !alias.scope !6837
  %i.do = icmp eq i32 %bcmp.i.i95, 0
  br i1 %i.do, label %bb.m, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.l:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.m:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit
  %i.dp = icmp eq i64 %i.be, %switch.ext
  br i1 %i.dp, label %.loopexit, label %bb.n

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4, %bb.o, %bb.n, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit
  %i.dq = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %exitcond = icmp eq i64 %i.dq, 37
  br i1 %exitcond, label %bb.l, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq i64 %i.dm, 1
  br i1 %i.dr, label %bb.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.o:                                             ; preds = %bb.n
  %lhsc = load i8, ptr %i.bd, align 1
  %i.ds = icmp eq i8 %lhsc, 58
  br i1 %i.ds, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread

.loopexit:                                        ; preds = %bb.m, %bb.o, %.split, %.split.1, %.split.2, %.split.3, %.split.4, %.split.1.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.br

_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dt = call { ptr, i64 } @_RNvMs0_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBody6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.dt, 0
  %i.dv = extractvalue { ptr, i64 } %i.dt, 1
  %i.dw = call { i64, i64 } @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle7helpers12logical_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dv) ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = extractvalue { i64, i64 } %i.dw, 1      ; 2 uses
  %i.dz = trunc nuw i64 %i.dx to i1
  br i1 %i.dz, label %bb.r, label %bb.br

bb.p:                                             ; preds = %bb.bp, %bb.bd
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.q:                                             ; preds = %bb.bd
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eb = call { ptr, i64 } @_RNvXs2_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0
  %i.ed = extractvalue { ptr, i64 } %i.eb, 1
  %i.ee = call { i32, i32 } @_RNvXs1_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
  %i.ef = extractvalue { i32, i32 } %i.ee, 0
  call void @_RNvMs_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB4_24UniversalNewlineIterator11with_offset(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ed, i32 noundef %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not84 = icmp eq i64 %i.dy, 0
  br i1 %.not84, label %._RINvYNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1k_3num7nonzero7NonZerojENCNvXs_NvB1c_10advance_byB3_NtB2U_13SpecAdvanceBy15spec_advance_by0INtNtB1k_6option6OptionB2g_EECsEhZmuQNqkz_11ruff_linter.exit_crit_edge, label %bb.s

._RINvYNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1k_3num7nonzero7NonZerojENCNvXs_NvB1c_10advance_byB3_NtB2U_13SpecAdvanceBy15spec_advance_by0INtNtB1k_6option6OptionB2g_EECsEhZmuQNqkz_11ruff_linter.exit_crit_edge: ; preds = %bb.r
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !6838, !noalias !6839
  br label %_RINvYNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1k_3num7nonzero7NonZerojENCNvXs_NvB1c_10advance_byB3_NtB2U_13SpecAdvanceBy15spec_advance_by0INtNtB1k_6option6OptionB2g_EECsEhZmuQNqkz_11ruff_linter.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !6840)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !6840, !noalias !6841, !noundef !6 ; 9 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit116, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = load ptr, ptr %i.l, align 8, !alias.scope !6840, !noalias !6841, !nonnull !6, !noundef !6 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6842)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  %i.el = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !6843, !nonnull !6, !noundef !6
  %i.em = call { i64, ptr } %i.el(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.ej, ptr noundef nonnull readonly %i.ek), !noalias !6844, !inline_history !0 ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.em, 0
  %i.eo = trunc nuw i64 %i.en to i1
  br i1 %i.eo, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ep = extractvalue { i64, ptr } %i.em, 1
  %i.eq = call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.ep, ptr noundef nonnull readonly %i.ej), !noalias !6845 ; 4 uses
  %.not.i.i.i147 = icmp ult i64 %i.eq, %i.eh
  call void @llvm.assume(i1 %.not.i.i.i147)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !6842, !noalias !6845, !noundef !6
  %cond.i148 = icmp eq i8 %i.es, 13
  br i1 %cond.i148, label %bb.v, label %.thread.i149

bb.v:                                             ; preds = %bb.u
  %i.et = add nuw i64 %i.eq, 1                    ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eh
  br i1 %i.eu, label %bb.w, label %.thread.i149

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !6842, !noalias !6845, !noundef !6
  %i.ex = icmp eq i8 %i.ew, 10
  br i1 %i.ex, label %bb.x, label %.thread.i149

.thread.i149:                                     ; preds = %bb.w, %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %.thread.i149, %bb.w
  %i.ey = phi i64 [ 1, %.thread.i149 ], [ 2, %bb.w ]
  %i.ez = add i64 %i.ey, %i.eq                    ; 9 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i153, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i150 = icmp ult i64 %i.ez, %i.eh
  br i1 %.not.i.i150, label %bb.z, label %.split3.i.i151

.split3.i.i151:                                   ; preds = %bb.y
  %i.fb = icmp eq i64 %i.ez, %i.eh
  br i1 %i.fb, label %.split.i.i152, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ez
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !6846, !noalias !6847, !noundef !6
  %i.fe = icmp sgt i8 %i.fd, -65
  br i1 %i.fe, label %.split.i.i152, label %bb.ac

.split.i.i152:                                    ; preds = %bb.z, %.split3.i.i151
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ez
  %i.fg = sub i64 %i.eh, %i.ez
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i153

bb.aa:                                            ; preds = %bb.t
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !alias.scope !6840, !noalias !6841
  store i64 0, ptr %i.eg, align 8, !alias.scope !6840, !noalias !6841
  br label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit160

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i153: ; preds = %.split.i.i152, %bb.x
  %.sroa.9.0.i154 = phi i64 [ %i.eh, %bb.x ], [ %i.fg, %.split.i.i152 ] ; 2 uses
  %.sroa.7.0.i155 = phi ptr [ %i.ej, %bb.x ], [ %i.ff, %.split.i.i152 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !alias.scope !6840, !noalias !6841, !noundef !6
  store ptr %.sroa.7.0.i155, ptr %i.l, align 8, !alias.scope !6840, !noalias !6841
  store i64 %.sroa.9.0.i154, ptr %i.eg, align 8, !alias.scope !6840, !noalias !6841
  %i.fj = icmp ugt i64 %i.ez, 4294967295
  %i.fk = shl nuw i64 %i.ez, 32
  %.sroa.09.0.insert.insert.i.i156 = select i1 %i.fj, i64 513, i64 %i.fk ; 2 uses
  %i.fl = trunc i64 %.sroa.09.0.insert.insert.i.i156 to i1
  br i1 %i.fl, label %bb.ab, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i157, !prof !9

bb.ab:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6848
  store i8 2, ptr %i.a, align 1, !noalias !6848
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @139, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1589) #55, !noalias !6845
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i157: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i153
  %.sroa.6.0.extract.shift.i.i.i158 = lshr i64 %.sroa.09.0.insert.insert.i.i156, 32
  %.sroa.6.0.extract.trunc.i.i.i159 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i158 to i32
  %i.fm = add i32 %i.fi, %.sroa.6.0.extract.trunc.i.i.i159
  store i32 %i.fm, ptr %i.fh, align 8, !alias.scope !6840, !noalias !6841
  br label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit160

bb.ac:                                            ; preds = %bb.z, %.split3.i.i151
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ej, i64 noundef %i.eh, i64 noundef 0, i64 noundef %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @550) #55, !noalias !6845
  unreachable

_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit160: ; preds = %bb.aa, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i157
  %.promoted213 = phi ptr [ inttoptr (i64 1 to ptr), %bb.aa ], [ %.sroa.7.0.i155, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i157 ] ; 2 uses
  %.promoted = phi i64 [ 0, %bb.aa ], [ %.sroa.9.0.i154, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i157 ] ; 2 uses
  %i.fn = add i64 %i.dy, -1                       ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_RINvYNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1k_3num7nonzero7NonZerojENCNvXs_NvB1c_10advance_byB3_NtB2U_13SpecAdvanceBy15spec_advance_by0INtNtB1k_6option6OptionB2g_EECsEhZmuQNqkz_11ruff_linter.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit160
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.promoted220 = load i32, ptr %i.fp, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit142
  %i.fq = phi i32 [ %.promoted220, %.lr.ph ], [ %i.gv, %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit142 ] ; 2 uses
  %i.fr = phi i64 [ %i.fn, %.lr.ph ], [ %i.gx, %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit142 ]
  %i.fs = phi i64 [ %.promoted, %.lr.ph ], [ %i.gw, %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit142 ] ; 10 uses
  %.sroa.7.0.i137214218 = phi ptr [ %.promoted213, %.lr.ph ], [ %.sroa.7.0.i137215, %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit142 ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6849)
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit116, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !6850)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i137214218, i64 %i.fs
  %i.fv = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !6851, !nonnull !6, !noundef !6
  %i.fw = call { i64, ptr } %i.fv(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.7.0.i137214218, ptr noundef nonnull readonly %i.fu), !noalias !6852, !inline_history !0 ; 2 uses
  %i.fx = extractvalue { i64, ptr } %i.fw, 0
  %i.fy = trunc nuw i64 %i.fx to i1
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules21ends_with_punctuation21ends_with_punctuation:bb.a
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.o = call { ptr, i64 } @_RNvXs2_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  call void @_RNvXNtCs9BeaGo73rC4_16ruff_source_file8newlineseNtB2_17UniversalNewlines18universal_newlines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !6916)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !6916, !noalias !6917, !noundef !6 ; 8 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.m, align 8, !alias.scope !6916, !noalias !6917, !nonnull !6, !noundef !6 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6918)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  %i.z = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !6919, !nonnull !6, !noundef !6
  %i.aa = call { i64, ptr } %i.z(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.y), !noalias !6920, !inline_history !0 ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ad = extractvalue { i64, ptr } %i.aa, 1
  %i.ae = call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.ad, ptr noundef nonnull readonly %i.x), !noalias !6921 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %i.v
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !6918, !noalias !6921, !noundef !6
  %cond.i = icmp eq i8 %i.ag, 13
  br i1 %cond.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ah = add nuw i64 %i.ae, 1                    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.v
  br i1 %i.ai, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !6918, !noalias !6921, !noundef !6
  %i.al = icmp eq i8 %i.ak, 10
  br i1 %i.al, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.am = phi i64 [ 1, %.thread.i ], [ 2, %bb.e ]
  %i.an = add i64 %i.am, %i.ae                    ; 7 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp ult i64 %i.an, %i.v
  br i1 %.not.i.i, label %bb.h, label %.split3.i.i

.split3.i.i:                                      ; preds = %bb.g
  %i.ap = icmp eq i64 %i.an, %i.v
  br i1 %i.ap, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.an
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !6922, !noalias !6923, !noundef !6
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.au = load i32, ptr %i.at, align 8, !alias.scope !6916, !noalias !6917, !noundef !6
  br label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i: ; preds = %.split3.i.i, %bb.h, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !6916, !noalias !6917, !noundef !6
  %i.ax = icmp ugt i64 %i.an, 4294967295
  br i1 %i.ax, label %bb.j, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !9

bb.j:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6924
  store i8 2, ptr %i.c, align 1, !noalias !6924
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @139, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1589) #55, !noalias !6921
  unreachable

bb.k:                                             ; preds = %bb.h, %.split3.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.v, i64 noundef 0, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @550) #55, !noalias !6921
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i, %bb.i
  %.sroa.9.0.ph = phi i32 [ %i.au, %bb.i ], [ %i.aw, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i ]
  %.sroa.8.0.ph = phi i64 [ %i.v, %bb.i ], [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.x, ptr %i.l, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.8.0.ph, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %.sroa.9.0.ph, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ay = call { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  %i.bb = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.ba) ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0      ; 14 uses
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1      ; 6 uses
  %.not.i97 = icmp samesign ult i64 %i.bd, 6
  br i1 %.not.i97, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge, label %.split

.split:                                           ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %i.be = load i32, ptr %i.bc, align 1
  %i.bf = xor i32 1918988346, %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %i.bh to i32
  %i.bj = xor i32 28001, %i.bi
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit, label %.split.1

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge: ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.not.i97.1.not = icmp eq i64 %i.bd, 5
  br i1 %.not.i97.1.not, label %.split.1.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader

.split.1:                                         ; preds = %.split
  %i.bo = load i32, ptr %i.bc, align 1
  %i.bp = xor i32 1887007802, %i.bo
  %i.bq = getelementptr i8, ptr %i.bc, i64 4
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = xor i32 101, %i.bs
  %i.bu = or i32 %i.bp, %i.bt
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1

.split.1.thread:                                  ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge
  %i.by = load i32, ptr %i.bc, align 1
  %i.bz = xor i32 1887007802, %i.by
  %i.ca = getelementptr i8, ptr %i.bc, i64 4
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = xor i32 101, %i.cc
  %i.ce = or i32 %i.bz, %i.cd
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1: ; preds = %.split.1
  %.not.i97.2 = icmp eq i64 %i.bd, 6
  br i1 %.not.i97.2, label %.split.4, label %.split.2

.split.2:                                         ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1
  %i.ci = load i32, ptr %i.bc, align 1
  %i.cj = xor i32 1767993914, %i.ci
  %i.ck = getelementptr i8, ptr %i.bc, i64 3
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = xor i32 1936028521, %i.cl
  %i.cn = or i32 %i.cj, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.loopexit, label %.split.3

.split.3:                                         ; preds = %.split.2
  %i.cr = load i32, ptr %i.bc, align 1
  %i.cs = xor i32 1952805434, %i.cr
  %i.ct = getelementptr i8, ptr %i.bc, i64 3
  %i.cu = load i32, ptr %i.ct, align 1
  %i.cv = xor i32 1852994932, %i.cu
  %i.cw = or i32 %i.cs, %i.cv
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %.loopexit, label %.split.4

.split.4:                                         ; preds = %.split.3, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.1
  %i.da = load i32, ptr %i.bc, align 1
  %i.db = xor i32 2037674554, %i.da
  %i.dc = getelementptr i8, ptr %i.bc, i64 4
  %i.dd = load i16, ptr %i.dc, align 1
  %i.de = zext i16 %i.dd to i32
  %i.df = xor i32 25968, %i.de
  %i.dg = or i32 %i.db, %i.df
  %i.dh = icmp ne i32 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader: ; preds = %.split.1.thread, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge, %.split.4
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.dk = phi i64 [ %i.dp, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4.preheader ] ; 2 uses
  %2 = trunc i64 %i.dk to i8
  %switch.tableidx = add nsw i8 %2, -1            ; 2 uses
  %3 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules21ends_with_punctuation21ends_with_punctuation, i64 %3
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 4 uses
  %.not.i100 = icmp samesign ult i64 %i.bd, %switch.ext
  br i1 %.not.i100, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4
  %4 = zext nneg i8 %switch.tableidx to i64
  %switch.gep187 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules21ends_with_punctuation21ends_with_punctuation.758, i64 %4
  %switch.load188 = load ptr, ptr %switch.gep187, align 8
  %i.dl = sub nuw i64 %i.bd, %switch.ext          ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dl
  %bcmp.i.i101 = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %switch.load188, ptr noundef nonnull readonly dereferenceable(1) %i.dm, i64 range(i64 0, -9223372036854775808) %switch.ext), !alias.scope !6925
  %i.dn = icmp eq i32 %bcmp.i.i101, 0
  br i1 %i.dn, label %bb.m, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.l:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.m:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit
  %i.do = icmp eq i64 %i.bd, %switch.ext
  br i1 %i.do, label %.loopexit, label %bb.n

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4, %bb.o, %bb.n, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit
  %i.dp = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %exitcond = icmp eq i64 %i.dp, 37
  br i1 %exitcond, label %bb.l, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsEhZmuQNqkz_11ruff_linter.exit.backedge.4

bb.n:                                             ; preds = %bb.m
  %i.dq = icmp eq i64 %i.dl, 1
  br i1 %i.dq, label %bb.o, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread

bb.o:                                             ; preds = %bb.n
  %lhsc = load i8, ptr %i.bc, align 1
  %i.dr = icmp eq i8 %lhsc, 58
  br i1 %i.dr, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit.thread

.loopexit:                                        ; preds = %bb.m, %bb.o, %.split, %.split.1, %.split.2, %.split.3, %.split.4, %.split.1.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bc

_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ds = call { ptr, i64 } @_RNvMs0_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBody6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.dt = extractvalue { ptr, i64 } %i.ds, 0
  %i.du = extractvalue { ptr, i64 } %i.ds, 1
  %i.dv = call { i64, i64 } @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle7helpers12logical_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.du) ; 2 uses
  %i.dw = extractvalue { i64, i64 } %i.dv, 0
  %i.dx = trunc nuw i64 %i.dw to i1
  br i1 %i.dx, label %bb.r, label %bb.bc

bb.p:                                             ; preds = %bb.az, %bb.an
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.q:                                             ; preds = %bb.an
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.dz = extractvalue { i64, i64 } %i.dv, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ea = call { ptr, i64 } @_RNvXs2_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1
  %i.ed = call { i32, i32 } @_RNvXs1_NtCsEhZmuQNqkz_11ruff_linter10docstringsNtB5_13DocstringBodyNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
  %i.ee = extractvalue { i32, i32 } %i.ed, 0
  call void @_RNvMs_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB4_24UniversalNewlineIterator11with_offset(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ec, i32 noundef %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.not90 = icmp eq i64 %i.dz, 0
  br i1 %.not90, label %bb.s, label %bb.ad, !prof !14

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !6926)
  call void @llvm.experimental.noalias.scope.decl(metadata !6927)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !6927, !noalias !6926, !noundef !6 ; 8 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = load ptr, ptr %i.k, align 8, !alias.scope !6927, !noalias !6926, !nonnull !6, !noundef !6 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6928)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  %i.ek = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !6929, !nonnull !6, !noundef !6
  %i.el = call { i64, ptr } %i.ek(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.ei, ptr noundef nonnull readonly %i.ej), !noalias !6930, !inline_history !0 ; 2 uses
  %i.em = extractvalue { i64, ptr } %i.el, 0
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.eo = extractvalue { i64, ptr } %i.el, 1
  %i.ep = call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.eo, ptr noundef nonnull readonly %i.ei), !noalias !6931 ; 4 uses
  %.not.i.i.i107 = icmp ult i64 %i.ep, %i.eg
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !6928, !noalias !6931, !noundef !6
  %cond.i108 = icmp eq i8 %i.er, 13
  br i1 %cond.i108, label %bb.v, label %.thread.i109

bb.v:                                             ; preds = %bb.u
  %i.es = add nuw i64 %i.ep, 1                    ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.eg
  br i1 %i.et, label %bb.w, label %.thread.i109

bb.w:                                             ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !6928, !noalias !6931, !noundef !6
  %i.ew = icmp eq i8 %i.ev, 10
  br i1 %i.ew, label %bb.x, label %.thread.i109

.thread.i109:                                     ; preds = %bb.w, %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %.thread.i109, %bb.w
  %i.ex = phi i64 [ 1, %.thread.i109 ], [ 2, %bb.w ]
  %i.ey = add i64 %i.ex, %i.ep                    ; 7 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i110 = icmp ult i64 %i.ey, %i.eg
  br i1 %.not.i.i110, label %bb.z, label %.split3.i.i111

.split3.i.i111:                                   ; preds = %bb.y
  %i.fa = icmp eq i64 %i.ey, %i.eg
  br i1 %i.fa, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !6932, !noalias !6933, !noundef !6
  %i.fd = icmp sgt i8 %i.fc, -65
  br i1 %i.fd, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113, label %bb.ac

bb.aa:                                            ; preds = %bb.t
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !alias.scope !6927, !noalias !6926, !noundef !6
  br label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread147

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113: ; preds = %.split3.i.i111, %bb.z, %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fh = load i32, ptr %i.fg, align 8, !alias.scope !6927, !noalias !6926, !noundef !6
  %i.fi = icmp ugt i64 %i.ey, 4294967295
  br i1 %i.fi, label %bb.ab, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread147, !prof !9

bb.ab:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6934
  store i8 2, ptr %i.b, align 1, !noalias !6934
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @139, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1589) #55, !noalias !6931
  unreachable

bb.ac:                                            ; preds = %bb.z, %.split3.i.i111
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ei, i64 noundef %i.eg, i64 noundef 0, i64 noundef %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @550) #55, !noalias !6931
  unreachable

_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread147: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113, %bb.aa
  %.sroa.3.0.i103 = phi i64 [ %i.eg, %bb.aa ], [ %i.ey, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113 ]
  %.sroa.5.0.i104 = phi i32 [ %i.ff, %bb.aa ], [ %i.fh, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i113 ]
  store ptr %i.ei, ptr %i.i, align 8, !alias.scope !6926, !noalias !6927
  %.sroa.3.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.3.0.i103, ptr %.sroa.3.0..sroa_idx.i105, align 8, !alias.scope !6926, !noalias !6927
  %.sroa.5.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %.sroa.5.0.i104, ptr %.sroa.5.0..sroa_idx.i106, align 8, !alias.scope !6926, !noalias !6927
  br label %bb.ae

bb.ad:                                            ; preds = %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.fj, align 8
  %i.fk = call fastcc noundef i64 @_RINvYNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1k_3num7nonzero7NonZerojENCNvXs_NvB1c_10advance_byB3_NtB2U_13SpecAdvanceBy15spec_advance_by0INtNtB1k_6option6OptionB2g_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.k, i64 noundef %i.dz)
  %.not91 = icmp eq i64 %i.fk, 0
  br i1 %.not91, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread, !prof !14

_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120: ; preds = %bb.ad
  call fastcc void @_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef align 8 dereferenceable(24) %i.k)
  %.pr = load ptr, ptr %i.i, align 8
  %.not92 = icmp eq ptr %.pr, null
  br i1 %.not92, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread, label %bb.ae, !prof !42

_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread: ; preds = %bb.s, %bb.ad, %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #55
  unreachable

bb.ae:                                            ; preds = %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120.thread147, %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fl = call { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j) ; 2 uses
  %i.fm = extractvalue { ptr, i64 } %i.fl, 0
  %i.fn = extractvalue { ptr, i64 } %i.fl, 1
  %i.fo = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef %i.fn) ; 2 uses
  %i.fp = extractvalue { ptr, i64 } %i.fo, 0      ; 2 uses
  %i.fq = extractvalue { ptr, i64 } %i.fo, 1      ; 11 uses
  %.not.i121 = icmp eq i64 %i.fq, 0
  br i1 %.not.i121, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.critedge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit124

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit124: ; preds = %bb.ae
  %i.fr = getelementptr i8, ptr %i.fp, i64 %i.fq  ; 4 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -1
  %rhsc = load i8, ptr %i.fs, align 1             ; 4 uses
  %i.ft = icmp eq i8 %rhsc, 92
  br i1 %i.ft, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter.exit124
  %i.fu = icmp sgt i8 %rhsc, -1
  br i1 %i.fu, label %bb.ag, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i

end_hunk_1
