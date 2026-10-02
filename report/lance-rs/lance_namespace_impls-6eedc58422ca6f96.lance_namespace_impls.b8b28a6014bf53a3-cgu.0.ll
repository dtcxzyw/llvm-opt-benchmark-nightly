Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvXs1e_NtNtCs40MM8ukkVQd_9sqlparser3ast17table_constraintsNtB7_20PrimaryKeyConstraintNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1p_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls:bb.a

_RINvXsbZ_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB13_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.q, %bb.p, %_RINvXscG_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14OrderByOptionsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB16_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11, i64 1320
  %i.du = load i64, ptr %i.dt, align 8, !range !421, !alias.scope !95984, !noalias !95985, !noundef !416
  %i.dv = icmp ne i64 %i.du, -1                   ; 2 uses
  %i.dw = zext i1 %i.dv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96005)
  %i.dx = load ptr, ptr %1, align 8, !alias.scope !96006, !noalias !95984, !nonnull !416, !noundef !416
  %i.dy = load ptr, ptr %i.f, align 8, !alias.scope !96006, !noalias !95984, !nonnull !416, !align !417, !noundef !416
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %i.ea = load ptr, ptr %i.dz, align 8, !invariant.load !416, !noalias !96005, !nonnull !416
  tail call void %i.ea(ptr noundef nonnull %i.dx, i64 noundef %i.dw), !noalias !96005, !inline_history !151
  br i1 %i.dv, label %bb.r, label %_RINvXs1Y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.r:                                             ; preds = %_RINvXsbZ_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB13_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96008)
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11, i64 1328
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !96009, !noalias !96010, !nonnull !416, !noundef !416
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11, i64 1336
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !96009, !noalias !96010, !noundef !416 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96011)
  %i.ef = load ptr, ptr %1, align 8, !alias.scope !96011, !noalias !96012, !nonnull !416, !noundef !416
  %i.eg = load ptr, ptr %i.f, align 8, !alias.scope !96011, !noalias !96012, !nonnull !416, !align !417, !noundef !416
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !416, !noalias !96013, !nonnull !416
  tail call void %i.ei(ptr noundef nonnull %i.ef, i64 noundef %i.ee), !noalias !96013, !inline_history !152
  tail call fastcc void @_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBR_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ee, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !96012, !inline_history !153
  br label %_RINvXs1Y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs1Y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXsbZ_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB13_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.r
  %i.ej = icmp eq ptr %i.cb, %i.bz
  br i1 %i.ej, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXs1Y_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvXs5i_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_9IndexTypeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBY_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.en = load i64, ptr %i.em, align 8, !noundef !416 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96014)
  %i.eo = load ptr, ptr %1, align 8, !alias.scope !96014, !nonnull !416, !noundef !416
  %i.ep = load ptr, ptr %i.f, align 8, !alias.scope !96014, !nonnull !416, !align !417, !noundef !416
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %i.er = load ptr, ptr %i.eq, align 8, !invariant.load !416, !noalias !96014, !nonnull !416
  tail call void %i.er(ptr noundef nonnull %i.eo, i64 noundef %i.en), !noalias !96014, !inline_history !471
  %.val6 = load ptr, ptr %1, align 8              ; 8 uses
  %.val7 = load ptr, ptr %i.f, align 8            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96015)
  %.idx.i = shl nuw nsw i64 %i.en, 6
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %i.et = icmp eq i64 %i.en, 0
  br i1 %i.et, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.val7, i64 128
  %i.ev = load ptr, ptr %i.eu, align 8, !invariant.load !416, !noalias !96016, !nonnull !416 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val7, i64 144 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val7, i64 56
  br label %bb.s

bb.s:                                             ; preds = %_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi ptr [ %i.el, %.lr.ph.i ], [ %i.ey, %_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96017)
  %i.ez = load i64, ptr %.sroa.0.01.i, align 8, !range !509, !alias.scope !96018, !noundef !416 ; 3 uses
  %i.fa = icmp eq i64 %i.ez, -1                   ; 2 uses
  %i.fb = zext i1 %i.fa to i64
  tail call void %i.ev(ptr noundef nonnull %.val6, i64 noundef %i.fb), !noalias !96016, !inline_history !154
  br i1 %i.fa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !96018, !nonnull !416, !noundef !416
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !96018, !noundef !416
  %i.fg = load ptr, ptr %i.ew, align 8, !invariant.load !416, !noalias !96019, !nonnull !416
  tail call void %i.fg(ptr noundef nonnull %.val6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef %i.ff), !noalias !96020, !inline_history !155
  br label %_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.u:                                             ; preds = %bb.s
  %i.fh = xor i64 %i.ez, -9223372036854775808
  %i.fi = icmp slt i64 %i.ez, 0
  %i.fj = select i1 %i.fi, i64 %i.fh, i64 7       ; 2 uses
  tail call void %i.ev(ptr noundef nonnull %.val6, i64 noundef %i.fj), !noalias !96021, !inline_history !154
  %i.fk = icmp eq i64 %i.fj, 7
  br i1 %i.fk, label %bb.v, label %_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96022)
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !96023, !nonnull !416, !noundef !416
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !96023, !noundef !416
  %i.fp = load ptr, ptr %i.ew, align 8, !invariant.load !416, !noalias !96024, !nonnull !416
  tail call void %i.fp(ptr noundef nonnull %.val6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef %i.fo), !noalias !96025, !inline_history !156
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 56
  %i.fr = load i32, ptr %i.fq, align 8, !range !705, !alias.scope !96023, !noundef !416 ; 2 uses
  %i.fs = icmp ne i32 %i.fr, -1                   ; 2 uses
  %i.ft = zext i1 %i.fs to i64
  tail call void %i.ev(ptr noundef nonnull %.val6, i64 noundef %i.ft), !noalias !96026, !inline_history !157
  br i1 %i.fs, label %bb.w, label %_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fu = load ptr, ptr %i.ex, align 8, !invariant.load !416, !noalias !96027, !nonnull !416
  tail call void %i.fu(ptr noundef nonnull %.val6, i32 noundef %i.fr), !noalias !96027, !inline_history !158
  br label %_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.fv = icmp eq ptr %i.ey, %i.es
  br i1 %i.fv, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, label %bb.s

_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit: ; preds = %_RINvXs5s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB11_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.pre = load ptr, ptr %1, align 8, !alias.scope !96028
  %.pre12 = load ptr, ptr %i.f, align 8, !alias.scope !96028
  br label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.fw = phi ptr [ %.pre12, %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit ], [ %.val7, %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %i.fx = phi ptr [ %.pre, %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit ], [ %.val6, %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexColumnNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fz = load i8, ptr %i.fy, align 8, !range !431, !noundef !416 ; 3 uses
  %i.ga = icmp ne i8 %i.fz, -1                    ; 2 uses
  %i.gb = zext i1 %i.ga to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96028)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.gd = load ptr, ptr %i.gc, align 8, !invariant.load !416, !noalias !96028, !nonnull !416
  tail call void %i.gd(ptr noundef nonnull %i.fx, i64 noundef %i.gb), !noalias !96028, !inline_history !710
  br i1 %i.ga, label %bb.x, label %_RINvXs8x_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.x:                                             ; preds = %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.val8 = load ptr, ptr %1, align 8, !alias.scope !723, !nonnull !416, !noundef !416 ; 6 uses
  %.val9 = load ptr, ptr %i.f, align 8, !alias.scope !723, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96029)
  %i.ge = icmp ne i8 %i.fz, 2                     ; 2 uses
  %i.gf = zext i1 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.val9, i64 128
  %i.gh = load ptr, ptr %i.gg, align 8, !invariant.load !416, !noalias !96030, !nonnull !416 ; 4 uses
  tail call void %i.gh(ptr noundef nonnull %.val8, i64 noundef %i.gf), !noalias !96030, !inline_history !161
  br i1 %i.ge, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gi = getelementptr inbounds nuw i8, ptr %.val9, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !invariant.load !416, !noalias !96031, !nonnull !416
  tail call void %i.gj(ptr noundef nonnull %.val8, i8 noundef %i.fz), !noalias !96031, !inline_history !162
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.gl = load i8, ptr %i.gk, align 1, !range !429, !alias.scope !96029, !noundef !416 ; 2 uses
  %i.gm = icmp ne i8 %i.gl, 2                     ; 2 uses
  %i.gn = zext i1 %i.gm to i64
  tail call void %i.gh(ptr noundef nonnull %.val8, i64 noundef %i.gn), !noalias !96032, !inline_history !161
  br i1 %i.gm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.go = zext nneg i8 %i.gl to i64
  tail call void %i.gh(ptr noundef nonnull %.val8, i64 noundef %i.go), !noalias !96033, !inline_history !161
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.gq = load i8, ptr %i.gp, align 2, !range !429, !alias.scope !96029, !noundef !416 ; 2 uses
  %i.gr = icmp ne i8 %i.gq, 2                     ; 2 uses
  %i.gs = zext i1 %i.gr to i64
  tail call void %i.gh(ptr noundef nonnull %.val8, i64 noundef %i.gs), !noalias !96034, !inline_history !161
  br i1 %i.gr, label %bb.ac, label %_RINvXs8x_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %.val9, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !invariant.load !416, !noalias !96035, !nonnull !416
  tail call void %i.gu(ptr noundef nonnull %.val8, i8 noundef %i.gq), !noalias !96035, !inline_history !162
  br label %_RINvXs8x_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs8x_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ac, %bb.ab, %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl11IndexOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBP_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtNtB1A_11collections4hash3map7HashMapBP_BP_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [40 x i8], align 8      ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [64 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96093)
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !96093, !noalias !96092, !nonnull !416, !noundef !416 ; 5 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload.i = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !96093, !noalias !96092 ; 4 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !96093, !noalias !96092 ; 4 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.02.0.copyload.i, align 16, !noalias !96094
  %i.e = icmp eq i64 %.sroa.43.0.copyload.i, 0
  br i1 %i.e, label %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  %i.f = mul i64 %.sroa.43.0.copyload.i, 48       ; 2 uses
  %2 = add i64 %i.f, 48                           ; 2 uses
  %3 = add i64 %.sroa.43.0.copyload.i, 17
  %i.g = add i64 %3, %2                           ; 3 uses
  %4 = icmp uge i64 %i.g, %2
  tail call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %5)
  %6 = sub i64 -48, %i.f
  %i.h = getelementptr inbounds i8, ptr %.sroa.02.0.copyload.i, i64 %6
  br label %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.a, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %.sroa.511.0.i.i.i = phi ptr [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sroa.410.0.i.i.i = phi i64 [ undef, %bb.a ], [ %i.g, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 16
  %i.j = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.k = getelementptr i8, ptr %.sroa.02.0.copyload.i, i64 %.sroa.43.0.copyload.i
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i64 %.sink.i.i.i.i, ptr %i.d, align 8, !alias.scope !96092, !noalias !96093
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.410.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !96092, !noalias !96093
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.511.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !96092, !noalias !96093
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.02.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !96092, !noalias !96093
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !96092, !noalias !96093
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.l, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !96092, !noalias !96093
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <16 x i1> %i.j, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !96092, !noalias !96093
  %.sroa.101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.55.0.copyload.i, ptr %.sroa.101.0..sroa_idx.i, align 8, !alias.scope !96092, !noalias !96093
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !416
  %i.o = icmp eq i64 %i.n, 0
  %i.p = lshr i64 %.sroa.55.0.copyload.i, 1
  %i.q = and i64 %.sroa.55.0.copyload.i, 1
  %.sroa.0.1 = add nuw i64 %i.p, %i.q
  %.sroa.0.0 = select i1 %i.o, i64 %.sroa.55.0.copyload.i, i64 %.sroa.0.1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !96095, !noalias !96096, !noundef !416
  %i.t = icmp ugt i64 %.sroa.0.0, %i.s
  br i1 %i.t, label %bb.b, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

.body:                                            ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ao, ptr %i.aa, align 8, !alias.scope !96097, !noalias !96098
  store i64 %i.ar, ptr %i.x, align 8, !alias.scope !96099, !noalias !96098
  br label %bb.m

bb.b:                                             ; preds = %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.n ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %_RNvXsx_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96101)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.x, align 8, !noalias !96100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.y = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.y, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.sink.split.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted9.i.i.i = load i16, ptr %i.aa, align 8, !alias.scope !96097, !noalias !96098
  %.promoted10.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !96101, !noalias !96102
  %.promoted13.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !96101, !noalias !96102
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.lcssa15.i.i.i = phi ptr [ %.promoted13.i.i.i, %.lr.ph.i.i.i ], [ %.promoted9.i.i.i.i.i, %bb.g ] ; 2 uses
  %.lcssa812.i.i.i = phi ptr [ %.promoted10.i.i.i, %.lr.ph.i.i.i ], [ %.promoted5.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.ae = phi i16 [ %.promoted9.i.i.i, %.lr.ph.i.i.i ], [ %i.ao, %bb.g ] ; 2 uses
  %i.af = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ar, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96104)
  %.not12.i.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.ak, ptr %i.ab, align 8, !alias.scope !96097, !noalias !96098
  store ptr %i.aj, ptr %i.z, align 8, !alias.scope !96097, !noalias !96098
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.lcssa15.i.i.i, %bb.c ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.lcssa812.i.i.i, %bb.c ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.ag, align 16, !noalias !96105
  %i.ai = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ai to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.c
  %.promoted9.i.i.i.i.i = phi ptr [ %i.ak, %._crit_edge.i.i.i.i.i ], [ %.lcssa15.i.i.i, %bb.c ] ; 2 uses
  %.promoted5.i.i.i.i.i = phi ptr [ %i.aj, %._crit_edge.i.i.i.i.i ], [ %.lcssa812.i.i.i, %bb.c ] ; 3 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i.i.i        ; 4 uses
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [48 x i8], ptr %.promoted5.i.i.i.i.i, i64 %i.ap ; 2 uses
  %i.ar = add i64 %i.af, -1                       ; 6 uses
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -48
  %.sroa.02.0.copyload3.i.i.i = load i64, ptr %i.as, align 8, !noalias !96106 ; 2 uses
  %.sroa.7.0..sroa_idx4.i.i.i = getelementptr inbounds i8, ptr %i.aq, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx4.i.i.i, i64 40, i1 false), !noalias !96106
  %.not.i.i.i = icmp eq i64 %.sroa.02.0.copyload3.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, i64 40, i1 false), !noalias !96107
  store i64 %.sroa.02.0.copyload3.i.i.i, ptr %i.b, align 8, !noalias !96107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96108
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBN_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ac)
          to label %.noexc.i.i.i unwind label %.body, !noalias !96109

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96110)
  %i.at = load i64, ptr %i.a, align 8, !range !421, !alias.scope !96110, !noalias !96108, !noundef !416 ; 3 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96112)
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !96113, !noalias !96108, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !96114
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96107
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.aw = icmp eq i64 %i.ar, 0
  br i1 %i.aw, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.sink.split.i, label %bb.c

_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  store i16 %i.ao, ptr %i.aa, align 8, !alias.scope !96097, !noalias !96098
  store i64 %i.ar, ptr %i.x, align 8, !alias.scope !96099, !noalias !96098
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96116)
  %i.ax = icmp eq i64 %i.ar, 0
  br i1 %i.ax, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.lcssa11.i.i.i.i.i = phi ptr [ %.lcssa10.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.promoted9.i.i.i.i.i, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 2 uses
  %i.ay = phi i64 [ %i.bl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.ar, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.lcssa47.i.i.i.i.i = phi ptr [ %.lcssa46.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.promoted5.i.i.i.i.i, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 2 uses
  %i.az = phi i16 [ %i.bi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.ao, %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBN_NCINvXs1i_NtB8_3mapINtB38_7HashMapBO_BO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1z_7collect6ExtendBN_E6extendINtNtNtNtB3I_11collections4hash3map7HashMapBO_BO_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa47.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.ba, align 16, !noalias !96117
  %i.bc = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -768 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.bc to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.lcssa10.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa46.i.i.i.i.i = phi ptr [ %.lcssa47.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.az, %.preheader.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bf = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = and i16 %i.bf, %.lcssa.i.i.i.i.i.i
  %i.bj = sub nsw i64 0, %i.bh
  %i.bk = getelementptr inbounds [48 x i8], ptr %.lcssa46.i.i.i.i.i, i64 %i.bj ; 4 uses
  %i.bl = add i64 %i.ay, -1                       ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96120)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !range !419, !alias.scope !96121, !noalias !96122, !noundef !416 ; 2 uses
  %i.bn = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -40
  %.val1.i.i.i.i.i.i1.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !96121, !noalias !96122, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i1.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !96123
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNCINvMs3_NtNtCshkPeWWG1flk_5lance7dataset8fragmentNtB8_12FileFragment16extend_deletionsRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !130971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx.i, i64 48, i1 false)
  invoke fastcc void @_RINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB6_7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendmE6extendNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.x)
          to label %bb.by unwind label %bb.bx, !noalias !130971

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !130971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i, i64 24, i1 false)
  invoke fastcc void @_RINvXse_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendmE6extendNtB6_4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.x)
          to label %bb.da unwind label %bb.cz, !noalias !130971

bb.ad:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !130971, !noundef !416 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.bz = load i64, ptr %i.v, align 8, !noalias !130971, !noundef !416
  %i.ca = icmp ugt i64 %i.bz, 4999
  br i1 %i.ca, label %bb.ai, label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.cb = load i64, ptr %i.v, align 8, !noalias !130971, !noundef !416
  %i.cc = icmp ugt i64 %i.cb, 4999
  br i1 %i.cc, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  store i64 0, ptr %i.az, align 8, !alias.scope !130971
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(128) %i.x), !noalias !130971
  br label %.thread138

bb.ah:                                            ; preds = %bb.af
  %i.cd = icmp ult i64 %i.bx, 5000
  br i1 %i.cd, label %bb.ak, label %bb.ao

bb.ai:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !130973
  store i64 0, ptr %i.s, align 8, !noalias !130973
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !130973
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !130973
  invoke fastcc void @_RINvXse_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendmE6extendNtB6_4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %i.x)
          to label %bb.bw unwind label %bb.aj, !noalias !130971

bb.aj:                                            ; preds = %bb.ai
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.s), !noalias !130973
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !130974
  %i.cf = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !range !428, !noalias !130975, !noundef !416
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.ak
  %.pre.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !130976
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !130976
  br label %bb.al

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ak
  %i.cj = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !130974 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = extractvalue { i64, i64 } %i.cj, 1      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !noalias !130977
  store i8 1, ptr %i.cg, align 8, !noalias !130977
  br label %bb.al

bb.al:                                            ; preds = %.noexc.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi13.i.i.i = phi i64 [ %i.cl, %.noexc.i.i.i ], [ %.pre1.i.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.ck, %.noexc.i.i.i ], [ %.pre.i.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.cn = add i64 %.pre-phi.i.i.i, 1
  store i64 %i.cn, ptr %i.cf, align 8, !noalias !130976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !130974
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store i64 %.pre-phi.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !130974
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.pre-phi13.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !130974
  invoke fastcc void @_RINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB6_7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendmE6extendNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %i.x)
          to label %bb.as unwind label %bb.am, !noalias !130971

bb.am:                                            ; preds = %bb.al
  %i.co = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !noalias !130974
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val7.i.i.i = load i64, ptr %i.cp, align 8, !noalias !130974, !noundef !416
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val.i.i.i, i64 %.val7.i.i.i) #73, !noalias !130974
  br label %.body

bb.an:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.x) #73, !noalias !130971
  br label %.body

bb.ao:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !130978
  %i.cr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !range !428, !noalias !130979, !noundef !416
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i32.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i23.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i32.i: ; preds = %bb.ao
  %.pre.i.i.i.i.i33.i = load i64, ptr %i.cr, align 8, !noalias !130980
  %.phi.trans.insert.i.i.i.i.i34.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.pre1.i.i.i.i.i35.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i34.i, align 8, !noalias !130980
  br label %bb.ap

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i23.i: ; preds = %bb.ao
  %i.cv = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i.i25.i unwind label %bb.ar, !noalias !130978 ; 2 uses

.noexc.i.i25.i:                                   ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i23.i
  %i.cw = extractvalue { i64, i64 } %i.cv, 0
  %i.cx = extractvalue { i64, i64 } %i.cv, 1      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !noalias !130981
  store i8 1, ptr %i.cs, align 8, !noalias !130981
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc.i.i25.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i32.i
  %.pre-phi13.i.i26.i = phi i64 [ %i.cx, %.noexc.i.i25.i ], [ %.pre1.i.i.i.i.i35.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i32.i ]
  %.pre-phi.i.i27.i = phi i64 [ %i.cw, %.noexc.i.i25.i ], [ %.pre.i.i.i.i.i33.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i32.i ] ; 2 uses
  %i.cz = add i64 %.pre-phi.i.i27.i, 1
  store i64 %i.cz, ptr %i.cr, align 8, !noalias !130980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !130978
  %.sroa.43.0..sroa_idx.i.i28.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store i64 %.pre-phi.i.i27.i, ptr %.sroa.43.0..sroa_idx.i.i28.i, align 8, !noalias !130978
  %.sroa.54.0..sroa_idx.i.i29.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.pre-phi13.i.i26.i, ptr %.sroa.54.0..sroa_idx.i.i29.i, align 8, !noalias !130978
  invoke fastcc void @_RINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB6_7HashSetmNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendmE6extendNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %i.x)
          to label %bb.at unwind label %bb.aq, !noalias !130971

bb.aq:                                            ; preds = %bb.ap
  %i.da = landingpad { ptr, i32 }
          cleanup
  %.val.i.i30.i = load ptr, ptr %i.q, align 8, !noalias !130978
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val7.i.i31.i = load i64, ptr %i.db, align 8, !noalias !130978, !noundef !416
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val.i.i30.i, i64 %.val7.i.i31.i) #73, !noalias !130978
  br label %.body

bb.ar:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i23.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.x) #73, !noalias !130971
  br label %.body

bb.as:                                            ; preds = %bb.al
  %.sroa.037.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8, !noalias !130982
  %.sroa.037.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dd = load <2 x i64>, ptr %.sroa.037.sroa.4.0..sroa_idx.i, align 8, !noalias !130982
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.438.0.copyload.i = load i64, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !130982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !130971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !130974
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i

bb.at:                                            ; preds = %bb.ap
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %i.q, align 8, !noalias !130983 ; 7 uses
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.de = load <2 x i64>, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !130983
  %.sroa.0.sroa.5.0.copyload.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !130983 ; 4 uses
  %.sroa.51.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.51.0.copyload4.i = load i64, ptr %.sroa.51.0..sroa_idx3.i, align 8, !noalias !130983 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx.i.i28.i, i64 16, i1 false), !noalias !130983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !130978
  %i.df = icmp ugt i64 %.sroa.51.0.copyload4.i, 5000
  br i1 %i.df, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !130971
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload.i) ]
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.0.sroa.0.0.copyload.i, align 16, !noalias !130984
  %i.dg = icmp eq i64 %.sroa.0.sroa.5.0.copyload.i, 0 ; 4 uses
  br i1 %i.dg, label %bb.ax, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.av
  %i.dh = icmp slt i64 %.sroa.0.sroa.5.0.copyload.i, 4611686018427387900
  call void @llvm.assume(i1 %i.dh)
  %i.di = shl i64 %.sroa.0.sroa.5.0.copyload.i, 2
  %i.dj = and i64 %i.di, -16                      ; 2 uses
  %3 = add i64 %i.dj, 16                          ; 2 uses
  %i.dk = add nsw i64 %.sroa.0.sroa.5.0.copyload.i, 17
  %i.dl = add i64 %i.dk, %3                       ; 3 uses
  %4 = icmp uge i64 %i.dl, %3
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.dl, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %i.dm = sub nuw nsw i64 -16, %i.dj
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.sroa.0.0.copyload.i, i64 %i.dm
  br label %bb.ax

bb.aw:                                            ; preds = %bb.bv, %bb.au
  %.sroa.12.sroa.0.sroa.0.1.i = phi ptr [ %.sroa.0136.0.copyload.i, %bb.bv ], [ %.sroa.0.sroa.0.0.copyload.i, %bb.au ]
  %.sroa.06.2.i = phi i64 [ 2, %bb.bv ], [ 1, %bb.au ]
  %i.do = phi <2 x i64> [ %i.gt, %bb.bv ], [ %i.de, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i

bb.ax:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.av
  %.sroa.514.0.i.i.i = phi ptr [ undef, %bb.av ], [ %i.dn, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sroa.413.0.i.i.i = phi i64 [ undef, %bb.av ], [ %i.dl, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 5 uses
  %.sink.i.i.i.i = phi i64 [ 0, %bb.av ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.dq = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.dr = bitcast <16 x i1> %i.dq to i16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !130985
  store i64 0, ptr %i.p, align 8, !noalias !130985
  %.sroa.4.0..sroa_idx.i43.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !noalias !130985
  %.sroa.5.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i44.i, align 8, !noalias !130985
  call void @llvm.experimental.noalias.scope.decl(metadata !130986)
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.dr, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i
  %i.ds = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i ], [ %i.dp, %bb.ax ] ; 2 uses
  %i.dt = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.sroa.0.0.copyload.i, %bb.ax ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !130987
  %i.du = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.du to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i

bb.ay:                                            ; preds = %bb.bd, %bb.ba
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ax
  %.sroa.14.0.i.i.i = phi ptr [ %i.dp, %bb.ax ], [ %i.dw, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.11.0.i.i.i = phi ptr [ %.sroa.0.sroa.0.0.copyload.i, %bb.ax ], [ %i.dv, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.dr, %bb.ax ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.dy = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = and i16 %i.dy, %.lcssa.i.i.i.i.i.i
  %i.ec = sub nsw i64 0, %i.ea
  %i.ed = getelementptr inbounds [4 x i8], ptr %.sroa.11.0.i.i.i, i64 %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !noalias !130988, !noundef !416 ; 2 uses
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = trunc nuw i32 %i.eg to i16              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !130990
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i16 %i.eh, ptr %i.ei, align 8, !noalias !130990
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !130990
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !130990
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !130990
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ba unwind label %bb.az, !noalias !130991

bb.az:                                            ; preds = %.loopexit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o) #73, !noalias !130992
  br label %.thread.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %._crit_edge.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i, i64 noundef %.sroa.413.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #68, !noalias !130992
  br label %bb.bv

bb.ba:                                            ; preds = %.loopexit.i.i
  %i.ek = trunc i32 %i.ef to i16
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !alias.scope !130993, !noalias !130991 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !130994
  store i64 1, ptr %.sroa.5.0..sroa_idx.i44.i, align 8, !alias.scope !130993, !noalias !130991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !130990
  %i.el = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.pre.i.i.i.i, i16 noundef %i.ek)
          to label %bb.bc unwind label %bb.ay, !noalias !130992

bb.bb:                                            ; preds = %bb.bo
  unreachable

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.el, label %bb.bd, label %.lr.ph.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.em = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i.i)
          to label %.lr.ph.i.i.i unwind label %bb.ay, !noalias !130992 ; 0 uses

.lr.ph.i.i.i:                                     ; preds = %bb.bd, %bb.bc
  %.sroa.23.0137.i.i.i = add i64 %.sroa.51.0.copyload4.i, -1
  %i.en = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i51.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i52.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.be

bb.be:                                            ; preds = %bb.br, %.lr.ph.i.i.i
  %.sroa.23.0144.i.i.i = phi i64 [ %.sroa.23.0137.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.23.0.i.i.i, %bb.br ]
  %.sroa.011.0143.i.i.i = phi ptr [ %.pre.i.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.011.1.i.i.i, %bb.br ] ; 4 uses
  %.sroa.015.0142.i.i.i = phi i16 [ %i.eh, %.lr.ph.i.i.i ], [ %.sroa.015.1.i.i.i, %bb.br ] ; 3 uses
  %.sroa.19.0141.i.i.i = phi i16 [ %i.eb, %.lr.ph.i.i.i ], [ %i.ex, %bb.br ] ; 2 uses
  %.sroa.15.0140.i.i.i = phi ptr [ %.sroa.14.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.15.1.i.i.i, %bb.br ] ; 2 uses
  %.sroa.1196.0139.i.i.i = phi ptr [ %.sroa.11.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1196.1.i.i.i, %bb.br ] ; 2 uses
  %.not12.i.i.i30.i.i.i = icmp eq i16 %.sroa.19.0141.i.i.i, 0
  br i1 %.not12.i.i.i30.i.i.i, label %.lr.ph.i.i.i35.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i35.i.i.i:                             ; preds = %bb.be, %.lr.ph.i.i.i35.i.i.i
  %i.eo = phi ptr [ %i.es, %.lr.ph.i.i.i35.i.i.i ], [ %.sroa.15.0140.i.i.i, %bb.be ] ; 2 uses
  %i.ep = phi ptr [ %i.er, %.lr.ph.i.i.i35.i.i.i ], [ %.sroa.1196.0139.i.i.i, %bb.be ]
  %.val10.i.i.i38.i.i.i = load <16 x i8>, ptr %i.eo, align 16, !noalias !130995
  %i.eq = icmp sgt <16 x i8> %.val10.i.i.i38.i.i.i, splat (i8 -1)
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 -64 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %.cast.i.i.i39.i.i.i = bitcast <16 x i1> %i.eq to i16 ; 2 uses
  %.not.i.i.i40.i.i.i = icmp eq i16 %.cast.i.i.i39.i.i.i, 0
  br i1 %.not.i.i.i40.i.i.i, label %.lr.ph.i.i.i35.i.i.i, label %.loopexit.i.i.i

.loopexit129.i.i.i:                               ; preds = %bb.bt, %bb.bq, %bb.bn, %bb.bm
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.bo
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i.i.i

.body61.i.i.i:                                    ; preds = %bb.bk, %.loopexit.split-lp.i.i.i, %.loopexit129.i.i.i
  %eh.lpad-body62.i.i.i = phi { ptr, i32 } [ %i.gf, %bb.bk ], [ %lpad.loopexit.i.i.i, %.loopexit129.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.et = icmp eq i64 %.sroa.413.0.i.i.i, 0
  %or.cond126.i.i.i = or i1 %i.dg, %i.et
  br i1 %or.cond126.i.i.i, label %bb.bu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.sink.split.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i35.i.i.i, %bb.be
  %.sroa.1196.1.i.i.i = phi ptr [ %.sroa.1196.0139.i.i.i, %bb.be ], [ %i.er, %.lr.ph.i.i.i35.i.i.i ] ; 2 uses
  %.sroa.15.1.i.i.i = phi ptr [ %.sroa.15.0140.i.i.i, %bb.be ], [ %i.es, %.lr.ph.i.i.i35.i.i.i ]
  %.lcssa.i.i.i34.i.i.i = phi i16 [ %.sroa.19.0141.i.i.i, %bb.be ], [ %.cast.i.i.i39.i.i.i, %.lr.ph.i.i.i35.i.i.i ] ; 3 uses
  %i.eu = add i16 %.lcssa.i.i.i34.i.i.i, -1
  %i.ev = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i34.i.i.i, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  %i.ex = and i16 %i.eu, %.lcssa.i.i.i34.i.i.i
  %i.ey = sub nsw i64 0, %i.ew
  %i.ez = getelementptr inbounds [4 x i8], ptr %.sroa.1196.1.i.i.i, i64 %i.ey
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -4
  %i.fb = load i32, ptr %i.fa, align 4, !noalias !130996, !noundef !416 ; 2 uses
  %i.fc = lshr i32 %i.fb, 16
  %i.fd = trunc nuw i32 %i.fc to i16              ; 7 uses
  %i.fe = trunc i32 %i.fb to i16                  ; 2 uses
  %i.ff = icmp eq i16 %.sroa.015.0142.i.i.i, %i.fd
  br i1 %i.ff, label %bb.bm, label %bb.bf

._crit_edge.i.i.i:                                ; preds = %bb.br
  %i.fg = icmp eq i64 %.sroa.413.0.i.i.i, 0
  %or.cond127.i.i.i = or i1 %i.dg, %i.fg
  br i1 %or.cond127.i.i.i, label %bb.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

bb.bf:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !130997)
  %i.fh = load ptr, ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !alias.scope !130998, !noalias !130992, !nonnull !416, !noundef !416 ; 3 uses
  %i.fi = load i64, ptr %.sroa.5.0..sroa_idx.i44.i, align 8, !alias.scope !130998, !noalias !130992, !noundef !416 ; 11 uses
  switch i64 %i.fi, label %.lr.ph.i.i.i57.i.i.i [
    i64 0, label %bb.bh
    i64 1, label %._crit_edge.i.i.i47.i.i.i
  ]

._crit_edge.i.i.i47.i.i.i:                        ; preds = %.lr.ph.i.i.i57.i.i.i, %bb.bf
  %.sroa.05.0.lcssa.i.i.i48.i.i.i = phi i64 [ 0, %bb.bf ], [ %i.fs, %.lr.ph.i.i.i57.i.i.i ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [40 x i8], ptr %i.fh, i64 %.sroa.05.0.lcssa.i.i.i48.i.i.i
  %i.fk = getelementptr i8, ptr %i.fj, i64 32
  %.val14.i.i.i49.i.i.i = load i16, ptr %i.fk, align 8, !alias.scope !130999, !noalias !131000, !noundef !416 ; 2 uses
  %i.fl = icmp eq i16 %.val14.i.i.i49.i.i.i, %i.fd
  br i1 %i.fl, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit63.i.i.i, label %bb.bg

.lr.ph.i.i.i57.i.i.i:                             ; preds = %bb.bf, %.lr.ph.i.i.i57.i.i.i
  %.sroa.01.019.i.i.i58.i.i.i = phi i64 [ %i.ft, %.lr.ph.i.i.i57.i.i.i ], [ %i.fi, %bb.bf ] ; 2 uses
  %.sroa.05.018.i.i.i59.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i.i57.i.i.i ], [ 0, %bb.bf ] ; 2 uses
  %i.fm = lshr i64 %.sroa.01.019.i.i.i58.i.i.i, 1 ; 2 uses
  %i.fn = add nuw nsw i64 %i.fm, %.sroa.05.018.i.i.i59.i.i.i ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.fi
  call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw [40 x i8], ptr %i.fh, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 32
  %.val16.i.i.i60.i.i.i = load i16, ptr %i.fq, align 8, !alias.scope !130999, !noalias !131000, !noundef !416
  %i.fr = icmp ugt i16 %.val16.i.i.i60.i.i.i, %i.fd
  %i.fs = select i1 %i.fr, i64 %.sroa.05.018.i.i.i59.i.i.i, i64 %i.fn, !unpredictable !416 ; 2 uses
  %i.ft = sub nuw nsw i64 %.sroa.01.019.i.i.i58.i.i.i, %i.fm ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 1
  br i1 %i.fu, label %.lr.ph.i.i.i57.i.i.i, label %._crit_edge.i.i.i47.i.i.i

bb.bg:                                            ; preds = %._crit_edge.i.i.i47.i.i.i
  %i.fv = icmp ult i16 %.val14.i.i.i49.i.i.i, %i.fd
  %i.fw = zext i1 %i.fv to i64
  %i.fx = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i48.i.i.i, %i.fw ; 2 uses
  %i.fy = icmp ule i64 %i.fx, %i.fi
  call void @llvm.assume(i1 %i.fy)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.4.0.i.i.ph.i50.i.i.i = phi i64 [ %i.fx, %bb.bg ], [ %i.fi, %bb.bf ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !131001
  store i16 %i.fd, ptr %i.en, align 8, !noalias !131001
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !131001
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i51.i.i.i, align 8, !noalias !131001
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i52.i.i.i, align 8, !noalias !131001
  %i.fz = icmp ult i64 %i.fi, 230584300921369396
  call void @llvm.assume(i1 %i.fz)
  %i.ga = load i64, ptr %i.p, align 8, !range !419, !alias.scope !131002, !noalias !131003, !noundef !416
  %i.gb = icmp eq i64 %i.fi, %i.ga
  br i1 %i.gb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %._crit_edge.i55.i.i.i unwind label %bb.bk, !noalias !131003

._crit_edge.i55.i.i.i:                            ; preds = %bb.bi
  %.pre.i56.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !alias.scope !131002, !noalias !131003
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i55.i.i.i, %bb.bh
  %i.gc = phi ptr [ %.pre.i56.i.i.i, %._crit_edge.i55.i.i.i ], [ %i.fh, %bb.bh ]
  %i.gd = getelementptr inbounds nuw [40 x i8], ptr %i.gc, i64 %.sroa.4.0.i.i.ph.i50.i.i.i ; 3 uses
  %i.ge = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i50.i.i.i, %i.fi
  br i1 %i.ge, label %bb.bl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i53.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.n) #73, !noalias !130992
  br label %.body61.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gh = sub nuw nsw i64 %i.fi, %.sroa.4.0.i.i.ph.i50.i.i.i
  %i.gi = mul nuw nsw i64 %i.gh, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr nonnull align 8 %i.gd, i64 %i.gi, i1 false), !noalias !131003
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i53.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i53.i.i.i: ; preds = %bb.bl, %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gd, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !131004
  %i.gj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  store i64 %i.gj, ptr %.sroa.5.0..sroa_idx.i44.i, align 8, !alias.scope !131002, !noalias !131003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !131001
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit63.i.i.i

bb.bm:                                            ; preds = %.loopexit.i.i.i
  %i.gk = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.sroa.011.0143.i.i.i, i16 noundef %i.fe)
          to label %bb.bs unwind label %.loopexit129.i.i.i, !noalias !130992

