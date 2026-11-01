Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.03?download=true
inline.NumInlined: 3287
inline.NumDeleted: 1477
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference22infer_file_schema_impl:bb.a
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef range(i64 0, 384307168202282326) %i.hn, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.bb, !dbg !40297

.noexc:                                           ; preds = %bb.az
  %i.hp = load i64, ptr %i.t, align 8, !dbg !40297, !range !1368, !noalias !39929, !noundef !1321
  %i.hq = trunc nuw i64 %i.hp to i1, !dbg !40298
  %i.hr = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !40299
  %i.hs = load i64, ptr %i.hr, align 8, !dbg !40299, !range !1344, !noalias !39929, !noundef !1321 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !40299 ; 2 uses
  br i1 %i.hq, label %bb.ba, label %bb.bc, !dbg !40298, !prof !1333

bb.ba:                                            ; preds = %.noexc
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !40300, !noalias !39929
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.hs, i64 %i.hu) #36
          to label %.noexc27 unwind label %bb.bb, !dbg !40301

.noexc27:                                         ; preds = %bb.ba
  unreachable

.body58:                                          ; preds = %bb.fi, %bb.ee, %bb.bb, %.body
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.qj, %bb.ee ], [ %i.hv, %bb.bb ], [ %i.sa, %bb.fi ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #35
          to label %.body61 unwind label %bb.fg, !dbg !40302

bb.bb:                                            ; preds = %bb.fj, %bb.ef, %bb.ba, %bb.az
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.bc:                                            ; preds = %.noexc
  %i.hw = load ptr, ptr %i.ht, align 8, !dbg !40303, !noalias !39929, !nonnull !1321, !noundef !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !40304, !noalias !39929
  store i64 %i.hs, ptr %i.ao, align 8, !dbg !40305, !alias.scope !39929
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !40305 ; 3 uses
  store ptr %i.hw, ptr %i.hx, align 8, !dbg !40305, !alias.scope !39929
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !40305 ; 4 uses
  store i64 %i.hn, ptr %i.hy, align 8, !dbg !40305, !alias.scope !39929
  %.idx = mul nuw nsw i64 %3, 24, !dbg !40306
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !40306
  %i.ia = icmp eq i64 %3, 0, !dbg !40307
  br i1 %i.ia, label %._crit_edge, label %.lr.ph, !dbg !39939

.lr.ph:                                           ; preds = %bb.bc
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 63
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !39940, !noundef !1321 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ie = load i8, ptr %i.id, align 8, !range !1513, !alias.scope !39940, !noundef !1321
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ih = load i8, ptr %i.ig, align 8, !alias.scope !39940, !noundef !1321 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !39940 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.7.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.il = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.in = load i64, ptr %5, align 8, !range !1684, !alias.scope !39940
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !39940 ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !39940 ; 5 uses
  %.idx.i32 = mul nuw nsw i64 %i.ir, 48
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.idx.i32 ; 2 uses
  %i.it = icmp eq i64 %i.ir, 0                    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.ix = load i8, ptr %i.iw, align 1, !range !1513, !alias.scope !39940
  %i.iy = trunc nuw i8 %i.ix to i1                ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 62
  %i.ja = load i8, ptr %i.iz, align 2, !range !1513, !alias.scope !39940
  %i.jb = trunc nuw i8 %i.ja to i1                ; 5 uses
  %.sroa.11.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.11.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.idx136.i = mul nuw nsw i64 %i.ir, 24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.idx136.i
  %.sroa.11.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.jd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.je = lshr i64 %i.ir, 56
  %i.jf = trunc nuw i64 %i.je to i8
  %i.jg = icmp ugt i64 %i.ir, -2882303761517117441 ; 2 uses
  %i.jh = add i8 %i.jf, 64
  %i.ji = call i8 @llvm.umin.i8(i8 %i.jh, i8 24)
  %.sroa.0.0.i.i96.i = zext nneg i8 %i.ji to i64
  %i.jj = load ptr, ptr %i.jd, align 8, !alias.scope !39940
  %i.jk = ptrtoint ptr %i.ip to i64
  %.sroa.11.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.11.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %..sroa.0.0.i.i96.i = select i1 %i.jg, i64 %i.jk, i64 %.sroa.0.0.i.i96.i ; 2 uses
  %..i = select i1 %i.jg, ptr %i.jj, ptr %i.jd
  br label %bb.bd, !dbg !39939

bb.bd:                                            ; preds = %.lr.ph, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference21infer_types_from_line.exit
  %.sroa.04.0149 = phi ptr [ %2, %.lr.ph ], [ %i.pv, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference21infer_types_from_line.exit ] ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.04.0149, i64 8, !dbg !40308
  %i.jm = load ptr, ptr %i.jl, align 8, !dbg !40308, !noundef !1321 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.04.0149, i64 16, !dbg !40309
  %i.jo = load i64, ptr %i.jn, align 8, !dbg !40309, !noundef !1321 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39944), !dbg !40310
  call void @llvm.experimental.noalias.scope.decl(metadata !39945), !dbg !40310
  call void @llvm.experimental.noalias.scope.decl(metadata !39940), !dbg !40310
  call void @llvm.experimental.noalias.scope.decl(metadata !39946), !dbg !40310
  call void @llvm.experimental.noalias.scope.decl(metadata !39947), !dbg !40310
  %.not.i28 = icmp eq i64 %i.jo, 0, !dbg !40311
  br i1 %.not.i28, label %.preheader, label %bb.be, !dbg !40311

bb.be:                                            ; preds = %bb.bd
  %i.jp = add nsw i64 %i.jo, -1, !dbg !40312      ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jp, !dbg !40312
  %i.jr = load i8, ptr %i.jq, align 1, !dbg !40313, !alias.scope !39944, !noundef !1321
  %i.js = icmp eq i8 %i.jr, 13, !dbg !40314
  %spec.select.i29 = select i1 %i.js, i64 %i.jp, i64 %i.jo, !dbg !40315
  br label %.preheader, !dbg !40315

.preheader:                                       ; preds = %bb.be, %bb.bd
  %.sroa.9.0168.i.ph = phi i64 [ 0, %bb.bd ], [ %spec.select.i29, %bb.be ]
  br label %bb.bf, !dbg !40316

bb.bf:                                            ; preds = %.preheader, %.backedge.i
  %.sroa.0.0171.i = phi i64 [ %i.kw, %.backedge.i ], [ 0, %.preheader ] ; 13 uses
  %.sroa.5.0169.i = phi ptr [ %.sroa.5.1.i, %.backedge.i ], [ %i.jm, %.preheader ] ; 16 uses
  %.sroa.9.0168.i = phi i64 [ %.sroa.9.1.i, %.backedge.i ], [ %.sroa.9.0168.i.ph, %.preheader ] ; 13 uses
  %i.jt = icmp eq i64 %.sroa.9.0168.i, 0, !dbg !40316
  br i1 %i.jt, label %bb.bg, label %bb.bh, !dbg !40316

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0169.i) ]
  br label %.loopexit140.i, !dbg !40317

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.if, label %bb.bk, label %.lr.ph.i.i.i.i33, !dbg !40318

.lr.ph.i.i.i.i33:                                 ; preds = %bb.bk, %bb.bh
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.5.0169.i, i64 %.sroa.9.0168.i, !dbg !40319
  br label %bb.bi, !dbg !40320

bb.bi:                                            ; preds = %bb.bj, %.lr.ph.i.i.i.i33
  %.sroa.02.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i33 ], [ %i.jz, %bb.bj ] ; 5 uses
  %i.jv = phi ptr [ %.sroa.5.0169.i, %.lr.ph.i.i.i.i33 ], [ %i.jy, %bb.bj ] ; 2 uses
  %.val7.i.i.i.i = load i8, ptr %i.jv, align 1, !dbg !40321, !alias.scope !39944, !noalias !39952, !noundef !1321 ; 2 uses
  %i.jw = icmp eq i8 %.val7.i.i.i.i, %i.ic, !dbg !40322
  %i.jx = icmp eq i8 %.val7.i.i.i.i, %i.ih
  %or.cond.i.i.i.i = or i1 %i.jw, %i.jx, !dbg !40322
  br i1 %or.cond.i.i.i.i, label %bb.bl, label %bb.bj, !dbg !40322

bb.bj:                                            ; preds = %bb.bi
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 1, !dbg !40323 ; 2 uses
  %i.jz = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !40324
  %i.ka = icmp eq ptr %i.jy, %i.ju, !dbg !40325
  br i1 %i.ka, label %.loopexit140.i, label %bb.bi, !dbg !40320

bb.bk:                                            ; preds = %bb.bh
  %i.kb = load i8, ptr %.sroa.5.0169.i, align 1, !dbg !40326, !alias.scope !39944, !noalias !39953, !noundef !1321
  %i.kc = icmp eq i8 %i.kb, %i.ij, !dbg !40327
  br i1 %i.kc, label %.lr.ph.i.i.i44, label %.lr.ph.i.i.i.i33, !dbg !40327

.lr.ph.i.i.i44:                                   ; preds = %bb.bk
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.5.0169.i, i64 %.sroa.9.0168.i, !dbg !40328
  br label %bb.bn, !dbg !40329

bb.bl:                                            ; preds = %bb.bi
  %i.ke = icmp ult i64 %.sroa.02.012.i.i.i.i, %.sroa.9.0168.i, !dbg !40330
  call void @llvm.assume(i1 %i.ke), !dbg !40331
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.5.0169.i, i64 %.sroa.02.012.i.i.i.i, !dbg !40332
  %i.kg = load i8, ptr %i.kf, align 1, !dbg !40333, !alias.scope !39944, !noalias !39953, !noundef !1321
  %i.kh = icmp eq i8 %i.kg, %i.ih, !dbg !40333
  br i1 %i.kh, label %.loopexit140.i, label %bb.bm, !dbg !40333

bb.bm:                                            ; preds = %bb.bt, %bb.bl
  %.sroa.016.0.i.i.i = phi i64 [ %i.kv, %bb.bt ], [ %.sroa.02.012.i.i.i.i, %bb.bl ], !dbg !40334 ; 2 uses
  %.sroa.0.0.i.i.i43 = phi i1 [ true, %bb.bt ], [ false, %bb.bl ], !dbg !40335
  %i.ki = add nuw nsw i64 %.sroa.016.0.i.i.i, 1, !dbg !40336 ; 2 uses
  %i.kj = sub nuw nsw i64 %.sroa.9.0168.i, %i.ki, !dbg !40337
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.5.0169.i, i64 %i.ki, !dbg !40338
  br label %.loopexit140.i, !dbg !40339

