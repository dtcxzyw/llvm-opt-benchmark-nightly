Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base_db-3cb882c0676fba6d.base_db.c2b4d2041d3c80a7-cgu.01?download=true
inline.NumInlined: 422
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB7_17CrateGraphBuilder9set_in_db2go:bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !465, !noalias !464, !noundef !7
  %i.is = icmp eq i64 %i.ip, %i.ir
  br i1 %i.is, label %.split12.i.i, label %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread

.split12.i.i:                                     ; preds = %bb.bg
  %i.it = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !465, !noalias !464, !nonnull !7, !noundef !7
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !464, !noalias !465, !nonnull !7, !noundef !7
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.iw, ptr nonnull %i.iu, i64 %i.ip), !noalias !466
  %i.ix = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ix, label %_RNvXs14_NtCsgIpRO4v45SJ_7base_db5inputNtB6_11CrateOriginNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i, label %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread

_RNvXs14_NtCsgIpRO4v45SJ_7base_db5inputNtB6_11CrateOriginNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i: ; preds = %.split12.i.i, %bb.bf
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !464, !noalias !465, !nonnull !7, !noundef !7
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !alias.scope !465, !noalias !464, !nonnull !7, !noundef !7
  %i.jc = icmp eq ptr %i.iz, %i.jb
  br i1 %i.jc, label %bb.bh, label %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread

bb.bh:                                            ; preds = %_RNvXs14_NtCsgIpRO4v45SJ_7base_db5inputNtB6_11CrateOriginNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i, %.split5.i, %.split7.i, %.split6.i, %.split.i
  %i.jd = load i64, ptr %i.de, align 8, !alias.scope !452, !noalias !453, !noundef !7 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !453, !noalias !452, !noundef !7
  %i.jg = icmp eq i64 %i.jd, %i.jf
  br i1 %i.jg, label %bb.bi, label %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.jh = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.ji = load ptr, ptr %i.jh, align 8, !alias.scope !453, !noalias !452, !nonnull !7, !noundef !7
  %i.jj = load ptr, ptr %i.dd, align 8, !alias.scope !452, !noalias !453, !nonnull !7, !noundef !7
  %i.jk = invoke noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsgIpRO4v45SJ_7base_db(ptr noundef nonnull %i.jj, ptr noundef nonnull %i.ji, i64 noundef %i.jd)
          to label %.noexc76 unwind label %bb.ap

.noexc76:                                         ; preds = %bb.bi
  br i1 %i.jk, label %bb.bj, label %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread

bb.bj:                                            ; preds = %.noexc76
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.jm = invoke noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jl)
          to label %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit unwind label %bb.ap

_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit: ; preds = %bb.bj
  br i1 %i.jm, label %bb.bk, label %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread

_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread: ; preds = %bb.aw, %bb.av, %.lr.ph.i.i75, %_RNvYINtNtCsgIpRO4v45SJ_7base_db5input10DependencyNtB5_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB7_.exit.i.i, %bb.ba, %bb.bc, %bb.bb, %bb.bf, %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtCsgIpRO4v45SJ_7base_db5input10DependencyNtBF_5CrateEINtB5_14SlicePartialEqBC_E17equal_same_lengthBH_.exit.i, %.split12.i.i, %.split.i.i, %bb.be, %.split6.i, %.split5.i, %.split.i, %bb.bg, %bb.aq, %bb.ar, %.split7.i, %.noexc76, %_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate4dataDNtBa_14SourceDatabaseEL_EBa_.exit, %bb.as, %_RNvXs14_NtCsgIpRO4v45SJ_7base_db5inputNtB6_11CrateOriginNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i, %bb.bh, %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val54 = load ptr, ptr %i.jn, align 8
  %i.jo = invoke noundef nonnull align 8 ptr %.val54(ptr noundef nonnull %1) #28
          to label %.noexc78 unwind label %bb.ap, !inline_history !424

.noexc78:                                         ; preds = %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit.thread
  %i.jp = invoke { ptr, ptr } @_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate14ingredient_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %i.jo)
          to label %bb.bl unwind label %bb.ap     ; 2 uses