_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit63.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i53.i.i.i, %._crit_edge.i.i.i47.i.i.i
  %i.gl = phi i64 [ %i.gj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i53.i.i.i ], [ %i.fi, %._crit_edge.i.i.i47.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i15.i54.i.i.i = phi i64 [ %.sroa.4.0.i.i.ph.i50.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i53.i.i.i ], [ %.sroa.05.0.lcssa.i.i.i48.i.i.i, %._crit_edge.i.i.i47.i.i.i ] ; 3 uses
  %i.gm = icmp ult i64 %.sroa.4.0.i.i15.i54.i.i.i, %i.gl
  br i1 %i.gm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit63.i.i.i
  %i.gn = load ptr, ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !alias.scope !130986, !noalias !130992, !nonnull !416, !noundef !416
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %.sroa.4.0.i.i15.i54.i.i.i ; 4 uses
  %i.gp = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %i.go, i16 noundef %i.fe)
          to label %bb.bp unwind label %.loopexit129.i.i.i, !noalias !130992

bb.bo:                                            ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit63.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i15.i54.i.i.i, i64 noundef %i.gl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @620) #72
          to label %bb.bb unwind label %.loopexit.split-lp.i.i.i, !noalias !130992

bb.bp:                                            ; preds = %bb.bn
  br i1 %i.gp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gq = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.go)
          to label %bb.br unwind label %.loopexit129.i.i.i, !noalias !130992 ; 0 uses

bb.br:                                            ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp
  %.sroa.015.1.i.i.i = phi i16 [ %.sroa.015.0142.i.i.i, %bb.bt ], [ %.sroa.015.0142.i.i.i, %bb.bs ], [ %i.fd, %bb.bq ], [ %i.fd, %bb.bp ]
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.011.0143.i.i.i, %bb.bt ], [ %.sroa.011.0143.i.i.i, %bb.bs ], [ %i.go, %bb.bq ], [ %i.go, %bb.bp ]
  %.sroa.23.0.i.i.i = add i64 %.sroa.23.0144.i.i.i, -1 ; 2 uses
  %.not.i27.not.i.i.i = icmp eq i64 %.sroa.23.0.i.i.i, 0
  br i1 %.not.i27.not.i.i.i, label %._crit_edge.i.i.i, label %bb.be

bb.bs:                                            ; preds = %bb.bm
  br i1 %i.gk, label %bb.bt, label %bb.br

bb.bt:                                            ; preds = %bb.bs
  %i.gr = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.011.0143.i.i.i)
          to label %bb.br unwind label %.loopexit129.i.i.i, !noalias !130992 ; 0 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.sink.split.i.i.i: ; preds = %.thread.i.i.i, %.body61.i.i.i
  %.pn100.ph.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.thread.i.i.i ], [ %eh.lpad-body62.i.i.i, %.body61.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i, i64 noundef %.sroa.413.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #68, !noalias !130992
  br label %bb.bu

.thread.i.i.i:                                    ; preds = %bb.az, %bb.ay
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.ay ], [ %i.ej, %bb.az ] ; 2 uses
  %i.gs = icmp eq i64 %.sroa.413.0.i.i.i, 0
  %or.cond128.i.i.i = or i1 %i.dg, %i.gs
  br i1 %or.cond128.i.i.i, label %bb.bu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.sink.split.i.i.i

bb.bu:                                            ; preds = %.thread.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.sink.split.i.i.i, %.body61.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %.pn100.ph.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.sink.split.i.i.i ], [ %eh.lpad-body62.i.i.i, %.body61.i.i.i ], [ %eh.lpad-body.i.i.i, %.thread.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.p), !noalias !130985
  br label %.body

bb.bv:                                            ; preds = %._crit_edge.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i
  %.sroa.0136.0.copyload.i = load ptr, ptr %i.p, align 8, !noalias !131005
  %i.gt = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !noalias !131005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !130985
  br label %bb.aw

bb.bw:                                            ; preds = %bb.ai
  %.sroa.0133.0.copyload.i = load ptr, ptr %i.s, align 8, !noalias !131006
  %i.gu = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !131006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !130973
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i

bb.bx:                                            ; preds = %bb.ab
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i

.body95.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set5DrainmEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.i.i.i, %bb.bx
  %eh.lpad-body96.i = phi { ptr, i32 } [ %i.gv, %bb.bx ], [ %.pn119.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set5DrainmEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.i.i.i ]
  %.val17.i = load ptr, ptr %i.u, align 8, !noalias !130971
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val18.i = load i64, ptr %i.gw, align 8, !noalias !130971, !noundef !416
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val17.i, i64 %.val18.i) #73, !noalias !130971
  br label %.body

bb.by:                                            ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !130971, !noundef !416 ; 3 uses
  %i.gz = icmp ugt i64 %i.gy, 5000
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  br i1 %i.gz, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.sroa.034.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !noalias !130971
  %i.hb = load <2 x i64>, ptr %i.ha, align 8, !noalias !130971
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.536.0..sroa_idx.i, i64 16, i1 false), !noalias !130971
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.cy, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.cx, %bb.bz
  %.sroa.12.sroa.0.sroa.0.2.i = phi ptr [ %.sroa.034.sroa.0.0.copyload.i, %bb.bz ], [ %.sroa.0130.0.copyload.i, %bb.cx ], [ %.sroa.0130.0.copyload.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %.sroa.0130.0.copyload.i, %bb.cy ]
  %.sroa.06.3.i = phi i64 [ 1, %bb.bz ], [ 2, %bb.cx ], [ 2, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ 2, %bb.cy ]
  %i.hc = phi <2 x i64> [ %i.hb, %bb.bz ], [ %i.kt, %bb.cx ], [ %i.kt, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %i.kt, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !130971
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5utils8deletion14DeletionVectorECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i

bb.ca:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !131007)
  %i.hd = load ptr, ptr %i.u, align 8, !alias.scope !131007, !noalias !131008, !nonnull !416, !noundef !416 ; 9 uses
  %i.he = load i64, ptr %i.ha, align 8, !alias.scope !131007, !noalias !131008, !noundef !416 ; 16 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.hd, align 16, !noalias !131009
  %i.hf = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %.sroa.1678.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !131008
  %i.hh = bitcast <16 x i1> %i.hf to i16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !131010
  store i64 0, ptr %i.m, align 8, !noalias !131010
  %.sroa.4.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !noalias !131010
  %.sroa.5.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i49.i, align 8, !noalias !131010
  call void @llvm.experimental.noalias.scope.decl(metadata !131011)
  %.not12.i.i.i.i.i51.i = icmp eq i16 %i.hh, 0
  br i1 %.not12.i.i.i.i.i51.i, label %.lr.ph.i.i.i.i.i91.i, label %.loopexit.i52.i

.lr.ph.i.i.i.i.i91.i:                             ; preds = %bb.ca, %.lr.ph.i.i.i.i.i91.i
  %i.hi = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i91.i ], [ %i.hg, %bb.ca ] ; 2 uses
  %i.hj = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i91.i ], [ %i.hd, %bb.ca ]
  %.val10.i.i.i.i.i92.i = load <16 x i8>, ptr %i.hi, align 16, !noalias !131012
  %i.hk = icmp sgt <16 x i8> %.val10.i.i.i.i.i92.i, splat (i8 -1)
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -64 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %.cast.i.i.i.i.i93.i = bitcast <16 x i1> %i.hk to i16 ; 2 uses
  %.not.i.i.i.i.i94.i = icmp eq i16 %.cast.i.i.i.i.i93.i, 0
  br i1 %.not.i.i.i.i.i94.i, label %.lr.ph.i.i.i.i.i91.i, label %.loopexit.i52.i

bb.cb:                                            ; preds = %bb.cg, %bb.cd
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i56.i

.loopexit.i52.i:                                  ; preds = %.lr.ph.i.i.i.i.i91.i, %bb.ca
  %.sroa.8.0.i.i.i = phi ptr [ %i.hg, %bb.ca ], [ %i.hm, %.lr.ph.i.i.i.i.i91.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.hd, %bb.ca ], [ %i.hl, %.lr.ph.i.i.i.i.i91.i ] ; 2 uses
  %.lcssa.i.i.i.i.i53.i = phi i16 [ %i.hh, %bb.ca ], [ %.cast.i.i.i.i.i93.i, %.lr.ph.i.i.i.i.i91.i ] ; 3 uses
  %i.ho = add i16 %.lcssa.i.i.i.i.i53.i, -1
  %i.hp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i53.i, i1 true)
  %i.hq = zext nneg i16 %i.hp to i64
  %i.hr = and i16 %i.ho, %.lcssa.i.i.i.i.i53.i
  %i.hs = sub nsw i64 0, %i.hq
  %i.ht = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i.i.i, i64 %i.hs
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !noalias !131013, !noundef !416 ; 2 uses
  %i.hw = lshr i32 %i.hv, 16
  %i.hx = trunc nuw i32 %i.hw to i16              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131014)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !131015
  %i.hy = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !131015
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i54.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !131015
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i54.i, align 8, !noalias !131015
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i55.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i55.i, align 8, !noalias !131015
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.cd unwind label %bb.cc, !noalias !131016

bb.cc:                                            ; preds = %.loopexit.i52.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.l) #73, !noalias !131017
  br label %.thread.i.i56.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set5DrainmEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %._crit_edge.i.i80.i
  %i.ia = add i64 %i.he, 17
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.hd, i8 -1, i64 %i.ia, i1 false), !noalias !131017
  br label %bb.cx

bb.cd:                                            ; preds = %.loopexit.i52.i
  %i.ib = trunc i32 %i.hv to i16
  %.pre.i.i.i58.i = load ptr, ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !alias.scope !131018, !noalias !131016 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i58.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !131019
  store i64 1, ptr %.sroa.5.0..sroa_idx.i49.i, align 8, !alias.scope !131018, !noalias !131016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !131015
  %i.ic = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.pre.i.i.i58.i, i16 noundef %i.ib)
          to label %bb.cf unwind label %bb.cb, !noalias !131017

bb.ce:                                            ; preds = %bb.cr
  unreachable

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.ic, label %bb.cg, label %.lr.ph.i.i59.i

bb.cg:                                            ; preds = %bb.cf
  %i.id = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i58.i)
          to label %.lr.ph.i.i59.i unwind label %bb.cb, !noalias !131017 ; 0 uses

.lr.ph.i.i59.i:                                   ; preds = %bb.cg, %bb.cf
  %.sroa.14105.0153.i.i.i = add i64 %i.gy, -1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i51.i.i60.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i52.i.i61.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cu, %.lr.ph.i.i59.i
  %.sroa.14105.0160.i.i.i = phi i64 [ %.sroa.14105.0153.i.i.i, %.lr.ph.i.i59.i ], [ %.sroa.14105.0.i.i.i, %bb.cu ]
  %.sroa.011.0159.i.i.i = phi ptr [ %.pre.i.i.i58.i, %.lr.ph.i.i59.i ], [ %.sroa.011.1.i.i78.i, %bb.cu ] ; 4 uses
  %.sroa.015.0158.i.i.i = phi i16 [ %i.hx, %.lr.ph.i.i59.i ], [ %.sroa.015.1.i.i77.i, %bb.cu ] ; 3 uses
  %.sroa.10104.0157.i.i.i = phi i16 [ %i.hr, %.lr.ph.i.i59.i ], [ %i.io, %bb.cu ] ; 2 uses
  %.sroa.6102.0156.i.i.i = phi ptr [ %.sroa.8.0.i.i.i, %.lr.ph.i.i59.i ], [ %.sroa.6102.1.i.i.i, %bb.cu ] ; 2 uses
  %.sroa.0101.0155.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i59.i ], [ %.sroa.0101.1.i.i.i, %bb.cu ] ; 2 uses
  %.not12.i.i.i30.i.i62.i = icmp eq i16 %.sroa.10104.0157.i.i.i, 0
  br i1 %.not12.i.i.i30.i.i62.i, label %.lr.ph.i.i.i35.i.i87.i, label %.loopexit.i.i63.i

.lr.ph.i.i.i35.i.i87.i:                           ; preds = %bb.ch, %.lr.ph.i.i.i35.i.i87.i
  %i.if = phi ptr [ %i.ij, %.lr.ph.i.i.i35.i.i87.i ], [ %.sroa.6102.0156.i.i.i, %bb.ch ] ; 2 uses
  %i.ig = phi ptr [ %i.ii, %.lr.ph.i.i.i35.i.i87.i ], [ %.sroa.0101.0155.i.i.i, %bb.ch ]
  %.val10.i.i.i38.i.i88.i = load <16 x i8>, ptr %i.if, align 16, !noalias !131020
  %i.ih = icmp sgt <16 x i8> %.val10.i.i.i38.i.i88.i, splat (i8 -1)
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 -64 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %.cast.i.i.i39.i.i89.i = bitcast <16 x i1> %i.ih to i16 ; 2 uses
  %.not.i.i.i40.i.i90.i = icmp eq i16 %.cast.i.i.i39.i.i89.i, 0
  br i1 %.not.i.i.i40.i.i90.i, label %.lr.ph.i.i.i35.i.i87.i, label %.loopexit.i.i63.i

.loopexit145.i.i.i:                               ; preds = %bb.cw, %bb.ct, %bb.cq, %bb.cp
  %lpad.loopexit.i.i76.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i.i74.i

.loopexit.split-lp.i.i72.i:                       ; preds = %bb.cr
  %lpad.loopexit.split-lp.i.i73.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i.i74.i

.body61.i.i74.i:                                  ; preds = %bb.cn, %.loopexit.split-lp.i.i72.i, %.loopexit145.i.i.i
  %eh.lpad-body62.i.i75.i = phi { ptr, i32 } [ %i.jw, %bb.cn ], [ %lpad.loopexit.i.i76.i, %.loopexit145.i.i.i ], [ %lpad.loopexit.split-lp.i.i73.i, %.loopexit.split-lp.i.i72.i ] ; 2 uses
  %i.ik = icmp eq i64 %i.he, 0
  br i1 %i.ik, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set5DrainmEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set5DrainmEECsfR8GmIBoxTX_21lance_namespace_impls.exit65.sink.split.i.i.i

.loopexit.i.i63.i:                                ; preds = %.lr.ph.i.i.i35.i.i87.i, %bb.ch
  %.sroa.0101.1.i.i.i = phi ptr [ %.sroa.0101.0155.i.i.i, %bb.ch ], [ %i.ii, %.lr.ph.i.i.i35.i.i87.i ] ; 2 uses
  %.sroa.6102.1.i.i.i = phi ptr [ %.sroa.6102.0156.i.i.i, %bb.ch ], [ %i.ij, %.lr.ph.i.i.i35.i.i87.i ]
  %.lcssa.i.i.i34.i.i64.i = phi i16 [ %.sroa.10104.0157.i.i.i, %bb.ch ], [ %.cast.i.i.i39.i.i89.i, %.lr.ph.i.i.i35.i.i87.i ] ; 3 uses
  %i.il = add i16 %.lcssa.i.i.i34.i.i64.i, -1
  %i.im = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i34.i.i64.i, i1 true)
  %i.in = zext nneg i16 %i.im to i64
  %i.io = and i16 %i.il, %.lcssa.i.i.i34.i.i64.i
  %i.ip = sub nsw i64 0, %i.in
  %i.iq = getelementptr inbounds [4 x i8], ptr %.sroa.0101.1.i.i.i, i64 %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -4
  %i.is = load i32, ptr %i.ir, align 4, !noalias !131021, !noundef !416 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB4_17TransactionRebase6finish0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
          to label %_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters10filter_map15filter_map_foldTRyRBO_EyuNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB3V_17TransactionRebase19finish_data_overlay00NCINvNtB2W_3map8map_foldyTyuEuNCINvXs8_NtBa_3setINtB6d_7HashSetyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1S_7collect6ExtendyE6extendINtB2U_9FilterMapINtNtNtNtB6I_11collections4hash3map4IteryBO_EB3O_EE0NCINvNvB1O_8for_each4callB5Z_NCINvXs1i_B8_INtB8_7HashMapyuB6C_EIB7r_B5Z_E6extendINtB5F_3MapB7X_B64_EE0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.nf, !noalias !147124 ; 0 uses

_RNCINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8_4IteryTNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentbEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters10filter_map15filter_map_foldTRyRBO_EyuNCNCNvMNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolverNtB3V_17TransactionRebase19finish_data_overlay00NCINvNtB2W_3map8map_foldyTyuEuNCINvXs8_NtBa_3setINtB6d_7HashSetyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB1S_7collect6ExtendyE6extendINtB2U_9FilterMapINtNtNtNtB6I_11collections4hash3map4IteryBO_EB3O_EE0NCINvNvB1O_8for_each4callB5Z_NCINvXs1i_B8_INtB8_7HashMapyuB6C_EIB7r_B5Z_E6extendINtB5F_3MapB7X_B64_EE0E0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ne, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.aru = add i64 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i, -1
  br label %.outer.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.arv = phi ptr [ %i.arz, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2631.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.arw = phi ptr [ %i.ary, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa2529.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.val18.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.arv, align 16, !noalias !147123
  %i.arx = icmp sgt <16 x i8> %.val18.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ary = getelementptr inbounds i8, ptr %i.arw, i64 -4096 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arv, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.arx to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

bb.nf:                                            ; preds = %bb.ne
  %i.asa = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i117 = load ptr, ptr %i.g, align 8, !noalias !147118
  %i.asb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val7.i.i.i = load i64, ptr %i.asb, align 8, !noalias !147118, !noundef !416
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetyEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val.i.i.i117, i64 %.val7.i.i.i) #73, !noalias !147124
  br label %.body.i75

bb.ng:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.asc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i75

bb.nh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aqx, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !147125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !147118
  %i.asd = getelementptr i8, ptr %1, i64 2040     ; 3 uses
  %.val118.i118 = load i64, ptr %i.asd, align 8, !noalias !147114, !noundef !416
  %i.ase = icmp eq i64 %.val118.i118, 0
  br i1 %i.ase, label %bb.oq, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 2 uses
  %i.asg = load i64, ptr %i.asf, align 8, !range !465, !noalias !147114, !noundef !416 ; 2 uses
  %i.ash = icmp ne i64 %i.asg, -9223372036854775798
  call void @llvm.assume(i1 %i.ash)
  %i.asi = icmp eq i64 %i.asg, -9223372036854775802
  br i1 %i.asi, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.asj = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147126)
  %i.ask = load i8, ptr %i.aqz, align 8, !range !428, !noalias !147127, !noundef !416
  %i.asl = trunc nuw i8 %i.ask to i1
  br i1 %i.asl, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i: ; preds = %bb.nj
  %.pre.i.i.i.i = load i64, ptr %i.aqy, align 8, !noalias !147128
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !147128
  br label %bb.nn

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.nj
  %i.asm = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc129.i unwind label %bb.nm, !noalias !147121 ; 2 uses

.noexc129.i:                                      ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.asn = extractvalue { i64, i64 } %i.asm, 0
  %i.aso = extractvalue { i64, i64 } %i.asm, 1    ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  store i64 %i.aso, ptr %i.asp, align 8, !noalias !147129
  store i8 1, ptr %i.aqz, align 8, !noalias !147129
  br label %bb.nn

bb.nk:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !147114
  invoke void @_RNvNtNtNtCshkPeWWG1flk_5lance2io6commit17conflict_resolver19wrong_operation_err(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.asf)
          to label %bb.om unwind label %bb.ol, !noalias !147121

bb.nl:                                            ; preds = %bb.tk, %bb.ok, %bb.nm
  %i.asq = phi ptr [ %i.axz, %bb.tk ], [ %i.axz, %bb.ok ], [ %i.aqh, %bb.nm ]
  %i.asr = phi ptr [ %i.aya, %bb.tk ], [ %i.aya, %bb.ok ], [ %i.aqi, %bb.nm ]
  %.pn72.pn.pn.i = phi { ptr, i32 } [ %.pn72.pn.i, %bb.tk ], [ %.pn72.pn.i, %bb.ok ], [ %i.ast, %bb.nm ]
  %i.ass = getelementptr inbounds nuw i8, ptr %1, i64 2245
  store i8 0, ptr %i.ass, align 1, !noalias !147114
  br label %bb.op

bb.nm:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.ast = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.nn:                                            ; preds = %.noexc129.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i ], [ %i.aso, %.noexc129.i ]
  %i.asu = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i ], [ %i.asn, %.noexc129.i ] ; 2 uses
  %i.asv = add i64 %i.asu, 1
  store i64 %i.asv, ptr %i.aqy, align 8, !noalias !147128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.asj, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !147114
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 3 uses
  store i64 %i.asu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !147126, !noalias !147114
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2104 ; 2 uses
  store i64 %.pre-phi2.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !147126, !noalias !147114
  store i8 1, ptr %i.aqj, align 1, !noalias !147114
  %i.asw = getelementptr i8, ptr %1, i64 1576
  %.val122.i119 = load ptr, ptr %i.asw, align 8, !noalias !147114, !nonnull !416, !noundef !416 ; 2 uses
  %i.asx = getelementptr i8, ptr %1, i64 1584
  %.val123.i120 = load i64, ptr %i.asx, align 8, !noalias !147114, !noundef !416 ; 2 uses
  %.idx.i121 = shl nuw nsw i64 %.val123.i120, 5
  %i.asy = getelementptr inbounds nuw i8, ptr %.val122.i119, i64 %.idx.i121
  %i.asz = icmp eq i64 %.val123.i120, 0
  br i1 %i.asz, label %._crit_edge.thread.i, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.nn
  %i.ata = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 2024
  %i.atd = getelementptr inbounds nuw i8, ptr %1, i64 2072 ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 3 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %1, i64 2088
  %i.atg = load i64, ptr %i.asd, align 8, !alias.scope !147130, !noalias !147131, !noundef !416
  %i.ath = icmp eq i64 %i.atg, 0
  br i1 %i.ath, label %._crit_edge.thread.i, label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %.backedge.i
  %.pr.i125 = load i64, ptr %i.asd, align 8, !alias.scope !147130, !noalias !147131
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i122, %.lr.ph.splitthread-pre-split.i
  %i.ati = phi i64 [ %.pr.i125, %.lr.ph.splitthread-pre-split.i ], [ 1, %.lr.ph.i122 ]
  %.sroa.0303.0443.i = phi ptr [ %i.atj, %.lr.ph.splitthread-pre-split.i ], [ %.val122.i119, %.lr.ph.i122 ] ; 3 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.0303.0443.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147132)
  call void @llvm.experimental.noalias.scope.decl(metadata !147133)
  call void @llvm.experimental.noalias.scope.decl(metadata !147134)
  call void @llvm.experimental.noalias.scope.decl(metadata !147135)
  %i.atk = icmp eq i64 %i.ati, 0
  br i1 %i.atk, label %.backedge.i, label %bb.no

bb.no:                                            ; preds = %.lr.ph.split.i
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.0303.0443.i, i64 24 ; 2 uses
  %.val.i.i130.i = load i64, ptr %i.ata, align 8, !alias.scope !147130, !noalias !147131, !noundef !416
  %.val5.i.i.i = load i64, ptr %i.atb, align 8, !alias.scope !147130, !noalias !147131, !noundef !416
  %i.atm = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i130.i, i64 %.val5.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.atl), !noalias !147136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147137)
  call void @llvm.experimental.noalias.scope.decl(metadata !147138)
  call void @llvm.experimental.noalias.scope.decl(metadata !147139)
  %i.atn = lshr i64 %i.atm, 57
  %i.ato = trunc nuw nsw i64 %i.atn to i8
  %i.atp = load i64, ptr %i.atc, align 8, !alias.scope !147140, !noalias !147141, !noundef !416 ; 2 uses
  %i.atq = load ptr, ptr %i.aqx, align 8, !alias.scope !147140, !noalias !147141, !nonnull !416, !noundef !416 ; 2 uses
  %i.atr = insertelement <16 x i8> poison, i8 %i.ato, i64 0
  %i.ats = shufflevector <16 x i8> %i.atr, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i123 = load i64, ptr %i.atl, align 8, !alias.scope !147142, !noalias !147143 ; 4 uses
  br label %bb.np

bb.np:                                            ; preds = %bb.nr, %bb.no
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.no ], [ %i.auj, %bb.nr ]
  %.pn.i.i.i.i.i = phi i64 [ %i.atm, %bb.no ], [ %i.auk, %bb.nr ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.atp ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.atq, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.att, align 1, !noalias !147144 ; 2 uses
  %i.atu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %i.ats
  %i.atv = bitcast <16 x i1> %i.atu to i16        ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.atv, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i124

.lr.ph.i.i.i.i124:                                ; preds = %bb.np, %bb.nq
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.aui, %bb.nq ], [ %i.atv, %bb.np ] ; 3 uses
  %i.atw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.atx = zext nneg i16 %i.atw to i64
  %i.aty = add i64 %.sroa.01.0.i.i.i.i.i, %i.atx
  %i.atz = and i64 %i.aty, %i.atp
  %i.aua = sub nsw i64 0, %i.atz
  %i.aub = getelementptr inbounds [8 x i8], ptr %i.atq, i64 %i.aua
  %i.auc = getelementptr inbounds i8, ptr %i.aub, i64 -8
  %.val2.i.i.i.i.i = load i64, ptr %i.auc, align 8, !noalias !147145, !noundef !416
  %i.aud = icmp eq i64 %.val.i.i.i.i.i.i123, %.val2.i.i.i.i.i
  br i1 %i.aud, label %bb.nw, label %bb.nq, !prof !439

._crit_edge.i.i.i.i:                              ; preds = %bb.nq, %bb.np
  %i.aue = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.auf = bitcast <16 x i1> %i.aue to i16
  %i.aug = icmp eq i16 %i.auf, 0
  br i1 %i.aug, label %bb.nr, label %.backedge.i, !prof !426