bb.bn:                                            ; preds = %bb.bp, %.lr.ph.i.i.i44
  %.sroa.05.053.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i44 ], [ %spec.select.i.i.i, %bb.bp ] ; 2 uses
  %.sroa.09.052.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i44 ], [ %i.kr, %bb.bp ] ; 4 uses
  %.sroa.012.051.i.i.i = phi ptr [ %.sroa.5.0169.i, %.lr.ph.i.i.i44 ], [ %i.kl, %bb.bp ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.i.i, i64 1, !dbg !40340 ; 2 uses
  %i.km = load i8, ptr %.sroa.012.051.i.i.i, align 1, !dbg !40341, !alias.scope !39944, !noalias !39953, !noundef !1321 ; 3 uses
  %i.kn = icmp eq i8 %i.km, %i.ij, !dbg !40342
  %i.ko = zext i1 %i.kn to i8, !dbg !40342        ; 2 uses
  %spec.select.i.i.i = xor i8 %.sroa.05.053.i.i.i, %i.ko, !dbg !40342
  %.not.i.i.i = icmp eq i8 %.sroa.05.053.i.i.i, %i.ko, !dbg !40343
  br i1 %.not.i.i.i, label %bb.bo, label %bb.bp, !dbg !40343

bb.bo:                                            ; preds = %bb.bn
  %i.kp = icmp eq i8 %i.km, %i.ic, !dbg !40344
  %i.kq = icmp eq i8 %i.km, %i.ih                 ; 2 uses
  %or.cond.i.i.i45 = or i1 %i.kp, %i.kq, !dbg !40344
  br i1 %or.cond.i.i.i45, label %bb.bq, label %bb.bp, !dbg !40344

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.kr = add i32 %.sroa.09.052.i.i.i, 1, !dbg !40345
  %i.ks = icmp eq ptr %i.kl, %i.kd, !dbg !40346
  br i1 %i.ks, label %.loopexit140.i, label %bb.bn, !dbg !40329

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.kq, label %bb.br, label %bb.bs, !dbg !40347

bb.br:                                            ; preds = %bb.bq
  %i.kt = zext i32 %.sroa.09.052.i.i.i to i64, !dbg !40348
  br label %.loopexit140.i, !dbg !40349

bb.bs:                                            ; preds = %bb.bq
  %i.ku = icmp eq i32 %.sroa.09.052.i.i.i, 0, !dbg !40350
  br i1 %i.ku, label %.loopexit140.i, label %bb.bt, !dbg !40350

bb.bt:                                            ; preds = %bb.bs
  %i.kv = zext i32 %.sroa.09.052.i.i.i to i64, !dbg !40351
  br label %bb.bm, !dbg !40352

.loopexit140.i:                                   ; preds = %bb.bj, %bb.bp, %bb.bs, %bb.br, %bb.bm, %bb.bl, %bb.bg
  %.sroa.20.1.i = phi i1 [ true, %bb.bg ], [ true, %bb.br ], [ true, %bb.bl ], [ false, %bb.bm ], [ true, %bb.bp ], [ true, %bb.bs ], [ true, %bb.bj ], !dbg !40353
  %.sroa.9.1.i = phi i64 [ 0, %bb.bg ], [ %.sroa.9.0168.i, %bb.br ], [ %.sroa.9.0168.i, %bb.bl ], [ %i.kj, %bb.bm ], [ %.sroa.9.0168.i, %bb.bp ], [ %.sroa.9.0168.i, %bb.bs ], [ %.sroa.9.0168.i, %bb.bj ], !dbg !40353
  %.sroa.5.1.i = phi ptr [ %.sroa.5.0169.i, %bb.bg ], [ %.sroa.5.0169.i, %bb.br ], [ %.sroa.5.0169.i, %bb.bl ], [ %i.kk, %bb.bm ], [ %.sroa.5.0169.i, %bb.bp ], [ %.sroa.5.0169.i, %bb.bs ], [ %.sroa.5.0169.i, %bb.bj ], !dbg !40353
  %.sroa.16.0.ph.i.i = phi i1 [ false, %bb.bg ], [ true, %bb.br ], [ false, %bb.bl ], [ %.sroa.0.0.i.i.i43, %bb.bm ], [ true, %bb.bp ], [ true, %bb.bs ], [ false, %bb.bj ]
  %.sroa.10.0.ph.i.i = phi i64 [ 0, %bb.bg ], [ %i.kt, %bb.br ], [ %.sroa.02.012.i.i.i.i, %bb.bl ], [ %.sroa.016.0.i.i.i, %bb.bm ], [ %.sroa.9.0168.i, %bb.bp ], [ %.sroa.9.0168.i, %bb.bs ], [ %.sroa.9.0168.i, %bb.bj ] ; 4 uses
  %i.kw = add i64 %.sroa.0.0171.i, 1, !dbg !40354 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0169.i) ]
  %i.kx = load i64, ptr %i.hk, align 8, !dbg !40355, !alias.scope !39945, !noundef !1321 ; 2 uses
  %i.ky = icmp ult i64 %i.kx, 384307168202282326, !dbg !40356
  call void @llvm.assume(i1 %i.ky), !dbg !40357
  %.not78.i = icmp ult i64 %.sroa.0.0171.i, %i.kx, !dbg !40358
  br i1 %.not78.i, label %bb.bv, label %bb.bu, !dbg !40358

bb.bu:                                            ; preds = %.loopexit140.i
  br i1 %.not, label %bb.bw, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference21infer_types_from_line.exit, !dbg !40359

bb.bv:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, %.loopexit140.i
  br i1 %4, label %bb.cl, label %bb.ck, !dbg !40360

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !40361, !noalias !39955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !40362, !noalias !39956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) @194, i64 24, i1 false), !dbg !40362, !noalias !39956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !40363, !noalias !39956
  store i64 %i.kw, ptr %i.g, align 8, !dbg !40363, !noalias !39956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !40364, !noalias !39956
  store ptr %i.g, ptr %i.f, align 8, !dbg !40364, !noalias !39956
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !40364, !noalias !39956
  %i.kz = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull @220, ptr noundef nonnull %i.f)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !40365, !noalias !39959

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.bz
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.h, i64 23, !dbg !40366
  %i.lb = load i8, ptr %i.la, align 1, !dbg !40366, !range !1444, !alias.scope !39961, !noalias !39956, !noundef !1321
  %i.lc = icmp eq i8 %i.lb, -40, !dbg !40367
  br i1 %i.lc, label %bb.bx, label %.body, !dbg !40367, !prof !1333

bb.bx:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.ca, !dbg !40368, !noalias !39959

bb.by:                                            ; preds = %bb.bw
  br i1 %i.kz, label %bb.bz, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i, !dbg !40369, !prof !1333

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #36
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !40370, !noalias !39959

.noexc.i.i:                                       ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !40371, !noalias !39959
  unreachable, !dbg !40371

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !40372, !noalias !39956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !40372, !noalias !39956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !40372, !noalias !39955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !40362, !noalias !39956
  call void @llvm.experimental.noalias.scope.decl(metadata !39962), !dbg !40373
  call void @llvm.experimental.noalias.scope.decl(metadata !39963), !dbg !40373
  %i.le = load i64, ptr %i.hk, align 8, !dbg !40374, !alias.scope !39964, !noundef !1321 ; 3 uses
  %i.lf = load i64, ptr %i.ar, align 8, !dbg !40375, !range !1667, !alias.scope !39964, !noundef !1321
  %i.lg = icmp eq i64 %i.le, %i.lf, !dbg !40376
  br i1 %i.lg, label %bb.cb, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, !dbg !40376

bb.cb:                                            ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.cc, !dbg !40377, !noalias !39965

bb.cc:                                            ; preds = %bb.cb
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.s, i64 23, !dbg !40378
  %i.lj = load i8, ptr %i.li, align 1, !dbg !40378, !range !1444, !alias.scope !39966, !noalias !39955, !noundef !1321
  %i.lk = icmp eq i8 %i.lj, -40, !dbg !40379
  br i1 %i.lk, label %bb.cd, label %.body, !dbg !40379, !prof !1333

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.ce, !dbg !40380, !noalias !39940

bb.ce:                                            ; preds = %bb.cd
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !40381, !noalias !39940
  unreachable, !dbg !40381

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.cb, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i
  %i.lm = load ptr, ptr %i.ik, align 8, !dbg !40382, !alias.scope !39964, !nonnull !1321, !noundef !1321
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %i.le, !dbg !40383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !40384, !noalias !39940
  %i.lo = add i64 %i.le, 1, !dbg !40385
  store i64 %i.lo, ptr %i.hk, align 8, !dbg !40385, !alias.scope !39964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40386, !noalias !39955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !40387, !noalias !39955
  %i.lp = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !40388

.noexc46:                                         ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i
  %i.lq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !40389, !noalias !39955
  %i.lr = icmp eq i8 %i.lq, 2, !dbg !40390
  br i1 %i.lr, label %.noexc47, label %bb.cf, !dbg !40390, !prof !1588

bb.cf:                                            ; preds = %.noexc46
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #41
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !40391

.noexc47:                                         ; preds = %bb.cf, %.noexc46
  store i64 0, ptr %i.r, align 8, !dbg !40392, !noalias !39955
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !40392, !noalias !39955
  store i64 0, ptr %.sroa.5121.0..sroa_idx.i, align 8, !dbg !40392, !noalias !39955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6122.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @202, i64 32, i1 false), !dbg !40392, !noalias !39955
  store i64 %i.lp, ptr %.sroa.7.0..sroa_idx.i31, align 8, !dbg !40392, !noalias !39955
  %i.ls = load i64, ptr %i.il, align 8, !dbg !40393, !alias.scope !39972, !noundef !1321 ; 3 uses
  %i.lt = load i64, ptr %i.aq, align 8, !dbg !40394, !range !1667, !alias.scope !39972, !noundef !1321
  %i.lu = icmp eq i64 %i.ls, %i.lt, !dbg !40395
  br i1 %i.lu, label %bb.cg, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, !dbg !40395

bb.cg:                                            ; preds = %.noexc47
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.ch, !dbg !40396, !noalias !39973

bb.ch:                                            ; preds = %bb.cg
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r) #35
          to label %.body unwind label %bb.ci, !dbg !40397, !noalias !39940

bb.ci:                                            ; preds = %bb.ch
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !40398, !noalias !39940
  unreachable, !dbg !40398

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.cg, %.noexc47
  %i.lx = load ptr, ptr %i.im, align 8, !dbg !40399, !alias.scope !39972, !nonnull !1321, !noundef !1321
  %i.ly = getelementptr inbounds nuw [64 x i8], ptr %i.lx, i64 %i.ls, !dbg !40400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ly, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !40401, !noalias !39940
  %i.lz = add i64 %i.ls, 1, !dbg !40402
  store i64 %i.lz, ptr %i.il, align 8, !dbg !40402, !alias.scope !39972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40403, !noalias !39955
  %i.ma = load i64, ptr %i.hy, align 8, !dbg !40404, !alias.scope !39974, !noundef !1321 ; 3 uses
  %i.mb = load i64, ptr %i.ao, align 8, !dbg !40405, !range !1667, !alias.scope !39974, !noundef !1321
  %i.mc = icmp eq i64 %i.ma, %i.mb, !dbg !40406
  br i1 %i.mc, label %bb.cj, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, !dbg !40406

bb.cj:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !40407

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.cj, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i
  %i.md = load ptr, ptr %i.hx, align 8, !dbg !40408, !alias.scope !39974, !nonnull !1321, !noundef !1321
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.ma, !dbg !40409
  store i8 0, ptr %i.me, align 1, !dbg !40410, !noalias !39940
  %i.mf = add i64 %i.ma, 1, !dbg !40411
  store i64 %i.mf, ptr %i.hy, align 8, !dbg !40411, !alias.scope !39974
  br label %bb.bv, !dbg !40412

bb.ck:                                            ; preds = %bb.bv
  %i.mg = icmp eq i64 %.sroa.10.0.ph.i.i, 0, !dbg !40413
  br i1 %i.mg, label %bb.cm, label %bb.cn, !dbg !40413

bb.cl:                                            ; preds = %bb.bv
  %i.mh = load i64, ptr %i.il, align 8, !dbg !40414, !alias.scope !39946, !noundef !1321 ; 2 uses
  %i.mi = icmp ult i64 %.sroa.0.0171.i, %i.mh, !dbg !40415
  br i1 %i.mi, label %bb.dy, label %.invoke, !dbg !40415

bb.cm:                                            ; preds = %bb.ck
  %i.mj = load i64, ptr %i.hy, align 8, !dbg !40416, !alias.scope !39947, !noundef !1321 ; 2 uses
  %i.mk = icmp ult i64 %.sroa.0.0171.i, %i.mj, !dbg !40417
  br i1 %i.mk, label %bb.co, label %.invoke, !dbg !40417