bb.bk:                                            ; preds = %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit, %bb.bn
  %.sroa.031.3 = phi i8 [ 0, %bb.bn ], [ 1, %_RNvXs1E_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataNtB6_5CrateENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB8_.exit ] ; 39 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bz, i64 96 ; 2 uses
  %i.jr = invoke { ptr, ptr } %i.fb(ptr noundef nonnull %1) #28
          to label %.noexc80 unwind label %bb.ap, !inline_history !425 ; 2 uses

.noexc80:                                         ; preds = %bb.bk
  %i.js = extractvalue { ptr, ptr } %i.jr, 0      ; 3 uses
  %i.jt = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateEE13get_or_createNCNvMs0_NvB1I_1__B1G_11ingredient_0EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB9_5Crate11ingredient_5CACHE, ptr noundef nonnull align 8 %i.js, ptr noundef nonnull align 8 %i.js)
          to label %.noexc81 unwind label %bb.ap

.noexc81:                                         ; preds = %.noexc80
  %i.ju = extractvalue { ptr, ptr } %i.jr, 1
  %i.jv = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE5fieldBX_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jt, ptr noundef nonnull align 8 %i.js, ptr noundef nonnull align 8 %i.ju, i32 noundef range(i32 1, 0) %i.ex, i32 noundef %i.ez, i64 noundef 1)
          to label %bb.bo unwind label %bb.ap     ; 6 uses

bb.bl:                                            ; preds = %.noexc78
  %i.jw = extractvalue { ptr, ptr } %i.jp, 0      ; 2 uses
  %i.jx = extractvalue { ptr, ptr } %i.jp, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jw) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 96, i1 false)
  invoke void @_RINvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE9set_fieldINtBW_9CrateDataBU_ENCNvXs_NtB6_6setterINtB28_10SetterImplBU_NCINvMs5_NvBW_1__BU_8set_dataDNtBY_14SourceDatabaseEL_E0B1H_ENtB28_6Setter2to0EBY_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %i.jx, i32 noundef %i.ex, i32 noundef %i.ez, i64 noundef 0, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.m)
          to label %bb.bm unwind label %bb.ap

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgIpRO4v45SJ_7base_db5input9CrateDataNtBE_5CrateEEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa)
          to label %bb.bn unwind label %bb.ap

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bk

bb.bo:                                            ; preds = %.noexc81
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.jz = load i64, ptr %i.jq, align 8, !range !10, !alias.scope !467, !noalias !468, !noundef !7
  %.not.i83 = icmp eq i64 %i.jz, -1
  %i.ka = load i64, ptr %i.jy, align 8, !range !10, !alias.scope !468, !noalias !467, !noundef !7
  %i.kb = icmp eq i64 %i.ka, -1                   ; 2 uses
  br i1 %.not.i83, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.kb, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.kb, label %bb.bs, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.br:                                            ; preds = %bb.bp
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  %i.kd = load i64, ptr %i.kc, align 8, !alias.scope !467, !noalias !468, !noundef !7 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 112
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !468, !noalias !467, !noundef !7
  %i.kg = icmp eq i64 %i.kd, %i.kf
  br i1 %i.kg, label %.split.i84, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split.i84:                                       ; preds = %bb.br
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !468, !noalias !467, !nonnull !7, !noundef !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  %i.kk = load ptr, ptr %i.kj, align 8, !alias.scope !467, !noalias !468, !nonnull !7, !noundef !7
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.kk, ptr nonnull %i.ki, i64 %i.kd), !noalias !469
  %i.kl = icmp eq i32 %bcmp.i, 0
  br i1 %i.kl, label %bb.bs, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.bs:                                            ; preds = %.split.i84, %bb.bq
  %i.km = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !467, !noalias !468, !noundef !7 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  %.not4.i = icmp eq ptr %i.kn, null
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jv, i64 120
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !468, !noalias !467, !noundef !7 ; 2 uses
  br i1 %.not4.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kr = icmp eq ptr %i.kn, %i.kq
  br i1 %i.kr, label %.split8.i, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.bu:                                            ; preds = %bb.bs
  %i.ks = icmp eq ptr %i.kq, null
  br i1 %i.ks, label %bb.bv, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split8.i:                                        ; preds = %bb.bt
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jv, i64 128
  %i.ku = load ptr, ptr %i.ko, align 8, !alias.scope !467, !noalias !468, !nonnull !7, !noundef !7
  %i.kv = load ptr, ptr %i.kt, align 8, !alias.scope !468, !noalias !467, !nonnull !7, !noundef !7
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %bb.bv, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.bv:                                            ; preds = %.split8.i, %bb.bu
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bz, i64 136 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !467, !noalias !468, !noundef !7
  %.not6.i = icmp eq ptr %i.ky, null              ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jv, i64 136 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !468, !noalias !467, !noundef !7
  %i.lb = icmp eq ptr %i.la, null                 ; 2 uses
  %brmerge.i = or i1 %.not6.i, %i.lb
  %.mux.i = and i1 %.not6.i, %i.lb
  br i1 %brmerge.i, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lc = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kz)
          to label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit unwind label %bb.ap