bb.nq:                                            ; preds = %.lr.ph.i.i.i.i124
  %i.auh = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.aui = and i16 %i.auh, %.sroa.06.0.i33.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aui, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i124

bb.nr:                                            ; preds = %._crit_edge.i.i.i.i
  %i.auj = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.auk = add i64 %.sroa.01.0.i.i.i.i.i, %i.auj
  br label %bb.np

._crit_edge.thread.i:                             ; preds = %.lr.ph.i122, %bb.nn
  store i8 0, ptr %i.aqj, align 1, !noalias !147114
  br label %bb.ns

._crit_edge.i126:                                 ; preds = %.backedge.i
  %.sroa.0312.0.copyload.pre.i = load ptr, ptr %i.asj, align 8, !noalias !147114 ; 4 uses
  %.sroa.5313.0.copyload.pre.i = load i64, ptr %i.atd, align 8, !noalias !147114 ; 5 uses
  %.sroa.6315.0.copyload.pre.i = load i64, ptr %i.atf, align 8, !noalias !147114 ; 2 uses
  store i8 0, ptr %i.aqj, align 1, !noalias !147114
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0312.0.copyload.pre.i, align 16, !noalias !147146 ; 2 uses
  %i.aul = icmp eq i64 %.sroa.5313.0.copyload.pre.i, 0
  br i1 %i.aul, label %bb.ns, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %._crit_edge.i126
  %3 = icmp slt i64 %.sroa.5313.0.copyload.pre.i, 576460752303423487
  call void @llvm.assume(i1 %3)
  %i.aum = shl i64 %.sroa.5313.0.copyload.pre.i, 5 ; 2 uses
  %4 = add i64 %i.aum, 32                         ; 2 uses
  %5 = add nsw i64 %.sroa.5313.0.copyload.pre.i, 17
  %i.aun = add i64 %5, %4                         ; 3 uses
  %6 = icmp uge i64 %i.aun, %4
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.aun, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %i.auo = sub nuw nsw i64 -32, %i.aum
  %i.aup = getelementptr inbounds i8, ptr %.sroa.0312.0.copyload.pre.i, i64 %i.auo
  br label %bb.ns

bb.ns:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %._crit_edge.i126, %._crit_edge.thread.i
  %.val3.i.i.i.i537.i = phi <16 x i8> [ %.val3.i.i.i.i.i, %._crit_edge.i126 ], [ %.val3.i.i.i.i.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ splat (i8 -1), %._crit_edge.thread.i ]
  %.sroa.0312.0.copyload536.i = phi ptr [ %.sroa.0312.0.copyload.pre.i, %._crit_edge.i126 ], [ %.sroa.0312.0.copyload.pre.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ @98, %._crit_edge.thread.i ] ; 3 uses
  %.sroa.5313.0.copyload535.i = phi i64 [ 0, %._crit_edge.i126 ], [ %.sroa.5313.0.copyload.pre.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ 0, %._crit_edge.thread.i ]
  %.sroa.6315.0.copyload534.i = phi i64 [ %.sroa.6315.0.copyload.pre.i, %._crit_edge.i126 ], [ %.sroa.6315.0.copyload.pre.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ 0, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.511.0.i.i.i.i = phi ptr [ undef, %._crit_edge.i126 ], [ %i.aup, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ undef, %._crit_edge.thread.i ]
  %.sroa.410.0.i.i.i.i = phi i64 [ undef, %._crit_edge.i126 ], [ %i.aun, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ undef, %._crit_edge.thread.i ]
  %.sink.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i126 ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ 0, %._crit_edge.thread.i ]
  %i.auq = getelementptr inbounds nuw i8, ptr %.sroa.0312.0.copyload536.i, i64 16
  %i.aur = icmp sgt <16 x i8> %.val3.i.i.i.i537.i, splat (i8 -1)
  %i.aus = getelementptr i8, ptr %.sroa.0312.0.copyload536.i, i64 %.sroa.5313.0.copyload535.i
  %i.aut = getelementptr i8, ptr %i.aus, i64 1
  %i.auu = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store i64 %.sink.i.i.i.i.i, ptr %i.auu, align 8, !noalias !147114
  %.sroa.10308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2120
  store i64 %.sroa.410.0.i.i.i.i, ptr %.sroa.10308.0..sroa_idx.i, align 8, !noalias !147114
  %.sroa.11309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2128
  store ptr %.sroa.511.0.i.i.i.i, ptr %.sroa.11309.0..sroa_idx.i, align 8, !noalias !147114
  %.sroa.12310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store ptr %.sroa.0312.0.copyload536.i, ptr %.sroa.12310.0..sroa_idx.i, align 8, !noalias !147114
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2144
  store ptr %i.auq, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !147114
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store ptr %i.aut, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !147114
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store <16 x i1> %i.aur, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !147114
  %.sroa.16311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2168
  store i64 %.sroa.6315.0.copyload534.i, ptr %.sroa.16311.0..sroa_idx.i, align 8, !noalias !147114
  br label %bb.nt

bb.nt:                                            ; preds = %bb.qo, %bb.ns
  %i.auv = phi ptr [ %i.baa, %bb.qo ], [ %i.aqh, %bb.ns ] ; 7 uses
  %i.auw = phi ptr [ %i.bab, %bb.qo ], [ %i.aqi, %bb.ns ] ; 7 uses
  %i.aux = phi i64 [ %.pre.i90, %bb.qo ], [ %.sroa.6315.0.copyload534.i, %bb.ns ] ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 2112
  %i.auz = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147147)
  call void @llvm.experimental.noalias.scope.decl(metadata !147148)
  call void @llvm.experimental.noalias.scope.decl(metadata !147149)
  call void @llvm.experimental.noalias.scope.decl(metadata !147150)
  %i.ava = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  %i.avb = icmp eq i64 %i.aux, 0
  br i1 %i.avb, label %.thread.i115, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.avc = getelementptr inbounds nuw i8, ptr %1, i64 2136 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147151)
  %i.avd = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 3 uses
  %i.ave = load i16, ptr %i.avd, align 8, !alias.scope !147152, !noalias !147153, !noundef !416 ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %i.ave, 0
  %.promoted.i.i.i.i = load ptr, ptr %i.avc, align 8, !alias.scope !147152, !noalias !147153 ; 2 uses
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i134.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIteryNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

.lr.ph.i.i.i134.i:                                ; preds = %bb.nu
  %i.avf = getelementptr inbounds nuw i8, ptr %1, i64 2144 ; 2 uses
  %.promoted14.i.i.i.i = load ptr, ptr %i.avf, align 8, !alias.scope !147152, !noalias !147153
  br label %bb.nv

._crit_edge.i.i.i135.i:                           ; preds = %bb.nv
  store ptr %i.avk, ptr %i.avf, align 8, !alias.scope !147152, !noalias !147153
  store ptr %i.avj, ptr %i.avc, align 8, !alias.scope !147152, !noalias !147153
  br label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIteryNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.nv:                                            ; preds = %bb.nv, %.lr.ph.i.i.i134.i
  %i.avg = phi ptr [ %.promoted14.i.i.i.i, %.lr.ph.i.i.i134.i ], [ %i.avk, %bb.nv ] ; 2 uses
  %i.avh = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i134.i ], [ %i.avj, %bb.nv ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.avg, align 16, !noalias !147154
  %i.avi = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.avj = getelementptr inbounds i8, ptr %i.avh, i64 -512 ; 3 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avg, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.avi to i16 ; 2 uses
  %.not.i.i.i.i114 = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i114, label %bb.nv, label %._crit_edge.i.i.i135.i

.thread.i115:                                     ; preds = %bb.nt
  %i.avl = getelementptr inbounds nuw i8, ptr %1, i64 2184
  store i64 -1, ptr %i.avl, align 8, !alias.scope !147155, !noalias !147156
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.nw:                                            ; preds = %.lr.ph.i.i.i.i124
  call void @llvm.experimental.noalias.scope.decl(metadata !147157)
  call void @llvm.experimental.noalias.scope.decl(metadata !147158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !147159
  store i64 %.val.i.i.i.i.i.i123, ptr %i.f, align 8, !noalias !147160
  %.val.i.i136.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !147161, !noalias !147162, !noundef !416
  %.val5.i.i137.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !147161, !noalias !147162, !noundef !416
  %i.avm = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRyECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i136.i, i64 %.val5.i.i137.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !noalias !147163 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147164)
  call void @llvm.experimental.noalias.scope.decl(metadata !147165)
  %i.avn = lshr i64 %i.avm, 57
  %i.avo = trunc nuw nsw i64 %i.avn to i8         ; 3 uses
  %i.avp = load i64, ptr %i.atd, align 8, !alias.scope !147166, !noalias !147167, !noundef !416 ; 3 uses
  %i.avq = load ptr, ptr %i.asj, align 8, !alias.scope !147166, !noalias !147167, !nonnull !416, !noundef !416 ; 3 uses
  %i.avr = insertelement <16 x i8> poison, i8 %i.avo, i64 0
  %i.avs = shufflevector <16 x i8> %i.avr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nz, %bb.nw
  %.sroa.9.0.i.i.i.i138.i = phi i64 [ 0, %bb.nw ], [ %i.awj, %bb.nz ]
  %.pn.i.i.i.i139.i = phi i64 [ %i.avm, %bb.nw ], [ %i.awk, %bb.nz ]
  %.sroa.01.0.i.i.i.i140.i = and i64 %.pn.i.i.i.i139.i, %i.avp ; 3 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avq, i64 %.sroa.01.0.i.i.i.i140.i
  %.sroa.0.0.copyload.i26.i.i.i141.i = load <16 x i8>, ptr %i.avt, align 1, !noalias !147168 ; 2 uses
  %i.avu = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i141.i, %i.avs
  %i.avv = bitcast <16 x i1> %i.avu to i16        ; 2 uses
  %.not.i.not32.i.i.i142.i = icmp eq i16 %i.avv, 0
  br i1 %.not.i.not32.i.i.i142.i, label %._crit_edge.i.i.i147.i, label %.lr.ph.i.i.i143.i

.lr.ph.i.i.i143.i:                                ; preds = %bb.nx, %bb.ny
  %.sroa.06.0.i33.i.i.i144.i = phi i16 [ %i.awi, %bb.ny ], [ %i.avv, %bb.nx ] ; 3 uses
  %i.avw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i144.i, i1 true)
  %i.avx = zext nneg i16 %i.avw to i64
  %i.avy = add i64 %.sroa.01.0.i.i.i.i140.i, %i.avx
  %i.avz = and i64 %i.avy, %i.avp
  %i.awa = sub nsw i64 0, %i.avz
  %i.awb = getelementptr inbounds [32 x i8], ptr %i.avq, i64 %i.awa ; 2 uses
  %i.awc = getelementptr inbounds i8, ptr %i.awb, i64 -32
  %.val2.i.i.i.i145.i = load i64, ptr %i.awc, align 8, !noalias !147169, !noundef !416
  %i.awd = icmp eq i64 %.val2.i.i.i.i145.i, %.val.i.i.i.i.i.i123
  br i1 %i.awd, label %bb.of, label %bb.ny, !prof !439

._crit_edge.i.i.i147.i:                           ; preds = %bb.ny, %bb.nx
  %i.awe = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i141.i, splat (i8 -1)
  %i.awf = bitcast <16 x i1> %i.awe to i16
  %i.awg = icmp eq i16 %i.awf, 0
  br i1 %i.awg, label %bb.nz, label %bb.oa, !prof !426

bb.ny:                                            ; preds = %.lr.ph.i.i.i143.i
  %i.awh = add i16 %.sroa.06.0.i33.i.i.i144.i, -1
  %i.awi = and i16 %i.awh, %.sroa.06.0.i33.i.i.i144.i ; 2 uses
  %.not.i.not.i.i.i146.i = icmp eq i16 %i.awi, 0
  br i1 %.not.i.not.i.i.i146.i, label %._crit_edge.i.i.i147.i, label %.lr.ph.i.i.i143.i

bb.nz:                                            ; preds = %._crit_edge.i.i.i147.i
  %i.awj = add i64 %.sroa.9.0.i.i.i.i138.i, 16    ; 2 uses
  %i.awk = add i64 %.sroa.01.0.i.i.i.i140.i, %i.awj
  br label %bb.nx

bb.oa:                                            ; preds = %._crit_edge.i.i.i147.i
  %i.awl = load i64, ptr %i.ate, align 8, !alias.scope !147170, !noalias !147171, !noundef !416
  %i.awm = icmp eq i64 %i.awl, 0
  br i1 %i.awm, label %bb.ob, label %bb.od, !prof !426

bb.ob:                                            ; preds = %bb.oa
  %i.awn = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.asj, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i1 noundef zeroext true)
          to label %.noexc149.i unwind label %bb.oc, !noalias !147121 ; 0 uses

.noexc149.i:                                      ; preds = %bb.ob
  %.val.i.i152.pre.i = load ptr, ptr %i.asj, align 8, !alias.scope !147172, !noalias !147173
  %.val3.i.i153.pre.i = load i64, ptr %i.atd, align 8, !alias.scope !147172, !noalias !147173
  br label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.awo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ok

bb.od:                                            ; preds = %.noexc149.i, %bb.oa
  %.val3.i.i153.i = phi i64 [ %.val3.i.i153.pre.i, %.noexc149.i ], [ %i.avp, %bb.oa ] ; 4 uses
  %.val.i.i152.i = phi ptr [ %.val.i.i152.pre.i, %.noexc149.i ], [ %i.avq, %bb.oa ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !147159
  call void @llvm.experimental.noalias.scope.decl(metadata !147172)
  %.sroa.0.07.i.i.i.i = and i64 %.val3.i.i153.i, %i.avm ; 3 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %.sroa.0.07.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i = load <16 x i8>, ptr %i.awp, align 1, !noalias !147174
  %i.awq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i, zeroinitializer
  %i.awr = bitcast <16 x i1> %i.awq to i16        ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i16 %i.awr, 0
  br i1 %.not.i9.i.i.i.i, label %.lr.ph.i.i.i159.i, label %._crit_edge.i.i.i154.i, !prof !445

._crit_edge.i.i.i154.i:                           ; preds = %.lr.ph.i.i.i159.i, %bb.od
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i, %bb.od ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i159.i ]
  %.lcssa.i.i.i155.i = phi i16 [ %i.awr, %bb.od ], [ %i.axi, %.lr.ph.i.i.i159.i ]
  %i.aws = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i155.i, i1 true)
  %i.awt = zext nneg i16 %i.aws to i64
  %i.awu = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.awt
  %i.awv = and i64 %i.awu, %.val3.i.i153.i        ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %i.awv
  %i.awx = load i8, ptr %i.aww, align 1, !noalias !147175, !noundef !416 ; 2 uses
  %i.awy = icmp sgt i8 %i.awx, -1
  br i1 %i.awy, label %bb.oe, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE14insert_no_growCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

bb.oe:                                            ; preds = %._crit_edge.i.i.i154.i
  %.val2.i.i.i.i158.i = load <16 x i8>, ptr %.val.i.i152.i, align 16, !noalias !147175
  %i.awz = icmp slt <16 x i8> %.val2.i.i.i.i158.i, zeroinitializer
  %i.axa = bitcast <16 x i1> %i.awz to i16        ; 2 uses
  %.not.i6.i.i.i.i = icmp ne i16 %i.axa, 0
  %i.axb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.axa, i1 true)
  %i.axc = zext nneg i16 %i.axb to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i152.i, i64 %i.axc
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !147175
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE14insert_no_growCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

.lr.ph.i.i.i159.i:                                ; preds = %bb.od, %.lr.ph.i.i.i159.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i159.i ], [ %.sroa.0.07.i.i.i.i, %bb.od ]
end_hunk_2
begin_hunk_3_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob16update_fragments0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.aci = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtNtNtBI_11collections4hash3map7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ah) #73, !noalias !157470
  br label %bb.qt

bb.nr:                                            ; preds = %bb.nq
  unreachable

bb.ns:                                            ; preds = %bb.np
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %i.ach, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !157471)
  %i.acj = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16 ; 2 uses
  %i.acl = load i8, ptr %i.ack, align 8, !range !428, !noalias !157472, !noundef !416
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i: ; preds = %bb.ns
  %.pre.i.i.i = load i64, ptr %i.acj, align 8, !noalias !157473
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !157473
  br label %bb.nv

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.ns
  %i.acn = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc483 unwind label %bb.nu ; 2 uses

.noexc483:                                        ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.aco = extractvalue { i64, i64 } %i.acn, 0
  %i.acp = extractvalue { i64, i64 } %i.acn, 1    ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  store i64 %i.acp, ptr %i.acq, align 8, !noalias !157474
  store i8 1, ptr %i.ack, align 8, !noalias !157474
  br label %bb.nv

.thread1062:                                      ; preds = %.thread, %bb.nu
  %.pn84.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.acr, %bb.nu ], [ %.pn84.pn.pn.pn.pn.pn933, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.aq) #73
  br label %bb.qt

bb.nt:                                            ; preds = %bb.pr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0839)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.aq) #73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %.thread946

bb.nu:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %.thread1062

bb.nv:                                            ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i, %.noexc483
  %.pre-phi5.i = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i ], [ %i.acp, %.noexc483 ]
  %i.acs = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i ], [ %i.aco, %.noexc483 ] ; 2 uses
  %i.act = add i64 %i.acs, 1
  store i64 %i.act, ptr %i.acj, align 8, !noalias !157473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false)
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  store i64 %i.acs, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !157471
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i64 %.pre-phi5.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !157471
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val262 = load ptr, ptr %i.acu, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val263 = load i64, ptr %i.acv, align 8, !noundef !416 ; 2 uses
  %.idx987 = mul nuw nsw i64 %.val263, 240
  %i.acw = getelementptr inbounds nuw i8, ptr %.val262, i64 %.idx987
  %i.acx = icmp eq i64 %.val263, 0
  br i1 %i.acx, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.nv
  %i.acy = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ada = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.pt

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSlEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5824)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12830)
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 914 ; 2 uses
  store i8 0, ptr %i.adb, align 2
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.add = load ptr, ptr %i.adc, align 8, !nonnull !416, !noundef !416 ; 7 uses
  %i.ade = cmpxchg ptr %i.add, i64 1, i64 0 monotonic monotonic, align 8, !noalias !157475
  %.sroa.18.0.in.i.i485 = extractvalue { i64, i1 } %i.ade, 1
  br i1 %.sroa.18.0.in.i.i485, label %bb.nw, label %bb.nz

bb.nw:                                            ; preds = %._crit_edge
  fence acquire
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  %.sroa.6829.8.copyload = load ptr, ptr %i.adf, align 8
  %.sroa.12830.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.add, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12830, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12830.8..sroa_idx, i64 24, i1 false)
  %i.adg = icmp eq ptr %i.add, inttoptr (i64 -1 to ptr)
  br i1 %i.adg, label %bb.oe, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adi = atomicrmw sub ptr %i.adh, i64 1 release, align 8, !noalias !157475
  %i.adj = icmp eq i64 %i.adi, 1
  br i1 %i.adj, label %bb.ny, label %bb.oe

bb.ny:                                            ; preds = %bb.nx
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.add, i64 noundef 48, i64 noundef 8) #68, !noalias !157475
  br label %bb.oe

bb.nz:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !157476
  store ptr %i.add, ptr %i.ag, align 8, !noalias !157476
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3154, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1994) #72
          to label %bb.oc unwind label %bb.oa, !noalias !157476

bb.oa:                                            ; preds = %bb.nz
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !157477)
  call void @llvm.experimental.noalias.scope.decl(metadata !157478), !noalias !157476
  %i.adl = load ptr, ptr %i.ag, align 8, !alias.scope !157479, !noalias !157476, !nonnull !416, !noundef !416
  %i.adm = atomicrmw sub ptr %i.adl, i64 1 release, align 8, !noalias !157480
  %i.adn = icmp eq i64 %i.adm, 1
  br i1 %i.adn, label %bb.ob, label %.body216

bb.ob:                                            ; preds = %bb.oa
  fence acquire, !noalias !157476
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEEE9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %.body216 unwind label %bb.od

bb.oc:                                            ; preds = %bb.nz
  unreachable

bb.od:                                            ; preds = %bb.ob
  %i.ado = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !157476
  unreachable

.body216:                                         ; preds = %bb.oa, %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12830)
  br label %.thread934

bb.oe:                                            ; preds = %bb.ny, %bb.nx, %bb.nw
  %i.adp = ptrtoint ptr %.sroa.6829.8.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5824, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12830, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12830)
  %i.adq = and i64 %i.adp, 1095216660480
  %.not954 = icmp eq i64 %i.adq, 0
  br i1 %.not954, label %bb.oj, label %bb.of, !prof !439

bb.of:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !157481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5824, i64 24, i1 false), !noalias !157482
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3135, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1995) #72
          to label %bb.oh unwind label %bb.og, !noalias !157483

bb.og:                                            ; preds = %bb.of
  %i.adr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.aj)
          to label %.thread934 unwind label %bb.oi

bb.oh:                                            ; preds = %bb.of
  unreachable

bb.oi:                                            ; preds = %bb.og
  %i.ads = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !157483
  unreachable

.thread934:                                       ; preds = %.body216, %bb.og
  %.pn74 = phi { ptr, i32 } [ %i.adk, %.body216 ], [ %i.adr, %bb.og ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5824)
  br label %.thread

bb.oj:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5824, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5824)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0839)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %.sroa.0853.0.copyload = load ptr, ptr %i.ao, align 8, !nonnull !416, !noundef !416 ; 5 uses
  %.sroa.5854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5854.0.copyload = load i64, ptr %.sroa.5854.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.6856.0.copyload = load i64, ptr %.sroa.6856.0..sroa_idx, align 8 ; 4 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.0853.0.copyload, align 16, !noalias !157484
  %i.adt = icmp eq i64 %.sroa.5854.0.copyload, 0  ; 5 uses
  br i1 %i.adt, label %bb.ok, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.oj
  %i.adu = icmp slt i64 %.sroa.5854.0.copyload, 4611686018427387900
  call void @llvm.assume(i1 %i.adu)
  %i.adv = shl i64 %.sroa.5854.0.copyload, 2
  %i.adw = and i64 %i.adv, -16                    ; 2 uses
  %3 = add i64 %i.adw, 16                         ; 2 uses
  %i.adx = add nsw i64 %.sroa.5854.0.copyload, 17
  %i.ady = add i64 %i.adx, %3                     ; 3 uses
  %4 = icmp uge i64 %i.ady, %3
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.ady, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %i.adz = sub nuw nsw i64 -16, %i.adw
  %i.aea = getelementptr inbounds i8, ptr %.sroa.0853.0.copyload, i64 %i.adz
  br label %bb.ok

bb.ok:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.oj
  %.sroa.514.0.i.i.i = phi ptr [ undef, %bb.oj ], [ %i.aea, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 8 uses
  %.sroa.413.0.i.i.i = phi i64 [ undef, %bb.oj ], [ %i.ady, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 8 uses
  %.sink.i.i.i.i = phi i64 [ 0, %bb.oj ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !157485
  %.not.i.not.i.i.i.i = icmp eq i64 %.sroa.6856.0.copyload, 0
  br i1 %.not.i.not.i.i.i.i, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.aeb = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.aec = bitcast <16 x i1> %i.aeb to i16        ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.0853.0.copyload, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.aec, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ol, %.lr.ph.i.i.i.i.i.i.i
  %i.aee = phi ptr [ %i.aei, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aed, %bb.ol ] ; 2 uses
  %i.aef = phi ptr [ %i.aeh, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0853.0.copyload, %bb.ol ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aee, align 16, !noalias !157486
  %i.aeg = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aeh = getelementptr inbounds i8, ptr %i.aef, i64 -64 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aeg to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

bb.om:                                            ; preds = %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !157485
  %i.aej = icmp eq i64 %.sroa.413.0.i.i.i, 0
  %or.cond.i.i = or i1 %i.adt, %i.aej
  br i1 %or.cond.i.i, label %_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.on

bb.on:                                            ; preds = %bb.om
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i, i64 noundef %.sroa.413.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #68, !noalias !157487
  br label %_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.oo:                                            ; preds = %bb.or
  %i.aek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ael = icmp eq i64 %.sroa.413.0.i.i.i, 0
  %or.cond6.i.i = or i1 %i.adt, %i.ael
  br i1 %or.cond6.i.i, label %.body494, label %bb.op

bb.op:                                            ; preds = %bb.oo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i, i64 noundef %.sroa.413.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #68, !noalias !157488
  br label %.body494

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.ol
  %.sroa.14.0.i.i = phi ptr [ %i.aed, %bb.ol ], [ %i.aei, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.sroa.0853.0.copyload, %bb.ol ], [ %i.aeh, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.aec, %bb.ol ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aem = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.aen = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.aeo = zext nneg i16 %i.aen to i64
  %i.aep = and i16 %i.aem, %.lcssa.i.i.i.i.i.i.i
  %i.aeq = sub nsw i64 0, %i.aeo
  %i.aer = getelementptr inbounds [4 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.aeq
  %i.aes = add nsw i64 %.sroa.6856.0.copyload, -1 ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %i.aer, i64 -4
  %i.aeu = load i32, ptr %i.aet, align 4, !noalias !157489, !noundef !416
  %.sroa.0.0.i9.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.6856.0.copyload, i64 4) ; 2 uses
  %i.aev = shl i64 %.sroa.0.0.i9.i.i.i.i, 2       ; 3 uses
  %i.aew = icmp ugt i64 %.sroa.6856.0.copyload, 4611686018427387903
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aev, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.aew, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.or, label %bb.oq, !prof !441

bb.oq:                                            ; preds = %._crit_edge19.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !157490
  %i.aex = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aev, i64 noundef range(i64 1, 17) 4) #68, !noalias !157490 ; 4 uses
  %i.aey = icmp eq ptr %i.aex, null
  br i1 %i.aey, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq, %._crit_edge19.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.oq ], [ 0, %._crit_edge19.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.aev) #72
          to label %.noexc.i.i.i.i493 unwind label %bb.oo, !noalias !157485

.noexc.i.i.i.i493:                                ; preds = %bb.or
  unreachable

bb.os:                                            ; preds = %bb.oq
  store i32 %i.aeu, ptr %i.aex, align 4, !noalias !157485
  store i64 %.sroa.0.0.i9.i.i.i.i, ptr %i.b, align 8, !noalias !157485
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.aex, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !157485
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !157485
  call void @llvm.experimental.noalias.scope.decl(metadata !157491)
  call void @llvm.experimental.noalias.scope.decl(metadata !157492)
  %.not.i.not11.i.i.i.i.i.i = icmp eq i64 %i.aes, 0
  br i1 %.not.i.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.os, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.aez = phi ptr [ %i.afu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %i.aex, %bb.os ]
  %i.afa = phi i64 [ %i.afw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ 1, %bb.os ] ; 5 uses
  %.lcssa19.i.i.i.i.i.i = phi ptr [ %.lcssa18.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.14.0.i.i, %bb.os ] ; 2 uses
  %.lcssa916.i.i.i.i.i.i = phi ptr [ %.lcssa915.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.os ] ; 2 uses
  %i.afb = phi i16 [ %i.afk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %i.aep, %bb.os ] ; 2 uses
  %.val1012.i.i.i.i.i.i = phi i64 [ %i.afn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %i.aes, %bb.os ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.afb, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.afc = phi ptr [ %i.afg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.afd = phi ptr [ %i.aff, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa916.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.afc, align 16, !noalias !157493
  %i.afe = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aff = getelementptr inbounds i8, ptr %i.afd, i64 -64 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.afe to i16 ; 2 uses
  %.not.i.i.i.i.i10.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i10.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa18.i.i.i.i.i.i = phi ptr [ %.lcssa19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.afg, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa915.i.i.i.i.i.i = phi ptr [ %.lcssa916.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aff, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.afb, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.afh = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.afi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.afj = zext nneg i16 %i.afi to i64
  %i.afk = and i16 %i.afh, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.afl = sub nsw i64 0, %i.afj
  %i.afm = getelementptr inbounds [4 x i8], ptr %.lcssa915.i.i.i.i.i.i, i64 %i.afl
  %i.afn = add i64 %.val1012.i.i.i.i.i.i, -1      ; 2 uses
  %i.afo = getelementptr inbounds i8, ptr %i.afm, i64 -4
  %i.afp = load i32, ptr %i.afo, align 4, !noalias !157494, !noundef !416
  %i.afq = icmp samesign ult i64 %i.afa, 2305843009213693952
  call void @llvm.assume(i1 %i.afq)
  %i.afr = load i64, ptr %i.b, align 8, !range !419, !alias.scope !157495, !noalias !157496, !noundef !416
  %i.afs = icmp eq i64 %i.afa, %i.afr
  br i1 %i.afs, label %bb.ow, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.os
  %.sroa.7836.0.copyload838 = phi i64 [ 1, %bb.os ], [ %i.afw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %i.aft = icmp eq i64 %.sroa.413.0.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.adt, %i.aft
  br i1 %or.cond.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.ot

bb.ot:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i, i64 noundef %.sroa.413.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #68, !noalias !157497
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i, %._crit_edge19.i.i.i.i.i.i.i.i.i
  %i.afu = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i ], [ %i.aez, %._crit_edge19.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.afa
  store i32 %i.afp, ptr %i.afv, align 4, !noalias !157498
  %i.afw = add nuw nsw i64 %i.afa, 1              ; 3 uses
  store i64 %i.afw, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !157495, !noalias !157496
  %.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.afn, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ou:                                            ; preds = %bb.ow
  %i.afx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afy = icmp eq i64 %.sroa.413.0.i.i.i, 0
  %or.cond28.i.i.i.i = or i1 %i.adt, %i.afy
  br i1 %or.cond28.i.i.i.i, label %.body.i.i.i.i491, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i, i64 noundef %.sroa.413.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #68, !noalias !157499
  br label %.body.i.i.i.i491

bb.ow:                                            ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.afa, i64 noundef %.val1012.i.i.i.i.i.i, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ou, !noalias !157496

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ow
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !157495, !noalias !157496
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

.body.i.i.i.i491:                                 ; preds = %bb.ov, %bb.ou
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !157485 ; 2 uses
  %i.afz = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.afz, label %.body494, label %bb.ox

bb.ox:                                            ; preds = %.body.i.i.i.i491
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !157485, !nonnull !416, !noundef !416
  %i.aga = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %i.aga, i64 noundef range(i64 1, -9223372036854775807) 4) #68, !noalias !157485
  br label %.body494

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.ot, %._crit_edge.i.i.i.i.i.i
  %.sroa.0831.0.copyload832 = load i64, ptr %i.b, align 8, !noalias !157500
  %.sroa.6833.0.copyload835 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !157500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !157485
  br label %_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsfR8GmIBoxTX_21lance_namespace_impls.exit

.body494:                                         ; preds = %bb.ox, %.body.i.i.i.i491, %bb.op, %bb.oo
  %.pn76 = phi { ptr, i32 } [ %i.aek, %bb.op ], [ %i.aek, %bb.oo ], [ %i.afx, %.body.i.i.i.i491 ], [ %i.afx, %bb.ox ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.al) #73
          to label %bb.pr unwind label %bb.ax

_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.on, %bb.om
  %.sroa.7836.0 = phi i64 [ 0, %bb.om ], [ 0, %bb.on ], [ %.sroa.7836.0.copyload838, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sroa.6833.0 = phi ptr [ inttoptr (i64 4 to ptr), %bb.om ], [ inttoptr (i64 4 to ptr), %bb.on ], [ %.sroa.6833.0.copyload835, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sroa.0831.0 = phi i64 [ 0, %bb.om ], [ 0, %bb.on ], [ %.sroa.0831.0.copyload832, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sroa.9843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9843.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0839, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %.sroa.0839.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0839, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0839.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0839, i64 48, i1 false)
  %.sroa.6840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %.sroa.0831.0, ptr %.sroa.6840.0..sroa_idx, align 8
  %.sroa.7841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %.sroa.6833.0, ptr %.sroa.7841.0..sroa_idx, align 8
  %.sroa.8842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i64 %.sroa.7836.0, ptr %.sroa.8842.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0839)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 5 uses
  invoke void @_RNvXs5_NtCs5ncyOgBbgdO_20datafusion_execution11memory_poolNtB5_17MemoryReservationNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.agb)
          to label %bb.pa unwind label %bb.oy

bb.oy:                                            ; preds = %_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.agc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157501)
  call void @llvm.experimental.noalias.scope.decl(metadata !157502)
  %i.agd = load ptr, ptr %i.agb, align 16, !alias.scope !157503, !nonnull !416, !noundef !416
  %i.age = atomicrmw sub ptr %i.agd, i64 1 release, align 8, !noalias !157504
  %i.agf = icmp eq i64 %i.age, 1
  br i1 %i.agf, label %bb.oz, label %.body428

bb.oz:                                            ; preds = %bb.oy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool18SharedRegistrationE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.agb)
          to label %.body428 unwind label %bb.pc

bb.pa:                                            ; preds = %_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !157505)
  call void @llvm.experimental.noalias.scope.decl(metadata !157506)
  %i.agg = load ptr, ptr %i.agb, align 16, !alias.scope !157507, !nonnull !416, !noundef !416
  %i.agh = atomicrmw sub ptr %i.agg, i64 1 release, align 8, !noalias !157508
  %i.agi = icmp eq i64 %i.agh, 1
  br i1 %i.agi, label %bb.pb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool17MemoryReservationECsfR8GmIBoxTX_21lance_namespace_impls.exit500

bb.pb:                                            ; preds = %bb.pa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool18SharedRegistrationE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.agb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool17MemoryReservationECsfR8GmIBoxTX_21lance_namespace_impls.exit500 unwind label %bb.pd

bb.pc:                                            ; preds = %bb.oz
  %i.agj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.pd:                                            ; preds = %bb.pb, %bb.ki
  %.sroa.22.27 = phi ptr [ %.sroa.22.18, %bb.ki ], [ %.sroa.22.23, %bb.pb ]
  %.sroa.0631.27 = phi ptr [ %.sroa.0631.18, %bb.ki ], [ %.sroa.0631.23, %bb.pb ]
  %.sroa.25.38 = phi ptr [ %.sroa.25.29, %bb.ki ], [ %.sroa.25.34, %bb.pb ]
  %.sroa.0.38 = phi ptr [ %.sroa.0.29, %bb.ki ], [ %.sroa.0.34, %bb.pb ]
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %.body428

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool17MemoryReservationECsfR8GmIBoxTX_21lance_namespace_impls.exit500: ; preds = %bb.pa, %bb.pb
  %i.agl = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCseXbohGRa9jr_5tokio4task8join_set7JoinSetINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(16) %i.agl)
          to label %bb.pe unwind label %bb.cp

bb.pe:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool17MemoryReservationECsfR8GmIBoxTX_21lance_namespace_impls.exit500
  store i8 0, ptr %i.adb, align 2
  store i8 0, ptr %i.aaw, align 1
  %i.agm = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion9dataframe18BatchStreamGrouperECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 16 dereferenceable(208) %i.agm)
          to label %bb.pg unwind label %bb.pf

bb.pf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert9PatchSinkEECsfR8GmIBoxTX_21lance_namespace_impls.exit549, %bb.pe
  %.sroa.22.28 = phi ptr [ %.sroa.22.18, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert9PatchSinkEECsfR8GmIBoxTX_21lance_namespace_impls.exit549 ], [ %.sroa.22.23, %bb.pe ]
  %.sroa.0631.28 = phi ptr [ %.sroa.0631.18, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert9PatchSinkEECsfR8GmIBoxTX_21lance_namespace_impls.exit549 ], [ %.sroa.0631.23, %bb.pe ]
  %.sroa.25.39 = phi ptr [ %.sroa.25.29, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert9PatchSinkEECsfR8GmIBoxTX_21lance_namespace_impls.exit549 ], [ %.sroa.25.34, %bb.pe ]
  %.sroa.0.39 = phi ptr [ %.sroa.0.29, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert9PatchSinkEECsfR8GmIBoxTX_21lance_namespace_impls.exit549 ], [ %.sroa.0.34, %bb.pe ]
  %i.agn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.pg:                                            ; preds = %bb.pe
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 916
  store i8 0, ptr %i.ago, align 4
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157509)
  call void @llvm.experimental.noalias.scope.decl(metadata !157510)
  %i.agq = load ptr, ptr %i.agp, align 16, !alias.scope !157511, !nonnull !416, !noundef !416
  %i.agr = atomicrmw sub ptr %i.agq, i64 1 release, align 8, !noalias !157511
  %i.ags = icmp eq i64 %i.agr, 1
  br i1 %i.ags, label %bb.ph, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit502

bb.ph:                                            ; preds = %bb.pg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.agp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit502 unwind label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.dh
  %.sroa.25.40 = phi ptr [ %.sroa.25.14, %bb.dh ], [ %.sroa.25.34, %bb.ph ]
  %.sroa.0.40 = phi ptr [ %.sroa.0.14, %bb.dh ], [ %.sroa.0.34, %bb.ph ]
  %i.agt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit342

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit502: ; preds = %bb.pg, %bb.ph
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 917
  store i8 0, ptr %i.agu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157512)
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val.i503 = load ptr, ptr %i.agw, align 16, !alias.scope !157512, !nonnull !416, !noundef !416 ; 3 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(1904) %.val.i503)
          to label %bb.pj unwind label %.body.i504, !noalias !157512