bb.cn:                                            ; preds = %bb.ck
  %i.ml = icmp ne i64 %.sroa.10.0.ph.i.i, 1
  %or.cond.i36 = and i1 %.sroa.16.0.ph.i.i, %i.ml, !dbg !40418 ; 2 uses
  %i.mm = add nsw i64 %.sroa.10.0.ph.i.i, -2, !dbg !40418
  %.sroa.530.0.i = select i1 %or.cond.i36, i64 %i.mm, i64 %.sroa.10.0.ph.i.i, !dbg !40418
  %.sroa.027.0.idx.i = zext i1 %or.cond.i36 to i64, !dbg !40418
  %.sroa.027.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.5.0169.i, i64 %.sroa.027.0.idx.i, !dbg !40418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !40419, !noalias !39955
  invoke void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.027.0.i37, i64 noundef %.sroa.530.0.i)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !40420

.noexc49:                                         ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i), !dbg !40421
  switch i64 %i.in, label %default.unreachable [
    i64 3, label %bb.cp
    i64 0, label %bb.cs
    i64 1, label %bb.ct
    i64 2, label %bb.cw
  ], !dbg !40422
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
  unreachable, !dbg !41322

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.noexc unwind label %bb.cy, !dbg !41324

.noexc:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !41315, !noalias !41220
  br label %bb.cz, !dbg !41325

bb.s:                                             ; preds = %.split.i.thread, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !41326, !noalias !41223
  br label %bb.cz, !dbg !41327

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41328, !noalias !41219
  unreachable, !dbg !41328

bb.u:                                             ; preds = %bb.aa, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !41329, !noalias !41220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !41329, !noalias !41220
  store ptr %i.ah, ptr %i.y, align 8, !dbg !41330, !noalias !41220
  store i64 4096, ptr %i.bb, align 8, !dbg !41330, !noalias !41220
  store i64 4096, ptr %i.bc, align 8, !dbg !41330, !noalias !41220
  %i.bp = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41331, !noalias !41219 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.aw, %bb.z, %bb.u, %bb.ay, %bb.au, %bb.ad, %bb.ab, %bb.w
  %lpad.loopexit.split-lp557 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #35
          to label %.body unwind label %bb.t, !dbg !41332, !noalias !41219

bb.v:                                             ; preds = %bb.u
  %i.bq = extractvalue { i64, ptr } %i.bp, 0, !dbg !41331 ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bp, 1, !dbg !41331 ; 2 uses
  store i64 %i.bq, ptr %i.z, align 8, !dbg !41331, !noalias !41220
  store ptr %i.br, ptr %i.bd, align 8, !dbg !41331, !noalias !41220
  %i.bs = trunc nuw i64 %i.bq to i1, !dbg !41333
  br i1 %i.bs, label %bb.w, label %bb.x, !dbg !41334

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bd)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41335, !noalias !41219

bb.x:                                             ; preds = %bb.v
  %i.bt = icmp eq ptr %i.br, null, !dbg !41333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !41336, !noalias !41220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41337, !noalias !41220
  br i1 %i.bt, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, label %bb.z, !dbg !41338

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !41336, !noalias !41220
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41339, !alias.scope !41219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41337, !noalias !41220
  br label %bb.ag, !dbg !41340

bb.z:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %i.az, align 8, !dbg !41341, !noalias !41220, !nonnull !1321, !noundef !1321
  %i.bv = load i64, ptr %i.ba, align 8, !dbg !41342, !noalias !41220, !noundef !1321
  %i.bw = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bv, i8 noundef %8)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41343, !noalias !41219

_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i: ; preds = %bb.x, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, %bb.ae
  %.sroa.019.0.i = phi i64 [ %i.ej, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i ], [ 0, %bb.ae ], [ %i.ek, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i ], [ 0, %bb.x ], !dbg !41344
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %.split.i, label %.outer.split.i, !dbg !41345

bb.aa:                                            ; preds = %bb.z
  %i.ca = extractvalue { i64, i64 } %i.bw, 0, !dbg !41343
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !41343
  br i1 %i.cb, label %bb.ab, label %bb.u, !dbg !41343

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !41346, !noalias !41220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !41346, !noalias !41220
  store ptr %i.ah, ptr %i.w, align 8, !dbg !41347, !noalias !41220
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !41347
  store i64 4096, ptr %i.cc, align 8, !dbg !41347, !noalias !41220
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !41347
  store i64 4096, ptr %i.cd, align 8, !dbg !41347, !noalias !41220
  %i.ce = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41348, !noalias !41219 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cf = extractvalue { i64, ptr } %i.ce, 0, !dbg !41348 ; 2 uses
  %i.cg = extractvalue { i64, ptr } %i.ce, 1, !dbg !41348 ; 2 uses
  store i64 %i.cf, ptr %i.x, align 8, !dbg !41348, !noalias !41220
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !41348 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !dbg !41348, !noalias !41220
  %i.ci = trunc nuw i64 %i.cf to i1, !dbg !41349
  br i1 %i.ci, label %bb.ad, label %bb.ae, !dbg !41350

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ch)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41351, !noalias !41219

bb.ae:                                            ; preds = %bb.ac
  %i.cj = icmp eq ptr %i.cg, null, !dbg !41349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !41352, !noalias !41220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41353, !noalias !41220
  br i1 %i.cj, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, label %.lr.ph.i.i, !dbg !41354

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !41352, !noalias !41220
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41355, !alias.scope !41219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41353, !noalias !41220
  br label %bb.ag, !dbg !41356

bb.ag:                                            ; preds = %bb.ba, %bb.af, %bb.y
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i unwind label %bb.ah, !dbg !41357, !noalias !41219

bb.ah:                                            ; preds = %bb.ag
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.ai, !dbg !41358, !noalias !41219

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41357, !noalias !41219
  unreachable, !dbg !41357

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc15 unwind label %bb.cy, !dbg !41359

.noexc15:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !41332, !noalias !41220
  br label %bb.cz, !dbg !41325

.lr.ph.i.i:                                       ; preds = %bb.ae
  %i.cm = load ptr, ptr %i.az, align 8, !dbg !41360, !noalias !41220, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.cn = load i64, ptr %i.ba, align 8, !dbg !41361, !noalias !41220, !noundef !1321 ; 3 uses
  %..i = select i1 %6, i8 %7, i8 34, !dbg !41362  ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0, !dbg !41363       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i
  br i1 %i.co, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.i.i.i.i, !dbg !41363

.lr.ph.split.us.i.preheader.i:                    ; preds = %.lr.ph.i.i
  br i1 %i.co, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i, !dbg !41363

.lr.ph.i:                                         ; preds = %.lr.ph.split.us.i.preheader.i, %.lr.ph.split.us.i.i
  %i.cp = phi ptr [ %i.dp, %.lr.ph.split.us.i.i ], [ %i.cm, %.lr.ph.split.us.i.preheader.i ] ; 6 uses
  %.sroa.0.014.us.i85.i = phi i64 [ %i.dq, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i ] ; 5 uses
  %i.cq = phi i64 [ %i.do, %.lr.ph.split.us.i.i ], [ %i.cn, %.lr.ph.split.us.i.preheader.i ] ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !dbg !41364, !noalias !41233, !noundef !1321
  %i.cs = icmp eq i8 %i.cr, %..i, !dbg !41365
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq, !dbg !41366 ; 2 uses
  br i1 %i.cs, label %.lr.ph.i.us.i.i, label %.lr.ph.i.i.us.i.i, !dbg !41365