_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.bv, %bb.bw
  %.sroa.0.0.shrunk.i = phi i1 [ %i.lc, %bb.bw ], [ %.mux.i, %bb.bv ]
  br i1 %.sroa.0.0.shrunk.i, label %bb.bx, label %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.bp, %bb.br, %bb.bt, %bb.bq, %.split8.i, %bb.bu, %.split.i84, %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val56 = load ptr, ptr %i.ld, align 8
  %i.le = invoke noundef nonnull align 8 ptr %.val56(ptr noundef nonnull %1) #28
          to label %.noexc86 unwind label %bb.ap, !inline_history !429

.noexc86:                                         ; preds = %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  %i.lf = invoke { ptr, ptr } @_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate14ingredient_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %i.le)
          to label %bb.by unwind label %bb.ap     ; 2 uses

bb.bx:                                            ; preds = %_RNvXs1K_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.cb
  %i.lg = invoke { ptr, ptr } %i.fb(ptr noundef nonnull %1) #28
          to label %.noexc88 unwind label %bb.ap, !inline_history !430 ; 2 uses

.noexc88:                                         ; preds = %bb.bx
  %i.lh = extractvalue { ptr, ptr } %i.lg, 0      ; 3 uses
  %i.li = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateEE13get_or_createNCNvMs0_NvB1I_1__B1G_11ingredient_0EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB9_5Crate11ingredient_5CACHE, ptr noundef nonnull align 8 %i.lh, ptr noundef nonnull align 8 %i.lh)
          to label %.noexc89 unwind label %bb.ap

.noexc89:                                         ; preds = %.noexc88
  %i.lj = extractvalue { ptr, ptr } %i.lg, 1
  %i.lk = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE5fieldBX_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.li, ptr noundef nonnull align 8 %i.lh, ptr noundef nonnull align 8 %i.lj, i32 noundef range(i32 1, 0) %i.ex, i32 noundef %i.ez, i64 noundef 3)
          to label %bb.cc unwind label %bb.ap

bb.by:                                            ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @_RNvXs1I_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jq)
          to label %bb.bz unwind label %bb.ap

bb.bz:                                            ; preds = %bb.by
  %i.ll = extractvalue { ptr, ptr } %i.lf, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ll) ]
  %i.lm = extractvalue { ptr, ptr } %i.lf, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lm) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false)
  invoke void @_RINvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE9set_fieldNtBW_14ExtraCrateDataNCNvXs_NtB6_6setterINtB29_10SetterImplBU_NCINvMs5_NvBW_1__BU_14set_extra_dataDNtBY_14SourceDatabaseEL_E0B1H_ENtB29_6Setter2to0EBY_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %i.lm, i32 noundef %i.ex, i32 noundef %i.ez, i64 noundef 1, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l)
          to label %bb.ca unwind label %bb.ap

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input14ExtraCrateDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.z)
          to label %bb.cb unwind label %bb.ap

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bx