.body.i504:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit502
  %i.agx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i503, i64 noundef 1904, i64 noundef 8) #68, !noalias !157512
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.agv) #73
          to label %.body344 unwind label %bb.pk

bb.pj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit502
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i503, i64 noundef 1904, i64 noundef 8) #68, !noalias !157512
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan11LogicalPlanECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.agv)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsfR8GmIBoxTX_21lance_namespace_impls.exit508 unwind label %bb.pl

bb.pk:                                            ; preds = %.body.i504
  %i.agy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.pl:                                            ; preds = %bb.pj, %bb.dm
  %.sroa.25.41 = phi ptr [ %.sroa.25.16, %bb.dm ], [ %.sroa.25.34, %bb.pj ]
  %.sroa.0.41 = phi ptr [ %.sroa.0.16, %bb.dm ], [ %.sroa.0.34, %bb.pj ]
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %.body344

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsfR8GmIBoxTX_21lance_namespace_impls.exit508: ; preds = %bb.pj
  call void @llvm.experimental.noalias.scope.decl(metadata !157513)
  call void @llvm.experimental.noalias.scope.decl(metadata !157514)
  call void @llvm.experimental.noalias.scope.decl(metadata !157515)
  %.val.i.i.i509 = load i64, ptr %1, align 16, !range !419, !alias.scope !157516, !noundef !416 ; 2 uses
  %i.aha = icmp eq i64 %.val.i.i.i509, 0
  br i1 %i.aha, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i511, label %bb.pm

bb.pm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCseMy6uzTzNin_10datafusion9dataframe9DataFrameECsfR8GmIBoxTX_21lance_namespace_impls.exit508
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i510 = load ptr, ptr %i.ahb, align 8, !alias.scope !157516, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i510, i64 noundef %.val.i.i.i509, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !157516
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i511

end_hunk_3
begin_hunk_4_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob20create_joined_stream0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.lr.ph.i.i
  %i.vt = phi ptr [ %.sroa.3.sroa.4.0.copyload.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.lr.ph.i.i ], [ %i.vu, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 240 ; 5 uses
  %.sroa.064.0.copyload65.i.i = load i64, ptr %i.vt, align 8, !noalias !158490 ; 2 uses
  %.not6.i.i = icmp eq i64 %.sroa.064.0.copyload65.i.i, -1
  br i1 %.not6.i.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.866.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !158483
  store i64 %.sroa.064.0.copyload65.i.i, ptr %i.bk, align 8, !noalias !158483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.866.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.866.0..sroa_idx67.i.i, i64 232, i1 false), !noalias !158487
  %i.vv = load i64, ptr %i.vn, align 8, !noalias !158483, !noundef !416 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158491)
  call void @llvm.experimental.noalias.scope.decl(metadata !158492)
  %.val.i.i.i.i = load i64, ptr %i.vo, align 8, !alias.scope !158493, !noalias !158494, !noundef !416 ; 2 uses
  %.val5.i.i.i.i = load i64, ptr %i.vp, align 16, !alias.scope !158493, !noalias !158494, !noundef !416 ; 2 uses
  %i.vw = xor i64 %.val.i.i.i.i, 8317987319222330741
  %i.vx = xor i64 %.val5.i.i.i.i, 7237128888997146477 ; 3 uses
  %i.vy = xor i64 %.val.i.i.i.i, 7816392313619706465
  %i.vz = xor i64 %i.vv, %.val5.i.i.i.i
  %i.wa = xor i64 %i.vz, 8387220255154660723      ; 3 uses
  %i.wb = add i64 %i.vx, %i.vw                    ; 3 uses
  %i.wc = add i64 %i.wa, %i.vy                    ; 2 uses
  %i.wd = call noundef i64 @llvm.fshl.i64(i64 %i.vx, i64 %i.vx, i64 13)
  %i.we = xor i64 %i.wd, %i.wb                    ; 3 uses
  %i.wf = call noundef i64 @llvm.fshl.i64(i64 %i.wa, i64 %i.wa, i64 16)
  %i.wg = xor i64 %i.wc, %i.wf                    ; 3 uses
  %i.wh = call noundef i64 @llvm.fshl.i64(i64 %i.wb, i64 %i.wb, i64 32)
  %i.wi = add i64 %i.we, %i.wc                    ; 3 uses
  %i.wj = add i64 %i.wg, %i.wh                    ; 2 uses
  %i.wk = call noundef i64 @llvm.fshl.i64(i64 %i.we, i64 %i.we, i64 17)
  %i.wl = xor i64 %i.wi, %i.wk                    ; 3 uses
  %i.wm = call noundef i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wg, i64 21)
  %i.wn = call noundef i64 @llvm.fshl.i64(i64 %i.wi, i64 %i.wi, i64 32)
  %i.wo = xor i64 %i.wj, %i.vv
  %i.wp = xor i64 %i.wj, %i.wm
  %i.wq = xor i64 %i.wp, 576460752303423488       ; 3 uses
  %i.wr = add i64 %i.wl, %i.wo                    ; 3 uses
  %i.ws = add i64 %i.wq, %i.wn                    ; 2 uses
  %i.wt = call noundef i64 @llvm.fshl.i64(i64 %i.wl, i64 %i.wl, i64 13)
  %i.wu = xor i64 %i.wt, %i.wr                    ; 3 uses
  %i.wv = call noundef i64 @llvm.fshl.i64(i64 %i.wq, i64 %i.wq, i64 16)
  %i.ww = xor i64 %i.wv, %i.ws                    ; 3 uses
  %i.wx = call noundef i64 @llvm.fshl.i64(i64 %i.wr, i64 %i.wr, i64 32)
  %i.wy = add i64 %i.ws, %i.wu                    ; 3 uses
  %i.wz = add i64 %i.ww, %i.wx                    ; 2 uses
  %i.xa = call noundef i64 @llvm.fshl.i64(i64 %i.wu, i64 %i.wu, i64 17)
  %i.xb = xor i64 %i.wy, %i.xa                    ; 3 uses
  %i.xc = call noundef i64 @llvm.fshl.i64(i64 %i.ww, i64 %i.ww, i64 21)
  %i.xd = xor i64 %i.xc, %i.wz                    ; 3 uses
  %i.xe = call noundef i64 @llvm.fshl.i64(i64 %i.wy, i64 %i.wy, i64 32)
  %i.xf = xor i64 %i.wz, 576460752303423488
  %i.xg = xor i64 %i.xe, 255
  %i.xh = add i64 %i.xf, %i.xb                    ; 3 uses
  %i.xi = add i64 %i.xd, %i.xg                    ; 2 uses
  %i.xj = call noundef i64 @llvm.fshl.i64(i64 %i.xb, i64 %i.xb, i64 13)
  %i.xk = xor i64 %i.xh, %i.xj                    ; 3 uses
  %i.xl = call noundef i64 @llvm.fshl.i64(i64 %i.xd, i64 %i.xd, i64 16)
  %i.xm = xor i64 %i.xl, %i.xi                    ; 3 uses
  %i.xn = call noundef i64 @llvm.fshl.i64(i64 %i.xh, i64 %i.xh, i64 32)
  %i.xo = add i64 %i.xk, %i.xi                    ; 3 uses
  %i.xp = add i64 %i.xm, %i.xn                    ; 2 uses
  %i.xq = call noundef i64 @llvm.fshl.i64(i64 %i.xk, i64 %i.xk, i64 17)
  %i.xr = xor i64 %i.xo, %i.xq                    ; 3 uses
  %i.xs = call noundef i64 @llvm.fshl.i64(i64 %i.xm, i64 %i.xm, i64 21)
  %i.xt = xor i64 %i.xs, %i.xp                    ; 3 uses
  %i.xu = call noundef i64 @llvm.fshl.i64(i64 %i.xo, i64 %i.xo, i64 32)
  %i.xv = add i64 %i.xr, %i.xp                    ; 3 uses
  %i.xw = add i64 %i.xt, %i.xu                    ; 2 uses
  %i.xx = call noundef i64 @llvm.fshl.i64(i64 %i.xr, i64 %i.xr, i64 13)
  %i.xy = xor i64 %i.xx, %i.xv                    ; 3 uses
  %i.xz = call noundef i64 @llvm.fshl.i64(i64 %i.xt, i64 %i.xt, i64 16)
  %i.ya = xor i64 %i.xz, %i.xw                    ; 3 uses
  %i.yb = call noundef i64 @llvm.fshl.i64(i64 %i.xv, i64 %i.xv, i64 32)
  %i.yc = add i64 %i.xy, %i.xw                    ; 3 uses
  %i.yd = add i64 %i.ya, %i.yb                    ; 2 uses
  %i.ye = call noundef i64 @llvm.fshl.i64(i64 %i.xy, i64 %i.xy, i64 17)
  %i.yf = xor i64 %i.ye, %i.yc                    ; 3 uses
  %i.yg = call noundef i64 @llvm.fshl.i64(i64 %i.ya, i64 %i.ya, i64 21)
  %i.yh = xor i64 %i.yg, %i.yd                    ; 3 uses
  %i.yi = call noundef i64 @llvm.fshl.i64(i64 %i.yc, i64 %i.yc, i64 32)
  %i.yj = add i64 %i.yf, %i.yd
  %i.yk = add i64 %i.yh, %i.yi                    ; 2 uses
  %i.yl = call noundef i64 @llvm.fshl.i64(i64 %i.yf, i64 %i.yf, i64 13)
  %i.ym = xor i64 %i.yl, %i.yj                    ; 3 uses
  %i.yn = call noundef i64 @llvm.fshl.i64(i64 %i.yh, i64 %i.yh, i64 16)
  %i.yo = xor i64 %i.yn, %i.yk                    ; 2 uses
  %i.yp = add i64 %i.ym, %i.yk                    ; 3 uses
  %i.yq = call noundef i64 @llvm.fshl.i64(i64 %i.ym, i64 %i.ym, i64 17)
  %i.yr = call noundef i64 @llvm.fshl.i64(i64 %i.yo, i64 %i.yo, i64 21)
  %i.ys = call noundef i64 @llvm.fshl.i64(i64 %i.yp, i64 %i.yp, i64 32)
  %i.yt = xor i64 %i.yr, %i.yq
  %i.yu = xor i64 %i.yt, %i.ys
  %i.yv = xor i64 %i.yu, %i.yp                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158495)
  call void @llvm.experimental.noalias.scope.decl(metadata !158496)
  %i.yw = lshr i64 %i.yv, 57
  %i.yx = trunc nuw nsw i64 %i.yw to i8           ; 3 uses
  %i.yy = load i64, ptr %i.vq, align 16, !alias.scope !158497, !noalias !158498, !noundef !416 ; 3 uses
  %i.yz = load ptr, ptr %i.ur, align 8, !alias.scope !158497, !noalias !158498, !nonnull !416, !noundef !416 ; 3 uses
  %i.za = insertelement <16 x i8> poison, i8 %i.yx, i64 0
  %i.zb = shufflevector <16 x i8> %i.za, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fy

bb.fy:                                            ; preds = %bb.ga, %.lr.ph.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.zs, %bb.ga ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.yv, %.lr.ph.i.i.i ], [ %i.zt, %bb.ga ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.yy ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.zc, align 1, !noalias !158499 ; 2 uses
  %i.zd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.zb
  %i.ze = bitcast <16 x i1> %i.zd to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ze, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fy, %bb.fz
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.zr, %bb.fz ], [ %i.ze, %bb.fy ] ; 3 uses
  %i.zf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.zg = zext nneg i16 %i.zf to i64
  %i.zh = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.zg
  %i.zi = and i64 %i.zh, %i.yy
  %i.zj = sub nsw i64 0, %i.zi
  %i.zk = getelementptr inbounds [248 x i8], ptr %i.yz, i64 %i.zj
  %i.zl = getelementptr inbounds i8, ptr %i.zk, i64 -248
  %.val2.i.i.i.i.i.i = load i64, ptr %i.zl, align 8, !noalias !158500, !noundef !416
  %i.zm = icmp eq i64 %.val2.i.i.i.i.i.i, %i.vv
  br i1 %i.zm, label %bb.hi, label %bb.fz, !prof !439

._crit_edge.i.i.i.i.i:                            ; preds = %bb.fz, %bb.fy
  %i.zn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.zo = bitcast <16 x i1> %i.zn to i16
  %i.zp = icmp eq i16 %i.zo, 0
  br i1 %i.zp, label %bb.ga, label %bb.gb, !prof !426

bb.fz:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.zq = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.zr = and i16 %i.zq, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.zr, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ga:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.zs = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.zt = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.zs
  br label %bb.fy

bb.gb:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.zu = load i64, ptr %i.vr, align 8, !alias.scope !158501, !noalias !158502, !noundef !416
  %i.zv = icmp eq i64 %i.zu, 0
  br i1 %i.zv, label %bb.gc, label %bb.hg, !prof !426

bb.gc:                                            ; preds = %bb.gb
  %i.zw = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ur, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.vo, i1 noundef zeroext true)
          to label %.noexc26.i.i unwind label %bb.hl, !noalias !158487 ; 0 uses

.noexc26.i.i:                                     ; preds = %bb.gc
  %.val.i.i33.pre.i.i = load ptr, ptr %i.ur, align 8, !alias.scope !158503, !noalias !158504
  %.val3.i.i.pre.i.i = load i64, ptr %i.vq, align 16, !alias.scope !158503, !noalias !158504
  br label %bb.hg

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.fx
  %i.zx = phi ptr [ %.sroa.3.sroa.4.0.copyload.i.i, %bb.fx ], [ %i.vu, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.vl, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntryyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE9or_insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  store ptr %i.zx, ptr %.sroa.8.0..sroa_idx.i.i24, align 8, !noalias !158483
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.bl)
          to label %bb.gf unwind label %bb.ge, !noalias !158487

bb.gd:                                            ; preds = %bb.hk, %bb.ge
  %.pn7.pn.pn.i.i = phi { ptr, i32 } [ %.pn7123.i.i, %bb.hk ], [ %i.zy, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !158483
  br label %.body30.i.i

bb.ge:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.gf:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !158483
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !158505, !noalias !158483
  %.phi.trans.insert170.i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.pre171.i.i = load ptr, ptr %.phi.trans.insert170.i.i, align 16, !alias.scope !158505, !noalias !158483
  br label %bb.fo

bb.gg:                                            ; preds = %bb.fo
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  store i8 0, ptr %i.zz, align 8, !noalias !158483
  %.sroa.082.0.copyload.i.i = load ptr, ptr %i.uj, align 8, !noalias !158483, !nonnull !416, !noundef !416 ; 6 uses
  %.sroa.583.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.583.0.copyload.i.i = load i64, ptr %.sroa.583.0..sroa_idx.i.i, align 16, !noalias !158483 ; 4 uses
  %.sroa.685.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.685.0.copyload.i.i = load i64, ptr %.sroa.685.0..sroa_idx.i.i, align 16, !noalias !158483 ; 5 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.082.0.copyload.i.i, align 16, !noalias !158506
  %i.aaa = icmp eq i64 %.sroa.583.0.copyload.i.i, 0 ; 4 uses
  br i1 %i.aaa, label %bb.gh, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.gg
  %i.aab = mul i64 %.sroa.583.0.copyload.i.i, 248 ; 2 uses
  %3 = add i64 %i.aab, 248
  %4 = icmp ult i64 %3, -15
  call void @llvm.assume(i1 %4)
  %i.aac = and i64 %i.aab, -16                    ; 2 uses
  %5 = add i64 %i.aac, 256                        ; 2 uses
  %i.aad = add i64 %.sroa.583.0.copyload.i.i, 17
  %i.aae = add i64 %i.aad, %5                     ; 3 uses
  %6 = icmp uge i64 %i.aae, %5
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.aae, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %i.aaf = sub i64 -256, %i.aac
  %i.aag = getelementptr inbounds i8, ptr %.sroa.082.0.copyload.i.i, i64 %i.aaf
  br label %bb.gh

bb.gh:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.gg
  %.sroa.511.0.i.i.i.i.i = phi ptr [ undef, %bb.gg ], [ %i.aag, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.410.0.i.i.i.i.i = phi i64 [ undef, %bb.gg ], [ %i.aae, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 7 uses
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.gg ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 4 uses
  %i.aah = getelementptr i8, ptr %.sroa.082.0.copyload.i.i, i64 %.sroa.583.0.copyload.i.i
  %i.aai = getelementptr i8, ptr %i.aah, i64 1
  %i.aaj = ptrtoint ptr %i.aai to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !158507
  %i.aak = icmp eq i64 %.sroa.685.0.copyload.i.i, 0
  br i1 %i.aak, label %.thread.i.i.i.i.i.i, label %bb.gi

.thread.i.i.i.i.i.i:                              ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !158507
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.gh
  %i.aal = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.aam = bitcast <16 x i1> %i.aal to i16        ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload.i.i, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aam, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.gi, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aao = phi ptr [ %i.aas, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aan, %bb.gi ] ; 2 uses
  %i.aap = phi ptr [ %i.aar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.082.0.copyload.i.i, %bb.gi ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aao, align 16, !noalias !158508
  %i.aaq = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aar = getelementptr inbounds i8, ptr %i.aap, i64 -3968 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aaq to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.gi
  %.sroa.19.0.i.i.i.i = phi ptr [ %i.aan, %bb.gi ], [ %i.aas, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %.sroa.082.0.copyload.i.i, %bb.gi ], [ %i.aar, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aam, %bb.gi ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aat = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.aau = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aav = zext nneg i16 %i.aau to i64
  %i.aaw = and i16 %i.aat, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.aax = sub nsw i64 0, %i.aav
  %i.aay = getelementptr inbounds [248 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.aax ; 2 uses
  %i.aaz = add i64 %.sroa.685.0.copyload.i.i, -1  ; 7 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aay, i64 -240
  %.sroa.4.0.copyload3.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !158509 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !158507
  %i.aba = icmp eq i64 %i.aaz, 0
  br i1 %i.aba, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.gj, %.noexc29.i.i
  %.sroa.19.3.i.i.i.i = phi ptr [ %.sroa.19.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.19.0.i.i.i.i, %bb.gj ] ; 2 uses
  %.sroa.10.3.i.i.i.i = phi ptr [ %.sroa.10.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.gj ] ; 2 uses
  %i.abb = phi i16 [ %i.abp, %.noexc29.i.i ], [ %i.aaw, %bb.gj ] ; 2 uses
  %i.abc = phi i64 [ %i.abn, %.noexc29.i.i ], [ %i.aaz, %bb.gj ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.abb, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abd = phi ptr [ %i.abh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.abe = phi ptr [ %i.abg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.abd, align 16, !noalias !158510
  %i.abf = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.abg = getelementptr inbounds i8, ptr %i.abe, i64 -3968 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.abf to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.19.4.i.i.i.i = phi ptr [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.4.i.i.i.i = phi ptr [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.abb, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.abi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.abj = zext nneg i16 %i.abi to i64
  %i.abk = sub nsw i64 0, %i.abj
  %i.abl = getelementptr inbounds [248 x i8], ptr %.sroa.10.4.i.i.i.i, i64 %i.abk
  %i.abm = getelementptr inbounds i8, ptr %i.abl, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.abm)
          to label %.noexc29.i.i unwind label %bb.hc, !noalias !158487

.noexc29.i.i:                                     ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abn = add i64 %i.abc, -1                     ; 2 uses
  %i.abo = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.abp = and i16 %i.abo, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abn, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i, %bb.gj, %.thread.i.i.i.i.i.i
  %i.abq = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond.i.i.i197.i = or i1 %i.aaa, %i.abq
  br i1 %or.cond.i.i.i197.i, label %.thread477.i, label %bb.gk

bb.gk:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !158511
  br label %.thread477.i

bb.gl:                                            ; preds = %bb.gp
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.bh) #73
          to label %bb.ha unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !158512

bb.gm:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aay, i64 -232
  %.sroa.6.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !158507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !158512
  store i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !158507
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.685.0.copyload.i.i, i64 4) ; 3 uses
  %i.abs = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 240  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.685.0.copyload.i.i, 38430716820228232
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.gp, label %bb.gn, !prof !441

bb.gn:                                            ; preds = %bb.gm
  %i.abt = icmp eq i64 %i.abs, 0
  br i1 %i.abt, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !158513
  %i.abu = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.abs, i64 noundef range(i64 1, 17) 8) #68, !noalias !158513 ; 2 uses
  %i.abv = icmp eq ptr %i.abu, null
  br i1 %i.abv, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go, %bb.gm
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.go ], [ 0, %bb.gm ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.abs) #72
          to label %.noexc.i.i.i.i.i.i unwind label %bb.gl, !noalias !158512

.noexc.i.i.i.i.i.i:                               ; preds = %bb.gp
  unreachable

bb.gq:                                            ; preds = %bb.go, %bb.gn
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.gn ], [ %i.abu, %bb.go ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gn ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %i.abw = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.abw)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(240) %i.bh, i64 240, i1 false), !noalias !158512
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.bi, align 8, !noalias !158507
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !158507
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !158507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !158507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !158507
  store i64 %.sink.i.i.i.i.i.i, ptr %i.bg, align 8, !noalias !158514
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.sroa.410.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !158514
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.sroa.511.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !158514
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !158514
  %.sroa.19.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 4 uses
  store ptr %.sroa.19.0.i.i.i.i, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !noalias !158514
  %.sroa.25.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.aaj, ptr %.sroa.25.0..sroa_idx13.i.i.i.i, align 8, !noalias !158514
  %.sroa.2515.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  store i16 %i.aaw, ptr %.sroa.2515.0..sroa_idx16.i.i.i.i, align 8, !noalias !158514
  %.sroa.2719.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  store i64 %i.aaz, ptr %.sroa.2719.0..sroa_idx20.i.i.i.i, align 8, !noalias !158514
  call void @llvm.experimental.noalias.scope.decl(metadata !158515)
  call void @llvm.experimental.noalias.scope.decl(metadata !158516)
  call void @llvm.experimental.noalias.scope.decl(metadata !158517)
  call void @llvm.experimental.noalias.scope.decl(metadata !158518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.abx = icmp eq i64 %i.aaz, 0
  br i1 %i.abx, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.gq
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i196.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %bb.gr

bb.gr:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.aby = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.adi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.abz = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.adk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  %.lcssa821.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.19.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa820.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa918.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa917.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aca = phi i16 [ %i.aaw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.acj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val1213.i.i.i.i.i.i.i.i = phi i64 [ %i.aaz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.acm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !158519)
  call void @llvm.experimental.noalias.scope.decl(metadata !158520)
  call void @llvm.experimental.noalias.scope.decl(metadata !158521)
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aca, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.acf, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !158522, !noalias !158523
  store ptr %i.ace, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !158522, !noalias !158523
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_RNCNvMs6_NtCshkPeWWG1flk_5lance7datasetNtB7_7Dataset11add_columns0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ic, align 8, !alias.scope !161816, !noalias !161809, !nonnull !416, !noundef !416 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.id, align 8, !alias.scope !161816, !noalias !161809, !nonnull !416, !noundef !416 ; 2 uses
  %i.ie = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.if = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ig = sub nuw i64 %i.ie, %i.if
  %i.ih = udiv exact i64 %i.ig, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !161817), !noalias !161758
  %i.ii = icmp eq ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ii, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTNtNtCs40k4W9msRzi_5alloc6string6StringBD_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ik, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bf ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ik = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161818), !noalias !161758
  call void @llvm.experimental.noalias.scope.decl(metadata !161819), !noalias !161758
  call void @llvm.experimental.noalias.scope.decl(metadata !161820), !noalias !161758
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ij, align 8, !range !419, !alias.scope !161821, !noalias !161822, !noundef !416 ; 2 uses
  %i.il = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.il, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.im, align 8, !alias.scope !161821, !noalias !161822, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !161823
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !161824), !noalias !161758
  call void @llvm.experimental.noalias.scope.decl(metadata !161825), !noalias !161758
  %.val.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.in, align 8, !range !419, !alias.scope !161826, !noalias !161822, !noundef !416 ; 2 uses
  %i.io = icmp eq i64 %.val.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.io, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %.val1.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ip, align 8, !alias.scope !161826, !noalias !161822, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !161827
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iq = icmp eq i64 %i.ik, %i.ih
  br i1 %i.iq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTNtNtCs40k4W9msRzi_5alloc6string6StringBD_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTNtNtCs40k4W9msRzi_5alloc6string6StringBD_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !161816, !noalias !161809, !noundef !416 ; 2 uses
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2m_3map3MapINtNtB4_9into_iter8IntoIterTBS_BS_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB2q_6result6ResultNtNtB2q_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTNtNtCs40k4W9msRzi_5alloc6string6StringBD_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iu = load ptr, ptr %i.d, align 8, !alias.scope !161816, !noalias !161809, !nonnull !416, !noundef !416
  %i.iv = mul nuw i64 %i.is, 48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !161822
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2m_3map3MapINtNtB4_9into_iter8IntoIterTBS_BS_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB2q_6result6ResultNtNtB2q_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringB22_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.be
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.hw, i64 noundef range(i64 1, 0) 1, i64 noundef 16, i64 noundef 144)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringB22_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i unwind label %bb.bj, !noalias !161811

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringB22_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringB22_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !161810, !noalias !161811
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringB22_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i, %bb.be
  %i.iw = phi ptr [ %.pre.i.i.i.i.i.i.i, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringB22_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i ], [ %i.hv, %bb.be ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [144 x i8], ptr %i.iw, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ix, ptr noundef nonnull align 16 dereferenceable(144) %i.c, i64 144, i1 false), !noalias !161808
  %i.iy = add nuw nsw i64 %i.hw, 1                ; 2 uses
  store i64 %i.iy, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !161810, !noalias !161811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !161808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !161808
  br label %bb.bb

bb.bj:                                            ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringB22_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 16 dereferenceable(144) %i.b) #73
          to label %.body.i.i.i.i.i.i.i unwind label %bb.bk, !noalias !161808

bb.bk:                                            ; preds = %bb.bj
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !161808
  unreachable

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2m_3map3MapINtNtB4_9into_iter8IntoIterTBS_BS_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB2q_6result6ResultNtNtB2q_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.bi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTNtNtCs40k4W9msRzi_5alloc6string6StringBD_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !161783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !161787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !161783
  br label %bb.bn

bb.bl:                                            ; preds = %.body.i.i.i.i.i.i.i, %bb.ay
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !161783
  unreachable

bb.bm:                                            ; preds = %bb.ay, %bb.as
  %.pn.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gv, %bb.as ], [ %i.ht, %bb.ay ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtB1A_6string6StringB2i_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h) #73, !noalias !161784
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bm, %.body.i.i.i.i.i.i.i
  %.pn.i.i.i3 = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i, %bb.bm ], [ %.pn.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ] ; 2 uses
  %i.jc = load i8, ptr %i.j, align 8, !range !423, !noalias !161772, !noundef !416
  %.not.i.i.i4 = icmp eq i8 %i.jc, -1
  br i1 %.not.i.i.i4, label %.body6, label %bb.bq