.lr.ph.i.i.us.i.i:                                ; preds = %.lr.ph.i, %bb.aj
  %.sroa.02.012.i.i.us.i.i = phi i64 [ %i.cy, %bb.aj ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cu = phi ptr [ %i.cx, %bb.aj ], [ %i.cp, %.lr.ph.i ] ; 2 uses
  %.val7.i.i.us.i.i = load i8, ptr %i.cu, align 1, !dbg !41367, !noalias !41234, !noundef !1321 ; 2 uses
  %i.cv = icmp eq i8 %.val7.i.i.us.i.i, %5, !dbg !41368
  %i.cw = icmp eq i8 %.val7.i.i.us.i.i, %8
  %or.cond.i.i.us.i.i = or i1 %i.cv, %i.cw, !dbg !41368
  br i1 %or.cond.i.i.us.i.i, label %bb.ak, label %bb.aj, !dbg !41368

bb.aj:                                            ; preds = %.lr.ph.i.i.us.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1, !dbg !41369 ; 2 uses
  %i.cy = add nuw i64 %.sroa.02.012.i.i.us.i.i, 1, !dbg !41370
  %i.cz = icmp eq ptr %i.cx, %i.ct, !dbg !41371
  br i1 %i.cz, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i.i.us.i.i, !dbg !41372

bb.ak:                                            ; preds = %.lr.ph.i.i.us.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.02.012.i.i.us.i.i, !dbg !41373
  %i.db = load i8, ptr %i.da, align 1, !dbg !41374, !noalias !41233, !noundef !1321
  %i.dc = icmp eq i8 %i.db, %8, !dbg !41374
  br i1 %i.dc, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.split.us.i.i, !dbg !41374

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i, %bb.am
  %.sroa.05.053.i.us.i.i = phi i8 [ %spec.select.i.us.i.i, %bb.am ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.09.052.i.us.i.i = phi i32 [ %i.dj, %bb.am ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.012.051.i.us.i.i = phi ptr [ %i.dd, %bb.am ], [ %i.cp, %.lr.ph.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i, i64 1, !dbg !41375 ; 2 uses
  %i.de = load i8, ptr %.sroa.012.051.i.us.i.i, align 1, !dbg !41376, !noalias !41233, !noundef !1321 ; 3 uses
  %i.df = icmp eq i8 %i.de, %..i, !dbg !41377
  %i.dg = zext i1 %i.df to i8, !dbg !41377        ; 2 uses
  %spec.select.i.us.i.i = xor i8 %.sroa.05.053.i.us.i.i, %i.dg, !dbg !41377
  %.not.i.us.i.i = icmp eq i8 %.sroa.05.053.i.us.i.i, %i.dg, !dbg !41378
  br i1 %.not.i.us.i.i, label %bb.al, label %bb.am, !dbg !41378

bb.al:                                            ; preds = %.lr.ph.i.us.i.i
  %i.dh = icmp eq i8 %i.de, %5, !dbg !41379
  %i.di = icmp eq i8 %i.de, %8                    ; 2 uses
  %or.cond.i.us.i.i = or i1 %i.dh, %i.di, !dbg !41379
  br i1 %or.cond.i.us.i.i, label %bb.an, label %bb.am, !dbg !41379

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.us.i.i
  %i.dj = add i32 %.sroa.09.052.i.us.i.i, 1, !dbg !41380
  %i.dk = icmp eq ptr %i.dd, %i.ct, !dbg !41381
  br i1 %i.dk, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i.us.i.i, !dbg !41382

bb.an:                                            ; preds = %bb.al
  %i.dl = icmp eq i32 %.sroa.09.052.i.us.i.i, 0
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dl, !dbg !41383
  br i1 %or.cond.i.i, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %bb.ao, !dbg !41383

bb.ao:                                            ; preds = %bb.an
  %i.dm = zext i32 %.sroa.09.052.i.us.i.i to i64, !dbg !41384
  br label %.lr.ph.split.us.i.i, !dbg !41385

.lr.ph.split.us.i.i:                              ; preds = %bb.ao, %bb.ak
  %.sroa.016.0.i.us.i.i = phi i64 [ %i.dm, %bb.ao ], [ %.sroa.02.012.i.i.us.i.i, %bb.ak ], !dbg !41386
  %i.dn = add nuw i64 %.sroa.016.0.i.us.i.i, 1, !dbg !41387 ; 2 uses
  %i.do = sub nuw i64 %i.cq, %i.dn, !dbg !41388   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dn, !dbg !41389
  %i.dq = add i64 %.sroa.0.014.us.i85.i, 1, !dbg !41390 ; 2 uses
  %i.dr = icmp eq i64 %i.do, 0, !dbg !41363
  br i1 %i.dr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i, !dbg !41363

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %i.ds = phi ptr [ %i.eg, %.lr.ph.split.i.i ], [ %i.cm, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %.sroa.0.014.i83.i = phi i64 [ %i.eh, %.lr.ph.split.i.i ], [ 0, %.lr.ph.split.i.preheader.i ] ; 3 uses
  %i.dt = phi i64 [ %i.ef, %.lr.ph.split.i.i ], [ %i.cn, %.lr.ph.split.i.preheader.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt, !dbg !41391
  br label %bb.ap, !dbg !41372

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.sroa.02.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.dz, %bb.aq ] ; 3 uses
  %i.dv = phi ptr [ %i.ds, %.lr.ph.i.i.i.i ], [ %i.dy, %bb.aq ] ; 2 uses
  %.val7.i.i.i.i = load i8, ptr %i.dv, align 1, !dbg !41367, !noalias !41234, !noundef !1321 ; 2 uses
  %i.dw = icmp eq i8 %.val7.i.i.i.i, %5, !dbg !41368
  %i.dx = icmp eq i8 %.val7.i.i.i.i, %8
  %or.cond.i.i.i.i = or i1 %i.dw, %i.dx, !dbg !41368
  br i1 %or.cond.i.i.i.i, label %bb.ar, label %bb.aq, !dbg !41368

bb.aq:                                            ; preds = %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1, !dbg !41369 ; 2 uses
  %i.dz = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !41370
  %i.ea = icmp eq ptr %i.dy, %i.du, !dbg !41371
  br i1 %i.ea, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %bb.ap, !dbg !41372

bb.ar:                                            ; preds = %bb.ap
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.02.012.i.i.i.i, !dbg !41373
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !41374, !noalias !41233, !noundef !1321
  %i.ed = icmp eq i8 %i.ec, %8, !dbg !41374
  br i1 %i.ed, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.split.i.i, !dbg !41374

.lr.ph.split.i.i:                                 ; preds = %bb.ar
  %i.ee = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !41387 ; 2 uses
  %i.ef = sub nuw i64 %i.dt, %i.ee, !dbg !41388   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ee, !dbg !41389
  %i.eh = add i64 %.sroa.0.014.i83.i, 1, !dbg !41390 ; 2 uses
  %i.ei = icmp eq i64 %i.ef, 0, !dbg !41363
  br i1 %i.ei, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.i.i.i.i, !dbg !41363

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i: ; preds = %.lr.ph.split.us.i.i, %bb.an, %bb.ak, %bb.aj, %bb.am, %.lr.ph.split.us.i.preheader.i
  %.sroa.0.014.us.i76.i = phi i64 [ %.sroa.0.014.us.i85.i, %bb.aj ], [ %.sroa.0.014.us.i85.i, %bb.am ], [ 0, %.lr.ph.split.us.i.preheader.i ], [ %.sroa.0.014.us.i85.i, %bb.ak ], [ %i.dq, %.lr.ph.split.us.i.i ], [ %.sroa.0.014.us.i85.i, %bb.an ]
  %i.ej = add i64 %.sroa.0.014.us.i76.i, 1, !dbg !41390
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, !dbg !41392

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i: ; preds = %.lr.ph.split.i.i, %bb.ar, %bb.aq, %.lr.ph.split.i.preheader.i
  %.sroa.0.014.i79.i = phi i64 [ %.sroa.0.014.i83.i, %bb.aq ], [ 0, %.lr.ph.split.i.preheader.i ], [ %i.eh, %.lr.ph.split.i.i ], [ %.sroa.0.014.i83.i, %bb.ar ]
  %i.ek = add i64 %.sroa.0.014.i79.i, 1, !dbg !41390
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, !dbg !41392

bb.as:                                            ; preds = %bb.az, %.outer.split.i
  %i.el = load i64, ptr %i.ba, align 8, !dbg !41393, !noalias !41220, !noundef !1321 ; 4 uses
  %i.em = icmp ugt i64 %i.ey, %i.el, !dbg !41394
  br i1 %i.em, label %bb.au, label %bb.at, !dbg !41394, !prof !1333

.split.i:                                         ; preds = %.outer.i, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i
  %.sroa.023.0.ph.lcssa70.split.i = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ], [ %i.ex, %.outer.i ] ; 2 uses
  %i.en = load i64, ptr %i.ba, align 8, !noalias !41220
  %i.eo = icmp ugt i64 %.sroa.023.0.ph.lcssa70.split.i, %i.en
  br i1 %i.eo, label %.split.i.thread, label %bb.bb, !dbg !41395

bb.at:                                            ; preds = %bb.as
  %i.ep = load ptr, ptr %i.az, align 8, !dbg !41396, !noalias !41220, !nonnull !1321, !noundef !1321
  %i.eq = sub nuw i64 %i.el, %i.ey, !dbg !41397
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ey, !dbg !41398
  %i.es = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.eq, i64 noundef 1, i64 %.sroa.019.0.i, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41399, !noalias !41219 ; 2 uses

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ey, i64 noundef %i.el, i64 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41400, !noalias !41219

bb.av:                                            ; preds = %bb.at
  %i.et = extractvalue { i64, i64 } %i.es, 0, !dbg !41399
  %i.eu = trunc nuw i64 %i.et to i1, !dbg !41401
  br i1 %i.eu, label %.outer.i, label %bb.aw, !dbg !41401

.outer.i:                                         ; preds = %bb.av
  %i.ev = extractvalue { i64, i64 } %i.es, 1, !dbg !41399
  %i.ew = add nuw i64 %.sroa.020.0.ph91.i, 1, !dbg !41402 ; 2 uses
  %i.ex = add i64 %i.ev, %.sroa.023.0.ph90.i, !dbg !41403 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ew, %4
  br i1 %exitcond.not.i, label %.split.i, label %.outer.split.i, !dbg !41345

.outer.split.i:                                   ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, %.outer.i
  %.sroa.020.0.ph91.i = phi i64 [ %i.ew, %.outer.i ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ]
  %.sroa.023.0.ph90.i = phi i64 [ %i.ex, %.outer.i ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ] ; 2 uses
  %i.ey = add i64 %.sroa.023.0.ph90.i, 1, !dbg !41345 ; 4 uses
  br label %bb.as, !dbg !41345

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !41404, !noalias !41220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !41404, !noalias !41220
  store ptr %i.ah, ptr %i.u, align 8, !dbg !41405, !noalias !41220
  store i64 4096, ptr %i.bx, align 8, !dbg !41405, !noalias !41220
  store i64 4096, ptr %i.by, align 8, !dbg !41405, !noalias !41220
  %i.ez = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41406, !noalias !41219 ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.fa = extractvalue { i64, ptr } %i.ez, 0, !dbg !41406 ; 2 uses
  %i.fb = extractvalue { i64, ptr } %i.ez, 1, !dbg !41406 ; 2 uses
  store i64 %i.fa, ptr %i.v, align 8, !dbg !41406, !noalias !41220
  store ptr %i.fb, ptr %i.bz, align 8, !dbg !41406, !noalias !41220
  %i.fc = trunc nuw i64 %i.fa to i1, !dbg !41407
  br i1 %i.fc, label %bb.ay, label %bb.az, !dbg !41408

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bz)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41409, !noalias !41219

bb.az:                                            ; preds = %bb.ax
  %i.fd = icmp eq ptr %i.fb, null, !dbg !41407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !41410, !noalias !41220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !41411, !noalias !41220
  br i1 %i.fd, label %.split.i.thread, label %bb.as, !dbg !41412

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !41410, !noalias !41220
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41413, !alias.scope !41219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !41411, !noalias !41220
  br label %bb.ag, !dbg !41340

.split.i.thread:                                  ; preds = %bb.az, %bb.bb, %.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !41414, !noalias !41220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !41332, !noalias !41220
  br label %bb.s, !dbg !41415

bb.bb:                                            ; preds = %.split.i
  store i64 %.sroa.023.0.ph.lcssa70.split.i, ptr %i.ba, align 8, !dbg !41416, !noalias !41220
  br label %.split.i.thread, !dbg !41417

bb.bc:                                            ; preds = %bb.au
  unreachable

bb.bd:                                            ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !41418
  call void @_RNvMs2_NtNtCs9VoZUfg37wD_6flate24zlib4readINtB5_11ZlibDecoderRShE3newCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !41419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41242), !dbg !41420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !41421
  %i.fe = trunc nuw i64 %3 to i1, !dbg !41421
  br i1 %i.fe, label %bb.be, label %bb.bf, !dbg !41421

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !41422, !noalias !41243
  store i64 0, ptr %i.q, align 8, !dbg !41423, !noalias !41243
  %i.ff = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !41423 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ff, align 8, !dbg !41423, !noalias !41243
  %i.fg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !41423 ; 6 uses
  store i64 0, ptr %i.fg, align 8, !dbg !41423, !noalias !41243
  %i.fh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br label %bb.bp, !dbg !41424

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !41425, !noalias !41243
  store i64 0, ptr %i.s, align 8, !dbg !41426, !noalias !41243
  %i.fk = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !41426
  store ptr inttoptr (i64 1 to ptr), ptr %i.fk, align 8, !dbg !41426, !noalias !41243
  %i.fl = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !41426
  store i64 0, ptr %i.fl, align 8, !dbg !41426, !noalias !41243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !41427, !noalias !41243
  %i.fm = invoke { i64, ptr } @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShENtNtCsh8eZTKRCwoO_3std2io4Read11read_to_endCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bh unwind label %bb.bg, !dbg !41428, !noalias !41242 ; 2 uses

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.s) #35
          to label %.body65 unwind label %bb.bo, !dbg !41429, !noalias !41242

bb.bh:                                            ; preds = %bb.bf
  %i.fo = extractvalue { i64, ptr } %i.fm, 0, !dbg !41427 ; 2 uses
  %i.fp = extractvalue { i64, ptr } %i.fm, 1, !dbg !41427
  store i64 %i.fo, ptr %i.r, align 8, !dbg !41427, !noalias !41243
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !41427 ; 2 uses
  store ptr %i.fp, ptr %i.fq, align 8, !dbg !41427, !noalias !41243
  %i.fr = trunc nuw i64 %i.fo to i1, !dbg !41430
  br i1 %i.fr, label %bb.bi, label %bb.bj, !dbg !41431

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fq)
          to label %bb.bk unwind label %bb.bg, !dbg !41432, !noalias !41242

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41433, !noalias !41243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !41434, !noalias !41243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41429, !noalias !41243
  br label %bb.bn, !dbg !41429

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41433, !noalias !41243
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
  unreachable, !dbg !41436

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i18: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc67 unwind label %bb.df, !dbg !41438

.noexc67:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41429, !noalias !41243
  br label %bb.dg, !dbg !41439

bb.bn:                                            ; preds = %.split.i38.thread, %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !41440, !noalias !41246
  br label %bb.dg, !dbg !41441

bb.bo:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bg
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41442, !noalias !41242
  unreachable, !dbg !41442

bb.bp:                                            ; preds = %bb.bv, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !41443, !noalias !41243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !41443, !noalias !41243
  store ptr %i.ag, ptr %i.o, align 8, !dbg !41444, !noalias !41243
  store i64 4096, ptr %i.fh, align 8, !dbg !41444, !noalias !41243
  store i64 4096, ptr %i.fi, align 8, !dbg !41444, !noalias !41243
  %i.fv = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41445, !noalias !41242 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %bb.cr, %bb.bu, %bb.bp, %bb.ct, %bb.cp, %bb.by, %bb.bw, %bb.br
  %lpad.loopexit.split-lp586 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.q) #35
          to label %.body65 unwind label %bb.bo, !dbg !41446, !noalias !41242

bb.bq:                                            ; preds = %bb.bp
  %i.fw = extractvalue { i64, ptr } %i.fv, 0, !dbg !41445 ; 2 uses
  %i.fx = extractvalue { i64, ptr } %i.fv, 1, !dbg !41445 ; 2 uses
  store i64 %i.fw, ptr %i.p, align 8, !dbg !41445, !noalias !41243
  store ptr %i.fx, ptr %i.fj, align 8, !dbg !41445, !noalias !41243
  %i.fy = trunc nuw i64 %i.fw to i1, !dbg !41447
  br i1 %i.fy, label %bb.br, label %bb.bs, !dbg !41448