bb.cc:                                            ; preds = %.noexc89
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 176
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bz, i64 168 ; 2 uses
  %i.lp = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ln)
          to label %bb.cd unwind label %bb.ap

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.lp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit, %bb.cd
  %i.lq = invoke { ptr, ptr } %i.fb(ptr noundef nonnull %1) #28
          to label %.noexc91 unwind label %bb.ap, !inline_history !431 ; 2 uses

.noexc91:                                         ; preds = %bb.ce
  %i.lr = extractvalue { ptr, ptr } %i.lq, 0      ; 3 uses
  %i.ls = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateEE13get_or_createNCNvMs0_NvB1I_1__B1G_11ingredient_0EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB9_5Crate11ingredient_5CACHE, ptr noundef nonnull align 8 %i.lr, ptr noundef nonnull align 8 %i.lr)
          to label %.noexc92 unwind label %bb.ap

.noexc92:                                         ; preds = %.noexc91
  %i.lt = extractvalue { ptr, ptr } %i.lq, 1
  %i.lu = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE5fieldBX_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ls, ptr noundef nonnull align 8 %i.lr, ptr noundef nonnull align 8 %i.lt, i32 noundef range(i32 1, 0) %i.ex, i32 noundef %i.ez, i64 noundef 4)
          to label %bb.cj unwind label %bb.ap

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val59 = load ptr, ptr %i.lv, align 8
  %i.lw = invoke noundef nonnull align 8 ptr %.val59(ptr noundef nonnull %1) #28
          to label %.noexc94 unwind label %bb.ap, !inline_history !432

.noexc94:                                         ; preds = %bb.cf
  %i.lx = invoke { ptr, ptr } @_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate14ingredient_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %i.lw)
          to label %bb.cg unwind label %bb.ap     ; 2 uses

bb.cg:                                            ; preds = %.noexc94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lo)
          to label %bb.ch unwind label %bb.ap

bb.ch:                                            ; preds = %bb.cg
  %i.ly = extractvalue { ptr, ptr } %i.lx, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ly) ]
  %i.lz = extractvalue { ptr, ptr } %i.lx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lz) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RINvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE9set_fieldNtCs4kMRW8zVVbM_3cfg10CfgOptionsNCNvXs_NtB6_6setterINtB2k_10SetterImplBU_NCINvMs5_NvBW_1__BU_15set_cfg_optionsDNtBY_14SourceDatabaseEL_E0B1H_ENtB2k_6Setter2to0EBY_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ly, ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %i.lz, i32 noundef %i.ex, i32 noundef %i.ez, i64 noundef 3, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ci unwind label %bb.ap

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit unwind label %bb.ap

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ce

bb.cj:                                            ; preds = %.noexc92
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 208
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bz, i64 200 ; 2 uses
  %i.mc = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringB13_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ma)
          to label %bb.ck unwind label %bb.ap

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.mc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input3EnvEBF_.exit, %bb.ck
  %i.md = getelementptr inbounds nuw i8, ptr %i.bz, i64 232 ; 3 uses
  %i.me = invoke { ptr, ptr } %i.fb(ptr noundef nonnull %1) #28
          to label %.noexc97 unwind label %bb.ap, !inline_history !433 ; 2 uses

.noexc97:                                         ; preds = %bb.cl
  %i.mf = extractvalue { ptr, ptr } %i.me, 0      ; 3 uses
  %i.mg = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateEE13get_or_createNCNvMs0_NvB1I_1__B1G_11ingredient_0EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB9_5Crate11ingredient_5CACHE, ptr noundef nonnull align 8 %i.mf, ptr noundef nonnull align 8 %i.mf)
          to label %.noexc98 unwind label %bb.ap

.noexc98:                                         ; preds = %.noexc97
  %i.mh = extractvalue { ptr, ptr } %i.me, 1
  %i.mi = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE5fieldBX_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mg, ptr noundef nonnull align 8 %i.mf, ptr noundef nonnull align 8 %i.mh, i32 noundef range(i32 1, 0) %i.ex, i32 noundef %i.ez, i64 noundef 2)
          to label %bb.cq unwind label %bb.ap

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val61 = load ptr, ptr %i.mj, align 8
  %i.mk = invoke noundef nonnull align 8 ptr %.val61(ptr noundef nonnull %1) #28
          to label %.noexc100 unwind label %bb.ap, !inline_history !434