bb.bn:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2m_3map3MapINtNtB4_9into_iter8IntoIterTBS_BS_EENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s_0EINtNtB2q_6result6ResultNtNtB2q_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %bb.ax, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTNtNtCs40k4W9msRzi_5alloc6string6StringBD_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !161775
  %i.jd = load i8, ptr %i.j, align 8, !range !423, !noalias !161772, !noundef !416 ; 2 uses
  %.not.not.i.i.i = icmp eq i8 %i.jd, -1
  br i1 %.not.not.i.i.i, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.718.0.copyload = load i56, ptr %.sroa.718.0..sroa_idx, align 1, !noalias !161828
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.819.0.copyload = load ptr, ptr %.sroa.819.0..sroa_idx, align 8, !noalias !161828
  %.sroa.1120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.1120.0.copyload = load ptr, ptr %.sroa.1120.0..sroa_idx, align 8, !noalias !161828
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !noalias !161828
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !161828
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !161828
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8, !noalias !161828
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.dx unwind label %bb.br

bb.bp:                                            ; preds = %bb.bq
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !161772
  unreachable

bb.bq:                                            ; preds = %.body.i.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %.body6 unwind label %bb.bp, !noalias !161772

bb.br:                                            ; preds = %bb.bo
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body6

bb.bs:                                            ; preds = %bb.bn
  %.sroa.1120.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.13.8.copyload = load ptr, ptr %.sroa.13.8..sroa_idx, align 16, !noalias !161828 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 3408 ; 2 uses
  %.sroa.4853.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3416
  %.sroa.1120.8.copyload = load ptr, ptr %.sroa.1120.8..sroa_idx, align 8, !noalias !161828, !nonnull !416, !noundef !416 ; 2 uses
  %i.jh = load <2 x ptr>, ptr %i.i, align 16, !noalias !161828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !161772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !161772
  store i8 1, ptr %i.dk, align 2, !noalias !161757
  store <2 x ptr> %i.jh, ptr %i.jg, align 16, !noalias !161757
  %.sroa.5854.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3424 ; 2 uses
  store ptr %.sroa.13.8.copyload, ptr %.sroa.5854.0..sroa_idx.i.i, align 16, !noalias !161757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !161757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !161757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !161757
  %.val230.cast.i.i = ptrtoint ptr %.sroa.13.8.copyload to i64
  %i.ji = getelementptr inbounds nuw [144 x i8], ptr %.sroa.1120.8.copyload, i64 %.val230.cast.i.i
  store ptr null, ptr %i.ar, align 8, !alias.scope !161829, !noalias !161757
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !161829, !noalias !161757
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store ptr %.sroa.1120.8.copyload, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !161829, !noalias !161757
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr %i.ji, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !161829, !noalias !161757
  invoke fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEEINtNtB1u_3vec3VecB1q_ENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s0_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetB1q_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ar)
          to label %bb.bu unwind label %bb.bt, !noalias !161758

bb.bt:                                            ; preds = %bb.bs
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !161757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !161757
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !161757
  call void @llvm.experimental.noalias.scope.decl(metadata !161830)
  call void @llvm.experimental.noalias.scope.decl(metadata !161831)
  %.sroa.010.0.copyload.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !161831, !noalias !161832, !nonnull !416, !noundef !416 ; 5 uses
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.411.0.copyload.i.i.i = load i64, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !alias.scope !161831, !noalias !161832 ; 4 uses
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.513.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !alias.scope !161831, !noalias !161832
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.010.0.copyload.i.i.i, align 16, !noalias !161833
  %i.jk = icmp eq i64 %.sroa.411.0.copyload.i.i.i, 0
  br i1 %i.jk, label %bb.bv, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.bu
  %i.jl = mul i64 %.sroa.411.0.copyload.i.i.i, 24 ; 2 uses
  %3 = add i64 %i.jl, 24
  %4 = icmp ult i64 %3, -15
  call void @llvm.assume(i1 %4)
  %i.jm = and i64 %i.jl, -16                      ; 2 uses
  %5 = add i64 %i.jm, 32                          ; 2 uses
  %i.jn = add i64 %.sroa.411.0.copyload.i.i.i, 17
  %i.jo = add i64 %i.jn, %5                       ; 3 uses
  %6 = icmp uge i64 %i.jo, %5
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.jo, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %i.jp = sub i64 -32, %i.jm
  %i.jq = getelementptr inbounds i8, ptr %.sroa.010.0.copyload.i.i.i, i64 %i.jp
  br label %bb.bv

bb.bv:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.bu
  %.sroa.511.0.i.i.i.i.i = phi ptr [ undef, %bb.bu ], [ %i.jq, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.sroa.410.0.i.i.i.i.i = phi i64 [ undef, %bb.bu ], [ %i.jo, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.bu ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i.i.i, i64 16
  %i.js = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.jt = getelementptr i8, ptr %.sroa.010.0.copyload.i.i.i, i64 %.sroa.411.0.copyload.i.i.i
  %i.ju = getelementptr i8, ptr %i.jt, i64 1
  store i64 %.sink.i.i.i.i.i.i, ptr %i.at, align 8, !alias.scope !161830, !noalias !161834
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.sroa.410.0.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !alias.scope !161830, !noalias !161834
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %.sroa.511.0.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !alias.scope !161830, !noalias !161834
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %.sroa.010.0.copyload.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i, align 8, !alias.scope !161830, !noalias !161834
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.jr, ptr %.sroa.76.0..sroa_idx.i.i.i, align 8, !alias.scope !161830, !noalias !161834
  %.sroa.87.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.ju, ptr %.sroa.87.0..sroa_idx.i.i.i, align 8, !alias.scope !161830, !noalias !161834
  %.sroa.98.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store <16 x i1> %i.js, ptr %.sroa.98.0..sroa_idx.i.i.i, align 8, !alias.scope !161830, !noalias !161834
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store i64 %.sroa.513.0.copyload.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !161830, !noalias !161834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !161757
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 3432
  invoke fastcc void @_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtB13_3vec3VecBZ_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.jv, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.at)
          to label %bb.bz unwind label %bb.bx, !noalias !161758

bb.bw:                                            ; preds = %bb.bx, %bb.bt
  %.pn94.i.i = phi { ptr, i32 } [ %i.jw, %bb.bx ], [ %i.jj, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !161757
  br label %bb.dw

bb.bx:                                            ; preds = %bb.bv
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.by:                                            ; preds = %bb.bz
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !161757
  br label %.body309.i.i

bb.bz:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !161757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !161757
  %i.jy = load ptr, ptr %i.ea, align 8, !noalias !161757, !nonnull !416, !align !417, !noundef !416
  %i.jz = getelementptr i8, ptr %i.jy, i64 280
  %.val207.i.i = load ptr, ptr %i.jz, align 8, !noalias !161758, !nonnull !416, !noundef !416
  %i.ka = getelementptr inbounds nuw i8, ptr %.val207.i.i, i64 336
  %i.kb = getelementptr i8, ptr %1, i64 3440
  %.val186.i.i = load ptr, ptr %i.kb, align 16, !noalias !161757, !nonnull !416, !noundef !416
  %i.kc = getelementptr i8, ptr %1, i64 3448
  %.val187.i.i = load i64, ptr %i.kc, align 8, !noalias !161757, !noundef !416
  invoke fastcc void @_RINvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB6_6Schema7projectNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ka, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i)
          to label %bb.ca unwind label %bb.by, !noalias !161758

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !161835)
  %i.kd = load i64, ptr %i.aq, align 8, !range !421, !alias.scope !161836, !noalias !161837, !noundef !416 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, -1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.8440.sroa.0.0.copyload897.i.i = load i8, ptr %i.kf, align 8, !alias.scope !161838, !noalias !161757 ; 2 uses
  %.sroa.8440.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %.sroa.8440.sroa.8.0.copyload899.i.i = load i56, ptr %.sroa.8440.sroa.8.0..sroa_idx.i.i, align 1, !alias.scope !161838, !noalias !161757 ; 2 uses
  %.sroa.8440.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.8440.sroa.9.0.copyload901.i.i = load ptr, ptr %.sroa.8440.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !161838, !noalias !161757 ; 2 uses
  %.sroa.8440.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.8440.sroa.10.0.copyload903.i.i = load ptr, ptr %.sroa.8440.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !161838, !noalias !161757 ; 2 uses
  %.sroa.8440.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.8440.sroa.11.0.copyload905.i.i = load ptr, ptr %.sroa.8440.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !161838, !noalias !161757 ; 2 uses
  %.sroa.8440.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.sroa.8440.sroa.12.0.copyload907.i.i = load i64, ptr %.sroa.8440.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !161838, !noalias !161757 ; 2 uses
  %.sroa.8440.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %.sroa.8440.sroa.13.0.copyload909.i.i = load ptr, ptr %.sroa.8440.sroa.13.0..sroa_idx.i.i, align 8, !alias.scope !161838, !noalias !161757 ; 2 uses
  %.sroa.8440.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %.sroa.8440.sroa.14.0.copyload911.i.i = load i64, ptr %.sroa.8440.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !161838, !noalias !161757 ; 2 uses
  br i1 %i.ke, label %bb.ds, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.10442.0..sroa_idx443.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %.sroa.10442.0.copyload444.i.i = load i64, ptr %.sroa.10442.0..sroa_idx443.i.i, align 8, !alias.scope !161838, !noalias !161757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !161757
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 3456 ; 2 uses
  store i64 %i.kd, ptr %i.kg, align 16, !noalias !161757
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3464
  store i8 %.sroa.8440.sroa.0.0.copyload897.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !161757
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3465
  store i56 %.sroa.8440.sroa.8.0.copyload899.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !161757
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3472
  store ptr %.sroa.8440.sroa.9.0.copyload901.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !161757
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store ptr %.sroa.8440.sroa.10.0.copyload903.i.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !161757
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3488
  store ptr %.sroa.8440.sroa.11.0.copyload905.i.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !161757
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3496
  store i64 %.sroa.8440.sroa.12.0.copyload907.i.i, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !161757
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3504
  store ptr %.sroa.8440.sroa.13.0.copyload909.i.i, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !161757
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3512
  store i64 %.sroa.8440.sroa.14.0.copyload911.i.i, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !161757
  %.sroa.5446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3520
  store i64 %.sroa.10442.0.copyload444.i.i, ptr %.sroa.5446.0..sroa_idx.i.i, align 16, !noalias !161757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !161757
  invoke void @_RNvXs8_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_6SchemaE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.kg)
          to label %bb.cd unwind label %bb.cc, !noalias !161758

bb.cc:                                            ; preds = %bb.cb
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 3528 ; 3 uses
  %i.kj = invoke fastcc noundef nonnull ptr @_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE3newCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %i.ap)
          to label %bb.cg unwind label %bb.cf, !noalias !161758 ; 3 uses

bb.ce:                                            ; preds = %bb.cf, %bb.cc
  %.pn96.i.i = phi { ptr, i32 } [ %i.kk, %bb.cf ], [ %i.kh, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !161757
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit260.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cg:                                            ; preds = %bb.cd
  store ptr %i.kj, ptr %i.ki, align 8, !noalias !161757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !161757
  %i.kl = atomicrmw add ptr %i.kj, i64 1 monotonic, align 8, !noalias !161758
  %i.km = icmp slt i64 %i.kl, 0
  br i1 %i.km, label %bb.ch, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.cg
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 3536 ; 2 uses
  invoke void @_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner3new(ptr noalias noundef nonnull sret([2936 x i8]) align 8 captures(none) dereferenceable(2936) %i.kn, ptr noundef nonnull %i.kj)
          to label %bb.cj unwind label %bb.ci, !noalias !161758

bb.ci:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body257.i.i

bb.cj:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !161757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !161757
  store i8 0, ptr %i.dk, align 2, !noalias !161757
  %.sroa.0458.0.copyload.i.i = load i64, ptr %i.jg, align 16, !noalias !161757
  %.sroa.5459.0.copyload.i.i = load ptr, ptr %.sroa.4853.0..sroa_idx.i.i, align 8, !noalias !161757, !nonnull !416, !noundef !416 ; 3 uses
  %.sroa.6460.0.copyload.i.i = load i64, ptr %.sroa.5854.0..sroa_idx.i.i, align 16, !noalias !161757 ; 2 uses
  %i.kp = icmp ult i64 %.sroa.6460.0.copyload.i.i, 64051194700380388
  call void @llvm.assume(i1 %i.kp)
  %i.kq = getelementptr inbounds nuw [144 x i8], ptr %.sroa.5459.0.copyload.i.i, i64 %.sroa.6460.0.copyload.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !161839)
  store ptr %.sroa.5459.0.copyload.i.i, ptr %i.an, align 8, !alias.scope !161840, !noalias !161841
  %.sroa.5455.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.5459.0.copyload.i.i, ptr %.sroa.5455.0..sroa_idx.i.i, align 8, !alias.scope !161840, !noalias !161841
  %.sroa.6456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.0458.0.copyload.i.i, ptr %.sroa.6456.0..sroa_idx.i.i, align 8, !alias.scope !161840, !noalias !161841
  %.sroa.7457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.kq, ptr %.sroa.7457.0..sroa_idx.i.i, align 8, !alias.scope !161840, !noalias !161841
  %i.kr = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.kn, ptr %i.kr, align 8, !alias.scope !161842, !noalias !161843
  invoke fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtBY_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtBW_3VecTB1G_INtNtBY_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.an)
          to label %bb.cl unwind label %bb.ck, !noalias !161758

bb.ck:                                            ; preds = %bb.cj
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !161757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !161757
  br label %bb.dq

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !161757
  call void @llvm.experimental.noalias.scope.decl(metadata !161844)
  %i.kt = load i8, ptr %i.ao, align 8, !range !423, !alias.scope !161845, !noalias !161846, !noundef !416 ; 2 uses
  %.not.i246.i.i = icmp eq i8 %i.kt, -1
  br i1 %.not.i246.i.i, label %bb.cm, label %bb.dl

bb.cm:                                            ; preds = %bb.cl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.8449.sroa.9.7..sroa_idx840.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.8449.sroa.10.7..sroa_idx842.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.8449.sroa.10.7.copyload843.i.i = load ptr, ptr %.sroa.8449.sroa.10.7..sroa_idx842.i.i, align 8, !alias.scope !161847, !noalias !161757 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 6472 ; 2 uses
  %.sroa.8449.sroa.9.7.copyload841.i.i = load ptr, ptr %.sroa.8449.sroa.9.7..sroa_idx840.i.i, align 8, !alias.scope !161847, !noalias !161757, !nonnull !416, !noundef !416 ; 2 uses
  %i.kw = load <2 x ptr>, ptr %i.ku, align 8, !alias.scope !161847, !noalias !161757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !161757
  store i8 1, ptr %i.dl, align 1, !noalias !161757
end_hunk_5
begin_hunk_6_@_RNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB6_9PageTable5write0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.gv = load i64, ptr %i.gu, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %.body158, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.as
  %i.gx = getelementptr inbounds nuw i8, ptr %.val63, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !range !420, !invariant.load !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) %i.gy) #68
  br label %.body158

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.ar
  %.not.i114 = icmp eq i8 %i.gl, -1
  br i1 %.not.i114, label %bb.at, label %bb.dr

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  store i64 %.sroa.4295.0.copyload, ptr %i.gh, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !167889, !noalias !167890, !noundef !416 ; 2 uses
  %.not.i115.not.not = icmp eq ptr %i.hb, null
  br i1 %.not.i115.not.not, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %.lr.ph.i.i.i.i.i128.preheader