bb.br:                                            ; preds = %bb.bq
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fj)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41449, !noalias !41242

bb.bs:                                            ; preds = %bb.bq
  %i.fz = icmp eq ptr %i.fx, null, !dbg !41447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41450, !noalias !41243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41451, !noalias !41243
  br i1 %i.fz, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31, label %bb.bu, !dbg !41452

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41450, !noalias !41243
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41453, !alias.scope !41242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41451, !noalias !41243
  br label %bb.cb, !dbg !41454

bb.bu:                                            ; preds = %bb.bs
  %i.ga = load ptr, ptr %i.ff, align 8, !dbg !41455, !noalias !41243, !nonnull !1321, !noundef !1321
  %i.gb = load i64, ptr %i.fg, align 8, !dbg !41456, !noalias !41243, !noundef !1321
  %i.gc = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.gb, i8 noundef %8)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41457, !noalias !41242

_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31: ; preds = %bb.bs, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i29, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53, %bb.bz
  %.sroa.019.0.i32 = phi i64 [ %i.ip, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53 ], [ 0, %bb.bz ], [ %i.iq, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i29 ], [ 0, %bb.bs ], !dbg !41458
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.not.i33 = icmp eq i64 %4, 0
  br i1 %.not.i33, label %.split.i38, label %.outer.split.i34, !dbg !41459

bb.bv:                                            ; preds = %bb.bu
  %i.gg = extractvalue { i64, i64 } %i.gc, 0, !dbg !41457
  %i.gh = icmp eq i64 %i.gg, 1, !dbg !41457
  br i1 %i.gh, label %bb.bw, label %bb.bp, !dbg !41457

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !41460, !noalias !41243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !41460, !noalias !41243
  store ptr %i.ag, ptr %i.m, align 8, !dbg !41461, !noalias !41243
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !41461
  store i64 4096, ptr %i.gi, align 8, !dbg !41461, !noalias !41243
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !41461
  store i64 4096, ptr %i.gj, align 8, !dbg !41461, !noalias !41243
  %i.gk = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41462, !noalias !41242 ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.gl = extractvalue { i64, ptr } %i.gk, 0, !dbg !41462 ; 2 uses
  %i.gm = extractvalue { i64, ptr } %i.gk, 1, !dbg !41462 ; 2 uses
  store i64 %i.gl, ptr %i.n, align 8, !dbg !41462, !noalias !41243
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !41462 ; 2 uses
  store ptr %i.gm, ptr %i.gn, align 8, !dbg !41462, !noalias !41243
  %i.go = trunc nuw i64 %i.gl to i1, !dbg !41463
  br i1 %i.go, label %bb.by, label %bb.bz, !dbg !41464

bb.by:                                            ; preds = %bb.bx
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gn)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41465, !noalias !41242

bb.bz:                                            ; preds = %bb.bx
  %i.gp = icmp eq ptr %i.gm, null, !dbg !41463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41466, !noalias !41243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41467, !noalias !41243
  br i1 %i.gp, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31, label %.lr.ph.i.i21, !dbg !41468

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41466, !noalias !41243
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41469, !alias.scope !41242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41467, !noalias !41243
  br label %bb.cb, !dbg !41470

bb.cb:                                            ; preds = %bb.cv, %bb.ca, %bb.bt
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i42 unwind label %bb.cc, !dbg !41471, !noalias !41242

bb.cc:                                            ; preds = %bb.cb
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body65 unwind label %bb.cd, !dbg !41472, !noalias !41242

bb.cd:                                            ; preds = %bb.cc
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41471, !noalias !41242
  unreachable, !dbg !41471

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i42: ; preds = %bb.cb
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc68 unwind label %bb.df, !dbg !41473

.noexc68:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41446, !noalias !41243
  br label %bb.dg, !dbg !41439

.lr.ph.i.i21:                                     ; preds = %bb.bz
  %i.gs = load ptr, ptr %i.ff, align 8, !dbg !41474, !noalias !41243, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.gt = load i64, ptr %i.fg, align 8, !dbg !41475, !noalias !41243, !noundef !1321 ; 3 uses
  %..i22 = select i1 %6, i8 %7, i8 34, !dbg !41476 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0, !dbg !41477       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i46, label %.lr.ph.split.i.preheader.i23

.lr.ph.split.i.preheader.i23:                     ; preds = %.lr.ph.i.i21
  br i1 %i.gu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i29, label %.lr.ph.i.i.i.i24, !dbg !41477

.lr.ph.split.us.i.preheader.i46:                  ; preds = %.lr.ph.i.i21
  br i1 %i.gu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53, label %.lr.ph.i47, !dbg !41477

.lr.ph.i47:                                       ; preds = %.lr.ph.split.us.i.preheader.i46, %.lr.ph.split.us.i.i55
  %i.gv = phi ptr [ %i.hv, %.lr.ph.split.us.i.i55 ], [ %i.gs, %.lr.ph.split.us.i.preheader.i46 ] ; 6 uses
  %.sroa.0.014.us.i85.i48 = phi i64 [ %i.hw, %.lr.ph.split.us.i.i55 ], [ 0, %.lr.ph.split.us.i.preheader.i46 ] ; 5 uses
  %i.gw = phi i64 [ %i.hu, %.lr.ph.split.us.i.i55 ], [ %i.gt, %.lr.ph.split.us.i.preheader.i46 ] ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !dbg !41478, !noalias !41256, !noundef !1321
  %i.gy = icmp eq i8 %i.gx, %..i22, !dbg !41479
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw, !dbg !41480 ; 2 uses
  br i1 %i.gy, label %.lr.ph.i.us.i.i57, label %.lr.ph.i.i.us.i.i49, !dbg !41479

.lr.ph.i.i.us.i.i49:                              ; preds = %.lr.ph.i47, %bb.ce
  %.sroa.02.012.i.i.us.i.i50 = phi i64 [ %i.he, %bb.ce ], [ 0, %.lr.ph.i47 ] ; 3 uses
  %i.ha = phi ptr [ %i.hd, %bb.ce ], [ %i.gv, %.lr.ph.i47 ] ; 2 uses
  %.val7.i.i.us.i.i51 = load i8, ptr %i.ha, align 1, !dbg !41481, !noalias !41257, !noundef !1321 ; 2 uses
  %i.hb = icmp eq i8 %.val7.i.i.us.i.i51, %5, !dbg !41482
  %i.hc = icmp eq i8 %.val7.i.i.us.i.i51, %8
  %or.cond.i.i.us.i.i52 = or i1 %i.hb, %i.hc, !dbg !41482
  br i1 %or.cond.i.i.us.i.i52, label %bb.cf, label %bb.ce, !dbg !41482

bb.ce:                                            ; preds = %.lr.ph.i.i.us.i.i49
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1, !dbg !41483 ; 2 uses
  %i.he = add nuw i64 %.sroa.02.012.i.i.us.i.i50, 1, !dbg !41484
  %i.hf = icmp eq ptr %i.hd, %i.gz, !dbg !41485
  br i1 %i.hf, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53, label %.lr.ph.i.i.us.i.i49, !dbg !41486

bb.cf:                                            ; preds = %.lr.ph.i.i.us.i.i49
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.02.012.i.i.us.i.i50, !dbg !41487
  %i.hh = load i8, ptr %i.hg, align 1, !dbg !41488, !noalias !41256, !noundef !1321
  %i.hi = icmp eq i8 %i.hh, %8, !dbg !41488
  br i1 %i.hi, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53, label %.lr.ph.split.us.i.i55, !dbg !41488