.noexc100:                                        ; preds = %bb.cm
  %i.ml = invoke { ptr, ptr } @_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate14ingredient_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %i.mk)
          to label %bb.cn unwind label %bb.ap     ; 2 uses

bb.cn:                                            ; preds = %.noexc100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBK_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mb)
          to label %bb.co unwind label %bb.ap

bb.co:                                            ; preds = %bb.cn
  %i.mm = extractvalue { ptr, ptr } %i.ml, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mm) ]
  %i.mn = extractvalue { ptr, ptr } %i.ml, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mn) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RINvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE9set_fieldNtBW_3EnvNCNvXs_NtB6_6setterINtB1X_10SetterImplBU_NCINvMs5_NvBW_1__BU_7set_envDNtBY_14SourceDatabaseEL_E0B1H_ENtB1X_6Setter2to0EBY_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mm, ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %i.mn, i32 noundef %i.ex, i32 noundef %i.ez, i64 noundef 4, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.cp unwind label %bb.ap

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input3EnvEBF_.exit unwind label %bb.ap

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input3EnvEBF_.exit: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.cl

bb.cq:                                            ; preds = %.noexc98
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 168
  %i.mp = invoke noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.md, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mo)
          to label %bb.cr unwind label %bb.ap

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.mp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val62 = load ptr, ptr %i.mq, align 8
  %i.mr = invoke noundef nonnull align 8 ptr %.val62(ptr noundef nonnull %1) #28
          to label %.noexc103 unwind label %bb.ap, !inline_history !435

.noexc103:                                        ; preds = %bb.cs
  %i.ms = invoke { ptr, ptr } @_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate14ingredient_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1368) %i.mr)
          to label %bb.cx unwind label %bb.ap     ; 2 uses

bb.ct:                                            ; preds = %bb.cr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataEEB1d_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.mt = cmpxchg ptr %.sroa.0.0.copyload, i64 -4, i64 0 release monotonic, align 8
  %i.mu = extractvalue { i64, i1 } %i.mt, 1
  br i1 %i.mu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataINtNtB1w_4util11SharedValueNtB2Y_5CrateEEEEEB30_.exit.i, label %bb.cu, !prof !12

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.sroa.0.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataINtNtB1w_4util11SharedValueNtB2Y_5CrateEEEEEB30_.exit.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataEBF_(ptr %.sroa.6.0.copyload) #31
          to label %.body unwind label %bb.cw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataINtNtB1w_4util11SharedValueNtB2Y_5CrateEEEEEB30_.exit.i: ; preds = %bb.cu, %bb.ct
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataEBF_(ptr %.sroa.6.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref5entry13OccupiedEntryNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1y_5CrateEEB1A_.exit unwind label %bb.q

bb.cw:                                            ; preds = %bb.cv
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.cx:                                            ; preds = %.noexc103
  %i.mx = load ptr, ptr %i.md, align 8, !nonnull !7, !noundef !7
  %i.my = atomicrmw add ptr %i.mx, i64 1 monotonic, align 8
  %i.mz = icmp slt i64 %i.my, 0
  br i1 %i.mz, label %bb.cz, label %bb.cy, !prof !8

bb.cy:                                            ; preds = %bb.cx
  %i.na = extractvalue { ptr, ptr } %i.ms, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.na) ]
  %i.nb = extractvalue { ptr, ptr } %i.ms, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nb) ]
  %i.nc = load ptr, ptr %i.md, align 8, !nonnull !7, !noundef !7
  %i.nd = invoke noundef nonnull ptr @_RINvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE9set_fieldINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtBY_18CrateWorkspaceDataENCNvXs_NtB6_6setterINtB2O_10SetterImplBU_NCINvMs5_NvBW_1__BU_18set_workspace_dataDNtBY_14SourceDatabaseEL_E0B1H_ENtB2O_6Setter2to0EBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.na, ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %i.nb, i32 noundef %i.ex, i32 noundef %i.ez, i64 noundef 2, i8 noundef 1, ptr noundef nonnull %i.nc)
          to label %bb.da unwind label %bb.ap