.lr.ph.i.i.i.i.i128.preheader:                    ; preds = %bb.at
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !167889, !noalias !167890 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i128.preheader
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !167889, !noalias !167890
  %i.hh = ptrtoint ptr %i.hb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread.i.i.i.i.i
  %.sroa.11308.0490 = phi ptr [ %.sroa.07.0.i.i.i240, %.thread.i.i.i.i.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.24311.0489 = phi i64 [ %i.hi, %.thread.i.i.i.i.i ], [ %i.hd, %.lr.ph.preheader ]
  %.sroa.20310.0488 = phi i64 [ %.sroa.78.0.i.i.i239, %.thread.i.i.i.i.i ], [ %i.hg, %.lr.ph.preheader ] ; 6 uses
  %.sroa.15309.0487 = phi i64 [ 0, %.thread.i.i.i.i.i ], [ %i.hh, %.lr.ph.preheader ] ; 2 uses
  %i.hi = add i64 %.sroa.24311.0489, -1           ; 4 uses
  %.not.i.i215 = icmp eq ptr %.sroa.11308.0490, null
  br i1 %.not.i.i215, label %bb.au, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220

bb.au:                                            ; preds = %.lr.ph
  %i.hj = inttoptr i64 %.sroa.15309.0487 to ptr   ; 3 uses
  %i.hk = icmp eq i64 %.sroa.20310.0488, 0
  br i1 %i.hk, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220, label %.lr.ph.i.i245.preheader

.lr.ph.i.i245.preheader:                          ; preds = %bb.au
  %xtraiter764 = and i64 %.sroa.20310.0488, 7     ; 2 uses
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol

.lr.ph.i.i245.prol:                               ; preds = %.lr.ph.i.i245.preheader, %.lr.ph.i.i245.prol
  %.sroa.013.017.i.i246.prol = phi ptr [ %.sroa.013.0.i.i248.prol, %.lr.ph.i.i245.prol ], [ %i.hj, %.lr.ph.i.i245.preheader ]
  %.sroa.011.016.i.i247.prol = phi i64 [ %i.hm, %.lr.ph.i.i245.prol ], [ %.sroa.20310.0488, %.lr.ph.i.i245.preheader ]
  %prol.iter766 = phi i64 [ %prol.iter766.next, %.lr.ph.i.i245.prol ], [ 0, %.lr.ph.i.i245.preheader ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i246.prol, i64 320
  %i.hm = add i64 %.sroa.011.016.i.i247.prol, -1  ; 2 uses
  %.sroa.013.0.i.i248.prol = load ptr, ptr %i.hl, align 8, !noalias !167891, !nonnull !416, !noundef !416 ; 3 uses
  %prol.iter766.next = add i64 %prol.iter766, 1   ; 2 uses
  %prol.iter766.cmp.not = icmp eq i64 %prol.iter766.next, %xtraiter764
  br i1 %prol.iter766.cmp.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol, !llvm.loop !167703

.lr.ph.i.i245.prol.loopexit:                      ; preds = %.lr.ph.i.i245.prol, %.lr.ph.i.i245.preheader
  %.sroa.013.0.i.i248.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i245.preheader ], [ %.sroa.013.0.i.i248.prol, %.lr.ph.i.i245.prol ]
  %.sroa.013.017.i.i246.unr = phi ptr [ %i.hj, %.lr.ph.i.i245.preheader ], [ %.sroa.013.0.i.i248.prol, %.lr.ph.i.i245.prol ]
  %.sroa.011.016.i.i247.unr = phi i64 [ %.sroa.20310.0488, %.lr.ph.i.i245.preheader ], [ %i.hm, %.lr.ph.i.i245.prol ]
  %i.hn = icmp ult i64 %.sroa.20310.0488, 8
  br i1 %i.hn, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245
  %.sroa.013.017.i.i246 = phi ptr [ %.sroa.013.0.i.i248.7, %.lr.ph.i.i245 ], [ %.sroa.013.017.i.i246.unr, %.lr.ph.i.i245.prol.loopexit ]
  %.sroa.011.016.i.i247 = phi i64 [ %i.hw, %.lr.ph.i.i245 ], [ %.sroa.011.016.i.i247.unr, %.lr.ph.i.i245.prol.loopexit ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i246, i64 320
  %.sroa.013.0.i.i248 = load ptr, ptr %i.ho, align 8, !noalias !167891, !nonnull !416, !noundef !416
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i248, i64 320
  %.sroa.013.0.i.i248.1 = load ptr, ptr %i.hp, align 8, !noalias !167891, !nonnull !416, !noundef !416
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i248.1, i64 320
  %.sroa.013.0.i.i248.2 = load ptr, ptr %i.hq, align 8, !noalias !167891, !nonnull !416, !noundef !416
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i248.2, i64 320
  %.sroa.013.0.i.i248.3 = load ptr, ptr %i.hr, align 8, !noalias !167891, !nonnull !416, !noundef !416
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i248.3, i64 320
  %.sroa.013.0.i.i248.4 = load ptr, ptr %i.hs, align 8, !noalias !167891, !nonnull !416, !noundef !416
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i248.4, i64 320
  %.sroa.013.0.i.i248.5 = load ptr, ptr %i.ht, align 8, !noalias !167891, !nonnull !416, !noundef !416
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i248.5, i64 320
  %.sroa.013.0.i.i248.6 = load ptr, ptr %i.hu, align 8, !noalias !167891, !nonnull !416, !noundef !416
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i248.6, i64 320
  %i.hw = add i64 %.sroa.011.016.i.i247, -8       ; 2 uses
  %.sroa.013.0.i.i248.7 = load ptr, ptr %i.hv, align 8, !noalias !167891, !nonnull !416, !noundef !416 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220, label %.lr.ph.i.i245

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220: ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245, %bb.au, %.lr.ph
  %.sroa.59.0.copyload.i.i221 = phi i64 [ %.sroa.20310.0488, %.lr.ph ], [ 0, %bb.au ], [ 0, %.lr.ph.i.i245 ], [ 0, %.lr.ph.i.i245.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i222 = phi i64 [ %.sroa.15309.0487, %.lr.ph ], [ 0, %bb.au ], [ 0, %.lr.ph.i.i245 ], [ 0, %.lr.ph.i.i245.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i223 = phi ptr [ %.sroa.11308.0490, %.lr.ph ], [ %i.hj, %bb.au ], [ %.sroa.013.0.i.i248.lcssa.unr, %.lr.ph.i.i245.prol.loopexit ], [ %.sroa.013.0.i.i248.7, %.lr.ph.i.i245 ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i223, i64 318
  %i.hz = load i16, ptr %i.hy, align 2, !noalias !167892, !noundef !416
  %i.ia = zext i16 %i.hz to i64
  %i.ib = icmp ult i64 %.sroa.59.0.copyload.i.i221, %i.ia
  br i1 %i.ib, label %bb.ax, label %.lr.ph.i.i.i.i226

.lr.ph.i.i.i.i226:                                ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220, %bb.av
  %.sroa.0.022.i.i.i.i227 = phi ptr [ %i.ic, %bb.av ], [ %.sroa.07.0.copyload.i.i223, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220 ] ; 2 uses
  %.sroa.5.021.i.i.i.i228 = phi i64 [ %i.ie, %bb.av ], [ %.sroa.48.0.copyload.i.i222, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220 ]
  %i.ic = load ptr, ptr %.sroa.0.022.i.i.i.i227, align 8, !noalias !167893, !noundef !416 ; 4 uses
  %.not.i.i.i.i.i229 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i.i229, label %bb.aw, label %bb.av

._crit_edge.loopexit.i.i.i.i230:                  ; preds = %bb.av
  %i.id = zext i16 %i.ig to i64
  br label %bb.ax

bb.av:                                            ; preds = %.lr.ph.i.i.i.i226
  %i.ie = add i64 %.sroa.5.021.i.i.i.i228, 1      ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i227, i64 316
  %i.ig = load i16, ptr %i.if, align 4, !noalias !167893 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 318
  %i.ii = load i16, ptr %i.ih, align 2, !noalias !167892, !noundef !416
  %i.ij = icmp ult i16 %i.ig, %i.ii
  br i1 %i.ij, label %._crit_edge.loopexit.i.i.i.i230, label %.lr.ph.i.i.i.i226

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i226
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2367) #72
          to label %.noexc.i.i243 unwind label %bb.ba, !noalias !167894

.noexc.i.i243:                                    ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %._crit_edge.loopexit.i.i.i.i230, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220
  %.sroa.10.0.ph.i.i.i231 = phi i64 [ %i.id, %._crit_edge.loopexit.i.i.i.i230 ], [ %.sroa.59.0.copyload.i.i221, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220 ] ; 5 uses
  %.sroa.7.0.ph.i.i.i232 = phi i64 [ %i.ie, %._crit_edge.loopexit.i.i.i.i230 ], [ %.sroa.48.0.copyload.i.i222, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220 ] ; 5 uses
  %.sroa.06.0.ph.i.i.i233 = phi ptr [ %i.ic, %._crit_edge.loopexit.i.i.i.i230 ], [ %.sroa.07.0.copyload.i.i223, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i220 ] ; 3 uses
  %i.ik = icmp eq i64 %.sroa.7.0.ph.i.i.i232, 0
  br i1 %i.ik, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.il = add nuw nsw i64 %.sroa.10.0.ph.i.i.i231, 1
  br label %.noexc131

bb.az:                                            ; preds = %bb.ax
  %i.im = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i231, 11
  call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i233, i64 328
  %i.io = getelementptr [8 x i8], ptr %i.in, i64 %.sroa.10.0.ph.i.i.i231 ; 2 uses
  %xtraiter767 = and i64 %.sroa.7.0.ph.i.i.i232, 7 ; 2 uses
  %lcmp.mod768.not = icmp eq i64 %xtraiter767, 0
  br i1 %lcmp.mod768.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.az, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i234.prol = phi ptr [ %i.ip, %.prol.preheader ], [ %i.io, %bb.az ]
  %.sroa.019.0.in.i.i.i.i235.prol = phi i64 [ %.sroa.019.0.i.i.i.i236.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i232, %bb.az ]
  %prol.iter769 = phi i64 [ %prol.iter769.next, %.prol.preheader ], [ 0, %bb.az ]
  %.sroa.019.0.i.i.i.i236.prol = add i64 %.sroa.019.0.in.i.i.i.i235.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i237.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i234.prol, align 8, !noalias !167895, !nonnull !416, !noundef !416 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.prol, i64 320 ; 2 uses
  %prol.iter769.next = add i64 %prol.iter769, 1   ; 2 uses
  %prol.iter769.cmp.not = icmp eq i64 %prol.iter769.next, %xtraiter767
  br i1 %prol.iter769.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !167717

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.az
  %.sroa.017.0.i.i.i.i237.lcssa.unr = phi ptr [ poison, %bb.az ], [ %.sroa.017.0.i.i.i.i237.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i234.unr = phi ptr [ %i.io, %bb.az ], [ %i.ip, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i235.unr = phi i64 [ %.sroa.7.0.ph.i.i.i232, %bb.az ], [ %.sroa.019.0.i.i.i.i236.prol, %.prol.preheader ]
  %i.iq = icmp ult i64 %.sroa.7.0.ph.i.i.i232, 8
  br i1 %i.iq, label %.noexc131, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i234 = phi ptr [ %i.iz, %.new ], [ %.sroa.017.0.in.i.i.i.i234.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i235 = phi i64 [ %.sroa.019.0.i.i.i.i236.7, %.new ], [ %.sroa.019.0.in.i.i.i.i235.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i237 = load ptr, ptr %.sroa.017.0.in.i.i.i.i234, align 8, !noalias !167895, !nonnull !416, !noundef !416
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237, i64 320
  %.sroa.017.0.i.i.i.i237.1 = load ptr, ptr %i.ir, align 8, !noalias !167895, !nonnull !416, !noundef !416
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.1, i64 320
  %.sroa.017.0.i.i.i.i237.2 = load ptr, ptr %i.is, align 8, !noalias !167895, !nonnull !416, !noundef !416
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.2, i64 320
  %.sroa.017.0.i.i.i.i237.3 = load ptr, ptr %i.it, align 8, !noalias !167895, !nonnull !416, !noundef !416
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.3, i64 320
  %.sroa.017.0.i.i.i.i237.4 = load ptr, ptr %i.iu, align 8, !noalias !167895, !nonnull !416, !noundef !416
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.4, i64 320
  %.sroa.017.0.i.i.i.i237.5 = load ptr, ptr %i.iv, align 8, !noalias !167895, !nonnull !416, !noundef !416
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.5, i64 320
  %.sroa.017.0.i.i.i.i237.6 = load ptr, ptr %i.iw, align 8, !noalias !167895, !nonnull !416, !noundef !416
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.6, i64 320
  %.sroa.019.0.i.i.i.i236.7 = add i64 %.sroa.019.0.in.i.i.i.i235, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i237.7 = load ptr, ptr %i.ix, align 8, !noalias !167895, !nonnull !416, !noundef !416 ; 2 uses
  %i.iy = icmp eq i64 %.sroa.019.0.i.i.i.i236.7, 0
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i237.7, i64 320
  br i1 %i.iy, label %.noexc131, label %.new

bb.ba:                                            ; preds = %bb.aw
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.noexc131:                                        ; preds = %.prol.loopexit, %.new, %bb.ay
  %.sroa.78.0.i.i.i239 = phi i64 [ %i.il, %bb.ay ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.07.0.i.i.i240 = phi ptr [ %.sroa.06.0.ph.i.i.i233, %bb.ay ], [ %.sroa.017.0.i.i.i.i237.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i237.7, %.new ] ; 5 uses
  %i.jb = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i231, 11
  call void @llvm.assume(i1 %i.jb)
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i233, i64 8
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.jc, i64 %.sroa.10.0.ph.i.i.i231 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167896)
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !167896, !noalias !167897, !noundef !416 ; 4 uses
  %.not.i3.i.i.i.i.i.i.i = icmp ne ptr %i.je, null
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !167896, !noalias !167897
  %i.jh = icmp ne i64 %i.jg, 0
  %.not6.i.i.i.i.i.i.i.i = select i1 %.not.i3.i.i.i.i.i.i.i, i1 %i.jh, i1 false
  br i1 %.not6.i.i.i.i.i.i.i.i, label %bb.bb, label %.thread.i.i.i.i.i

bb.bb:                                            ; preds = %.noexc131
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !167896, !noalias !167897 ; 5 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.bb
  %xtraiter770 = and i64 %i.jj, 7                 ; 2 uses
  %lcmp.mod771.not = icmp eq i64 %xtraiter770, 0
  br i1 %lcmp.mod771.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter772 = phi i64 [ %prol.iter772.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.prol, i64 230
  %i.jm = load i16, ptr %i.jl, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.jn = zext nneg i16 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.prol, i64 232
  %i.jp = icmp ult i16 %i.jm, 12
  call void @llvm.assume(i1 %i.jp)
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jn
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 3 uses
  %i.js = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter772.next = add i64 %prol.iter772, 1   ; 2 uses
  %prol.iter772.cmp.not = icmp eq i64 %prol.iter772.next, %xtraiter770
  br i1 %prol.iter772.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !167740

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa731.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.jt = icmp ult i64 %i.jj, 8
  br i1 %i.jt, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i, i64 230
  %i.jv = load i16, ptr %i.ju, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.jw = zext nneg i16 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i, i64 232
  %i.jy = icmp ult i16 %i.jv, 12
  call void @llvm.assume(i1 %i.jy)
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jw
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 230
  %i.kc = load i16, ptr %i.kb, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.kd = zext nneg i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 232
  %i.kf = icmp ult i16 %i.kc, 12
  call void @llvm.assume(i1 %i.kf)
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kd
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 230
  %i.kj = load i16, ptr %i.ki, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.kk = zext nneg i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 232
  %i.km = icmp ult i16 %i.kj, 12
  call void @llvm.assume(i1 %i.km)
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kk
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 230
  %i.kq = load i16, ptr %i.kp, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.kr = zext nneg i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 232
  %i.kt = icmp ult i16 %i.kq, 12
  call void @llvm.assume(i1 %i.kt)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kr
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 230
  %i.kx = load i16, ptr %i.kw, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.ky = zext nneg i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 232
  %i.la = icmp ult i16 %i.kx, 12
  call void @llvm.assume(i1 %i.la)
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.ky
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 230
  %i.le = load i16, ptr %i.ld, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 232
  %i.lh = icmp ult i16 %i.le, 12
  call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.lf
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 230
  %i.ll = load i16, ptr %i.lk, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.lm = zext nneg i16 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 232
  %i.lo = icmp ult i16 %i.ll, 12
  call void @llvm.assume(i1 %i.lo)
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lm
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 230
  %i.ls = load i16, ptr %i.lr, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %i.lt = zext nneg i16 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 232
  %i.lv = icmp ult i16 %i.ls, 12
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.lt
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !167898, !nonnull !416, !noundef !416 ; 2 uses
  %i.ly = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.bb
  %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.je, %bb.bb ], [ %.lcssa731.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 230
  %i.mb = load i16, ptr %i.ma, align 2, !noalias !167898, !noundef !416 ; 2 uses
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.mb, 0
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %bb.bc
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.md, %bb.bc ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.me, %bb.bc ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ]
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, i64 176
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !167899, !noundef !416 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.me = add i64 %.sroa.4.021.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, i64 228
  %i.mg = load i16, ptr %i.mf, align 4, !noalias !167899 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.mg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2368) #72
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.bg, !noalias !167900

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.mh = icmp eq i64 %i.me, 0
  br i1 %i.mh, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mi = icmp ult i16 %i.mg, 13
  call void @llvm.assume(i1 %i.mi)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.bh:                                            ; preds = %bb.bf, %bb.be, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.in.in.i.i.i.i.i.i.i.i = phi i16 [ %i.mb, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %i.mg, %bb.be ], [ %i.mg, %bb.bf ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i4.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %i.md, %bb.be ], [ %i.md, %bb.bf ]
  %.in.i.i.i.i.i.i.i.i = zext nneg i16 %.in.in.i.i.i.i.i.i.i.i to i64
  %i.mk = icmp ult i16 %.in.in.i.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.mk)
  %i.ml = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i4.i.i.i.i.i.i.i.i, i64 180
  %i.mm = getelementptr [4 x i8], ptr %i.ml, i64 %.in.i.i.i.i.i.i.i.i ; 3 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i130, label %.thread.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB17_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2l_NtB2l_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.bh, %.noexc131
  %i.mn = icmp eq i64 %i.hi, 0
  br i1 %i.mn, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %.lr.ph

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB17_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2l_NtB2l_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.bh
  %i.mo = icmp eq i64 %i.hi, 0
  br i1 %i.mo, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread403, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB17_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2l_NtB2l_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.i.i.i240) ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i240, i64 318
  %i.mq = load i16, ptr %i.mp, align 2, !noalias !167901, !noundef !416
  %i.mr = zext i16 %i.mq to i64
  %i.ms = icmp ult i64 %.sroa.78.0.i.i.i239, %i.mr
  br i1 %i.ms, label %.thread393, label %.lr.ph.i.i.i.i14.i.i.i.i.i.i

.lr.ph.i.i.i.i14.i.i.i.i.i.i:                     ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i, %bb.bi
  %.sroa.0.022.i.i.i.i15.i.i.i.i.i.i = phi ptr [ %i.mt, %bb.bi ], [ %.sroa.07.0.i.i.i240, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i16.i.i.i.i.i.i = phi i64 [ %i.mu, %bb.bi ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i ] ; 2 uses
  %i.mt = load ptr, ptr %.sroa.0.022.i.i.i.i15.i.i.i.i.i.i, align 8, !noalias !167902, !noundef !416 ; 7 uses
  %.not.i.i.i.i.i17.i.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i.i17.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i14.i.i.i.i.i.i
  %i.mu = add i64 %.sroa.5.021.i.i.i.i16.i.i.i.i.i.i, 1 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i15.i.i.i.i.i.i, i64 316
  %i.mw = load i16, ptr %i.mv, align 4, !noalias !167902 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 318
  %i.my = load i16, ptr %i.mx, align 2, !noalias !167901, !noundef !416
  %i.mz = icmp ult i16 %i.mw, %i.my
  br i1 %i.mz, label %bb.bk, label %.lr.ph.i.i.i.i14.i.i.i.i.i.i

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i14.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2367) #72
          to label %.noexc.i.i31.i.i.i.i.i.i unwind label %bb.bm, !noalias !167903

.noexc.i.i31.i.i.i.i.i.i:                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.na = zext i16 %i.mw to i64                   ; 4 uses
  %i.nb = icmp eq i64 %i.mu, 0
  br i1 %i.nb, label %.thread393, label %bb.bl

.thread393:                                       ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i, %bb.bk
  %.sroa.06.0.ph.i.i.i21.i.i.i.i.i.i399 = phi ptr [ %i.mt, %bb.bk ], [ %.sroa.07.0.i.i.i240, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i19.i.i.i.i.i.i397 = phi i64 [ %i.na, %bb.bk ], [ %.sroa.78.0.i.i.i239, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i8.i.i.i.i.i.i ] ; 2 uses
  %i.nc = add nuw nsw i64 %.sroa.10.0.ph.i.i.i19.i.i.i.i.i.i397, 1
  br label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.prol.loopexit774, %.new775, %.thread393
  %.sroa.10.0.ph.i.i.i74.sink127.i.i.i.i.i.i.ph = phi i64 [ %.sroa.10.0.ph.i.i.i19.i.i.i.i.i.i397, %.thread393 ], [ %i.na, %.new775 ], [ %i.na, %.prol.loopexit774 ]
  %.sroa.06.0.ph.i.i.i76.sink.i.i.i.i.i.i.ph = phi ptr [ %.sroa.06.0.ph.i.i.i21.i.i.i.i.i.i399, %.thread393 ], [ %i.mt, %.new775 ], [ %i.mt, %.prol.loopexit774 ]
  %.sroa.21.0.i.i.i.i.i.i.ph = phi i64 [ %i.nc, %.thread393 ], [ 0, %.new775 ], [ 0, %.prol.loopexit774 ]
  %.sroa.7.0.i.i.i.i.i.i.ph = phi ptr [ %.sroa.06.0.ph.i.i.i21.i.i.i.i.i.i399, %.thread393 ], [ %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit774 ], [ %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.7, %.new775 ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.nd = icmp ult i16 %i.mw, 11
  call void @llvm.assume(i1 %i.nd), !noalias !167904
  %i.ne = getelementptr i8, ptr %i.mt, i64 328
  %i.nf = getelementptr [8 x i8], ptr %i.ne, i64 %i.na ; 2 uses
  %xtraiter777 = and i64 %i.mu, 7                 ; 2 uses
  %lcmp.mod778.not = icmp eq i64 %xtraiter777, 0
  br i1 %lcmp.mod778.not, label %.prol.loopexit774, label %.prol.preheader773

.prol.preheader773:                               ; preds = %bb.bl, %.prol.preheader773
  %.sroa.017.0.in.i.i.i.i22.i.i.i.i.i.i.prol = phi ptr [ %i.ng, %.prol.preheader773 ], [ %i.nf, %bb.bl ]
  %.sroa.019.0.in.i.i.i.i23.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i24.i.i.i.i.i.i.prol, %.prol.preheader773 ], [ %i.mu, %bb.bl ]
  %prol.iter779 = phi i64 [ %prol.iter779.next, %.prol.preheader773 ], [ 0, %bb.bl ]
  %.sroa.019.0.i.i.i.i24.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i23.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i22.i.i.i.i.i.i.prol, align 8, !noalias !167905, !nonnull !416, !noundef !416 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter779.next = add i64 %prol.iter779, 1   ; 2 uses
  %prol.iter779.cmp.not = icmp eq i64 %prol.iter779.next, %xtraiter777
  br i1 %prol.iter779.cmp.not, label %.prol.loopexit774, label %.prol.preheader773, !llvm.loop !167777

.prol.loopexit774:                                ; preds = %.prol.preheader773, %bb.bl
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bl ], [ %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.prol, %.prol.preheader773 ]
  %.sroa.017.0.in.i.i.i.i22.i.i.i.i.i.i.unr = phi ptr [ %i.nf, %bb.bl ], [ %i.ng, %.prol.preheader773 ]
  %.sroa.019.0.in.i.i.i.i23.i.i.i.i.i.i.unr = phi i64 [ %i.mu, %bb.bl ], [ %.sroa.019.0.i.i.i.i24.i.i.i.i.i.i.prol, %.prol.preheader773 ]
  %i.nh = icmp ult i64 %.sroa.5.021.i.i.i.i16.i.i.i.i.i.i, 7
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.new775

.new775:                                          ; preds = %.prol.loopexit774, %.new775
  %.sroa.017.0.in.i.i.i.i22.i.i.i.i.i.i = phi ptr [ %i.nq, %.new775 ], [ %.sroa.017.0.in.i.i.i.i22.i.i.i.i.i.i.unr, %.prol.loopexit774 ]
  %.sroa.019.0.in.i.i.i.i23.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i24.i.i.i.i.i.i.7, %.new775 ], [ %.sroa.019.0.in.i.i.i.i23.i.i.i.i.i.i.unr, %.prol.loopexit774 ]
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i22.i.i.i.i.i.i, align 8, !noalias !167905, !nonnull !416, !noundef !416
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.1 = load ptr, ptr %i.ni, align 8, !noalias !167905, !nonnull !416, !noundef !416
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.2 = load ptr, ptr %i.nj, align 8, !noalias !167905, !nonnull !416, !noundef !416
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.3 = load ptr, ptr %i.nk, align 8, !noalias !167905, !nonnull !416, !noundef !416
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.4 = load ptr, ptr %i.nl, align 8, !noalias !167905, !nonnull !416, !noundef !416
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.5 = load ptr, ptr %i.nm, align 8, !noalias !167905, !nonnull !416, !noundef !416
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.6 = load ptr, ptr %i.nn, align 8, !noalias !167905, !nonnull !416, !noundef !416
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i24.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.7 = load ptr, ptr %i.no, align 8, !noalias !167905, !nonnull !416, !noundef !416 ; 2 uses
  %i.np = icmp eq i64 %.sroa.019.0.i.i.i.i24.i.i.i.i.i.i.7, 0
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.i.i.7, i64 320
  br i1 %i.np, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.new775

bb.bm:                                            ; preds = %bb.bj
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !167904
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.10.0.ph.i.i.i74.sink127.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i74.sink127.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.10.0.ph.i.i.i74.sink127.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.06.0.ph.i.i.i76.sink.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i76.sink.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.06.0.ph.i.i.i76.sink.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.backedge ]
  %.sroa.21.0.i.i.i.i.i.i = phi i64 [ %.sroa.21.0.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.21.0.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.2743.0.in.i.i.i.i.i.i = phi i64 [ %i.hi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.2743.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.backedge ]
  %.sroa.7.0.i.i.i.i.i.i = phi ptr [ %.sroa.7.0.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.7.0.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.i.backedge ] ; 4 uses
  %.sroa.0.015.i.i.i.i.i.i.i = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.backedge ] ; 4 uses
  %i.ns = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i74.sink127.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ns), !noalias !167904
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i76.sink.i.i.i.i.i.i, i64 8
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %.sroa.10.0.ph.i.i.i74.sink127.i.i.i.i.i.i ; 3 uses
  %.sroa.2743.0.i.i.i.i.i.i = add i64 %.sroa.2743.0.in.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167906)
  call void @llvm.experimental.noalias.scope.decl(metadata !167907)
  call void @llvm.experimental.noalias.scope.decl(metadata !167908)
  %i.nv = load ptr, ptr %i.nu, align 8, !alias.scope !167909, !noalias !167910, !noundef !416 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.nv, null
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !167909, !noalias !167910
  %i.ny = icmp ne i64 %i.nx, 0
  %.not6.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i1 %i.ny, i1 false
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %bb.bn, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEINtNtBa_6option6OptionRlEB3n_NCNCNvMs_B1X_NtB1X_9PageTable5write00NCINvNtB6_7flatten11flatten_oneB31_B3n_NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB3n_NvYB3n_NtNtBa_3cmp3Ord3cmpE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !167909, !noalias !167910 ; 5 uses
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader:        ; preds = %bb.bn
  %xtraiter780 = and i64 %i.oa, 7                 ; 2 uses
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  br i1 %lcmp.mod781.not, label %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol ], [ %i.nv, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol ], [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader ]
  %prol.iter782 = phi i64 [ %prol.iter782.next, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 230
  %i.od = load i16, ptr %i.oc, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.oe = zext nneg i16 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 232
  %i.og = icmp ult i16 %i.od, 12
  call void @llvm.assume(i1 %i.og)
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oe
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 3 uses
  %i.oj = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter782.next = add i64 %prol.iter782, 1   ; 2 uses
  %prol.iter782.cmp.not = icmp eq i64 %prol.iter782.next, %xtraiter780
  br i1 %prol.iter782.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol, !llvm.loop !167790

.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader
  %.lcssa713.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader ], [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader ], [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.preheader ], [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol ]
  %i.ok = icmp ult i64 %i.oa, 8
  br i1 %i.ok, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qo, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qp, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 230
  %i.om = load i16, ptr %i.ol, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.on = zext nneg i16 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 232
  %i.op = icmp ult i16 %i.om, 12
  call void @llvm.assume(i1 %i.op)
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.on
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 230
  %i.ot = load i16, ptr %i.os, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.ou = zext nneg i16 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 232
  %i.ow = icmp ult i16 %i.ot, 12
  call void @llvm.assume(i1 %i.ow)
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.ou
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 230
  %i.pa = load i16, ptr %i.oz, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.pb = zext nneg i16 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 232
  %i.pd = icmp ult i16 %i.pa, 12
  call void @llvm.assume(i1 %i.pd)
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pb
  %i.pf = load ptr, ptr %i.pe, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 230
  %i.ph = load i16, ptr %i.pg, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 232
  %i.pk = icmp ult i16 %i.ph, 12
  call void @llvm.assume(i1 %i.pk)
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.pi
  %i.pm = load ptr, ptr %i.pl, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 230
  %i.po = load i16, ptr %i.pn, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.pp = zext nneg i16 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 232
  %i.pr = icmp ult i16 %i.po, 12
  call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pp
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 230
  %i.pv = load i16, ptr %i.pu, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.pw = zext nneg i16 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 232
  %i.py = icmp ult i16 %i.pv, 12
  call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.pw
  %i.qa = load ptr, ptr %i.pz, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 230
  %i.qc = load i16, ptr %i.qb, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 232
  %i.qf = icmp ult i16 %i.qc, 12
  call void @llvm.assume(i1 %i.qf)
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qd
  %i.qh = load ptr, ptr %i.qg, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 230
  %i.qj = load i16, ptr %i.qi, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %i.qk = zext nneg i16 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 232
  %i.qm = icmp ult i16 %i.qj, 12
  call void @llvm.assume(i1 %i.qm)
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qk
  %i.qo = load ptr, ptr %i.qn, align 8, !noalias !167911, !nonnull !416, !noundef !416 ; 2 uses
  %i.qp = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.qq = icmp eq i64 %i.qp, 0
  br i1 %i.qq, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i, %bb.bn
  %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nv, %bb.bn ], [ %.lcssa713.unr, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i.prol.loopexit ], [ %i.qo, %.lr.ph.i.i.i.i.i.i.i.i.i8.i.i.i ] ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 230
  %i.qs = load i16, ptr %i.qr, align 2, !noalias !167911, !noundef !416 ; 2 uses
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.qs, 0
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB8_9PageTable5write00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %bb.bo
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qu, %bb.bo ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.021.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qv, %bb.bo ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 176
  %i.qu = load ptr, ptr %i.qt, align 8, !noalias !167912, !noundef !416 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qv = add i64 %.sroa.4.021.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 228
  %i.qx = load i16, ptr %i.qw, align 4, !noalias !167912 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i9.i.i.i = icmp eq i16 %i.qx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i9.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2368) #72
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bs, !noalias !167913

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.qy = icmp eq i64 %i.qv, 0
  br i1 %i.qy, label %_RNCNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB8_9PageTable5write00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qz = icmp ult i16 %i.qx, 13
  call void @llvm.assume(i1 %i.qz)
  br label %_RNCNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB8_9PageTable5write00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bp
  %i.ra = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_RNCNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB8_9PageTable5write00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  %.in.in.i.i.i.i.i.i.i.i.i = phi i16 [ %i.qs, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.qx, %bb.bq ], [ %i.qx, %bb.br ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i4.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoE9init_backCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.qu, %bb.bq ], [ %i.qu, %bb.br ]
  %.in.i.i.i.i.i.i.i.i.i = zext nneg i16 %.in.in.i.i.i.i.i.i.i.i.i to i64
  %i.rb = icmp ult i16 %.in.in.i.i.i.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.rb)
  %i.rc = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i4.i.i.i.i.i.i.i.i.i, i64 180
  %i.rd = getelementptr [4 x i8], ptr %i.rc, i64 %.in.i.i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167914)
  call void @llvm.experimental.noalias.scope.decl(metadata !167915)
  %.not.i2.i.i.i.i.i.i.i.i = icmp eq ptr %i.rd, null
  br i1 %.not.i2.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEINtNtBa_6option6OptionRlEB3n_NCNCNvMs_B1X_NtB1X_9PageTable5write00NCINvNtB6_7flatten11flatten_oneB31_B3n_NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB3n_NvYB3n_NtNtBa_3cmp3Ord3cmpE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RNCNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB8_9PageTable5write00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !167916)
  call void @llvm.experimental.noalias.scope.decl(metadata !167917)
  call void @llvm.experimental.noalias.scope.decl(metadata !167918)
  call void @llvm.experimental.noalias.scope.decl(metadata !167919)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.015.i.i.i.i.i.i.i, align 4, !alias.scope !167920, !noalias !167921, !noundef !416
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.rd, align 4, !alias.scope !167922, !noalias !167923, !noundef !416
  %i.re = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.re, ptr %.sroa.0.015.i.i.i.i.i.i.i, ptr %i.rd
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEINtNtBa_6option6OptionRlEB3n_NCNCNvMs_B1X_NtB1X_9PageTable5write00NCINvNtB6_7flatten11flatten_oneB31_B3n_NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB3n_NvYB3n_NtNtBa_3cmp3Ord3cmpE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEINtNtBa_6option6OptionRlEB3n_NCNCNvMs_B1X_NtB1X_9PageTable5write00NCINvNtB6_7flatten11flatten_oneB31_B3n_NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB3n_NvYB3n_NtNtBa_3cmp3Ord3cmpE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.bt, %_RNCNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB8_9PageTable5write00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.015.i.i.i.i.i.i.i, %_RNCNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_tableNtB8_9PageTable5write00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %bb.bt ], [ %.sroa.0.015.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.rf = icmp eq i64 %.sroa.2743.0.i.i.i.i.i.i, 0
  br i1 %i.rf, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread403, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEINtNtBa_6option6OptionRlEB3n_NCNCNvMs_B1X_NtB1X_9PageTable5write00NCINvNtB6_7flatten11flatten_oneB31_B3n_NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB3n_NvYB3n_NtNtBa_3cmp3Ord3cmpE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i.i.i.i) ]
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i.i.i.i, i64 318
  %i.rh = load i16, ptr %i.rg, align 2, !noalias !167924, !noundef !416
  %i.ri = zext i16 %i.rh to i64
  %i.rj = icmp ult i64 %.sroa.21.0.i.i.i.i.i.i, %i.ri
  br i1 %i.rj, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %bb.bu
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rk, %bb.bu ], [ %.sroa.7.0.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rl, %bb.bu ], [ 0, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.rk = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !167925, !noundef !416 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.rl = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, i64 316
  %i.rn = load i16, ptr %i.rm, align 4, !noalias !167925 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 318
  %i.rp = load i16, ptr %i.ro, align 2, !noalias !167924, !noundef !416
  %i.rq = icmp ult i16 %i.rn, %i.rp
  br i1 %i.rq, label %bb.bw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2367) #72
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.by, !noalias !167926

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.rr = zext i16 %i.rn to i64                   ; 4 uses
  %i.rs = icmp eq i64 %i.rl, 0
  br i1 %i.rs, label %.thread.i.i.i.i.i.i, label %bb.bx

.thread.i.i.i.i.i.i:                              ; preds = %bb.bw, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.06.0.ph.i.i.i77.i.i.i.i.i.i = phi ptr [ %i.rk, %bb.bw ], [ %.sroa.7.0.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i75.i.i.i.i.i.i = phi i64 [ %i.rr, %bb.bw ], [ %.sroa.21.0.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtB7_3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEE10init_frontCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.rt = add nuw nsw i64 %.sroa.10.0.ph.i.i.i75.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.i.backedge:                    ; preds = %.prol.loopexit784, %.new785, %.thread.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i74.sink127.i.i.i.i.i.i.be = phi i64 [ %.sroa.10.0.ph.i.i.i75.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.rr, %.new785 ], [ %i.rr, %.prol.loopexit784 ]
  %.sroa.06.0.ph.i.i.i76.sink.i.i.i.i.i.i.be = phi ptr [ %.sroa.06.0.ph.i.i.i77.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.rk, %.new785 ], [ %i.rk, %.prol.loopexit784 ]
  %.sroa.21.0.i.i.i.i.i.i.be = phi i64 [ %i.rt, %.thread.i.i.i.i.i.i ], [ 0, %.new785 ], [ 0, %.prol.loopexit784 ]
  %.sroa.7.0.i.i.i.i.i.i.be = phi ptr [ %.sroa.06.0.ph.i.i.i77.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit784 ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7, %.new785 ]
  br label %.lr.ph.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ru = icmp ult i16 %i.rn, 11
  call void @llvm.assume(i1 %i.ru), !noalias !167904
  %i.rv = getelementptr i8, ptr %i.rk, i64 328
  %i.rw = getelementptr [8 x i8], ptr %i.rv, i64 %i.rr ; 2 uses
  %xtraiter787 = and i64 %i.rl, 7                 ; 2 uses
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  br i1 %lcmp.mod788.not, label %.prol.loopexit784, label %.prol.preheader783

.prol.preheader783:                               ; preds = %bb.bx, %.prol.preheader783
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.rx, %.prol.preheader783 ], [ %i.rw, %bb.bx ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader783 ], [ %i.rl, %bb.bx ]
  %prol.iter789 = phi i64 [ %prol.iter789.next, %.prol.preheader783 ], [ 0, %bb.bx ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !167927, !nonnull !416, !noundef !416 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter789.next = add i64 %prol.iter789, 1   ; 2 uses
  %prol.iter789.cmp.not = icmp eq i64 %prol.iter789.next, %xtraiter787
  br i1 %prol.iter789.cmp.not, label %.prol.loopexit784, label %.prol.preheader783, !llvm.loop !167825

.prol.loopexit784:                                ; preds = %.prol.preheader783, %bb.bx
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.bx ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader783 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.rw, %bb.bx ], [ %i.rx, %.prol.preheader783 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.rl, %bb.bx ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader783 ]
  %i.ry = icmp ult i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ry, label %.lr.ph.i.i.i.i.i.i.i.backedge, label %.new785

.new785:                                          ; preds = %.prol.loopexit784, %.new785
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.sh, %.new785 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit784 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7, %.new785 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit784 ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !167927, !nonnull !416, !noundef !416
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.rz, align 8, !noalias !167927, !nonnull !416, !noundef !416
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.sa, align 8, !noalias !167927, !nonnull !416, !noundef !416
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.sb, align 8, !noalias !167927, !nonnull !416, !noundef !416
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.sc, align 8, !noalias !167927, !nonnull !416, !noundef !416
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.sd, align 8, !noalias !167927, !nonnull !416, !noundef !416
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.se, align 8, !noalias !167927, !nonnull !416, !noundef !416
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.sf, align 8, !noalias !167927, !nonnull !416, !noundef !416 ; 2 uses
  %i.sg = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7, i64 320
  br i1 %i.sg, label %.lr.ph.i.i.i.i.i.i.i.backedge, label %.new785

bb.by:                                            ; preds = %bb.bv
  %i.si = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !167904
  unreachable

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %.thread.i.i.i.i.i, %bb.at, %.lr.ph.i.i.i.i.i128.preheader
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2215) #72
          to label %.noexc unwind label %bb.bz

.noexc:                                           ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  unreachable

bb.bz:                                            ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %.body158

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread403: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEINtNtBa_6option6OptionRlEB3n_NCNCNvMs_B1X_NtB1X_9PageTable5write00NCINvNtB6_7flatten11flatten_oneB31_B3n_NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB3n_NvYB3n_NtNtBa_3cmp3Ord3cmpE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB17_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2l_NtB2l_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.0.0.i.i.i406 = phi ptr [ %i.mm, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB17_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2l_NtB2l_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEINtNtBa_6option6OptionRlEB3n_NCNCNvMs_B1X_NtB1X_9PageTable5write00NCINvNtB6_7flatten11flatten_oneB31_B3n_NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB3n_NvYB3n_NtNtBa_3cmp3Ord3cmpE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  %.val69 = load i32, ptr %.sroa.0.0.i.i.i406, align 4, !noundef !416 ; 3 uses
  %i.sk = add i32 %.val69, 1
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !alias.scope !167928, !noalias !167929, !noundef !416 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 8, !alias.scope !167930, !noalias !167929, !noundef !416 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 4, !range !428, !alias.scope !167931, !noalias !167929, !noundef !416 ; 2 uses
  %i.sr = trunc nuw i8 %i.sq to i1
  %.not.i133 = icmp sgt i32 %i.sm, %i.so
  %or.cond = or i1 %.not.i133, %i.sr
  br i1 %or.cond, label %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivelENtNtNtB7_6traits8iterator8Iterator5countCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ca

bb.ca:                                            ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread403
  %i.ss = sext i32 %i.so to i64
  %i.st = sext i32 %i.sm to i64
  %i.su = sub nsw i64 %i.ss, %i.st                ; 2 uses
  %i.sv = icmp eq i64 %i.su, -1
  br i1 %i.sv, label %bb.cb, label %bb.cc, !prof !426

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7526, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7527) #72
          to label %.noexc134 unwind label %bb.cd

.noexc134:                                        ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.sw = add nuw nsw i64 %i.su, 1
  br label %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivelENtNtNtB7_6traits8iterator8Iterator5countCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.cd:                                            ; preds = %bb.cb
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body158

_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivelENtNtNtB7_6traits8iterator8Iterator5countCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.cc, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread403
  %.sroa.0.0.i = phi i64 [ %i.sw, %bb.cc ], [ 0, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten7FlatMapINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map6ValueslINtB11_8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEINtNtBb_6option6OptionRlENCNCNvMs_B2f_NtB2f_9PageTable5write00ENtNtNtB9_6traits8iterator8Iterator3maxCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread403 ]
  %i.sy = sext i32 %i.sk to i64
  %i.sz = mul nsw i64 %.sroa.0.0.i, %i.sy         ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167932)
  %i.ta = shl i64 %i.sz, 3                        ; 4 uses
  %i.tb = icmp ugt i64 %i.sz, 2305843009213693951
  %.not.i.i135 = icmp ugt i64 %i.ta, 9223372036854775800
  %or.cond.i.i = or i1 %i.tb, %.not.i.i135
  br i1 %or.cond.i.i, label %bb.ch, label %bb.ce, !prof !441

bb.ce:                                            ; preds = %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivelENtNtNtB7_6traits8iterator8Iterator5countCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.tc = icmp eq i64 %i.ta, 0
  br i1 %i.tc, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !167933
  %i.td = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ta, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !167933 ; 2 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.tf = ptrtoint ptr %i.td to i64
  %.sroa.0337.0.copyload.pre = load i32, ptr %i.sl, align 4
  %.sroa.5338.0.copyload.pre = load i32, ptr %i.sn, align 8
  %.sroa.6339.0.copyload.pre = load i8, ptr %i.sp, align 4
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cf, %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivelENtNtNtB7_6traits8iterator8Iterator5countCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.cf ], [ 0, %_RNvXsd_NtNtCscI6d9CVNmLh_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivelENtNtNtB7_6traits8iterator8Iterator5countCsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ta) #72
          to label %.noexc138 unwind label %bb.ci

.noexc138:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.cj:                                            ; preds = %bb.ce, %bb.cg
  %.sroa.6339.0.copyload = phi i8 [ %.sroa.6339.0.copyload.pre, %bb.cg ], [ %i.sq, %bb.ce ]
  %.sroa.5338.0.copyload = phi i32 [ %.sroa.5338.0.copyload.pre, %bb.cg ], [ %i.so, %bb.ce ] ; 3 uses
  %.sroa.0337.0.copyload = phi i32 [ %.sroa.0337.0.copyload.pre, %bb.cg ], [ %i.sm, %bb.ce ] ; 2 uses
  %.sroa.10.0.i = phi i64 [ %i.tf, %bb.cg ], [ 8, %bb.ce ]
  %.sroa.4.0.i = phi i64 [ %i.sz, %bb.cg ], [ 0, %bb.ce ] ; 2 uses
end_hunk_6
begin_hunk_7_@_RNCNvNtNtCshkPeWWG1flk_5lance2io6commit15migrate_indices0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.fi = call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 16)
  %i.fj = xor i64 %i.fi, %i.ff                    ; 3 uses
  %i.fk = call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 32)
  %i.fl = add i64 %i.fh, %i.ff                    ; 3 uses
  %i.fm = add i64 %i.fj, %i.fk                    ; 2 uses
  %i.fn = call noundef i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 17)
  %i.fo = xor i64 %i.fn, %i.fl                    ; 3 uses
  %i.fp = call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 21)
  %i.fq = xor i64 %i.fp, %i.fm                    ; 3 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 32)
  %i.fs = add i64 %i.fo, %i.fm
  %i.ft = add i64 %i.fq, %i.fr                    ; 2 uses
  %i.fu = call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 13)
  %i.fv = xor i64 %i.fu, %i.fs                    ; 3 uses
  %i.fw = call noundef i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 16)
  %i.fx = xor i64 %i.fw, %i.ft                    ; 2 uses
  %i.fy = add i64 %i.fv, %i.ft                    ; 3 uses
  %i.fz = call noundef i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 17)
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 21)
  %i.gb = call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 32)
  %i.gc = xor i64 %i.ga, %i.fz
  %i.gd = xor i64 %i.gc, %i.gb
  %i.ge = xor i64 %i.gd, %i.fy                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !179517
  %i.gf = load i64, ptr %i.dg, align 8, !alias.scope !179525, !noalias !179526, !noundef !416
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.o, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !426