.lr.ph.i.us.i.i57:                                ; preds = %.lr.ph.i47, %bb.ch
  %.sroa.05.053.i.us.i.i58 = phi i8 [ %spec.select.i.us.i.i61, %bb.ch ], [ 0, %.lr.ph.i47 ] ; 2 uses
  %.sroa.09.052.i.us.i.i59 = phi i32 [ %i.hp, %bb.ch ], [ 0, %.lr.ph.i47 ] ; 3 uses
  %.sroa.012.051.i.us.i.i60 = phi ptr [ %i.hj, %bb.ch ], [ %i.gv, %.lr.ph.i47 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i60, i64 1, !dbg !41489 ; 2 uses
  %i.hk = load i8, ptr %.sroa.012.051.i.us.i.i60, align 1, !dbg !41490, !noalias !41256, !noundef !1321 ; 3 uses
  %i.hl = icmp eq i8 %i.hk, %..i22, !dbg !41491
  %i.hm = zext i1 %i.hl to i8, !dbg !41491        ; 2 uses
  %spec.select.i.us.i.i61 = xor i8 %.sroa.05.053.i.us.i.i58, %i.hm, !dbg !41491
  %.not.i.us.i.i62 = icmp eq i8 %.sroa.05.053.i.us.i.i58, %i.hm, !dbg !41492
  br i1 %.not.i.us.i.i62, label %bb.cg, label %bb.ch, !dbg !41492

bb.cg:                                            ; preds = %.lr.ph.i.us.i.i57
  %i.hn = icmp eq i8 %i.hk, %5, !dbg !41493
  %i.ho = icmp eq i8 %i.hk, %8                    ; 2 uses
  %or.cond.i.us.i.i63 = or i1 %i.hn, %i.ho, !dbg !41493
  br i1 %or.cond.i.us.i.i63, label %bb.ci, label %bb.ch, !dbg !41493

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i.us.i.i57
  %i.hp = add i32 %.sroa.09.052.i.us.i.i59, 1, !dbg !41494
  %i.hq = icmp eq ptr %i.hj, %i.gz, !dbg !41495
  br i1 %i.hq, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53, label %.lr.ph.i.us.i.i57, !dbg !41496

bb.ci:                                            ; preds = %bb.cg
  %i.hr = icmp eq i32 %.sroa.09.052.i.us.i.i59, 0
  %or.cond.i.i64 = select i1 %i.ho, i1 true, i1 %i.hr, !dbg !41497
  br i1 %or.cond.i.i64, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53, label %bb.cj, !dbg !41497

bb.cj:                                            ; preds = %bb.ci
  %i.hs = zext i32 %.sroa.09.052.i.us.i.i59 to i64, !dbg !41498
  br label %.lr.ph.split.us.i.i55, !dbg !41499

.lr.ph.split.us.i.i55:                            ; preds = %bb.cj, %bb.cf
  %.sroa.016.0.i.us.i.i56 = phi i64 [ %i.hs, %bb.cj ], [ %.sroa.02.012.i.i.us.i.i50, %bb.cf ], !dbg !41500
  %i.ht = add nuw i64 %.sroa.016.0.i.us.i.i56, 1, !dbg !41501 ; 2 uses
  %i.hu = sub nuw i64 %i.gw, %i.ht, !dbg !41502   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ht, !dbg !41503
  %i.hw = add i64 %.sroa.0.014.us.i85.i48, 1, !dbg !41504 ; 2 uses
  %i.hx = icmp eq i64 %i.hu, 0, !dbg !41477
  br i1 %i.hx, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53, label %.lr.ph.i47, !dbg !41477

.lr.ph.i.i.i.i24:                                 ; preds = %.lr.ph.split.i.preheader.i23, %.lr.ph.split.i.i45
  %i.hy = phi ptr [ %i.im, %.lr.ph.split.i.i45 ], [ %i.gs, %.lr.ph.split.i.preheader.i23 ] ; 4 uses
  %.sroa.0.014.i83.i25 = phi i64 [ %i.in, %.lr.ph.split.i.i45 ], [ 0, %.lr.ph.split.i.preheader.i23 ] ; 3 uses
  %i.hz = phi i64 [ %i.il, %.lr.ph.split.i.i45 ], [ %i.gt, %.lr.ph.split.i.preheader.i23 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hz, !dbg !41505
  br label %bb.ck, !dbg !41486

bb.ck:                                            ; preds = %bb.cl, %.lr.ph.i.i.i.i24
  %.sroa.02.012.i.i.i.i26 = phi i64 [ 0, %.lr.ph.i.i.i.i24 ], [ %i.if, %bb.cl ] ; 3 uses
  %i.ib = phi ptr [ %i.hy, %.lr.ph.i.i.i.i24 ], [ %i.ie, %bb.cl ] ; 2 uses
  %.val7.i.i.i.i27 = load i8, ptr %i.ib, align 1, !dbg !41481, !noalias !41257, !noundef !1321 ; 2 uses
  %i.ic = icmp eq i8 %.val7.i.i.i.i27, %5, !dbg !41482
  %i.id = icmp eq i8 %.val7.i.i.i.i27, %8
  %or.cond.i.i.i.i28 = or i1 %i.ic, %i.id, !dbg !41482
  br i1 %or.cond.i.i.i.i28, label %bb.cm, label %bb.cl, !dbg !41482

bb.cl:                                            ; preds = %bb.ck
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 1, !dbg !41483 ; 2 uses
  %i.if = add nuw i64 %.sroa.02.012.i.i.i.i26, 1, !dbg !41484
  %i.ig = icmp eq ptr %i.ie, %i.ia, !dbg !41485
  br i1 %i.ig, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i29, label %bb.ck, !dbg !41486

bb.cm:                                            ; preds = %bb.ck
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sroa.02.012.i.i.i.i26, !dbg !41487
  %i.ii = load i8, ptr %i.ih, align 1, !dbg !41488, !noalias !41256, !noundef !1321
  %i.ij = icmp eq i8 %i.ii, %8, !dbg !41488
  br i1 %i.ij, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i29, label %.lr.ph.split.i.i45, !dbg !41488

.lr.ph.split.i.i45:                               ; preds = %bb.cm
  %i.ik = add nuw i64 %.sroa.02.012.i.i.i.i26, 1, !dbg !41501 ; 2 uses
  %i.il = sub nuw i64 %i.hz, %i.ik, !dbg !41502   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ik, !dbg !41503
  %i.in = add i64 %.sroa.0.014.i83.i25, 1, !dbg !41504 ; 2 uses
  %i.io = icmp eq i64 %i.il, 0, !dbg !41477
  br i1 %i.io, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i29, label %.lr.ph.i.i.i.i24, !dbg !41477

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i53: ; preds = %.lr.ph.split.us.i.i55, %bb.ci, %bb.cf, %bb.ce, %bb.ch, %.lr.ph.split.us.i.preheader.i46
  %.sroa.0.014.us.i76.i54 = phi i64 [ %.sroa.0.014.us.i85.i48, %bb.ce ], [ %.sroa.0.014.us.i85.i48, %bb.ch ], [ 0, %.lr.ph.split.us.i.preheader.i46 ], [ %.sroa.0.014.us.i85.i48, %bb.cf ], [ %i.hw, %.lr.ph.split.us.i.i55 ], [ %.sroa.0.014.us.i85.i48, %bb.ci ]
  %i.ip = add i64 %.sroa.0.014.us.i76.i54, 1, !dbg !41504
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31, !dbg !41506

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i29: ; preds = %.lr.ph.split.i.i45, %bb.cm, %bb.cl, %.lr.ph.split.i.preheader.i23
  %.sroa.0.014.i79.i30 = phi i64 [ %.sroa.0.014.i83.i25, %bb.cl ], [ 0, %.lr.ph.split.i.preheader.i23 ], [ %i.in, %.lr.ph.split.i.i45 ], [ %.sroa.0.014.i83.i25, %bb.cm ]
  %i.iq = add i64 %.sroa.0.014.i79.i30, 1, !dbg !41504
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31, !dbg !41506

bb.cn:                                            ; preds = %bb.cu, %.outer.split.i34
  %i.ir = load i64, ptr %i.fg, align 8, !dbg !41507, !noalias !41243, !noundef !1321 ; 4 uses
  %i.is = icmp ugt i64 %i.je, %i.ir, !dbg !41508
  br i1 %i.is, label %bb.cp, label %bb.co, !dbg !41508, !prof !1333

.split.i38:                                       ; preds = %.outer.i43, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31
  %.sroa.023.0.ph.lcssa70.split.i39 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31 ], [ %i.jd, %.outer.i43 ] ; 2 uses
  %i.it = load i64, ptr %i.fg, align 8, !noalias !41243
  %i.iu = icmp ugt i64 %.sroa.023.0.ph.lcssa70.split.i39, %i.it
  br i1 %i.iu, label %.split.i38.thread, label %bb.cw, !dbg !41509

bb.co:                                            ; preds = %bb.cn
  %i.iv = load ptr, ptr %i.ff, align 8, !dbg !41510, !noalias !41243, !nonnull !1321, !noundef !1321
  %i.iw = sub nuw i64 %i.ir, %i.je, !dbg !41511
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.je, !dbg !41512
  %i.iy = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ix, i64 noundef %i.iw, i64 noundef 1, i64 %.sroa.019.0.i32, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41513, !noalias !41242 ; 2 uses

bb.cp:                                            ; preds = %bb.cn
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.je, i64 noundef %i.ir, i64 noundef %i.ir, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41514, !noalias !41242

bb.cq:                                            ; preds = %bb.co
  %i.iz = extractvalue { i64, i64 } %i.iy, 0, !dbg !41513
  %i.ja = trunc nuw i64 %i.iz to i1, !dbg !41515
  br i1 %i.ja, label %.outer.i43, label %bb.cr, !dbg !41515

.outer.i43:                                       ; preds = %bb.cq
  %i.jb = extractvalue { i64, i64 } %i.iy, 1, !dbg !41513
  %i.jc = add nuw i64 %.sroa.020.0.ph91.i35, 1, !dbg !41516 ; 2 uses
  %i.jd = add i64 %i.jb, %.sroa.023.0.ph90.i36, !dbg !41517 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %i.jc, %4
  br i1 %exitcond.not.i44, label %.split.i38, label %.outer.split.i34, !dbg !41459

.outer.split.i34:                                 ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31, %.outer.i43
  %.sroa.020.0.ph91.i35 = phi i64 [ %i.jc, %.outer.i43 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31 ]
  %.sroa.023.0.ph90.i36 = phi i64 [ %i.jd, %.outer.i43 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i31 ] ; 2 uses
  %i.je = add i64 %.sroa.023.0.ph90.i36, 1, !dbg !41459 ; 4 uses
  br label %bb.cn, !dbg !41459

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !41518, !noalias !41243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !41518, !noalias !41243
  store ptr %i.ag, ptr %i.k, align 8, !dbg !41519, !noalias !41243
  store i64 4096, ptr %i.gd, align 8, !dbg !41519, !noalias !41243
  store i64 4096, ptr %i.ge, align 8, !dbg !41519, !noalias !41243
  %i.jf = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41520, !noalias !41242 ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.jg = extractvalue { i64, ptr } %i.jf, 0, !dbg !41520 ; 2 uses
  %i.jh = extractvalue { i64, ptr } %i.jf, 1, !dbg !41520 ; 2 uses
  store i64 %i.jg, ptr %i.l, align 8, !dbg !41520, !noalias !41243
  store ptr %i.jh, ptr %i.gf, align 8, !dbg !41520, !noalias !41243
  %i.ji = trunc nuw i64 %i.jg to i1, !dbg !41521
  br i1 %i.ji, label %bb.ct, label %bb.cu, !dbg !41522

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gf)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i19.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41523, !noalias !41242

bb.cu:                                            ; preds = %bb.cs
  %i.jj = icmp eq ptr %i.jh, null, !dbg !41521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41524, !noalias !41243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41525, !noalias !41243
  br i1 %i.jj, label %.split.i38.thread, label %bb.cn, !dbg !41526

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41524, !noalias !41243
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41527, !alias.scope !41242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41525, !noalias !41243
  br label %bb.cb, !dbg !41454

.split.i38.thread:                                ; preds = %bb.cu, %bb.cw, %.split.i38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !41528, !noalias !41243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41446, !noalias !41243
  br label %bb.bn, !dbg !41529

bb.cw:                                            ; preds = %.split.i38
  store i64 %.sroa.023.0.ph.lcssa70.split.i39, ptr %i.fg, align 8, !dbg !41530, !noalias !41243
  br label %.split.i38.thread, !dbg !41531

bb.cx:                                            ; preds = %bb.cp
  unreachable

_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !41532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !41264
  call void @_RNvMs_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB4_7DecoderRShE15with_dictionaryCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !41533
  %i.jk = load i64, ptr %i.ae, align 8, !dbg !41534, !range !1532, !noundef !1321 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 2, !dbg !41534
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !41535 ; 2 uses
  br i1 %i.jl, label %bb.fd, label %bb.di, !dbg !41536

bb.cy:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !41537

.body:                                            ; preds = %bb.l, %bb.q, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.cy
  %eh.lpad-body = phi { ptr, i32 } [ %i.jn, %bb.cy ], [ %i.bh, %bb.l ], [ %i.bm, %bb.q ], [ %lpad.loopexit.split-lp557, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ck, %bb.ah ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(320) %i.ah) #35
          to label %common.resume unwind label %bb.de, !dbg !41537

bb.cz:                                            ; preds = %.noexc15, %bb.s, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !41538
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs9VoZUfg37wD_6flate22gz7bufread7GzStateECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.ah)
          to label %bb.db unwind label %bb.da, !dbg !41539

bb.da:                                            ; preds = %bb.cz
  %i.jo = landingpad { ptr, i32 }
          cleanup
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ah, i64 104, !dbg !41539
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs9VoZUfg37wD_6flate23crc9CrcReaderINtNtNtBL_7deflate7bufread14DeflateDecoderINtNtBL_9bufreader9BufReaderRShEEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(208) %i.jp) #35
          to label %common.resume unwind label %bb.dd, !dbg !41539

bb.db:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !41266), !dbg !41539
  call void @llvm.experimental.noalias.scope.decl(metadata !41267), !dbg !41540
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ah, i64 128, !dbg !41541
  %.val1.i.i.i.i.i = load i64, ptr %i.jq, align 8, !dbg !41541, !alias.scope !41268, !noundef !1321 ; 2 uses
  %i.jr = icmp eq i64 %.val1.i.i.i.i.i, 0, !dbg !41542
  br i1 %i.jr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, label %bb.dc, !dbg !41542

bb.dc:                                            ; preds = %bb.db
  %i.js = getelementptr inbounds nuw i8, ptr %i.ah, i64 120, !dbg !41541
  %.val.i.i.i.i.i = load ptr, ptr %i.js, align 8, !dbg !41541, !alias.scope !41268, !nonnull !1321, !noundef !1321
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #39, !dbg !41543, !noalias !41269
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, !dbg !41544

bb.dd:                                            ; preds = %bb.da
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41539
  unreachable, !dbg !41539

common.resume:                                    ; preds = %.body, %.body65, %bb.fg, %.body118, %bb.da
  %common.resume.op = phi { ptr, i32 } [ %i.jo, %bb.da ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body66, %.body65 ], [ %eh.lpad-body119, %bb.fg ], [ %eh.lpad-body119, %.body118 ]
  resume { ptr, i32 } %common.resume.op, !dbg !41545

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.db, %bb.dc
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ah, i64 168, !dbg !41546
  call void @_RNvXs1_NtCs55Ru6MrNffN_7zlib_rs6stableNtB5_7InflateNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ju), !dbg !41547
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
  unreachable, !dbg !41577

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i71: ; preds = %bb.dp
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc120 unwind label %bb.ff, !dbg !41579

.noexc120:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !41570, !noalias !41274
  br label %bb.fh, !dbg !41580

bb.ds:                                            ; preds = %.split.i91.thread, %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !41581, !noalias !41277
  br label %bb.fh, !dbg !41582

bb.dt:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dl
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41583, !noalias !41273
  unreachable, !dbg !41583