bb.cz:                                            ; preds = %bb.cx
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %bb.db unwind label %bb.ap

bb.da:                                            ; preds = %bb.cy
  store ptr %i.nd, ptr %i.v, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataE10drop_innerBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataEEB1d_.exit unwind label %bb.ap

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataEEB1d_.exit: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ct

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref5entry13OccupiedEntryNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1y_5CrateEEB1A_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataINtNtB1w_4util11SharedValueNtB2Y_5CrateEEEEEB30_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref3one6RefMutNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1o_5CrateEEB1q_.exit
  %.sroa.031.4 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref3one6RefMutNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1o_5CrateEEB1q_.exit ], [ %.sroa.031.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataINtNtB1w_4util11SharedValueNtB2Y_5CrateEEEEEB30_.exit.i ] ; 3 uses
  %.sroa.17.1 = phi i32 [ %i.oh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref3one6RefMutNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1o_5CrateEEB1q_.exit ], [ %i.ez, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataINtNtB1w_4util11SharedValueNtB2Y_5CrateEEEEEB30_.exit.i ] ; 3 uses
  %.sroa.0.1 = phi i32 [ %i.of, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref3one6RefMutNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1o_5CrateEEB1q_.exit ], [ %i.ex, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataINtNtB1w_4util11SharedValueNtB2Y_5CrateEEEEEB30_.exit.i ] ; 3 uses
  %i.ne = invoke { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCsgIpRO4v45SJ_7base_db5input5CrateuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %.sroa.0.1, i32 noundef %.sroa.17.1)
          to label %bb.dr unwind label %bb.q      ; 0 uses

bb.db:                                            ; preds = %bb.dg, %bb.cz, %bb.p
  unreachable

bb.dc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataEEB1d_.exit111, %bb.dd
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataEEB1d_.exit111 ], [ %i.nf, %bb.dd ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgIpRO4v45SJ_7base_db5input9CrateDataNtBE_5CrateEEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.s) #31
          to label %.thread170 unwind label %bb.al

bb.dd:                                            ; preds = %bb.an
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.de:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bz, i64 232 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !nonnull !7, !noundef !7
  %i.ni = atomicrmw add ptr %i.nh, i64 1 monotonic, align 8
  %i.nj = icmp slt i64 %i.ni, 0
  br i1 %i.nj, label %bb.dg, label %bb.df, !prof !8

bb.df:                                            ; preds = %bb.de
  %i.nk = load ptr, ptr %i.ng, align 8, !nonnull !7, !noundef !7 ; 2 uses
  store ptr %i.nk, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bz, i64 168
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.nl)
          to label %bb.di unwind label %bb.dh

bb.dg:                                            ; preds = %bb.de
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %bb.db unwind label %bb.dv

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit113: ; preds = %bb.dj, %bb.dh
  %.pn = phi { ptr, i32 } [ %i.nm, %bb.dh ], [ %i.no, %bb.dj ]
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataE10drop_innerBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataEEB1d_.exit111 unwind label %bb.al

bb.dh:                                            ; preds = %bb.df
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit113

bb.di:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBK_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.nn)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit113 unwind label %bb.al

bb.dk:                                            ; preds = %bb.di
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.737.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.034, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false)
  %.sroa.034.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.034, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.034.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.t, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.034, i64 168, i1 false)
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store ptr %i.nk, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.np, i8 1, i64 5, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val63 = load ptr, ptr %i.nq, align 8
  %i.nr = invoke { ptr, ptr } %.val63(ptr noundef nonnull %1)
          to label %bb.dl unwind label %bb.dm, !noalias !470 ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  %i.ns = extractvalue { ptr, ptr } %i.nr, 0      ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 136
  %i.nu = load i64, ptr %i.nt, align 8, !range !13, !noalias !470, !noundef !7 ; 2 uses
  %i.nv = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_5input14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateEE13get_or_createNCNvMs0_NvB1I_1__B1G_11ingredient_0EB1K_(ptr noundef nonnull align 4 @_RNvNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB9_5Crate11ingredient_5CACHE, ptr noundef nonnull align 8 %i.ns, ptr noundef nonnull align 8 %i.ns)
          to label %_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate11ingredient_.exit.i unwind label %bb.dm, !noalias !470 ; 2 uses