bb.o:                                             ; preds = %bb.n
  %i.gh = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ba, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.v, !noalias !179512 ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !179527, !noalias !179528, !nonnull !416, !noundef !416 ; 9 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dj, align 8, !alias.scope !179527, !noalias !179528, !noundef !416 ; 4 uses
  %i.gi = lshr i64 %i.ge, 57
  %i.gj = trunc nuw nsw i64 %i.gi to i8           ; 3 uses
  %i.gk = insertelement <16 x i8> poison, i8 %i.gj, i64 0
  %i.gl = shufflevector <16 x i8> %i.gk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ge, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hm, %bb.r ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r ]
  %i.gm = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hl, %bb.r ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gn, align 1, !noalias !179529 ; 3 uses
  %i.go = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gl
  %i.gp = bitcast <16 x i1> %i.go to i16          ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gp, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.p, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.hb, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gp, %bb.p ] ; 3 uses
  %i.gq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.gr = zext nneg i16 %i.gq to i64
  %i.gs = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gr
  %i.gt = and i64 %i.gs, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = sub nsw i64 0, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gu ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 -16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !noalias !179530, !noundef !416
  %i.gx = icmp eq i64 %i.dp, %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.gx, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !424

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds i8, ptr %i.gv, i64 -24
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gy, align 8, !noalias !179530, !nonnull !416, !noundef !416
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.dn, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dp), !alias.scope !179531, !noalias !179532
  %i.gz = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gz, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataTReBU_EuNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4y_7HashMapB1V_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB3C_7collect6ExtendB1U_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB24_0EB22_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !425

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !426

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hb = and i16 %i.ha, %.sroa.01.029.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hc = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.hd = bitcast <16 x i1> %i.hc to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !426

.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.q
  %i.he = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hd, i1 true)
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hf
  %i.hh = and i64 %i.hg, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hh, %.thread24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hi = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hj = bitcast <16 x i1> %i.hi to i16
  %i.hk = icmp eq i16 %i.hj, 0
  br i1 %i.hk, label %bb.r, label %bb.s, !prof !426

bb.r:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.q ]
  %i.hl = add i64 %i.gm, 16                       ; 2 uses
  %i.hm = add i64 %i.hl, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.p

bb.s:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = load i8, ptr %i.hn, align 1, !noalias !179533, !noundef !416 ; 2 uses
  %i.hp = icmp sgt i8 %i.ho, -1
  br i1 %i.hp, label %bb.t, label %bb.u, !prof !426

bb.t:                                             ; preds = %bb.s
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !179533
  %i.hq = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.hr = bitcast <16 x i1> %i.hq to i16          ; 2 uses
  %.not.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.hr, 0
  %i.hs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hr, i1 true)
  %i.ht = zext nneg i16 %i.hs to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ht
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !179534
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hu = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t ], [ %i.ho, %bb.s ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ht, %bb.t ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179535)
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hw = and i8 %i.hu, 1
  %i.hx = zext nneg i8 %i.hw to i64
  %i.hy = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -16
  %i.hz = and i64 %i.hy, %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.gj, ptr %i.hv, align 1, !noalias !179534
  %i.ia = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 16
  store i8 %i.gj, ptr %i.ib, align 1, !noalias !179534
  %i.ic = load <2 x i64>, ptr %i.dg, align 8, !alias.scope !179536, !noalias !179537
  %i.id = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.hx, i64 0
  %i.ie = sub <2 x i64> %i.ic, %i.id
  store <2 x i64> %i.ie, ptr %i.dg, align 8, !alias.scope !179536, !noalias !179537
  %i.if = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ig = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -24
  store ptr %i.dn, ptr %i.ih, align 8, !noalias !179538
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ig, i64 -16
  store i64 %i.dp, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !179539
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataTReBU_EuNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4y_7HashMapB1V_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB3C_7collect6ExtendB1U_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB24_0EB22_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataTReBU_EuNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4y_7HashMapB1V_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB3C_7collect6ExtendB1U_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB24_0EB22_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %i.ii = phi i64 [ %i.if, %bb.u ], [ %i.gu, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2s_11make_hasherBS_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ij = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ii
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ij, i64 -8
  store ptr %i.dk, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !179540
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter11filter_foldRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadatauNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details00NCINvNtB6_3map8map_foldB11_TReB11_EuNCB24_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3Q_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5f_7HashMapB3R_B11_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4j_7collect6ExtendB3Q_E6extendINtB3u_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB22_EB3Z_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter11filter_foldRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadatauNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details00NCINvNtB6_3map8map_foldB11_TReB11_EuNCB24_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3Q_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5f_7HashMapB3R_B11_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4j_7collect6ExtendB3Q_E6extendINtB3u_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB22_EB3Z_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataTReBU_EuNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4y_7HashMapB1V_BU_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB3C_7collect6ExtendB1U_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterBV_ENCB24_0EB22_EE0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %i.ik = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.il = icmp eq i64 %i.ik, %i.cr
  br i1 %i.il, label %.loopexit163.i, label %bb.m

bb.v:                                             ; preds = %bb.o, %bb.m
  %i.im = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !179502
  %.val4.i.i.i = load i64, ptr %i.dj, align 8, !noalias !179502, !noundef !416
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val.i.i.i, i64 %.val4.i.i.i) #73, !noalias !179512
  br label %.body118.thread

bb.w:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body118.thread

.loopexit163.i:                                   ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters6filter11filter_foldRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadatauNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details00NCINvNtB6_3map8map_foldB11_TReB11_EuNCB24_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3Q_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5f_7HashMapB3R_B11_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB4j_7collect6ExtendB3Q_E6extendINtB3u_3MapINtB4_6FilterINtNtNtBa_5slice4iter4IterB12_EB22_EB3Z_EE0E0E0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !179541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !179502
  store i8 1, ptr %i.ck, align 8, !noalias !179499
  %i.io = getelementptr i8, ptr %1, i64 168
  %.val36.i = load i64, ptr %i.io, align 8, !noalias !179499, !noundef !416 ; 6 uses
  %i.ip = icmp eq i64 %.val36.i, 0
  br i1 %i.ip, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit163.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !179499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !179499
  store i8 0, ptr %i.ck, align 8, !noalias !179499
  %.sroa.0132.0.copyload.i = load ptr, ptr %i.cv, align 8, !noalias !179499, !nonnull !416, !noundef !416 ; 6 uses
  %.sroa.5133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.5133.0.copyload.i = load i64, ptr %.sroa.5133.0..sroa_idx.i, align 8, !noalias !179499 ; 3 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0132.0.copyload.i, align 16, !noalias !179542
  %i.iq = icmp eq i64 %.sroa.5133.0.copyload.i, 0 ; 8 uses
  br i1 %i.iq, label %bb.aa, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.x
  %i.ir = mul i64 %.sroa.5133.0.copyload.i, 24    ; 2 uses
  %3 = add i64 %i.ir, 24
  %4 = icmp ult i64 %3, -15
  call void @llvm.assume(i1 %4)
  %i.is = and i64 %i.ir, -16                      ; 2 uses
  %5 = add i64 %i.is, 32                          ; 2 uses
  %i.it = add i64 %.sroa.5133.0.copyload.i, 17
  %i.iu = add i64 %i.it, %5                       ; 3 uses
  %6 = icmp uge i64 %i.iu, %5
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.iu, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %i.iv = sub i64 -32, %i.is
  %i.iw = getelementptr inbounds i8, ptr %.sroa.0132.0.copyload.i, i64 %i.iv
  br label %bb.aa

bb.y:                                             ; preds = %.loopexit163.i
  %.val34.i = load ptr, ptr %i.cv, align 8, !noalias !179499 ; 2 uses
  %i.ix = getelementptr i8, ptr %1, i64 152
  %.val35.i = load i64, ptr %i.ix, align 8, !noalias !179499, !noundef !416 ; 4 uses
  %i.iy = icmp eq i64 %.val35.i, 0
  br i1 %i.iy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.iz = mul i64 %.val35.i, 24
  %i.ja = icmp slt i64 %.val35.i, 768614336404564650
  call void @llvm.assume(i1 %i.ja)
  %i.jb = and i64 %i.iz, -16                      ; 2 uses
  %i.jc = add i64 %i.jb, 32                       ; 2 uses
  %i.jd = add nsw i64 %.val35.i, 17
  %i.je = add i64 %i.jd, %i.jc                    ; 4 uses
  %i.jf = icmp uge i64 %i.je, %i.jc
  %i.jg = icmp ult i64 %i.je, 9223372036854775793
  call void @llvm.assume(i1 %i.jf)
  call void @llvm.assume(i1 %i.jg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i) ]
  %i.jh = icmp eq i64 %i.je, 0
  br i1 %i.jh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.ji = sub i64 -32, %i.jb
  %i.jj = getelementptr inbounds i8, ptr %.val34.i, i64 %i.ji
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jj, i64 noundef %i.je, i64 noundef range(i64 1, -9223372036854775807) 16) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.aa:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.x
  %.sroa.514.0.i.i.i.i = phi ptr [ undef, %bb.x ], [ %i.iw, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 10 uses
  %.sroa.413.0.i.i.i.i = phi i64 [ undef, %bb.x ], [ %i.iu, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 12 uses
  %.sink.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0132.0.copyload.i, i64 16 ; 3 uses
  %i.jl = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.jm = bitcast <16 x i1> %i.jl to i16          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1276.i.i)
  %i.jn = icmp ult i64 %.val36.i, 31
  br i1 %i.jn, label %bb.bd, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !179543
  store i64 1, ptr %i.ax, align 8, !noalias !179543
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 1, ptr %i.jo, align 8, !noalias !179543
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.jp, align 8, !noalias !179543
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !179543
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2080
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 32, i1 false), !noalias !179543
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !179543
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2113
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 1, !noalias !179543
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !179544
  %i.jq = call noundef align 8 dereferenceable_or_null(2120) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 2120, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !179544 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.ac, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !448

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2120) #72
          to label %.noexc.i.i.i.i.i unwind label %bb.ad, !noalias !179545

.noexc.i.i.i.i.i:                                 ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(2120) %i.ax) #73
          to label %bb.bc unwind label %bb.ae, !noalias !179545

bb.ae:                                            ; preds = %bb.ad
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !179545
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2120) %i.jq, ptr noundef nonnull align 8 dereferenceable(2120) %i.ax, i64 2120, i1 false), !noalias !179545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !179543
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !179543
  store i64 1, ptr %i.aw, align 8, !noalias !179543
  %i.jw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 1, ptr %i.jw, align 8, !noalias !179543
  %i.jx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.jq, ptr %i.jx, align 8, !noalias !179543
  %.sroa.4.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !179543
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i.i.i.i.i, align 8, !noalias !179543
  %.sroa.511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i64 %i.jv, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i, align 8, !noalias !179543
  %.sroa.612.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr %i.ju, ptr %.sroa.612.0..sroa_idx.i.i.i.i.i, align 8, !noalias !179543
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !179546
  %i.jy = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !179546 ; 3 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.af, label %.lr.ph.i.i.i.i.i.i.i, !prof !448

bb.af:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #72
          to label %.noexc24.i.i.i.i.i unwind label %bb.ag, !noalias !179545

.noexc24.i.i.i.i.i:                               ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aw) #73
          to label %bb.bc unwind label %bb.ah, !noalias !179545

bb.ah:                                            ; preds = %bb.ag
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !179545
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jy, ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 64, i1 false), !noalias !179545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !179543
  %.val.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !179547
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1168.i.i.i.i)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %.sroa.71.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 2096
  %i.kd = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 4 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 2048
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2080
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2088
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2112
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2113
  %i.kh = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 3 uses
  %.sroa.643.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.sroa.748.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.sroa.1168.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 41 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ba, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.13.0.copyload78.i.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.12.0.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.12.0.copyload74.i.i.i.i, %bb.ba ] ; 3 uses
  %.sroa.1063.0.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.1063.0.copyload65.i.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.958.0.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.958.0.copyload60.i.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.853.0.i.i.i.i = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.853.0.copyload55.i.i.i.i, %bb.ba ] ; 5 uses
  %.sroa.748.0.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.748.0.copyload50.i.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.643.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.643.0.copyload45.i.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.040.0.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.040.0.copyload41.i.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.144.0.i.i.i.i.i.i = phi i16 [ %i.jm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ks, %bb.ba ] ; 2 uses
  %.sroa.12.0.i.i.i.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.12.1.i.i.i.i.i.i, %bb.ba ] ; 2 uses
  %.sroa.9.0.i.i.i.i.i.i = phi ptr [ %.sroa.0132.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i.i, %bb.ba ] ; 2 uses
  %i.kj = phi i64 [ %.val36.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kv, %bb.ba ]
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.144.0.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.kk = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.12.0.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %i.kl = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i, %bb.ai ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.kk, align 16, !noalias !179548
  %i.km = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.kn = getelementptr inbounds i8, ptr %i.kl, i64 -384 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.km to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.ai
  %.sroa.12.1.i.i.i.i.i.i = phi ptr [ %.sroa.12.0.i.i.i.i.i.i, %bb.ai ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.9.1.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.i.i.i.i.i.i, %bb.ai ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.144.0.i.i.i.i.i.i, %bb.ai ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kp = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.kq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.kr = zext nneg i16 %i.kq to i64
  %i.ks = and i16 %i.kp, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.kt = sub nsw i64 0, %i.kr
  %i.ku = getelementptr inbounds [24 x i8], ptr %.sroa.9.1.i.i.i.i.i.i, i64 %i.kt ; 3 uses
  %i.kv = add i64 %i.kj, -1                       ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 -24
  %.sroa.03.0.copyload4.i.i.i.i.i.i.i = load ptr, ptr %i.kw, align 8, !noalias !179549 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.03.0.copyload4.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ku, i64 -8
end_hunk_7
begin_hunk_8_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags0B9_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !198885)
  %i.gc = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !198886, !noalias !198848, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !198887
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.do), !noalias !198888
  br label %bb.bl

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bl, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !198842, !noalias !198843, !noundef !416 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.gg = load ptr, ptr %i.n, align 8, !alias.scope !198842, !noalias !198843, !nonnull !416, !noundef !416
  %i.gh = mul nuw i64 %i.ge, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %i.gh, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !198845
  br label %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !198848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !198844
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.dh
  br i1 %.not.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.aw

bb.bm:                                            ; preds = %bb.av
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.bn:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.p) #73, !noalias !198833
  br label %.body39.thread

_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bk, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !198836
  %.sroa.420.8.copyload.i = load i64, ptr %i.o, align 8, !noalias !198889
  %.sroa.621.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.621.8.copyload.i = load ptr, ptr %.sroa.621.8..sroa_idx.i, align 8, !noalias !198889
  %.sroa.722.8.copyload.i = load i64, ptr %i.de, align 8, !noalias !198889
  %.sroa.823.i.sroa.0.0.copyload238 = load i64, ptr %i.dd, align 8, !noalias !198889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.823.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !198889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !198828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !198827
  br label %bb.bq

bb.bo:                                            ; preds = %bb.am
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !198823
  unreachable

bb.bp:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !198822
  store i8 3, ptr %i.ck, align 8, !noalias !198822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.319.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.823.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8151)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12155.sroa.6)
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10136.sroa.15.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10140.sroa.12.sroa.10)
  br label %common.ret

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_4Tags4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bu, %bb.bs, %.body39, %.body39.thread, %bb.ah
  %.pn4 = phi { ptr, i32 } [ %i.cd, %bb.ah ], [ %i.cd, %.body39 ], [ %.pn.i, %.body39.thread ], [ %i.gq, %bb.bu ], [ %i.gn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10140.sroa.12.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10136.sroa.15.sroa.10)
  br label %bb.cy

bb.bq:                                            ; preds = %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.as
  %.sroa.823.i.sroa.0.0 = phi i64 [ %.sroa.823.i.sroa.0.0.copyload238, %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %.sroa.616.i.sroa.0.0.copyload, %bb.as ] ; 2 uses
  %.sroa.018.0.i = phi i8 [ -1, %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.cm, %bb.as ] ; 2 uses
  %.sroa.420.0.i = phi i64 [ %.sroa.420.8.copyload.i, %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %.sroa.37.0.copyload.i, %bb.as ] ; 2 uses
  %.sroa.621.0.i = phi ptr [ %.sroa.621.8.copyload.i, %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %.sroa.410.0.copyload.i, %bb.as ] ; 2 uses
  %.sroa.722.0.i = phi i64 [ %.sroa.722.8.copyload.i, %_RNCNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB9_4Tags4list00CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %.sroa.513.0.copyload.i, %bb.as ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8151, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.319.i, i64 7, i1 false), !noalias !198890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12155.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.823.i.sroa.5, i64 16, i1 false), !noalias !198890
  store i8 1, ptr %i.ck, align 8, !noalias !198822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.319.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.823.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3157, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8151, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8161.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12155.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8151)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12155.sroa.6)
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198891)
  call void @llvm.experimental.noalias.scope.decl(metadata !198892)
  %.not.i46 = icmp eq i8 %.sroa.018.0.i, -1
  br i1 %.not.i46, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !198893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !198893
  store i8 %.sroa.018.0.i, ptr %i.i, align 8, !noalias !198894
  %.sroa.3157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3157.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3157, i64 7, i1 false), !noalias !198894
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.420.0.i, ptr %.sroa.4158.0..sroa_idx, align 8, !noalias !198894
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.621.0.i, ptr %.sroa.6159.0..sroa_idx, align 8, !noalias !198894
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.722.0.i, ptr %.sroa.7160.0..sroa_idx, align 8, !noalias !198894
  %.sroa.8161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sroa.823.i.sroa.0.0, ptr %.sroa.8161.0..sroa_idx, align 8, !noalias !198894
  %.sroa.8161.sroa.3.0..sroa.8161.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8161.sroa.3.0..sroa.8161.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8161.sroa.3, i64 16, i1 false), !noalias !198894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !198893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !198895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !198895
  store ptr %i.gl, ptr %i.f, align 8, !noalias !198895
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !198895
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %i.gm, align 8, !noalias !198895
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !198895
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @1515, ptr noundef nonnull %i.f)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.bs, !noalias !198896

bb.bs:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.br
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_4Tags4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bt, !noalias !198896

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !198895
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !198895
  store i64 18, ptr %i.h, align 8, !noalias !198895
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1516)
          to label %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00Bb_.exit.i unwind label %bb.bs, !noalias !198897

bb.bt:                                            ; preds = %bb.bs
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !198896
  unreachable

_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00Bb_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !198895
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit unwind label %bb.bu

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit.thread: ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10140.sroa.12.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8161.sroa.3, i64 16, i1 false), !alias.scope !198897, !noalias !198898
  br label %bb.bv

bb.bu:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00Bb_.exit.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_4Tags4list0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit: ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !198893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !198893
  %.sroa.0139.0.copyload = load i8, ptr %i.j, align 8, !noalias !198899 ; 2 uses
  %.sroa.10140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.10140.sroa.0.sroa.0.0.copyload = load i56, ptr %.sroa.10140.0..sroa_idx, align 1, !noalias !198899
  %.sroa.10140.sroa.8.0..sroa.10140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.10140.sroa.8.0.copyload = load i64, ptr %.sroa.10140.sroa.8.0..sroa.10140.0..sroa_idx.sroa_idx, align 8, !noalias !198899 ; 2 uses
  %.sroa.10140.sroa.10.0..sroa.10140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.10140.sroa.10.0.copyload = load ptr, ptr %.sroa.10140.sroa.10.0..sroa.10140.0..sroa_idx.sroa_idx, align 8, !noalias !198899 ; 2 uses
  %.sroa.10140.sroa.11.0..sroa.10140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.10140.sroa.11.0.copyload = load i64, ptr %.sroa.10140.sroa.11.0..sroa.10140.0..sroa_idx.sroa_idx, align 8, !noalias !198899
  %.sroa.10140.sroa.12.0..sroa.10140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.10140.sroa.12.sroa.0.0.copyload = load i64, ptr %.sroa.10140.sroa.12.0..sroa.10140.0..sroa_idx.sroa_idx, align 8, !noalias !198899 ; 2 uses
  %.sroa.10140.sroa.12.sroa.10.0..sroa.10140.sroa.12.0..sroa.10140.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10140.sroa.12.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10140.sroa.12.sroa.10.0..sroa.10140.sroa.12.0..sroa.10140.0..sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !noalias !198899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !198893
  %.not.i50 = icmp eq i8 %.sroa.0139.0.copyload, -1
  br i1 %.not.i50, label %bb.bv, label %bb.cz

bb.bv:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit.thread
  %.sroa.10140.sroa.8.0267 = phi i64 [ %.sroa.420.0.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit.thread ], [ %.sroa.10140.sroa.8.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit ]
  %.sroa.10140.sroa.10.0265 = phi ptr [ %.sroa.621.0.i, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit.thread ], [ %.sroa.10140.sroa.10.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit ] ; 2 uses
  %.sroa.10140.sroa.12.sroa.0.0261 = phi i64 [ %.sroa.823.i.sroa.0.0, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit.thread ], [ %.sroa.10140.sroa.12.sroa.0.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB36_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB49_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags00EB4b_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10140.sroa.12.sroa.10)
  %i.gr = ptrtoint ptr %.sroa.10140.sroa.10.0265 to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10136.sroa.15.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.gs = inttoptr i64 %.sroa.10140.sroa.8.0267 to ptr ; 5 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.gs, align 16, !noalias !198900
  %i.gt = icmp eq ptr %.sroa.10140.sroa.10.0265, null
  br i1 %i.gt, label %bb.bw, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.bv
  %i.gu = mul i64 %i.gr, 136                      ; 2 uses
  %3 = add i64 %i.gu, 136
  %4 = icmp ult i64 %3, -15
  call void @llvm.assume(i1 %4)
  %i.gv = and i64 %i.gu, -16                      ; 2 uses
  %5 = add i64 %i.gv, 144                         ; 2 uses
  %i.gw = add i64 %i.gr, 17
  %i.gx = add i64 %i.gw, %5                       ; 3 uses
  %6 = icmp uge i64 %i.gx, %5
  call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.gx, 9223372036854775793
  call void @llvm.assume(i1 %7)
  %i.gy = sub i64 -144, %i.gv
  %i.gz = getelementptr inbounds i8, ptr %i.gs, i64 %i.gy
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %.sroa.511.0.i.i.i = phi ptr [ undef, %bb.bv ], [ %i.gz, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sroa.410.0.i.i.i = phi i64 [ undef, %bb.bv ], [ %i.gx, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sink.i.i.i.i51 = phi i64 [ 0, %bb.bv ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hb = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.hc = getelementptr i8, ptr %i.gs, i64 %i.gr
  %i.hd = getelementptr i8, ptr %i.hc, i64 1
  store i64 %.sink.i.i.i.i51, ptr %i.t, align 8, !alias.scope !198901
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.410.0.i.i.i, ptr %.sroa.5213.0..sroa_idx, align 8, !alias.scope !198901
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.511.0.i.i.i, ptr %.sroa.6214.0..sroa_idx, align 8, !alias.scope !198901
  %.sroa.7215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.gs, ptr %.sroa.7215.0..sroa_idx, align 8, !alias.scope !198901
  %.sroa.8216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.ha, ptr %.sroa.8216.0..sroa_idx, align 8, !alias.scope !198901
  %.sroa.9217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.hd, ptr %.sroa.9217.0..sroa_idx, align 8, !alias.scope !198901
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store <16 x i1> %i.hb, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !198901
  %.sroa.11219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %.sroa.10140.sroa.12.sroa.0.0261, ptr %.sroa.11219.0..sroa_idx, align 8, !alias.scope !198901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !198902
  %i.he = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 9 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 4 uses
  %i.hg = load i8, ptr %i.hf, align 8, !range !428, !noalias !198903, !noundef !416
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i: ; preds = %bb.bw
  %.pre.i.i.i.i.i = load i64, ptr %i.he, align 8, !noalias !198904
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !198904
  br label %bb.bx

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.bw
  %i.hi = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i.i unwind label %bb.cq, !noalias !198902 ; 2 uses

.noexc.i.i:                                       ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.hj = extractvalue { i64, i64 } %i.hi, 0
  %i.hk = extractvalue { i64, i64 } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !noalias !198905
  store i8 1, ptr %i.hf, align 8, !noalias !198905
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i
  %.pre-phi27.i.i = phi i64 [ %i.hk, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.hj, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.hm = add i64 %.pre-phi.i.i, 1
  store i64 %i.hm, ptr %i.he, align 8, !noalias !198904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !198902
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  store i64 %.pre-phi.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !198902
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  store i64 %.pre-phi27.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !198902
  call void @llvm.experimental.noalias.scope.decl(metadata !198906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !198907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !198908
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val3.i.i.i = load i64, ptr %i.hn, align 8, !noalias !198907 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.not.i.i54 = icmp eq i64 %.val3.i.i.i, 0
  br i1 %.not.i.i54, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.by, !prof !439

bb.by:                                            ; preds = %bb.bx
  %i.hp = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef %.val3.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.cp, !noalias !198909 ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !198910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !198908
  call void @llvm.experimental.noalias.scope.decl(metadata !198911)
  call void @llvm.experimental.noalias.scope.decl(metadata !198912)
  call void @llvm.experimental.noalias.scope.decl(metadata !198913)
  call void @llvm.experimental.noalias.scope.decl(metadata !198914)
  call void @llvm.experimental.noalias.scope.decl(metadata !198915)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %.promoted.i.i.i.i.i.i.i55 = load i64, ptr %i.hq, align 8, !alias.scope !198916, !noalias !198917 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i.i.i.i.i)
  %i.hr = icmp eq i64 %.promoted.i.i.i.i.i.i.i55, 0
  br i1 %i.hr, label %bb.cr, label %.lr.ph.i.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i.i56:                           ; preds = %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.promoted16.i.i.i.i.i.i.i = load i16, ptr %i.ht, align 8, !alias.scope !198918, !noalias !198917
  %.promoted17.i.i.i.i.i.i.i = load ptr, ptr %i.hs, align 8, !alias.scope !198914, !noalias !198919
  %.promoted20.i.i.i.i.i.i.i = load ptr, ptr %i.hu, align 8, !alias.scope !198914, !noalias !198919
  br label %bb.bz

bb.bz:                                            ; preds = %bb.co, %.lr.ph.i.i.i.i.i.i.i56
  %.lcssa22.i.i.i.i.i.i.i = phi ptr [ %.promoted20.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i56 ], [ %.lcssa21.i.i.i.i.i.i.i, %bb.co ] ; 2 uses
  %.lcssa1319.i.i.i.i.i.i.i = phi ptr [ %.promoted17.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i56 ], [ %.lcssa1318.i.i.i.i.i.i.i, %bb.co ] ; 2 uses
  %i.hy = phi i16 [ %.promoted16.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i56 ], [ %i.ii, %bb.co ] ; 2 uses
  %i.hz = phi i64 [ %.promoted.i.i.i.i.i.i.i55, %.lr.ph.i.i.i.i.i.i.i56 ], [ %i.il, %bb.co ]
  call void @llvm.experimental.noalias.scope.decl(metadata !198920)
  call void @llvm.experimental.noalias.scope.decl(metadata !198921)
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.hy, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store ptr %i.ie, ptr %i.hu, align 8, !alias.scope !198918, !noalias !198917
  store ptr %i.id, ptr %i.hs, align 8, !alias.scope !198918, !noalias !198917
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bz, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ia = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa22.i.i.i.i.i.i.i, %bb.bz ] ; 2 uses
  %i.ib = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1319.i.i.i.i.i.i.i, %bb.bz ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ia, align 16, !noalias !198922
  %i.ic = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 -2176 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ic to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.bz
  %.lcssa21.i.i.i.i.i.i.i = phi ptr [ %i.ie, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa22.i.i.i.i.i.i.i, %bb.bz ]
  %.lcssa1318.i.i.i.i.i.i.i = phi ptr [ %i.id, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1319.i.i.i.i.i.i.i, %bb.bz ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.hy, %bb.bz ] ; 3 uses
  %i.if = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.ig = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ih = zext nneg i16 %i.ig to i64
  %i.ii = and i16 %i.if, %.lcssa.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ij = sub nsw i64 0, %i.ih
  %i.ik = getelementptr inbounds [136 x i8], ptr %.lcssa1318.i.i.i.i.i.i.i, i64 %i.ij ; 4 uses
  %i.il = add i64 %i.hz, -1                       ; 4 uses
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -136
  %.sroa.02.0.copyload3.i.i.i.i.i.i.i = load i64, ptr %i.im, align 8, !noalias !198923 ; 6 uses
  %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ik, i64 -128
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i, align 8, !noalias !198923 ; 4 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ik, i64 -120
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !198923 ; 3 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ik, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.sroa.6.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx4.sroa_idx.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !198923
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.02.0.copyload3.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2o_8adapters3map8map_foldBN_TBO_NtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEuNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5z_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace15list_table_tags0s_0NCINvNvB2i_8for_each4callB3V_NCINvXs1i_NtB8_3mapINtB8D_7HashMapBO_B3Z_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2m_7collect6ExtendB3V_E6extendINtB3o_3MapINtNtNtNtB9e_11collections4hash3map8IntoIterBO_B1q_EB5p_EE0E0E0EB5B_.exit.loopexit.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs11TagContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !198924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.sroa.6.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !198925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !198926
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !198924 ; 5 uses
  %.sroa.519.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.519.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !198924 ; 5 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !198924
  %i.in = load <2 x i64>, ptr %i.hv, align 8, !noalias !198924
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.hw), !noalias !198927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !198924
  store i64 %.sroa.02.0.copyload3.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !198926
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store i64 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store ptr %.sroa.519.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store i64 %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  store <2 x i64> %i.in, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !198926
  call void @llvm.experimental.noalias.scope.decl(metadata !198928)
  %.val.i.i.i.i.i.i.i.i.i.i.i57 = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !198929, !noalias !198930, !noundef !416
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !198929, !noalias !198930, !noundef !416
  %i.io = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls(i64 %.val.i.i.i.i.i.i.i.i.i.i.i57, i64 %.val6.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b), !noalias !198931 ; 2 uses
  %i.ip = load i64, ptr %i.ho, align 8, !alias.scope !198932, !noalias !198933, !noundef !416
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.cb, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !426

bb.cb:                                            ; preds = %bb.ca
  %i.ir = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cj, !noalias !198930 ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.val.i.i.i.i.i.i.i.i.i.i.i.i58 = load ptr, ptr %i.e, align 8, !alias.scope !198934, !noalias !198935, !nonnull !416, !noundef !416 ; 8 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hx, align 8, !alias.scope !198934, !noalias !198935, !noundef !416 ; 4 uses
  %i.is = lshr i64 %i.io, 57
  %i.it = trunc nuw nsw i64 %i.is to i8           ; 3 uses
  %i.iu = insertelement <16 x i8> poison, i8 %i.it, i64 0
  %i.iv = shufflevector <16 x i8> %i.iu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.io, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %bb.ce ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ce ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ce ]
  %i.iw = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contents11TagContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jv, %bb.ce ]
end_hunk_8
begin_hunk_9_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches0B9_:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %i.ch, ptr %i.ci, align 8, !noalias !202646
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 16, !noalias !202646
  br label %bb.ap