bb.du:                                            ; preds = %bb.ea, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !41584, !noalias !41274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !41584, !noalias !41274
  store ptr %i.af, ptr %i.e, align 8, !dbg !41585, !noalias !41274
  store i64 4096, ptr %i.ke, align 8, !dbg !41585, !noalias !41274
  store i64 4096, ptr %i.kf, align 8, !dbg !41585, !noalias !41274
  %i.ks = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41586, !noalias !41273 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.et, %bb.ew, %bb.dz, %bb.du, %bb.ey, %bb.eu, %bb.ed, %bb.eb, %bb.dw
  %lpad.loopexit.split-lp615 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.g) #35
          to label %.body118 unwind label %bb.dt, !dbg !41587, !noalias !41273

bb.dv:                                            ; preds = %bb.du
  %i.kt = extractvalue { i64, ptr } %i.ks, 0, !dbg !41586 ; 2 uses
  %i.ku = extractvalue { i64, ptr } %i.ks, 1, !dbg !41586 ; 2 uses
  store i64 %i.kt, ptr %i.f, align 8, !dbg !41586, !noalias !41274
  store ptr %i.ku, ptr %i.kg, align 8, !dbg !41586, !noalias !41274
  %i.kv = trunc nuw i64 %i.kt to i1, !dbg !41588
  br i1 %i.kv, label %bb.dw, label %bb.dx, !dbg !41589

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.kg)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41590, !noalias !41273

bb.dx:                                            ; preds = %bb.dv
  %i.kw = icmp eq ptr %i.ku, null, !dbg !41588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !41591, !noalias !41274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41592, !noalias !41274
  br i1 %i.kw, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84, label %bb.dz, !dbg !41593

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !41591, !noalias !41274
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41594, !alias.scope !41273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41592, !noalias !41274
  br label %bb.eg, !dbg !41595

bb.dz:                                            ; preds = %bb.dx
  %i.kx = load ptr, ptr %i.kc, align 8, !dbg !41596, !noalias !41274, !nonnull !1321, !noundef !1321
  %i.ky = load i64, ptr %i.kd, align 8, !dbg !41597, !noalias !41274, !noundef !1321
  %i.kz = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kx, i64 noundef %i.ky, i8 noundef %8)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41598, !noalias !41273

_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84: ; preds = %bb.dx, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i82, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106, %bb.ee
  %.sroa.019.0.i85 = phi i64 [ %i.nm, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106 ], [ 0, %bb.ee ], [ %i.nn, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i82 ], [ 0, %bb.dx ], !dbg !41599
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not.i86 = icmp eq i64 %4, 0
  br i1 %.not.i86, label %.split.i91, label %.outer.split.i87, !dbg !41600

bb.ea:                                            ; preds = %bb.dz
  %i.ld = extractvalue { i64, i64 } %i.kz, 0, !dbg !41598
  %i.le = icmp eq i64 %i.ld, 1, !dbg !41598
  br i1 %i.le, label %bb.eb, label %bb.du, !dbg !41598

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41601, !noalias !41274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41601, !noalias !41274
  store ptr %i.af, ptr %i.c, align 8, !dbg !41602, !noalias !41274
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !41602
  store i64 4096, ptr %i.lf, align 8, !dbg !41602, !noalias !41274
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !41602
  store i64 4096, ptr %i.lg, align 8, !dbg !41602, !noalias !41274
  %i.lh = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.ec unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41603, !noalias !41273 ; 2 uses

bb.ec:                                            ; preds = %bb.eb
  %i.li = extractvalue { i64, ptr } %i.lh, 0, !dbg !41603 ; 2 uses
  %i.lj = extractvalue { i64, ptr } %i.lh, 1, !dbg !41603 ; 2 uses
  store i64 %i.li, ptr %i.d, align 8, !dbg !41603, !noalias !41274
  %i.lk = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !41603 ; 2 uses
  store ptr %i.lj, ptr %i.lk, align 8, !dbg !41603, !noalias !41274
  %i.ll = trunc nuw i64 %i.li to i1, !dbg !41604
  br i1 %i.ll, label %bb.ed, label %bb.ee, !dbg !41605

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lk)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41606, !noalias !41273

bb.ee:                                            ; preds = %bb.ec
  %i.lm = icmp eq ptr %i.lj, null, !dbg !41604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41607, !noalias !41274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41608, !noalias !41274
  br i1 %i.lm, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84, label %.lr.ph.i.i74, !dbg !41609

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41607, !noalias !41274
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41610, !alias.scope !41273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41608, !noalias !41274
  br label %bb.eg, !dbg !41611

bb.eg:                                            ; preds = %bb.fa, %bb.ef, %bb.dy
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i95 unwind label %bb.eh, !dbg !41612, !noalias !41273

bb.eh:                                            ; preds = %bb.eg
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body118 unwind label %bb.ei, !dbg !41613, !noalias !41273

bb.ei:                                            ; preds = %bb.eh
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41612, !noalias !41273
  unreachable, !dbg !41612

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i95: ; preds = %bb.eg
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc121 unwind label %bb.ff, !dbg !41614

.noexc121:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41587, !noalias !41274
  br label %bb.fh, !dbg !41580

.lr.ph.i.i74:                                     ; preds = %bb.ee
  %i.lp = load ptr, ptr %i.kc, align 8, !dbg !41615, !noalias !41274, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.lq = load i64, ptr %i.kd, align 8, !dbg !41616, !noalias !41274, !noundef !1321 ; 3 uses
  %..i75 = select i1 %6, i8 %7, i8 34, !dbg !41617 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0, !dbg !41618       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i99, label %.lr.ph.split.i.preheader.i76

.lr.ph.split.i.preheader.i76:                     ; preds = %.lr.ph.i.i74
  br i1 %i.lr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i82, label %.lr.ph.i.i.i.i77, !dbg !41618

.lr.ph.split.us.i.preheader.i99:                  ; preds = %.lr.ph.i.i74
  br i1 %i.lr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106, label %.lr.ph.i100, !dbg !41618

.lr.ph.i100:                                      ; preds = %.lr.ph.split.us.i.preheader.i99, %.lr.ph.split.us.i.i108
  %i.ls = phi ptr [ %i.ms, %.lr.ph.split.us.i.i108 ], [ %i.lp, %.lr.ph.split.us.i.preheader.i99 ] ; 6 uses
  %.sroa.0.014.us.i85.i101 = phi i64 [ %i.mt, %.lr.ph.split.us.i.i108 ], [ 0, %.lr.ph.split.us.i.preheader.i99 ] ; 5 uses
  %i.lt = phi i64 [ %i.mr, %.lr.ph.split.us.i.i108 ], [ %i.lq, %.lr.ph.split.us.i.preheader.i99 ] ; 2 uses
  %i.lu = load i8, ptr %i.ls, align 1, !dbg !41619, !noalias !41287, !noundef !1321
  %i.lv = icmp eq i8 %i.lu, %..i75, !dbg !41620
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt, !dbg !41621 ; 2 uses
  br i1 %i.lv, label %.lr.ph.i.us.i.i110, label %.lr.ph.i.i.us.i.i102, !dbg !41620

.lr.ph.i.i.us.i.i102:                             ; preds = %.lr.ph.i100, %bb.ej
  %.sroa.02.012.i.i.us.i.i103 = phi i64 [ %i.mb, %bb.ej ], [ 0, %.lr.ph.i100 ] ; 3 uses
  %i.lx = phi ptr [ %i.ma, %bb.ej ], [ %i.ls, %.lr.ph.i100 ] ; 2 uses
  %.val7.i.i.us.i.i104 = load i8, ptr %i.lx, align 1, !dbg !41622, !noalias !41288, !noundef !1321 ; 2 uses
  %i.ly = icmp eq i8 %.val7.i.i.us.i.i104, %5, !dbg !41623
  %i.lz = icmp eq i8 %.val7.i.i.us.i.i104, %8
  %or.cond.i.i.us.i.i105 = or i1 %i.ly, %i.lz, !dbg !41623
  br i1 %or.cond.i.i.us.i.i105, label %bb.ek, label %bb.ej, !dbg !41623

bb.ej:                                            ; preds = %.lr.ph.i.i.us.i.i102
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 1, !dbg !41624 ; 2 uses
  %i.mb = add nuw i64 %.sroa.02.012.i.i.us.i.i103, 1, !dbg !41625
  %i.mc = icmp eq ptr %i.ma, %i.lw, !dbg !41626
  br i1 %i.mc, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106, label %.lr.ph.i.i.us.i.i102, !dbg !41627

bb.ek:                                            ; preds = %.lr.ph.i.i.us.i.i102
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.sroa.02.012.i.i.us.i.i103, !dbg !41628
  %i.me = load i8, ptr %i.md, align 1, !dbg !41629, !noalias !41287, !noundef !1321
  %i.mf = icmp eq i8 %i.me, %8, !dbg !41629
  br i1 %i.mf, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106, label %.lr.ph.split.us.i.i108, !dbg !41629