_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate11ingredient_.exit.i: ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %i.t, i64 240, i1 false)
  %i.nw = extractvalue { ptr, ptr } %i.nr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !470
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.ny = load i32, ptr %i.nx, align 8, !noalias !470, !noundef !7
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.oa = insertelement <4 x i64> poison, i64 %i.nu, i64 0
  %i.ob = shufflevector <4 x i64> %i.oa, <4 x i64> poison, <4 x i32> zeroinitializer
  store <4 x i64> %i.ob, ptr %i.nz, align 8, !noalias !470
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 %i.nu, ptr %.sroa.5.0..sroa_idx8.i, align 8, !noalias !470
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.oc, i8 1, i64 5, i1 false)
  store ptr %i.nv, ptr %i.od, align 8, !noalias !470
  invoke void @_RINvMs_NtCsd9Lm8bEdjjY_5salsa11zalsa_localNtB5_10ZalsaLocal8allocateINtNtB7_5input5ValueNtNtCsgIpRO4v45SJ_7base_db5input5CrateENCNCNvMs0_B17_INtB17_14IngredientImplB1o_E9new_input00EB1s_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.nw, ptr noundef nonnull align 8 %i.ns, i32 noundef %i.ny, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.a)
          to label %bb.dp unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNvNtCsgIpRO4v45SJ_7base_db5input1__7builder8Builder_EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.t) #31
          to label %.thread170 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.do:                                            ; preds = %_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate11ingredient_.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread170

bb.dp:                                            ; preds = %_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate11ingredient_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  %i.of = load i32, ptr %i.b, align 8, !range !19, !noalias !470, !noundef !7 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.oh = load i32, ptr %i.og, align 4, !noalias !470, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.et, ptr %i.n, align 8
  %.sroa.5155.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.5155.0..sroa_idx156, align 8
  %.sroa.6158.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6158.0..sroa_idx159, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx119, i64 24, i1 false)
  call void @_RNvMs1_NtNtCs2WklPA5QxgX_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB13_5CrateE6insertB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n, i32 noundef %i.of, i32 noundef %i.oh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val64 = load ptr, ptr %i.o, align 8, !nonnull !7, !align !17, !noundef !7 ; 2 uses
  %i.oi = cmpxchg ptr %.val64, i64 -4, i64 0 release monotonic, align 8
  %i.oj = extractvalue { i64, i1 } %i.oi, 1
  br i1 %i.oj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref3one6RefMutNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1o_5CrateEEB1q_.exit, label %bb.dq, !prof !12

bb.dq:                                            ; preds = %bb.dp
  call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val64)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref3one6RefMutNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1o_5CrateEEB1q_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref3one6RefMutNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1o_5CrateEEB1q_.exit: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref5entry13OccupiedEntryNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1y_5CrateEEB1A_.exit

bb.dr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref5entry13OccupiedEntryNtNtCsgIpRO4v45SJ_7base_db5input15UniqueCrateDataNtB1y_5CrateEEB1A_.exit
  %i.ok = invoke { i32, i32 } @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtB1j_5CrateNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %7, i32 noundef %.sroa.0.1, i32 noundef %.sroa.17.1)
          to label %bb.ds unwind label %bb.q      ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  %i.ol = trunc nuw i8 %.sroa.031.4 to i1
  br i1 %i.ol, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.du, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.f

bb.du:                                            ; preds = %bb.ds
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgIpRO4v45SJ_7base_db5input9CrateDataNtBE_5CrateEEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ag)
  br label %bb.dt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCsgIpRO4v45SJ_7base_db18CrateWorkspaceDataEEB1d_.exit111: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit113, %bb.dv
  %.pn42 = phi { ptr, i32 } [ %i.om, %bb.dv ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit113 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input14ExtraCrateDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r) #31
          to label %bb.dc unwind label %bb.al

end_hunk_0