.body40.thread:                                   ; preds = %bb.an, %bb.ao, %bb.at
  %.pn2.i = phi { ptr, i32 } [ %i.cu, %bb.at ], [ %i.cj, %bb.an ], [ %i.cj, %bb.ao ]
  store i8 2, ptr %i.cn, align 8, !noalias !202646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset13list_branches0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1906) #72
          to label %.noexc42 unwind label %.body40

.noexc42:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.aj
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1906) #72
          to label %.noexc43 unwind label %.body40

.noexc43:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ap
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.cl = load i8, ptr %i.ck, align 16, !range !481, !noalias !202646, !noundef !416
  %cond.i.i39 = icmp eq i8 %i.cl, 3
  br i1 %cond.i.i39, label %bb.ao, label %.body40.thread

bb.ao:                                            ; preds = %bb.an
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches5fetch0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.cm)
          to label %.body40.thread unwind label %bb.au, !noalias !202647

bb.ap:                                            ; preds = %bb.ak, %bb.aj
  %i.cn = phi ptr [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke fastcc void @_RNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtB7_8Branches4list0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.p, ptr noundef nonnull align 8 %i.co, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.ap
  %i.cp = load i8, ptr %i.p, align 8, !range !422, !alias.scope !202647, !noalias !202648, !noundef !416 ; 3 uses
  %i.cq = icmp eq i8 %i.cp, -2
  br i1 %i.cq, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.cs = load i8, ptr %i.cr, align 16, !range !481, !noalias !202646, !noundef !416
  %cond.i4.i = icmp eq i8 %i.cs, 3
  br i1 %cond.i4.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtNtCshkPeWWG1flk_5lance7dataset4refsNtBJ_8Branches5fetch0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ct)
          to label %bb.aw unwind label %bb.at, !noalias !202647

bb.at:                                            ; preds = %bb.as
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body40.thread

bb.au:                                            ; preds = %bb.ao
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !202647
  unreachable

bb.av:                                            ; preds = %bb.aq
  store i8 3, ptr %i.cn, align 8, !noalias !202646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10129.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10133.sroa.17)
  br label %common.ret

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset13list_branches0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ba, %bb.ay, %bb.ah, %.body40, %.body40.thread, %bb.ai
  %.pn4 = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.by, %bb.ah ], [ %.pn2.i, %.body40.thread ], [ %i.by, %.body40 ], [ %i.dc, %bb.ba ], [ %i.cz, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10133.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10129.sroa.13)
  br label %bb.cn

bb.aw:                                            ; preds = %bb.as, %bb.ar
  store i8 1, ptr %i.cn, align 8, !noalias !202646
  %.sroa.3145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3145.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3145.0..sroa_idx, i64 7, i1 false)
  %.sroa.3145.sroa.2.0..sroa.3145.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3145.sroa.2.0.copyload = load ptr, ptr %.sroa.3145.sroa.2.0..sroa.3145.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3145.sroa.3.0..sroa.3145.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.cw = load <2 x i64>, ptr %.sroa.3145.sroa.3.0..sroa.3145.0..sroa_idx.sroa_idx, align 8
  %.sroa.3145.sroa.3.0.copyload = load i64, ptr %.sroa.3145.sroa.3.0..sroa.3145.0..sroa_idx.sroa_idx, align 8
  %.sroa.3145.sroa.5.0..sroa.3145.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.3145.sroa.5.0.copyload = load i64, ptr %.sroa.3145.sroa.5.0..sroa.3145.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3145.sroa.6.0..sroa.3145.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3145.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3145.sroa.6.0..sroa.3145.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202650)
  %.not.i48 = icmp eq i8 %i.cp, -1
  br i1 %.not.i48, label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !202651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !202651
  store i8 %i.cp, ptr %i.k, align 8, !noalias !202652
  %.sroa.3145.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3145.0..sroa_idx146, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3145.sroa.0, i64 7, i1 false), !noalias !202652
  %.sroa.3145.sroa.2.0..sroa.3145.0..sroa_idx146.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.3145.sroa.2.0.copyload, ptr %.sroa.3145.sroa.2.0..sroa.3145.0..sroa_idx146.sroa_idx, align 8, !noalias !202652
  %.sroa.3145.sroa.3.0..sroa.3145.0..sroa_idx146.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %i.cw, ptr %.sroa.3145.sroa.3.0..sroa.3145.0..sroa_idx146.sroa_idx, align 8, !noalias !202652
  %.sroa.3145.sroa.5.0..sroa.3145.0..sroa_idx146.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %.sroa.3145.sroa.5.0.copyload, ptr %.sroa.3145.sroa.5.0..sroa.3145.0..sroa_idx146.sroa_idx, align 8, !noalias !202652
  %.sroa.3145.sroa.6.0..sroa.3145.0..sroa_idx146.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3145.sroa.6.0..sroa.3145.0..sroa_idx146.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3145.sroa.6, i64 16, i1 false), !noalias !202652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !202651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !202653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !202653
  store ptr %i.cx, ptr %i.h, align 8, !noalias !202653
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !202653
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.cy, align 8, !noalias !202653
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !202653
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @1552, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.ay, !noalias !202654

bb.ay:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.ax
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset13list_branches0ECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.az, !noalias !202654

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !202653
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !202653
  store i64 18, ptr %i.j, align 8, !noalias !202653
  invoke void @_RNvXs1_NtCsjqC71KfQTl6_15lance_namespace5errorNtNtCs63DIHKhvmTb_10lance_core5error5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_14NamespaceErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1553)
          to label %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00Bb_.exit.i unwind label %bb.ay, !noalias !202655

bb.az:                                            ; preds = %bb.ay
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !202654
  unreachable

_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00Bb_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !202653
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit unwind label %bb.ba

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit.thread: ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10133.sroa.17, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3145.sroa.6, i64 16, i1 false), !alias.scope !202655, !noalias !202656
  br label %bb.bb

bb.ba:                                            ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00Bb_.exit.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCshkPeWWG1flk_5lance7datasetNtBJ_7Dataset13list_branches0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit: ; preds = %_RNCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB9_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !202651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !202651
  %.sroa.0132.0.copyload = load i8, ptr %i.l, align 8, !noalias !202657 ; 2 uses
  %.sroa.10133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.10133.sroa.0.sroa.0.0.copyload = load i56, ptr %.sroa.10133.0..sroa_idx, align 1, !noalias !202657
  %.sroa.10133.sroa.8.0..sroa.10133.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10133.sroa.8.0.copyload = load ptr, ptr %.sroa.10133.sroa.8.0..sroa.10133.0..sroa_idx.sroa_idx, align 8, !noalias !202657 ; 2 uses
  %.sroa.10133.sroa.11.0..sroa.10133.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.10133.sroa.11.0.copyload = load i64, ptr %.sroa.10133.sroa.11.0..sroa.10133.0..sroa_idx.sroa_idx, align 8, !noalias !202657 ; 2 uses
  %.sroa.10133.sroa.13.0..sroa.10133.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.10133.sroa.13.0.copyload = load i64, ptr %.sroa.10133.sroa.13.0..sroa.10133.0..sroa_idx.sroa_idx, align 8, !noalias !202657
  %.sroa.10133.sroa.15.0..sroa.10133.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.10133.sroa.15.0.copyload = load i64, ptr %.sroa.10133.sroa.15.0..sroa.10133.0..sroa_idx.sroa_idx, align 8, !noalias !202657 ; 2 uses
  %.sroa.10133.sroa.17.0..sroa.10133.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10133.sroa.17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10133.sroa.17.0..sroa.10133.0..sroa_idx.sroa_idx, i64 16, i1 false), !noalias !202657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !202651
  %.not.i52 = icmp eq i8 %.sroa.0132.0.copyload, -1
  br i1 %.not.i52, label %bb.bb, label %bb.co

bb.bb:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit.thread
  %.sroa.10133.sroa.8.0243 = phi ptr [ %.sroa.3145.sroa.2.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit.thread ], [ %.sroa.10133.sroa.8.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit ] ; 6 uses
  %.sroa.10133.sroa.11.0241 = phi i64 [ %.sroa.3145.sroa.3.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit.thread ], [ %.sroa.10133.sroa.11.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit ] ; 4 uses
  %.sroa.10133.sroa.15.0237 = phi i64 [ %.sroa.3145.sroa.5.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit.thread ], [ %.sroa.10133.sroa.15.0.copyload, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsENtNtCs63DIHKhvmTb_10lance_core5error5ErrorE7map_errB39_NCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB4c_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace19list_table_branches00EB4e_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10133.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10129.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10133.sroa.8.0243) ]
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.10133.sroa.8.0243, align 16, !noalias !202658
  %i.dd = icmp eq i64 %.sroa.10133.sroa.11.0241, 0
  br i1 %i.dd, label %bb.bc, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.bb
  %i.de = mul i64 %.sroa.10133.sroa.11.0241, 144  ; 2 uses
  %3 = add i64 %i.de, 144                         ; 2 uses
  %4 = add i64 %.sroa.10133.sroa.11.0241, 17
  %i.df = add i64 %4, %3                          ; 3 uses
  %5 = icmp uge i64 %i.df, %3
  call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.df, 9223372036854775793
  call void @llvm.assume(i1 %6)
  %7 = sub i64 -144, %i.de
  %i.dg = getelementptr inbounds i8, ptr %.sroa.10133.sroa.8.0243, i64 %7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %.sroa.511.0.i.i.i = phi ptr [ undef, %bb.bb ], [ %i.dg, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sroa.410.0.i.i.i = phi i64 [ undef, %bb.bb ], [ %i.df, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.bb ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.10133.sroa.8.0243, i64 16
  %i.di = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.dj = getelementptr i8, ptr %.sroa.10133.sroa.8.0243, i64 %.sroa.10133.sroa.11.0241
  %i.dk = getelementptr i8, ptr %i.dj, i64 1
  store i64 %.sink.i.i.i.i, ptr %i.o, align 8, !alias.scope !202659
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.410.0.i.i.i, ptr %.sroa.5194.0..sroa_idx, align 8, !alias.scope !202659
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.511.0.i.i.i, ptr %.sroa.6195.0..sroa_idx, align 8, !alias.scope !202659
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.10133.sroa.8.0243, ptr %.sroa.7196.0..sroa_idx, align 8, !alias.scope !202659
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.dh, ptr %.sroa.8197.0..sroa_idx, align 8, !alias.scope !202659
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.dk, ptr %.sroa.9198.0..sroa_idx, align 8, !alias.scope !202659
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store <16 x i1> %i.di, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !202659
  %.sroa.11200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.sroa.10133.sroa.15.0237, ptr %.sroa.11200.0..sroa_idx, align 8, !alias.scope !202659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !202660
  %i.dl = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 4 uses
  %i.dn = load i8, ptr %i.dm, align 8, !range !428, !noalias !202661, !noundef !416
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i: ; preds = %bb.bc
  %.pre.i.i.i.i.i = load i64, ptr %i.dl, align 8, !noalias !202662
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !202662
  br label %bb.bd

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.bc
  %i.dp = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i.i unwind label %bb.cf, !noalias !202660 ; 2 uses

.noexc.i.i:                                       ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.dq = extractvalue { i64, i64 } %i.dp, 0
  %i.dr = extractvalue { i64, i64 } %i.dp, 1      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !noalias !202663
  store i8 1, ptr %i.dm, align 8, !noalias !202663
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i
  %.pre-phi49.i.i = phi i64 [ %i.dr, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.dq, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dt = add i64 %.pre-phi.i.i, 1
  store i64 %i.dt, ptr %i.dl, align 8, !noalias !202662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !202660
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  store i64 %.pre-phi.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !202660
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store i64 %.pre-phi49.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !202660
  call void @llvm.experimental.noalias.scope.decl(metadata !202664)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !202665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !noalias !202666
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val3.i.i.i = load i64, ptr %i.du, align 8, !noalias !202665 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.not.i.i = icmp eq i64 %.val3.i.i.i, 0
  br i1 %.not.i.i, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15branch_contents14BranchContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.be, !prof !439

.body.i.i.i:                                      ; preds = %bb.bv, %bb.bu
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #73, !noalias !202667
  br label %.body.i.i

bb.be:                                            ; preds = %bb.bd
  %i.dw = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15branch_contents14BranchContentsEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef %.val3.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15branch_contents14BranchContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.ce, !noalias !202668 ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15branch_contents14BranchContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !202669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !noalias !202666
  call void @llvm.experimental.noalias.scope.decl(metadata !202670)
  call void @llvm.experimental.noalias.scope.decl(metadata !202671)
  call void @llvm.experimental.noalias.scope.decl(metadata !202672)
  call void @llvm.experimental.noalias.scope.decl(metadata !202673)
  call void @llvm.experimental.noalias.scope.decl(metadata !202674)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.6.i.i.i.i.i.i.i)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !202673, !noalias !202675 ; 2 uses
  %i.dy = icmp eq i64 %.promoted.i.i.i.i.i.i.i, 0
  br i1 %i.dy, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models15branch_contents14BranchContentsEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.promoted24.i.i.i.i.i.i.i = load i16, ptr %i.ea, align 8, !alias.scope !202676, !noalias !202677
  %.promoted25.i.i.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !202673, !noalias !202675
  %.promoted28.i.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !202673, !noalias !202675
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.6.i.i.i.i.i.i.i, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.6.i.i.i.i.i.i.i, i64 32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.cd, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa1530.i.i.i.i.i.i.i = phi ptr [ %.promoted28.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.promoted9.i.i.i.i.i.i.i.i.i.i, %bb.cd ] ; 2 uses
  %.lcssa1627.i.i.i.i.i.i.i = phi ptr [ %.promoted25.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.promoted5.i.i.i.i.i.i.i.i.i.i, %bb.cd ] ; 2 uses
  %i.ep = phi i16 [ %.promoted24.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ez, %bb.cd ] ; 2 uses
  %i.eq = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fc, %bb.cd ]
  call void @llvm.experimental.noalias.scope.decl(metadata !202678)
  call void @llvm.experimental.noalias.scope.decl(metadata !202679)
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ep, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store ptr %i.ev, ptr %i.eb, align 8, !alias.scope !202676, !noalias !202677
  store ptr %i.eu, ptr %i.dz, align 8, !alias.scope !202676, !noalias !202677
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bf, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.er = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1530.i.i.i.i.i.i.i, %bb.bf ] ; 2 uses
  %i.es = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1627.i.i.i.i.i.i.i, %bb.bf ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.er, align 16, !noalias !202680
  %i.et = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -2304 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.et to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.bf
  %.promoted9.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ev, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1530.i.i.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.promoted5.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1627.i.i.i.i.i.i.i, %bb.bf ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ep, %bb.bf ] ; 3 uses
  %i.ew = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.ex = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = and i16 %i.ew, %.lcssa.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.fa = sub nsw i64 0, %i.ey
  %i.fb = getelementptr inbounds [144 x i8], ptr %.promoted5.i.i.i.i.i.i.i.i.i.i, i64 %i.fa ; 4 uses
  %i.fc = add i64 %i.eq, -1                       ; 5 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -144
  %.sroa.03.0.copyload4.i.i.i.i.i.i.i = load i64, ptr %i.fd, align 8, !noalias !202681 ; 6 uses
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fb, i64 -136
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !202681 ; 4 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fb, i64 -128
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !202681 ; 3 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fb, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.sroa.6.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !202682
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.03.0.copyload4.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ca, label %bb.bg

bb.bg:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCshkPeWWG1flk_5lance7dataset4refs14BranchContentsEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !202683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !202684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.sroa.6.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !202685
  %i.fe = load <2 x i64>, ptr %i.ec, align 8, !noalias !202684
  %i.ff = load i64, ptr %i.ed, align 8, !noalias !202684, !noundef !416
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ee, align 8, !noalias !202684
  %i.fg = load i64, ptr %i.eg, align 8, !noalias !202684, !noundef !416
  %i.fh = icmp eq i64 %i.fg, 0                    ; 2 uses
  br i1 %i.fh, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !202684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 40, i1 false), !noalias !202685
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.05.0.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.bg ], [ %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i, %bb.bh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !202686)
  call void @llvm.experimental.noalias.scope.decl(metadata !202687)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eh, align 8, !alias.scope !202688, !noalias !202684, !nonnull !416, !noundef !416 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !202688, !noalias !202684, !noundef !416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !202689)
  %i.fi = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fi, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTyNtNtB7_6string6StringEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.bi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTyNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bi ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fk = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
end_hunk_9
begin_hunk_10_@_RNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespace20retrieve_ops_metrics:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB5_18DirectoryNamespace20transaction_response(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [20 x i8], align 1                ; 3 uses
  %i.e = alloca [20 x i8], align 1                ; 3 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7155 = alloca [40 x i8], align 8         ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !416 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac)
          to label %bb.h unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !428, !noalias !213750, !noundef !416
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i: ; preds = %bb.c
  %.pre.i.i = load i64, ptr %i.ad, align 8, !noalias !213751
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !213751
  br label %bb.f

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.c
  %i.ah = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !noalias !213752
  store i8 1, ptr %i.ae, align 8, !noalias !213752
  br label %bb.f

bb.d:                                             ; preds = %bb.ci, %bb.e
  %.pn63.pn = phi { ptr, i32 } [ %.pn63.ph, %bb.ci ], [ %i.an, %bb.e ]
  %.sroa.014.0 = phi i1 [ %.sroa.014.1.ph, %bb.ci ], [ true, %bb.e ]
  %i.al = load i64, ptr %3, align 8, !range !418, !noundef !416
  %i.am = icmp ne i64 %i.al, -2
  %or.cond3 = and i1 %.sroa.014.0, %i.am
  br i1 %or.cond3, label %bb.cj, label %.thread358

bb.e:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i
  %.pre-phi411 = phi i64 [ %i.aj, %.noexc ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.ai, %.noexc ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i ] ; 2 uses
  %i.ao = add i64 %.pre-phi, 1
  store i64 %i.ao, ptr %i.ad, align 8, !noalias !213751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %.pre-phi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %.pre-phi411, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !213753
  %i.ap = tail call noundef dereferenceable_or_null(9) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 9, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213753 ; 6 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.i:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 9) #72
          to label %bb.ce unwind label %bb.i

bb.k:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ap, ptr noundef nonnull align 1 dereferenceable(9) @1531, i64 9, i1 false)
  %i.as = load i64, ptr %3, align 8, !range !418, !noundef !416 ; 6 uses
  %.not54 = icmp eq i64 %i.as, -2                 ; 3 uses
  br i1 %.not54, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.u, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.z, %bb.k
  %.sroa.11.0 = phi i64 [ 9, %bb.k ], [ %.sroa.11.1, %bb.z ], [ %.sroa.11.1, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.11.1, %bb.u ]
  %.sroa.8.0 = phi ptr [ %i.ap, %bb.k ], [ %.sroa.8.1, %bb.z ], [ %.sroa.8.1, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.8.1, %bb.u ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 9, %bb.k ], [ %.sroa.0.1, %bb.z ], [ %.sroa.0.1, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.0.1, %bb.u ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !213754
  %i.at = call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213754 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.invoke, label %bb.aj

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213755)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !213755, !noalias !213756, !nonnull !416, !noundef !416 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !213755, !noalias !213756, !noundef !416 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !213755, !noalias !213756, !noundef !416 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0                    ; 2 uses
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.val3.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !213757
  %i.bd = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit81
  %.sroa.0144.0374 = phi ptr [ %i.aw, %.lr.ph ], [ %.sroa.0144.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit81 ] ; 2 uses
  %.sroa.6.0373 = phi ptr [ %i.az, %.lr.ph ], [ %.sroa.6.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit81 ] ; 2 uses
  %.sroa.8146.0372 = phi i16 [ %i.be, %.lr.ph ], [ %i.bo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit81 ] ; 2 uses
  %.sroa.10147.0371 = phi i64 [ %i.bb, %.lr.ph ], [ %i.br, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit81 ]
  %.not12.i.i = icmp eq i16 %.sroa.8146.0372, 0
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %i.bg = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.sroa.6.0373, %bb.m ] ; 2 uses
  %i.bh = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.sroa.0144.0374, %bb.m ]
  %.val10.i.i = load <16 x i8>, ptr %i.bg, align 16, !noalias !213758
  %i.bi = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -384 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.bi to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.m
  %.sroa.6.1 = phi ptr [ %.sroa.6.0373, %bb.m ], [ %i.bk, %.lr.ph.i.i ]
  %.sroa.0144.1 = phi ptr [ %.sroa.0144.0374, %bb.m ], [ %i.bj, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.8146.0372, %bb.m ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bl = add i16 %.lcssa.i.i, -1
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = and i16 %i.bl, %.lcssa.i.i
  %i.bp = sub nsw i64 0, %i.bn
  %i.bq = getelementptr inbounds [24 x i8], ptr %.sroa.0144.1, i64 %i.bp
  %i.br = add i64 %.sroa.10147.0371, -1           ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call fastcc void @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6removeBO_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef align 8 dereferenceable(48) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213759)
  %i.bt = load i64, ptr %i.y, align 8, !range !421, !alias.scope !213759, !noundef !416 ; 3 uses
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit81, label %bb.af

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit81, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0225.0.copyload = load ptr, ptr %i.bv, align 8, !nonnull !416, !noundef !416 ; 6 uses
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.4226.0.copyload = load i64, ptr %.sroa.4226.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.5228.0.copyload = load i64, ptr %.sroa.5228.0..sroa_idx, align 8 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0225.0.copyload, align 16, !noalias !213760
  %i.bw = icmp eq i64 %.sroa.4226.0.copyload, 0   ; 2 uses
  br i1 %i.bw, label %bb.n, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.bx = mul i64 %.sroa.4226.0.copyload, 48      ; 2 uses
  %4 = add i64 %i.bx, 48                          ; 2 uses
  %5 = add i64 %.sroa.4226.0.copyload, 17
  %i.by = add i64 %5, %4                          ; 3 uses
  %6 = icmp uge i64 %i.by, %4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %i.by, 9223372036854775793
  tail call void @llvm.assume(i1 %7)
  %8 = sub i64 -48, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0225.0.copyload, i64 %8
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge
  %.sroa.511.0.i.i = phi ptr [ undef, %._crit_edge ], [ %i.bz, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 2 uses
  %.sroa.410.0.i.i = phi i64 [ undef, %._crit_edge ], [ %i.by, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 3 uses
  %.sink.i.i.i = phi i64 [ 0, %._crit_edge ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0225.0.copyload, i64 16 ; 2 uses
  %i.cb = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1) ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.0225.0.copyload, i64 %.sroa.4226.0.copyload
  %i.cd = getelementptr i8, ptr %i.cc, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.sink.i.i.i, ptr %i.x, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.4189.0..sroa_idx, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  store ptr %.sroa.0225.0.copyload, ptr %.sroa.6191.0..sroa_idx, align 8
  %.sroa.7192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  store ptr %i.ca, ptr %.sroa.7192.0..sroa_idx, align 8
  %.sroa.8193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.cd, ptr %.sroa.8193.0..sroa_idx, align 8
  %.sroa.9194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  store <16 x i1> %i.cb, ptr %.sroa.9194.0..sroa_idx, align 8
  %.sroa.11196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  store i64 %.sroa.5228.0.copyload, ptr %.sroa.11196.0..sroa_idx, align 8
  %i.ce = icmp eq i64 %.sroa.5228.0.copyload, 0
  br i1 %i.ce, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph382

.lr.ph382:                                        ; preds = %bb.n
  %i.cf = bitcast <16 x i1> %i.cb to i16
  %.sroa.7155.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7155.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7155, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph382, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ch = phi i64 [ %.sroa.5228.0.copyload, %.lr.ph382 ], [ %i.cv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %i.ci = phi i16 [ %i.cf, %.lr.ph382 ], [ %i.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  %.pre.i.i71376380 = phi ptr [ %.sroa.0225.0.copyload, %.lr.ph382 ], [ %.pre.i.i71375, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  %.promoted14.i.i75378379 = phi ptr [ %i.ca, %.lr.ph382 ], [ %.promoted14.i.i75377, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213761)
  call void @llvm.experimental.noalias.scope.decl(metadata !213762)
  %.not12.i.i69 = icmp eq i16 %i.ci, 0
  br i1 %.not12.i.i69, label %.lr.ph.i.i73, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit

._crit_edge.i.i79:                                ; preds = %.lr.ph.i.i73
  store ptr %i.cn, ptr %.sroa.7192.0..sroa_idx, align 8, !alias.scope !213763, !noalias !213764
  store ptr %i.cm, ptr %.sroa.6191.0..sroa_idx, align 8, !alias.scope !213763, !noalias !213764
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit

.lr.ph.i.i73:                                     ; preds = %bb.o, %.lr.ph.i.i73
  %i.cj = phi ptr [ %i.cn, %.lr.ph.i.i73 ], [ %.promoted14.i.i75378379, %bb.o ] ; 2 uses
  %i.ck = phi ptr [ %i.cm, %.lr.ph.i.i73 ], [ %.pre.i.i71376380, %bb.o ]
  %.val10.i.i76 = load <16 x i8>, ptr %i.cj, align 16, !noalias !213765
  %i.cl = icmp sgt <16 x i8> %.val10.i.i76, splat (i8 -1)
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -768 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %.cast.i.i77 = bitcast <16 x i1> %i.cl to i16   ; 2 uses
  %.not.i.i78 = icmp eq i16 %.cast.i.i77, 0
  br i1 %.not.i.i78, label %.lr.ph.i.i73, label %._crit_edge.i.i79

bb.p:                                             ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  store i16 %i.cs, ptr %.sroa.9194.0..sroa_idx, align 8, !alias.scope !213763, !noalias !213764
  store i64 %i.cv, ptr %.sroa.11196.0..sroa_idx, align 8, !alias.scope !213761, !noalias !213764
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.x)
  %.not363 = icmp eq i64 %i.as, -1
  br i1 %.not363, label %.thread241.thread, label %bb.ah

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.o, %._crit_edge.i.i79
  %.promoted14.i.i75377 = phi ptr [ %i.cn, %._crit_edge.i.i79 ], [ %.promoted14.i.i75378379, %bb.o ] ; 2 uses
  %.pre.i.i71375 = phi ptr [ %i.cm, %._crit_edge.i.i79 ], [ %.pre.i.i71376380, %bb.o ] ; 3 uses
  %.lcssa.i.i72 = phi i16 [ %.cast.i.i77, %._crit_edge.i.i79 ], [ %i.ci, %bb.o ] ; 3 uses
  %i.cp = add i16 %.lcssa.i.i72, -1
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i72, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = and i16 %i.cp, %.lcssa.i.i72            ; 4 uses
  %i.ct = sub nsw i64 0, %i.cr
  %i.cu = getelementptr inbounds [48 x i8], ptr %.pre.i.i71375, i64 %i.ct ; 2 uses
  %i.cv = add i64 %i.ch, -1                       ; 6 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -48
  %.sroa.0153.0.copyload = load i64, ptr %i.cw, align 8, !noalias !213761 ; 2 uses
  %.sroa.7155.0..sroa_idx = getelementptr inbounds i8, ptr %i.cu, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7155, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7155.0..sroa_idx, i64 40, i1 false)
  %.not56 = icmp eq i64 %.sroa.0153.0.copyload, -1
  br i1 %.not56, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.q

bb.q:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %.sroa.0153.0.copyload, ptr %i.w, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7155.0..sroa_idx156, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7155, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBN_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef align 8 dereferenceable(48) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.7155.24..sroa_idx)
          to label %bb.ac unwind label %bb.p

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit
  store i16 %i.cs, ptr %.sroa.9194.0..sroa_idx, align 8, !alias.scope !213763, !noalias !213764
  store i64 %i.cv, ptr %.sroa.11196.0..sroa_idx, align 8, !alias.scope !213761, !noalias !213764
  call void @llvm.experimental.noalias.scope.decl(metadata !213766)
  call void @llvm.experimental.noalias.scope.decl(metadata !213767)
  call void @llvm.experimental.noalias.scope.decl(metadata !213768)
  %i.cx = icmp eq i64 %i.cv, 0
  br i1 %i.cx, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.lcssa11.i.i.i = phi ptr [ %.lcssa10.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %.promoted14.i.i75377, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ] ; 2 uses
  %i.cy = phi i64 [ %i.dl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %i.cv, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ]
  %.lcssa47.i.i.i = phi ptr [ %.lcssa46.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %.pre.i.i71375, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ] ; 2 uses
  %i.cz = phi i16 [ %i.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %i.cs, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213769)
  %.not12.i.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  store ptr %i.de, ptr %.sroa.7192.0..sroa_idx, align 8, !alias.scope !213770
  store ptr %i.dd, ptr %.sroa.6191.0..sroa_idx, align 8, !alias.scope !213770
  br label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i.i
  %i.da = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.lcssa11.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.db = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.lcssa47.i.i.i, %.preheader.i.i.i ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.da, align 16, !noalias !213770
  %i.dc = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -768 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.dc to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.preheader.i.i.i
  %.lcssa10.i.i.i = phi ptr [ %i.de, %._crit_edge.i.i.i.i ], [ %.lcssa11.i.i.i, %.preheader.i.i.i ]
  %.lcssa46.i.i.i = phi ptr [ %i.dd, %._crit_edge.i.i.i.i ], [ %.lcssa47.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.cast.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.cz, %.preheader.i.i.i ] ; 3 uses
  %i.df = add i16 %.lcssa.i.i.i.i, -1
  %i.dg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = and i16 %i.df, %.lcssa.i.i.i.i
  %i.dj = sub nsw i64 0, %i.dh
  %i.dk = getelementptr inbounds [48 x i8], ptr %.lcssa46.i.i.i, i64 %i.dj ; 4 uses
  %i.dl = add i64 %i.cy, -1                       ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -48
  call void @llvm.experimental.noalias.scope.decl(metadata !213771)
  call void @llvm.experimental.noalias.scope.decl(metadata !213772)
  call void @llvm.experimental.noalias.scope.decl(metadata !213773)
  %.val.i.i.i.i.i.i = load i64, ptr %i.dm, align 8, !range !419, !alias.scope !213774, !noalias !213775, !noundef !416 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.dn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 -40
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !213774, !noalias !213775, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213776
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.r, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringBV_EE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !213777)
  call void @llvm.experimental.noalias.scope.decl(metadata !213778)
  %.val.i.i4.i.i.i.i = load i64, ptr %i.dp, align 8, !range !419, !alias.scope !213779, !noalias !213775, !noundef !416 ; 2 uses
  %i.dq = icmp eq i64 %.val.i.i4.i.i.i.i, 0
  br i1 %i.dq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dk, i64 -16
  %.val1.i.i5.i.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !213779, !noalias !213775, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i.i.i.i, i64 noundef %.val.i.i4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !213780
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.old3.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.old3.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.preheader.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.n, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringBT_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.ds = icmp eq i64 %.sroa.410.0.i.i, 0
  %or.cond = or i1 %i.bw, %i.ds
  br i1 %or.cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.t

bb.t:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i, i64 noundef %.sroa.410.0.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i) #68, !noalias !213781
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.t, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringBO_EE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.not57 = icmp eq i64 %i.as, -1
  br i1 %.not57, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.11.1 = phi i64 [ 9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.7159.0.copyload, %bb.aa ] ; 3 uses
  %.sroa.8.1 = phi ptr [ %i.ap, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %.sroa.5158.0.copyload, %bb.aa ] ; 3 uses
  %.sroa.0.1 = phi i64 [ 9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringB1m_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.as, %bb.aa ] ; 3 uses
  %i.dt = icmp eq i64 %i.ay, 0
  br i1 %i.dt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.bc, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aw, align 16, !noalias !213782
end_hunk_10