.lr.ph.i.us.i.i110:                               ; preds = %.lr.ph.i100, %bb.em
  %.sroa.05.053.i.us.i.i111 = phi i8 [ %spec.select.i.us.i.i114, %bb.em ], [ 0, %.lr.ph.i100 ] ; 2 uses
  %.sroa.09.052.i.us.i.i112 = phi i32 [ %i.mm, %bb.em ], [ 0, %.lr.ph.i100 ] ; 3 uses
  %.sroa.012.051.i.us.i.i113 = phi ptr [ %i.mg, %bb.em ], [ %i.ls, %.lr.ph.i100 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i113, i64 1, !dbg !41630 ; 2 uses
  %i.mh = load i8, ptr %.sroa.012.051.i.us.i.i113, align 1, !dbg !41631, !noalias !41287, !noundef !1321 ; 3 uses
  %i.mi = icmp eq i8 %i.mh, %..i75, !dbg !41632
  %i.mj = zext i1 %i.mi to i8, !dbg !41632        ; 2 uses
  %spec.select.i.us.i.i114 = xor i8 %.sroa.05.053.i.us.i.i111, %i.mj, !dbg !41632
  %.not.i.us.i.i115 = icmp eq i8 %.sroa.05.053.i.us.i.i111, %i.mj, !dbg !41633
  br i1 %.not.i.us.i.i115, label %bb.el, label %bb.em, !dbg !41633

bb.el:                                            ; preds = %.lr.ph.i.us.i.i110
  %i.mk = icmp eq i8 %i.mh, %5, !dbg !41634
  %i.ml = icmp eq i8 %i.mh, %8                    ; 2 uses
  %or.cond.i.us.i.i116 = or i1 %i.mk, %i.ml, !dbg !41634
  br i1 %or.cond.i.us.i.i116, label %bb.en, label %bb.em, !dbg !41634

bb.em:                                            ; preds = %bb.el, %.lr.ph.i.us.i.i110
  %i.mm = add i32 %.sroa.09.052.i.us.i.i112, 1, !dbg !41635
  %i.mn = icmp eq ptr %i.mg, %i.lw, !dbg !41636
  br i1 %i.mn, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106, label %.lr.ph.i.us.i.i110, !dbg !41637

bb.en:                                            ; preds = %bb.el
  %i.mo = icmp eq i32 %.sroa.09.052.i.us.i.i112, 0
  %or.cond.i.i117 = select i1 %i.ml, i1 true, i1 %i.mo, !dbg !41638
  br i1 %or.cond.i.i117, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106, label %bb.eo, !dbg !41638

bb.eo:                                            ; preds = %bb.en
  %i.mp = zext i32 %.sroa.09.052.i.us.i.i112 to i64, !dbg !41639
  br label %.lr.ph.split.us.i.i108, !dbg !41640

.lr.ph.split.us.i.i108:                           ; preds = %bb.eo, %bb.ek
  %.sroa.016.0.i.us.i.i109 = phi i64 [ %i.mp, %bb.eo ], [ %.sroa.02.012.i.i.us.i.i103, %bb.ek ], !dbg !41641
  %i.mq = add nuw i64 %.sroa.016.0.i.us.i.i109, 1, !dbg !41642 ; 2 uses
  %i.mr = sub nuw i64 %i.lt, %i.mq, !dbg !41643   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.mq, !dbg !41644
  %i.mt = add i64 %.sroa.0.014.us.i85.i101, 1, !dbg !41645 ; 2 uses
  %i.mu = icmp eq i64 %i.mr, 0, !dbg !41618
  br i1 %i.mu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106, label %.lr.ph.i100, !dbg !41618

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.split.i.preheader.i76, %.lr.ph.split.i.i98
  %i.mv = phi ptr [ %i.nj, %.lr.ph.split.i.i98 ], [ %i.lp, %.lr.ph.split.i.preheader.i76 ] ; 4 uses
  %.sroa.0.014.i83.i78 = phi i64 [ %i.nk, %.lr.ph.split.i.i98 ], [ 0, %.lr.ph.split.i.preheader.i76 ] ; 3 uses
  %i.mw = phi i64 [ %i.ni, %.lr.ph.split.i.i98 ], [ %i.lq, %.lr.ph.split.i.preheader.i76 ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mw, !dbg !41646
  br label %bb.ep, !dbg !41627

bb.ep:                                            ; preds = %bb.eq, %.lr.ph.i.i.i.i77
  %.sroa.02.012.i.i.i.i79 = phi i64 [ 0, %.lr.ph.i.i.i.i77 ], [ %i.nc, %bb.eq ] ; 3 uses
  %i.my = phi ptr [ %i.mv, %.lr.ph.i.i.i.i77 ], [ %i.nb, %bb.eq ] ; 2 uses
  %.val7.i.i.i.i80 = load i8, ptr %i.my, align 1, !dbg !41622, !noalias !41288, !noundef !1321 ; 2 uses
  %i.mz = icmp eq i8 %.val7.i.i.i.i80, %5, !dbg !41623
  %i.na = icmp eq i8 %.val7.i.i.i.i80, %8
  %or.cond.i.i.i.i81 = or i1 %i.mz, %i.na, !dbg !41623
  br i1 %or.cond.i.i.i.i81, label %bb.er, label %bb.eq, !dbg !41623

bb.eq:                                            ; preds = %bb.ep
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 1, !dbg !41624 ; 2 uses
  %i.nc = add nuw i64 %.sroa.02.012.i.i.i.i79, 1, !dbg !41625
  %i.nd = icmp eq ptr %i.nb, %i.mx, !dbg !41626
  br i1 %i.nd, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i82, label %bb.ep, !dbg !41627

bb.er:                                            ; preds = %bb.ep
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.sroa.02.012.i.i.i.i79, !dbg !41628
  %i.nf = load i8, ptr %i.ne, align 1, !dbg !41629, !noalias !41287, !noundef !1321
  %i.ng = icmp eq i8 %i.nf, %8, !dbg !41629
  br i1 %i.ng, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i82, label %.lr.ph.split.i.i98, !dbg !41629

.lr.ph.split.i.i98:                               ; preds = %bb.er
  %i.nh = add nuw i64 %.sroa.02.012.i.i.i.i79, 1, !dbg !41642 ; 2 uses
  %i.ni = sub nuw i64 %i.mw, %i.nh, !dbg !41643   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.nh, !dbg !41644
  %i.nk = add i64 %.sroa.0.014.i83.i78, 1, !dbg !41645 ; 2 uses
  %i.nl = icmp eq i64 %i.ni, 0, !dbg !41618
  br i1 %i.nl, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i82, label %.lr.ph.i.i.i.i77, !dbg !41618

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i106: ; preds = %.lr.ph.split.us.i.i108, %bb.en, %bb.ek, %bb.ej, %bb.em, %.lr.ph.split.us.i.preheader.i99
  %.sroa.0.014.us.i76.i107 = phi i64 [ %.sroa.0.014.us.i85.i101, %bb.ej ], [ %.sroa.0.014.us.i85.i101, %bb.em ], [ 0, %.lr.ph.split.us.i.preheader.i99 ], [ %.sroa.0.014.us.i85.i101, %bb.ek ], [ %i.mt, %.lr.ph.split.us.i.i108 ], [ %.sroa.0.014.us.i85.i101, %bb.en ]
  %i.nm = add i64 %.sroa.0.014.us.i76.i107, 1, !dbg !41645
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84, !dbg !41647

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i82: ; preds = %.lr.ph.split.i.i98, %bb.er, %bb.eq, %.lr.ph.split.i.preheader.i76
  %.sroa.0.014.i79.i83 = phi i64 [ %.sroa.0.014.i83.i78, %bb.eq ], [ 0, %.lr.ph.split.i.preheader.i76 ], [ %i.nk, %.lr.ph.split.i.i98 ], [ %.sroa.0.014.i83.i78, %bb.er ]
  %i.nn = add i64 %.sroa.0.014.i79.i83, 1, !dbg !41645
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84, !dbg !41647

bb.es:                                            ; preds = %bb.ez, %.outer.split.i87
  %i.no = load i64, ptr %i.kd, align 8, !dbg !41648, !noalias !41274, !noundef !1321 ; 4 uses
  %i.np = icmp ugt i64 %i.ob, %i.no, !dbg !41649
  br i1 %i.np, label %bb.eu, label %bb.et, !dbg !41649, !prof !1333

.split.i91:                                       ; preds = %.outer.i96, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84
  %.sroa.023.0.ph.lcssa70.split.i92 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84 ], [ %i.oa, %.outer.i96 ] ; 2 uses
  %i.nq = load i64, ptr %i.kd, align 8, !noalias !41274
  %i.nr = icmp ugt i64 %.sroa.023.0.ph.lcssa70.split.i92, %i.nq
  br i1 %i.nr, label %.split.i91.thread, label %bb.fb, !dbg !41650

bb.et:                                            ; preds = %bb.es
  %i.ns = load ptr, ptr %i.kc, align 8, !dbg !41651, !noalias !41274, !nonnull !1321, !noundef !1321
  %i.nt = sub nuw i64 %i.no, %i.ob, !dbg !41652
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ob, !dbg !41653
  %i.nv = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.nu, i64 noundef %i.nt, i64 noundef 1, i64 %.sroa.019.0.i85, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41654, !noalias !41273 ; 2 uses

bb.eu:                                            ; preds = %bb.es
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ob, i64 noundef %i.no, i64 noundef %i.no, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.fc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41655, !noalias !41273

bb.ev:                                            ; preds = %bb.et
  %i.nw = extractvalue { i64, i64 } %i.nv, 0, !dbg !41654
  %i.nx = trunc nuw i64 %i.nw to i1, !dbg !41656
  br i1 %i.nx, label %.outer.i96, label %bb.ew, !dbg !41656

.outer.i96:                                       ; preds = %bb.ev
  %i.ny = extractvalue { i64, i64 } %i.nv, 1, !dbg !41654
  %i.nz = add nuw i64 %.sroa.020.0.ph91.i88, 1, !dbg !41657 ; 2 uses
  %i.oa = add i64 %i.ny, %.sroa.023.0.ph90.i89, !dbg !41658 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %i.nz, %4
  br i1 %exitcond.not.i97, label %.split.i91, label %.outer.split.i87, !dbg !41600

.outer.split.i87:                                 ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84, %.outer.i96
  %.sroa.020.0.ph91.i88 = phi i64 [ %i.nz, %.outer.i96 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84 ]
  %.sroa.023.0.ph90.i89 = phi i64 [ %i.oa, %.outer.i96 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i84 ] ; 2 uses
  %i.ob = add i64 %.sroa.023.0.ph90.i89, 1, !dbg !41600 ; 4 uses
  br label %bb.es, !dbg !41600

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41659, !noalias !41274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41659, !noalias !41274
  store ptr %i.af, ptr %i.a, align 8, !dbg !41660, !noalias !41274
  store i64 4096, ptr %i.la, align 8, !dbg !41660, !noalias !41274
  store i64 4096, ptr %i.lb, align 8, !dbg !41660, !noalias !41274
  %i.oc = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41661, !noalias !41273 ; 2 uses

bb.ex:                                            ; preds = %bb.ew
  %i.od = extractvalue { i64, ptr } %i.oc, 0, !dbg !41661 ; 2 uses
  %i.oe = extractvalue { i64, ptr } %i.oc, 1, !dbg !41661 ; 2 uses
  store i64 %i.od, ptr %i.b, align 8, !dbg !41661, !noalias !41274
  store ptr %i.oe, ptr %i.lc, align 8, !dbg !41661, !noalias !41274
  %i.of = trunc nuw i64 %i.od to i1, !dbg !41662
  br i1 %i.of, label %bb.ey, label %bb.ez, !dbg !41663

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lc)
          to label %bb.fa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41664, !noalias !41273

bb.ez:                                            ; preds = %bb.ex
  %i.og = icmp eq ptr %i.oe, null, !dbg !41662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41665, !noalias !41274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41666, !noalias !41274
  br i1 %i.og, label %.split.i91.thread, label %bb.es, !dbg !41667

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41665, !noalias !41274
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41668, !alias.scope !41273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41666, !noalias !41274
  br label %bb.eg, !dbg !41595

.split.i91.thread:                                ; preds = %bb.ez, %bb.fb, %.split.i91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !41669, !noalias !41274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41587, !noalias !41274
  br label %bb.ds, !dbg !41670

bb.fb:                                            ; preds = %.split.i91
  store i64 %.sroa.023.0.ph.lcssa70.split.i92, ptr %i.kd, align 8, !dbg !41671, !noalias !41274
  br label %.split.i91.thread, !dbg !41672

bb.fc:                                            ; preds = %bb.eu
  unreachable

bb.fd:                                            ; preds = %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jm), !dbg !41673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !41560
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !41675
  br label %bb.fe, !dbg !41676

bb.fe:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit123, %bb.h, %bb.fd
  ret void, !dbg !41677

bb.ff:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i95, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i71
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.body118, !dbg !41675

.body118:                                         ; preds = %bb.dl, %bb.dq, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eh, %bb.ff
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.oh, %bb.ff ], [ %i.kk, %bb.dl ], [ %i.kp, %bb.dq ], [ %lpad.loopexit.split-lp615, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ln, %bb.eh ] ; 2 uses
  %i.oi = load i64, ptr %i.af, align 8, !dbg !41678, !range !1368, !alias.scope !41298, !noundef !1321
  %i.oj = icmp eq i64 %i.oi, 0, !dbg !41678
  br i1 %i.oj, label %bb.fg, label %common.resume, !dbg !41678

bb.fg:                                            ; preds = %.body118
  invoke void @_RNvXs6_CslcGXmMsZ7N2_9zstd_safeNtB5_4DCtxNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.411.0..sroa_idx)
          to label %common.resume unwind label %bb.de, !dbg !41679

bb.fh:                                            ; preds = %.noexc121, %bb.ds, %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !41680
  %i.ok = load i64, ptr %i.af, align 8, !dbg !41681, !range !1368, !alias.scope !41299, !noundef !1321
  %i.ol = icmp eq i64 %i.ok, 0, !dbg !41681
  br i1 %i.ol, label %bb.fi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit123, !dbg !41681

bb.fi:                                            ; preds = %bb.fh
  call void @_RNvXs6_CslcGXmMsZ7N2_9zstd_safeNtB5_4DCtxNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.411.0..sroa_idx), !dbg !41682
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit123, !dbg !41681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit123: ; preds = %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !41675
  br label %bb.fe, !dbg !41675
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8RKTHBS4OBx_12object_store3awsNtB5_8AmazonS3NtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !41683 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41686
  store ptr %0, ptr %i.a, align 8, !dbg !41686
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241), !dbg !41687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41688
  ret i1 %i.b, !dbg !41689
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8RKTHBS4OBx_12object_store3gcpNtB5_18GoogleCloudStorageNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !41690 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41694
  store ptr %0, ptr %i.a, align 8, !dbg !41694
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244), !dbg !41695
end_hunk_3
