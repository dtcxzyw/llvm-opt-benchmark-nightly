Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.0?download=true
inline.NumInlined: 178
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_block:bb.a
  unreachable

bb.cc:                                            ; preds = %._crit_edge103.i
  %i.lz = shl nuw nsw i32 %i.lu, %i.lr
  %i.ma = or i32 %i.lz, %i.lq                     ; 2 uses
  store i32 %i.ma, ptr %i.ky, align 8, !alias.scope !324, !noalias !318
  %i.mb = add nuw nsw i32 %i.lr, %i.lx            ; 3 uses
  %i.mc = icmp samesign ugt i32 %i.mb, 7
  br i1 %i.mc, label %.lr.ph.i.i16, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14

.lr.ph.i.i16:                                     ; preds = %bb.cc
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !324, !noalias !318, !noundef !4 ; 2 uses
  %i.mg = load ptr, ptr %1, align 8, !alias.scope !324, !noalias !318, !nonnull !4
  %.promoted6.i.i17 = load i64, ptr %i.md, align 8, !alias.scope !324, !noalias !318 ; 2 uses
  %umax.i.i18 = call i64 @llvm.umax.i64(i64 %.promoted6.i.i17, i64 %i.mf) ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.lr.ph.i.i16
  %i.mh = phi i64 [ %.promoted6.i.i17, %.lr.ph.i.i16 ], [ %i.ml, %bb.ce ] ; 3 uses
  %storemerge5.i.i19 = phi i32 [ %i.mb, %.lr.ph.i.i16 ], [ %i.mn, %bb.ce ] ; 2 uses
  %i.mi = phi i32 [ %i.ma, %.lr.ph.i.i16 ], [ %i.mm, %bb.ce ] ; 2 uses
  %exitcond.not.i.i20 = icmp eq i64 %i.mh, %umax.i.i18
  br i1 %exitcond.not.i.i20, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mh
  %i.mk = trunc i32 %i.mi to i8
  store i8 %i.mk, ptr %i.mj, align 1, !noalias !323
  %i.ml = add i64 %i.mh, 1                        ; 2 uses
  store i64 %i.ml, ptr %i.md, align 8, !alias.scope !324, !noalias !318
  %i.mm = lshr i32 %i.mi, 8                       ; 2 uses
  store i32 %i.mm, ptr %i.ky, align 8, !alias.scope !324, !noalias !318
  %i.mn = add nsw i32 %storemerge5.i.i19, -8      ; 3 uses
  %i.mo = icmp ugt i32 %i.mn, 7
  br i1 %i.mo, label %bb.cd, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14

bb.cf:                                            ; preds = %bb.cd
  store i32 %storemerge5.i.i19, ptr %i.la, align 4, !alias.scope !324, !noalias !318
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i18, i64 noundef %i.mf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !323
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14: ; preds = %bb.ce, %bb.cc
  %storemerge.lcssa.i.i15 = phi i32 [ %i.mb, %bb.cc ], [ %i.mn, %bb.ce ]
  store i32 %storemerge.lcssa.i.i15, ptr %i.la, align 4, !alias.scope !324, !noalias !318
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit

bb.cg:                                            ; preds = %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i, %.lr.ph102.i
  %i.mp = phi i64 [ %.promoted104.i, %.lr.ph102.i ], [ %i.nj, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 3 uses
  %.sroa.0.1100.i = phi i64 [ %.sroa.0.066.lcssa.i, %.lr.ph102.i ], [ %i.nl, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 2 uses
  %.sroa.19.199.i = phi i32 [ %.sroa.19.0.lcssa.i, %.lr.ph102.i ], [ %i.nm, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 2 uses
  %i.mq = phi i32 [ 0, %.lr.ph102.i ], [ %storemerge.lcssa.i40.i, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ] ; 2 uses
  %i.mr = phi i32 [ 0, %.lr.ph102.i ], [ %i.nk, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i ]
  %..i37.i = call noundef i32 @llvm.umin.i32(i32 range(i32 1, 0) %.sroa.19.199.i, i32 16) ; 4 uses
  %i.ms = zext nneg i32 %..i37.i to i64           ; 2 uses
  %i.mt = trunc i64 %.sroa.0.1100.i to i32
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr @57, i64 %i.ms
  %i.mv = load i32, ptr %i.mu, align 4, !noalias !325, !noundef !4
  %i.mw = and i32 %i.mv, %i.mt                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %.highbits.i38.i = lshr i32 %i.mw, %..i37.i
  %.not.not.i39.i = icmp eq i32 %.highbits.i38.i, 0
  br i1 %.not.not.i39.i, label %bb.ci, label %bb.ch, !prof !67

bb.ch:                                            ; preds = %bb.cg
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22, !noalias !329
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.mx = shl i32 %i.mw, %i.mq
  %i.my = or i32 %i.mx, %i.mr                     ; 3 uses
  store i32 %i.my, ptr %i.ky, align 8, !alias.scope !330, !noalias !318
  %i.mz = add nuw nsw i32 %i.mq, %..i37.i         ; 3 uses
  %i.na = icmp ugt i32 %i.mz, 7
  br i1 %i.na, label %.lr.ph.i41.i, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i

.lr.ph.i41.i:                                     ; preds = %bb.ci
  %umax.i43.i = call i64 @llvm.umax.i64(i64 %i.mp, i64 %i.lm) ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %.lr.ph.i41.i
  %i.nb = phi i64 [ %i.mp, %.lr.ph.i41.i ], [ %i.nf, %bb.ck ] ; 3 uses
  %storemerge5.i44.i = phi i32 [ %i.mz, %.lr.ph.i41.i ], [ %i.nh, %bb.ck ] ; 2 uses
  %i.nc = phi i32 [ %i.my, %.lr.ph.i41.i ], [ %i.ng, %bb.ck ] ; 2 uses
  %exitcond.not.i45.i = icmp eq i64 %i.nb, %umax.i43.i
  br i1 %exitcond.not.i45.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.nb
  %i.ne = trunc i32 %i.nc to i8
  store i8 %i.ne, ptr %i.nd, align 1, !noalias !329
  %i.nf = add i64 %i.nb, 1                        ; 3 uses
  store i64 %i.nf, ptr %i.lk, align 8, !alias.scope !330, !noalias !318
  %i.ng = lshr i32 %i.nc, 8                       ; 3 uses
  store i32 %i.ng, ptr %i.ky, align 8, !alias.scope !330, !noalias !318
  %i.nh = add nsw i32 %storemerge5.i44.i, -8      ; 3 uses
  %i.ni = icmp ugt i32 %i.nh, 7
  br i1 %i.ni, label %bb.cj, label %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i

bb.cl:                                            ; preds = %bb.cj
  store i32 %storemerge5.i44.i, ptr %i.la, align 4, !alias.scope !330, !noalias !318
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %umax.i43.i, i64 noundef %i.lm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !329
  unreachable

_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit46.i: ; preds = %bb.ck, %bb.ci
  %i.nj = phi i64 [ %i.mp, %bb.ci ], [ %i.nf, %bb.ck ]
  %i.nk = phi i32 [ %i.my, %bb.ci ], [ %i.ng, %bb.ck ] ; 2 uses
  %storemerge.lcssa.i40.i = phi i32 [ %i.mz, %bb.ci ], [ %i.nh, %bb.ck ] ; 3 uses
  store i32 %storemerge.lcssa.i40.i, ptr %i.la, align 4, !alias.scope !330, !noalias !318
  %i.nl = lshr i64 %.sroa.0.1100.i, %i.ms
  %i.nm = sub i32 %.sroa.19.199.i, %..i37.i       ; 2 uses
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %._crit_edge103.i, label %bb.cg

bb.cm:                                            ; preds = %bb.ca
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.093.i
  %i.np = load i8, ptr %i.no, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.nq = zext i8 %i.np to i32
  %i.nr = or disjoint i32 %i.nq, 256
  %i.ns = add nuw nsw i64 %.sroa.07.093.i, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ca
  %.sroa.07.1.i = phi i64 [ %i.ns, %bb.cm ], [ %.sroa.07.093.i, %bb.ca ] ; 8 uses
  %.sroa.02.1.i = phi i32 [ %i.nr, %bb.cm ], [ %.sroa.02.094.i, %bb.ca ] ; 7 uses
  %i.nt = and i32 %.sroa.02.1.i, 1
  %.not.i10 = icmp eq i32 %i.nt, 0
  br i1 %.not.i10, label %.preheader.i21, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nu = lshr i32 %.sroa.02.1.i, 1
  %i.nv = and i64 %.sroa.07.1.i, 65535
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.ny = zext i8 %i.nx to i64                    ; 3 uses
  %i.nz = add nuw nsw i64 %.sroa.07.1.i, 2
  %i.oa = and i64 %i.nz, 65535
  %i.ob = add nuw nsw i64 %.sroa.07.1.i, 1
  %i.oc = and i64 %i.ob, 65535
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.of = zext i8 %i.oe to i16
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 %i.oa
  %i.oh = load i8, ptr %i.og, align 1, !alias.scope !316, !noalias !331, !noundef !4 ; 4 uses
  %i.oi = zext i8 %i.oh to i16
  %i.oj = shl nuw i16 %i.oi, 8
  %i.ok = or disjoint i16 %i.oj, %i.of            ; 2 uses
  %i.ol = add nuw nsw i64 %.sroa.07.1.i, 3
  %i.om = getelementptr inbounds nuw i8, ptr @45, i64 %i.ny
  %i.on = load i8, ptr %i.om, align 1, !noalias !325, !noundef !4
  %i.oo = and i8 %i.on, 31
  %i.op = zext nneg i8 %i.oo to i64
  %i.oq = or disjoint i64 %i.op, 256              ; 2 uses
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.oq
  %i.os = load i16, ptr %i.or, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.ot = zext i16 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oq
  %i.ov = load i8, ptr %i.ou, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.ow = zext i8 %i.ov to i32
  %i.ox = and i32 %.sroa.19.091.i, 63
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = shl i64 %i.ot, %i.oy
  %i.pa = add i32 %.sroa.19.091.i, %i.ow          ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr @58, i64 %i.ny
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !325, !noundef !4 ; 2 uses
  %i.pd = and i8 %i.pc, 7
  %i.pe = zext nneg i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr @57, i64 %i.pe
  %i.pg = load i32, ptr %i.pf, align 4, !noalias !325, !noundef !4
  %i.ph = zext i32 %i.pg to i64
  %i.pi = and i64 %i.ph, %i.ny
  %i.pj = zext i8 %i.pc to i32
  %i.pk = and i32 %i.pa, 63
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl i64 %i.pi, %i.pl
  %i.pn = add i32 %i.pa, %i.pj                    ; 2 uses
  %i.po = icmp ult i8 %i.oh, 2
  br i1 %i.po, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pp = zext i8 %i.oh to i64                    ; 3 uses
  %i.pq = icmp sgt i8 %i.oh, -1
  br i1 %i.pq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pr = getelementptr inbounds nuw i8, ptr @43, i64 %i.pp
  %i.ps = getelementptr inbounds nuw i8, ptr @60, i64 %i.pp
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.pp, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #22, !noalias !325
  unreachable

bb.cs:                                            ; preds = %bb.ct, %bb.cq
  %.sroa.021.0.in.in.i = phi ptr [ %i.qs, %bb.ct ], [ %i.ps, %bb.cq ]
  %.sroa.017.0.in.in.i = phi ptr [ %i.qr, %bb.ct ], [ %i.pr, %bb.cq ]
  %.sroa.017.0.in.i = load i8, ptr %.sroa.017.0.in.in.i, align 1, !noalias !325, !noundef !4
  %.sroa.017.0.i = zext i8 %.sroa.017.0.in.i to i64 ; 2 uses
  %.sroa.021.0.in.i = load i8, ptr %.sroa.021.0.in.in.i, align 1, !noalias !325, !noundef !4 ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.ld, i64 %.sroa.017.0.i
  %i.pu = load i16, ptr %i.pt, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.pv = zext i16 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.017.0.i
  %i.px = load i8, ptr %i.pw, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.py = zext i8 %i.px to i32
  %i.pz = and i32 %i.pn, 63
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = shl i64 %i.pv, %i.qa
  %i.qc = add i32 %i.pn, %i.py                    ; 2 uses
  %4 = and i8 %.sroa.021.0.in.i, 15
  %5 = zext nneg i8 %4 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @57, i64 %5
  %i.qd = load i32, ptr %6, align 4, !noalias !325, !noundef !4
  %i.qe = zext i16 %i.ok to i32
  %i.qf = and i32 %i.qd, %i.qe
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = zext i8 %.sroa.021.0.in.i to i32
  %i.qi = and i32 %i.qc, 63
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = shl i64 %i.qg, %i.qj
  %i.ql = or i64 %i.oz, %i.pm
  %i.qm = or i64 %i.ql, %i.qb
  %i.qn = or i64 %i.qm, %i.qk
  %i.qo = or i64 %i.qn, %.sroa.0.06692.i
  %i.qp = add i32 %i.qc, %i.qh
  br label %.loopexit.i

bb.ct:                                            ; preds = %bb.co
  %i.qq = zext nneg i16 %i.ok to i64              ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr @44, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr @61, i64 %i.qq
  br label %bb.cs

.loopexit.i:                                      ; preds = %.preheader.i21.2, %.preheader.i21, %.preheader.i21.1, %bb.cs
  %.sroa.19.2.i = phi i32 [ %i.qp, %bb.cs ], [ %i.rv, %.preheader.i21 ], [ %i.th, %.preheader.i21.2 ], [ %i.so, %.preheader.i21.1 ] ; 3 uses
  %.sroa.0.2.i11 = phi i64 [ %i.qo, %bb.cs ], [ %i.ru, %.preheader.i21 ], [ %i.tg, %.preheader.i21.2 ], [ %i.sn, %.preheader.i21.1 ] ; 2 uses
  %.sroa.07.2.i = phi i64 [ %i.ol, %bb.cs ], [ %i.rg, %.preheader.i21 ], [ %i.ss, %.preheader.i21.2 ], [ %i.rz, %.preheader.i21.1 ] ; 2 uses
  %.sroa.02.2.i = phi i32 [ %i.nu, %bb.cs ], [ %i.rf, %.preheader.i21 ], [ %i.sr, %.preheader.i21.2 ], [ %i.ry, %.preheader.i21.1 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.qt = add i64 %i.lo, 8                        ; 2 uses
  %i.qu = icmp ugt i64 %i.lo, -9
  %.not.i.i = icmp ugt i64 %i.qt, %i.lh
  %or.cond.i.i = or i1 %i.qu, %.not.i.i
  br i1 %or.cond.i.i, label %bb.cv, label %bb.cu, !prof !74

bb.cu:                                            ; preds = %.loopexit.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !335
  store i64 %.sroa.0.2.i11, ptr %i.a, align 8, !noalias !335
  call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.qv, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !335
  %i.qw = lshr i32 %.sroa.19.2.i, 3
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = add i64 %i.lo, %i.qx                    ; 4 uses
  %i.qz = icmp ult i64 %i.qy, %i.lo
  %.not5.i.i = icmp ugt i64 %i.qy, %i.lh
  %or.cond6.i.i = or i1 %i.qz, %.not5.i.i
  br i1 %or.cond6.i.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit, label %_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i, !prof !337

bb.cv:                                            ; preds = %.loopexit.i
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.lo, i64 noundef %i.qt, i64 noundef %i.lh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !335
  unreachable

_RNvMs8_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_9BitBuffer5flush.exit.i: ; preds = %bb.cu
  store i64 %i.qy, ptr %i.lf, align 8, !alias.scope !338, !noalias !339
  %i.ra = and i32 %.sroa.19.2.i, 56
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = lshr i64 %.sroa.0.2.i11, %i.rb          ; 2 uses
  %i.rd = and i32 %.sroa.19.2.i, 7                ; 2 uses
  %i.re = icmp ult i64 %.sroa.07.2.i, %..i.i7
  br i1 %i.re, label %bb.ca, label %._crit_edge.i12

.preheader.i21:                                   ; preds = %bb.cn
  %i.rf = lshr exact i32 %.sroa.02.1.i, 1
  %i.rg = add i64 %.sroa.07.1.i, 1                ; 3 uses
  %i.rh = and i64 %.sroa.07.1.i, 65535
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.rk = zext i8 %i.rj to i64                    ; 2 uses
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.rk
  %i.rm = load i16, ptr %i.rl, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.rn = zext i16 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.rk
  %i.rp = load i8, ptr %i.ro, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.rq = zext i8 %i.rp to i32
  %i.rr = and i32 %.sroa.19.091.i, 63
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = shl i64 %i.rn, %i.rs
  %i.ru = or i64 %i.rt, %.sroa.0.06692.i          ; 2 uses
  %i.rv = add i32 %.sroa.19.091.i, %i.rq          ; 3 uses
  %i.rw = and i32 %.sroa.02.1.i, 2
  %.not36.i = icmp eq i32 %i.rw, 0
  %i.rx = icmp ult i64 %i.rg, %..i.i7
  %or.cond = select i1 %.not36.i, i1 %i.rx, i1 false
  br i1 %or.cond, label %.preheader.i21.1, label %.loopexit.i

.preheader.i21.1:                                 ; preds = %.preheader.i21
  %i.ry = lshr exact i32 %.sroa.02.1.i, 2
  %i.rz = add i64 %.sroa.07.1.i, 2                ; 3 uses
  %i.sa = and i64 %i.rg, 65535
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.sd = zext i8 %i.sc to i64                    ; 2 uses
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.sd
  %i.sf = load i16, ptr %i.se, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.sg = zext i16 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.sd
  %i.si = load i8, ptr %i.sh, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.sj = zext i8 %i.si to i32
  %i.sk = and i32 %i.rv, 63
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = shl i64 %i.sg, %i.sl
  %i.sn = or i64 %i.sm, %i.ru                     ; 2 uses
  %i.so = add i32 %i.rv, %i.sj                    ; 3 uses
  %i.sp = and i32 %.sroa.02.1.i, 4
  %.not36.i.1 = icmp eq i32 %i.sp, 0
  %i.sq = icmp ult i64 %i.rz, %..i.i7
  %or.cond415 = select i1 %.not36.i.1, i1 %i.sq, i1 false
  br i1 %or.cond415, label %.preheader.i21.2, label %.loopexit.i

.preheader.i21.2:                                 ; preds = %.preheader.i21.1
  %i.sr = lshr exact i32 %.sroa.02.1.i, 3
  %i.ss = add i64 %.sroa.07.1.i, 3
  %i.st = and i64 %i.rz, 65535
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !alias.scope !316, !noalias !331, !noundef !4
  %i.sw = zext i8 %i.sv to i64                    ; 2 uses
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.sw
  %i.sy = load i16, ptr %i.sx, align 2, !alias.scope !311, !noalias !319, !noundef !4
  %i.sz = zext i16 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.sw
  %i.tb = load i8, ptr %i.ta, align 1, !alias.scope !311, !noalias !319, !noundef !4
  %i.tc = zext i8 %i.tb to i32
  %i.td = and i32 %i.so, 63
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = shl i64 %i.sz, %i.te
  %i.tg = or i64 %i.tf, %i.sn
  %i.th = add i32 %i.so, %i.tc
  br label %.loopexit.i

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core17compress_lz_codes.exit: ; preds = %bb.cu, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread
  %.sroa.0.0 = phi i8 [ 2, %_RNvMsb_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_12HuffmanOxide19start_dynamic_block.exit.thread ], [ 1, %_RNvMs7_NtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4coreNtB5_17OutputBufferOxide8put_bits.exit.i14 ], [ 2, %bb.cu ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(65712) initializes((65640, 65656)) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65640 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65648 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 65700 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 4, !range !340, !noundef !4
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 65705 ; 9 uses
  %i.g = load i8, ptr %i.f, align 1, !range !341, !noundef !4
  %.not18 = icmp eq i8 %i.g, 4
  br i1 %.not18, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %3, 4
  store i8 %3, ptr %i.f, align 1
  %or.cond = and i1 %i.h, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 %3, ptr %i.f, align 1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 -2, ptr %i.c, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.i, align 8
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.fb

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 65684 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = icmp ne i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 65707 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !92
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond7 = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 65664 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = and i32 %i.r, 524288
  %.not20 = icmp eq i32 %i.s, 0
  br i1 %.not20, label %bb.h, label %.split

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core19flush_output_buffer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %2, ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !range !340, !noundef !4
  store i32 %i.u, ptr %i.c, align 4
  br label %bb.fb

bb.h:                                             ; preds = %bb.f
  %i.v = and i32 %i.r, 151551
  %brmerge3.not = icmp eq i32 %i.v, 16385
  br i1 %brmerge3.not, label %bb.cc, label %bb.i

.split:                                           ; preds = %bb.f
  %i.w = tail call noundef zeroext i1 @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate6stored15compress_stored(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.w, label %.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge: ; preds = %.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
begin_hunk_1_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core14compress_inner:bb.a
  %i.adp = and i64 %i.adm, 32767
  %i.adq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adp
  %.sroa.01.0.copyload.i4.i.25.i = load i64, ptr %i.adq, align 1, !noalias !412 ; 2 uses
  %i.adr = icmp eq i64 %.sroa.01.0.copyload.i.i.25.i, %.sroa.01.0.copyload.i4.i.25.i
  br i1 %i.adr, label %bb.do, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.do:                                            ; preds = %bb.dn
  %i.ads = add nuw nsw i64 %.sroa.0114.1192.i, 211 ; 2 uses
  %i.adt = add nuw nsw i64 %i.wn, 211
  %i.adu = and i64 %i.ads, 32767
  %i.adv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adu
  %.sroa.01.0.copyload.i.i.26.i = load i64, ptr %i.adv, align 1, !noalias !412 ; 2 uses
  %i.adw = and i64 %i.adt, 32767
  %i.adx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.adw
  %.sroa.01.0.copyload.i4.i.26.i = load i64, ptr %i.adx, align 1, !noalias !412 ; 2 uses
  %i.ady = icmp eq i64 %.sroa.01.0.copyload.i.i.26.i, %.sroa.01.0.copyload.i4.i.26.i
  br i1 %i.ady, label %bb.dp, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dp:                                            ; preds = %bb.do
  %i.adz = add nuw nsw i64 %.sroa.0114.1192.i, 219 ; 2 uses
  %i.aea = add nuw nsw i64 %i.wn, 219
  %i.aeb = and i64 %i.adz, 32767
  %i.aec = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aeb
  %.sroa.01.0.copyload.i.i.27.i = load i64, ptr %i.aec, align 1, !noalias !412 ; 2 uses
  %i.aed = and i64 %i.aea, 32767
  %i.aee = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aed
  %.sroa.01.0.copyload.i4.i.27.i = load i64, ptr %i.aee, align 1, !noalias !412 ; 2 uses
  %i.aef = icmp eq i64 %.sroa.01.0.copyload.i.i.27.i, %.sroa.01.0.copyload.i4.i.27.i
  br i1 %i.aef, label %bb.dq, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dq:                                            ; preds = %bb.dp
  %i.aeg = add nuw nsw i64 %.sroa.0114.1192.i, 227 ; 2 uses
  %i.aeh = add nuw nsw i64 %i.wn, 227
  %i.aei = and i64 %i.aeg, 32767
  %i.aej = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aei
  %.sroa.01.0.copyload.i.i.28.i = load i64, ptr %i.aej, align 1, !noalias !412 ; 2 uses
  %i.aek = and i64 %i.aeh, 32767
  %i.ael = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aek
  %.sroa.01.0.copyload.i4.i.28.i = load i64, ptr %i.ael, align 1, !noalias !412 ; 2 uses
  %i.aem = icmp eq i64 %.sroa.01.0.copyload.i.i.28.i, %.sroa.01.0.copyload.i4.i.28.i
  br i1 %i.aem, label %bb.dr, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.aen = add nuw nsw i64 %.sroa.0114.1192.i, 235 ; 2 uses
  %i.aeo = add nuw nsw i64 %i.wn, 235
  %i.aep = and i64 %i.aen, 32767
  %i.aeq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aep
  %.sroa.01.0.copyload.i.i.29.i = load i64, ptr %i.aeq, align 1, !noalias !412 ; 2 uses
  %i.aer = and i64 %i.aeo, 32767
  %i.aes = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aer
  %.sroa.01.0.copyload.i4.i.29.i = load i64, ptr %i.aes, align 1, !noalias !412 ; 2 uses
  %i.aet = icmp eq i64 %.sroa.01.0.copyload.i.i.29.i, %.sroa.01.0.copyload.i4.i.29.i
  br i1 %i.aet, label %bb.ds, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.ds:                                            ; preds = %bb.dr
  %i.aeu = add nuw nsw i64 %.sroa.0114.1192.i, 243 ; 2 uses
  %i.aev = add nuw nsw i64 %i.wn, 243
  %i.aew = and i64 %i.aeu, 32767
  %i.aex = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aew
  %.sroa.01.0.copyload.i.i.30.i = load i64, ptr %i.aex, align 1, !noalias !412 ; 2 uses
  %i.aey = and i64 %i.aev, 32767
  %i.aez = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aey
  %.sroa.01.0.copyload.i4.i.30.i = load i64, ptr %i.aez, align 1, !noalias !412 ; 2 uses
  %i.afa = icmp eq i64 %.sroa.01.0.copyload.i.i.30.i, %.sroa.01.0.copyload.i4.i.30.i
  br i1 %i.afa, label %bb.dt, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.dt:                                            ; preds = %bb.ds
  %i.afb = add nuw nsw i64 %.sroa.0114.1192.i, 251 ; 2 uses
  %i.afc = add nuw nsw i64 %i.wn, 251
  %i.afd = and i64 %i.afb, 32767
  %i.afe = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.afd
  %.sroa.01.0.copyload.i.i.31.i = load i64, ptr %i.afe, align 1, !noalias !412 ; 2 uses
  %i.aff = and i64 %i.afc, 32767
  %i.afg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aff
  %.sroa.01.0.copyload.i4.i.31.i = load i64, ptr %i.afg, align 1, !noalias !412 ; 2 uses
  %i.afh = icmp eq i64 %.sroa.01.0.copyload.i.i.31.i, %.sroa.01.0.copyload.i4.i.31.i
  br i1 %i.afh, label %bb.du, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i

bb.du:                                            ; preds = %bb.dt
  %i.afi = icmp eq i16 %i.uv, %i.uw
  br i1 %i.afi, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, label %.thread.i37

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i: ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.sroa.0122.0.lcssa.i = phi i64 [ %i.ws, %bb.co ], [ %i.wz, %bb.cp ], [ %i.xg, %bb.cq ], [ %i.xn, %bb.cr ], [ %i.xu, %bb.cs ], [ %i.yb, %bb.ct ], [ %i.yi, %bb.cu ], [ %i.yp, %bb.cv ], [ %i.yw, %bb.cw ], [ %i.zd, %bb.cx ], [ %i.zk, %bb.cy ], [ %i.zr, %bb.cz ], [ %i.zy, %bb.da ], [ %i.aaf, %bb.db ], [ %i.aam, %bb.dc ], [ %i.aat, %bb.dd ], [ %i.aba, %bb.de ], [ %i.abh, %bb.df ], [ %i.abo, %bb.dg ], [ %i.abv, %bb.dh ], [ %i.acc, %bb.di ], [ %i.acj, %bb.dj ], [ %i.acq, %bb.dk ], [ %i.acx, %bb.dl ], [ %i.ade, %bb.dm ], [ %i.adl, %bb.dn ], [ %i.ads, %bb.do ], [ %i.adz, %bb.dp ], [ %i.aeg, %bb.dq ], [ %i.aen, %bb.dr ], [ %i.aeu, %bb.ds ], [ %i.afb, %bb.dt ]
  %.sroa.01.0.copyload.i.i.lcssa.i = phi i64 [ %.sroa.01.0.copyload.i.i.i, %bb.co ], [ %.sroa.01.0.copyload.i.i.1.i, %bb.cp ], [ %.sroa.01.0.copyload.i.i.2.i, %bb.cq ], [ %.sroa.01.0.copyload.i.i.3.i, %bb.cr ], [ %.sroa.01.0.copyload.i.i.4.i, %bb.cs ], [ %.sroa.01.0.copyload.i.i.5.i, %bb.ct ], [ %.sroa.01.0.copyload.i.i.6.i, %bb.cu ], [ %.sroa.01.0.copyload.i.i.7.i, %bb.cv ], [ %.sroa.01.0.copyload.i.i.8.i, %bb.cw ], [ %.sroa.01.0.copyload.i.i.9.i, %bb.cx ], [ %.sroa.01.0.copyload.i.i.10.i, %bb.cy ], [ %.sroa.01.0.copyload.i.i.11.i, %bb.cz ], [ %.sroa.01.0.copyload.i.i.12.i, %bb.da ], [ %.sroa.01.0.copyload.i.i.13.i, %bb.db ], [ %.sroa.01.0.copyload.i.i.14.i, %bb.dc ], [ %.sroa.01.0.copyload.i.i.15.i, %bb.dd ], [ %.sroa.01.0.copyload.i.i.16.i, %bb.de ], [ %.sroa.01.0.copyload.i.i.17.i, %bb.df ], [ %.sroa.01.0.copyload.i.i.18.i, %bb.dg ], [ %.sroa.01.0.copyload.i.i.19.i, %bb.dh ], [ %.sroa.01.0.copyload.i.i.20.i, %bb.di ], [ %.sroa.01.0.copyload.i.i.21.i, %bb.dj ], [ %.sroa.01.0.copyload.i.i.22.i, %bb.dk ], [ %.sroa.01.0.copyload.i.i.23.i, %bb.dl ], [ %.sroa.01.0.copyload.i.i.24.i, %bb.dm ], [ %.sroa.01.0.copyload.i.i.25.i, %bb.dn ], [ %.sroa.01.0.copyload.i.i.26.i, %bb.do ], [ %.sroa.01.0.copyload.i.i.27.i, %bb.dp ], [ %.sroa.01.0.copyload.i.i.28.i, %bb.dq ], [ %.sroa.01.0.copyload.i.i.29.i, %bb.dr ], [ %.sroa.01.0.copyload.i.i.30.i, %bb.ds ], [ %.sroa.01.0.copyload.i.i.31.i, %bb.dt ]
  %.sroa.01.0.copyload.i4.i.lcssa.i = phi i64 [ %.sroa.01.0.copyload.i4.i.i, %bb.co ], [ %.sroa.01.0.copyload.i4.i.1.i, %bb.cp ], [ %.sroa.01.0.copyload.i4.i.2.i, %bb.cq ], [ %.sroa.01.0.copyload.i4.i.3.i, %bb.cr ], [ %.sroa.01.0.copyload.i4.i.4.i, %bb.cs ], [ %.sroa.01.0.copyload.i4.i.5.i, %bb.ct ], [ %.sroa.01.0.copyload.i4.i.6.i, %bb.cu ], [ %.sroa.01.0.copyload.i4.i.7.i, %bb.cv ], [ %.sroa.01.0.copyload.i4.i.8.i, %bb.cw ], [ %.sroa.01.0.copyload.i4.i.9.i, %bb.cx ], [ %.sroa.01.0.copyload.i4.i.10.i, %bb.cy ], [ %.sroa.01.0.copyload.i4.i.11.i, %bb.cz ], [ %.sroa.01.0.copyload.i4.i.12.i, %bb.da ], [ %.sroa.01.0.copyload.i4.i.13.i, %bb.db ], [ %.sroa.01.0.copyload.i4.i.14.i, %bb.dc ], [ %.sroa.01.0.copyload.i4.i.15.i, %bb.dd ], [ %.sroa.01.0.copyload.i4.i.16.i, %bb.de ], [ %.sroa.01.0.copyload.i4.i.17.i, %bb.df ], [ %.sroa.01.0.copyload.i4.i.18.i, %bb.dg ], [ %.sroa.01.0.copyload.i4.i.19.i, %bb.dh ], [ %.sroa.01.0.copyload.i4.i.20.i, %bb.di ], [ %.sroa.01.0.copyload.i4.i.21.i, %bb.dj ], [ %.sroa.01.0.copyload.i4.i.22.i, %bb.dk ], [ %.sroa.01.0.copyload.i4.i.23.i, %bb.dl ], [ %.sroa.01.0.copyload.i4.i.24.i, %bb.dm ], [ %.sroa.01.0.copyload.i4.i.25.i, %bb.dn ], [ %.sroa.01.0.copyload.i4.i.26.i, %bb.do ], [ %.sroa.01.0.copyload.i4.i.27.i, %bb.dp ], [ %.sroa.01.0.copyload.i4.i.28.i, %bb.dq ], [ %.sroa.01.0.copyload.i4.i.29.i, %bb.dr ], [ %.sroa.01.0.copyload.i4.i.30.i, %bb.ds ], [ %.sroa.01.0.copyload.i4.i.31.i, %bb.dt ]
  %i.afj = xor i64 %.sroa.01.0.copyload.i4.i.lcssa.i, %.sroa.01.0.copyload.i.i.lcssa.i
  %i.afk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afj, i1 true)
  %i.afl = trunc nuw nsw i64 %i.afk to i32
  %i.afm = trunc nuw nsw i64 %.sroa.0122.0.lcssa.i to i32
  %i.afn = trunc nuw nsw i64 %.sroa.0114.1192.i to i32
  %i.afo = lshr i32 %i.afl, 3
  %i.afp = sub nsw i32 %i.afm, %i.afn
  %i.afq = add nsw i32 %i.afo, %i.afp             ; 3 uses
  %i.afr = icmp ult i32 %i.afq, 3
  br i1 %i.afr, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, label %bb.dx

bb.dv:                                            ; preds = %bb.cm
  %i.afs = trunc i32 %.sroa.02.0.copyload.i.i to i8
  %i.aft = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 2 uses
  %i.afu = and i64 %i.aft, 65535
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 %i.afu
  store i8 %i.afs, ptr %i.afv, align 1, !alias.scope !407, !noalias !410
  %i.afw = add i64 %i.aft, 1
  store i64 %i.afw, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  %i.afx = load i64, ptr %i.tq, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.afy = and i64 %i.afx, 65535
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 %i.afy ; 2 uses
  %i.aga = load i8, ptr %i.afz, align 1, !alias.scope !407, !noalias !410, !noundef !4
  %i.agb = lshr i8 %i.aga, 1
  store i8 %i.agb, ptr %i.afz, align 1, !alias.scope !407, !noalias !410
  %.mask.i = and i32 %.sroa.02.0.copyload.i.i, 255
  %i.agc = zext nneg i32 %.mask.i to i64
  %i.agd = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.agd, i64 %i.agc ; 2 uses
  %i.agf = load i16, ptr %i.age, align 2, !noalias !410, !noundef !4
  %i.agg = add i16 %i.agf, 1
  store i16 %i.agg, ptr %i.age, align 2, !noalias !410
  br label %bb.dw

bb.dw:                                            ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, %bb.ec, %bb.dv
  %.sroa.034.0.i = phi i32 [ 1, %bb.dv ], [ 1, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i ], [ %..i104.i, %bb.ec ] ; 2 uses
  %i.agh = load i32, ptr %i.ts, align 4, !alias.scope !407, !noalias !410, !noundef !4
  %i.agi = add i32 %i.agh, -1                     ; 2 uses
  store i32 %i.agi, ptr %i.ts, align 4, !alias.scope !407, !noalias !410
  %i.agj = icmp eq i32 %i.agi, 0
  %.pre.i35 = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410 ; 3 uses
  br i1 %i.agj, label %bb.ed, label %bb.ee

bb.dx:                                            ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i
  %i.agk = icmp eq i32 %i.afq, 3
  %i.agl = icmp ugt i16 %i.ux, 8191
  %or.cond5.i36 = and i1 %i.agl, %i.agk
  br i1 %or.cond5.i36, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i, label %.thread.i37

.thread.i37:                                      ; preds = %bb.dx, %bb.du
  %.sroa.0.0.i126129.i = phi i32 [ %i.afq, %bb.dx ], [ 258, %bb.du ]
  %i.agm = trunc i64 %.sroa.049.2195.i to i32
  %..i104.i = tail call noundef i32 @llvm.umin.i32(i32 %i.agm, i32 range(i32 1, 0) %.sroa.0.0.i126129.i) ; 2 uses
  %i.agn = add i16 %i.ux, -1                      ; 5 uses
  %i.ago = add i32 %..i104.i, -3                  ; 2 uses
  %i.agp = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 4 uses
  %i.agq = and i64 %i.agp, 65535
  %i.agr = trunc i32 %i.ago to i8
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 %i.agq
  store i8 %i.agr, ptr %i.ags, align 1, !alias.scope !407, !noalias !410
  %i.agt = add i64 %i.agp, 1
  %i.agu = and i64 %i.agt, 65535
  %i.agv = trunc i16 %i.agn to i8
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 %i.agu
  store i8 %i.agv, ptr %i.agw, align 1, !alias.scope !407, !noalias !410
  %i.agx = add i64 %i.agp, 2
  %i.agy = and i64 %i.agx, 65535
  %i.agz = lshr i16 %i.agn, 8                     ; 2 uses
  %i.aha = trunc nuw i16 %i.agz to i8
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 %i.agy
  store i8 %i.aha, ptr %i.ahb, align 1, !alias.scope !407, !noalias !410
  %i.ahc = add i64 %i.agp, 3
  store i64 %i.ahc, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  %i.ahd = load i64, ptr %i.tq, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.ahe = and i64 %i.ahd, 65535
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahe ; 2 uses
  %i.ahg = load i8, ptr %i.ahf, align 1, !alias.scope !407, !noalias !410, !noundef !4
  %i.ahh = lshr i8 %i.ahg, 1
  %i.ahi = or disjoint i8 %i.ahh, -128
  store i8 %i.ahi, ptr %i.ahf, align 1, !alias.scope !407, !noalias !410
  %i.ahj = icmp ult i16 %i.agn, 512
  br i1 %i.ahj, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %.thread.i37
  %i.ahk = zext nneg i16 %i.agz to i64            ; 2 uses
  %i.ahl = icmp sgt i16 %i.agn, -1
  br i1 %i.ahl, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ahk, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !410
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.ahm = getelementptr inbounds nuw i8, ptr @43, i64 %i.ahk
  br label %bb.ec

bb.eb:                                            ; preds = %.thread.i37
  %i.ahn = zext nneg i16 %i.agn to i64
  %i.aho = getelementptr inbounds nuw i8, ptr @44, i64 %i.ahn
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.sink.in.i = phi ptr [ %i.aho, %bb.eb ], [ %i.ahm, %bb.ea ]
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !noalias !415, !noundef !4
  %i.ahp = zext i8 %.sink.i to i64
  %i.ahq = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 576
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr %i.ahr, i64 %i.ahp ; 2 uses
  %i.aht = load i16, ptr %i.ahs, align 2, !noalias !410, !noundef !4
  %i.ahu = add i16 %i.aht, 1
  store i16 %i.ahu, ptr %i.ahs, align 2, !noalias !410
  %i.ahv = and i32 %i.ago, 255
  %i.ahw = zext nneg i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr @45, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !noalias !415, !noundef !4
  %i.ahz = and i8 %i.ahy, 31
  %i.aia = zext nneg i8 %i.ahz to i64
  %i.aib = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %i.aib, i64 %i.aia
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 512 ; 2 uses
  %i.aie = load i16, ptr %i.aid, align 2, !noalias !410, !noundef !4
  %i.aif = add i16 %i.aie, 1
  store i16 %i.aif, ptr %i.aid, align 2, !noalias !410
  br label %bb.dw

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.thread.i: ; preds = %bb.dx, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core13compress_fast0B7_.exit.i, %bb.du
  %i.aig = trunc i32 %.sroa.02.0.copyload.i.i to i8
  %i.aih = load i64, ptr %i.tp, align 8, !alias.scope !407, !noalias !410, !noundef !4 ; 2 uses
  %i.aii = and i64 %i.aih, 65535
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 %i.aii
  store i8 %i.aig, ptr %i.aij, align 1, !alias.scope !407, !noalias !410
  %i.aik = add i64 %i.aih, 1
  store i64 %i.aik, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  %i.ail = load i64, ptr %i.tq, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.aim = and i64 %i.ail, 65535
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 %i.aim ; 2 uses
  %i.aio = load i8, ptr %i.ain, align 1, !alias.scope !407, !noalias !410, !noundef !4
  %i.aip = lshr i8 %i.aio, 1
  store i8 %i.aip, ptr %i.ain, align 1, !alias.scope !407, !noalias !410
  %.mask93.i = and i32 %.sroa.02.0.copyload.i.i, 255
  %i.aiq = zext nneg i32 %.mask93.i to i64
  %i.air = load ptr, ptr %i.tr, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %i.air, i64 %i.aiq ; 2 uses
  %i.ait = load i16, ptr %i.ais, align 2, !noalias !410, !noundef !4
  %i.aiu = add i16 %i.ait, 1
  store i16 %i.aiu, ptr %i.ais, align 2, !noalias !410
  br label %bb.dw

bb.ed:                                            ; preds = %bb.dw
  store i32 8, ptr %i.ts, align 4, !alias.scope !407, !noalias !410
  store i64 %.pre.i35, ptr %i.tq, align 8, !alias.scope !407, !noalias !410
  %i.aiv = add i64 %.pre.i35, 1                   ; 2 uses
  store i64 %i.aiv, ptr %i.tp, align 8, !alias.scope !407, !noalias !410
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.dw
  %i.aiw = phi i64 [ %.pre.i35, %bb.dw ], [ %i.aiv, %bb.ed ]
  %i.aix = load i32, ptr %i.tt, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.aiy = add i32 %i.aix, %.sroa.034.0.i
  store i32 %i.aiy, ptr %i.tt, align 8, !alias.scope !407, !noalias !410
  %i.aiz = zext i32 %.sroa.034.0.i to i64         ; 4 uses
  %i.aja = add i64 %.sroa.063.1194.i, %i.aiz      ; 2 uses
  %i.ajb = load i64, ptr %i.tn, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.ajc = add i64 %i.ajb, %i.aiz
  %..i105.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ajc, i64 32768)
  store i64 %..i105.i, ptr %i.tn, align 8, !alias.scope !407, !noalias !410
  %i.ajd = add nuw nsw i64 %.sroa.0114.1192.i, %i.aiz
  %i.aje = and i64 %i.ajd, 32767                  ; 2 uses
  %i.ajf = sub i64 %.sroa.049.2195.i, %i.aiz      ; 2 uses
  %i.ajg = icmp ugt i64 %i.aiw, 65528
  br i1 %i.ajg, label %bb.ef, label %bb.cn

bb.ef:                                            ; preds = %bb.ee
  store i64 %i.ajf, ptr %i.te, align 8, !alias.scope !407, !noalias !410
  store i64 %i.aja, ptr %i.tf, align 8, !alias.scope !407, !noalias !410
  %i.ajh = tail call { i32, i32 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %2, i8 noundef 0) ; 2 uses
  %i.aji = extractvalue { i32, i32 } %i.ajh, 0
  %i.ajj = trunc i32 %i.aji to i1
  br i1 %i.ajj, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i64 %.sroa.06.2.lcssa.i, ptr %i.a, align 8, !alias.scope !407, !noalias !410
  store i32 -1, ptr %i.c, align 4, !alias.scope !407, !noalias !410
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

bb.eh:                                            ; preds = %bb.ef
  %i.ajk = extractvalue { i32, i32 } %i.ajh, 1    ; 2 uses
  %i.ajl = icmp eq i32 %i.ajk, 0
  br i1 %i.ajl, label %bb.ei, label %.split44

bb.ei:                                            ; preds = %bb.eh
  %i.ajm = load i64, ptr %i.te, align 8, !alias.scope !407, !noalias !410, !noundef !4
  %i.ajn = load i64, ptr %i.tf, align 8, !alias.scope !407, !noalias !410, !noundef !4
  br label %bb.cn

.split44:                                         ; preds = %bb.eh
  store i64 %.sroa.06.2.lcssa.i, ptr %i.a, align 8, !alias.scope !407, !noalias !410
  %i.ajo = icmp sgt i32 %i.ajk, 0
  br i1 %i.ajo, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

bb.ej:                                            ; preds = %.lr.ph.i31
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.2190.i, i64 noundef %i.ul, i64 noundef %i.tm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !410
  unreachable

bb.ek:                                            ; preds = %.lr.ph.i31
  %i.ajp = load ptr, ptr %i.td, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %.sroa.018.0191.i
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.th, i64 %.sroa.06.2190.i ; 2 uses
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ajq, i64 noundef %..i100.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajr, i64 noundef %..i100.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47), !noalias !410
  %i.ajs = icmp samesign ult i64 %.sroa.018.0191.i, 257
  br i1 %i.ajs, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ajt = sub nuw nsw i64 257, %.sroa.018.0191.i
  %..i106.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ajt, i64 %..i100.i) ; 3 uses
  %i.aju = add i64 %..i106.i, %.sroa.06.2190.i    ; 3 uses
  %i.ajv = icmp ult i64 %i.aju, %.sroa.06.2190.i
  %.not91.i = icmp ugt i64 %i.aju, %i.tm
  %or.cond97.i = or i1 %i.ajv, %.not91.i
  br i1 %or.cond97.i, label %bb.en, label %bb.eo, !prof !74

bb.em:                                            ; preds = %bb.eo, %bb.ek
  %i.ajw = sub i64 %.sroa.026.0189.i, %..i100.i   ; 2 uses
  %i.ajx = icmp eq i64 %i.ajw, 0
  br i1 %i.ajx, label %._crit_edge.i32, label %.lr.ph.i31

bb.en:                                            ; preds = %bb.el
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.06.2190.i, i64 noundef %i.aju, i64 noundef %i.tm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #22, !noalias !410
  unreachable

bb.eo:                                            ; preds = %bb.el
  %i.ajy = load ptr, ptr %i.td, align 8, !alias.scope !407, !noalias !410, !nonnull !4, !noundef !4
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %.sroa.018.0191.i
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 32768
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.aka, i64 noundef %..i106.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajr, i64 noundef %..i106.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48), !noalias !410
  br label %bb.em

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit: ; preds = %bb.ck
  store i64 %.sroa.06.2.lcssa.i, ptr %i.a, align 8, !alias.scope !407, !noalias !410
  %i.akb = icmp sgt i32 %i.wi, 0
  br i1 %i.akb, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread41: ; preds = %bb.eg, %bb.cj, %.split43.thread, %.split44, %.split43, %.split, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit
  %i.akc = load i32, ptr %i.c, align 4, !range !340, !noundef !4
  %i.akd = load i64, ptr %i.a, align 8, !noundef !4
  %i.ake = load i64, ptr %i.b, align 8, !noundef !4
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.akc, ptr %i.akf, align 8
  store i64 %i.akd, ptr %0, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ake, ptr %i.akg, align 8
  br label %bb.fb

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread: ; preds = %.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge, %bb.ce, %bb.m, %.split44, %.split43, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit
  %i.akh = phi ptr [ %.pre, %.split._RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread_crit_edge ], [ %i.y, %.split43 ], [ %i.th, %bb.ce ], [ %i.y, %bb.m ], [ %i.th, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit ], [ %i.th, %.split44 ] ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.akj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.akh, null
  %.pre223 = load i64, ptr %i.akj, align 8        ; 3 uses
  br i1 %.not, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, label %bb.ep

bb.ep:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread
  %i.akk = load i32, ptr %i.q, align 8, !noundef !4
  %i.akl = and i32 %i.akk, 12288
  %i.akm = icmp eq i32 %i.akl, 0
  br i1 %i.akm, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, label %bb.eq

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread: ; preds = %bb.i, %bb.cc, %bb.er, %bb.ep, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread
  %.not.i38 = phi i64 [ %i.akw, %bb.er ], [ %.pre223, %bb.ep ], [ 0, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread ], [ 0, %bb.cc ], [ 0, %bb.i ]
  %i.akn = load i8, ptr %i.f, align 1, !range !341, !noundef !4 ; 2 uses
  %i.ako = load i64, ptr %i.a, align 8, !noundef !4
  %i.akp = icmp ne i64 %.not.i38, %i.ako
  %i.akq = icmp eq i8 %i.akn, 0
  %or.cond46 = or i1 %i.akq, %i.akp
  br i1 %or.cond46, label %bb.eu, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  %i.akr = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %.not21 = icmp ugt i64 %i.akr, %.pre223
  br i1 %.not21, label %bb.es, label %bb.er, !prof !74

bb.er:                                            ; preds = %bb.eq
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 65688 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 8, !noundef !4
  %i.aku = tail call noundef i32 @_RNvNtCsjkkKzr5dxZe_11miniz_oxide6shared14update_adler32(i32 noundef %i.akt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akh, i64 noundef %i.akr)
  store i32 %i.aku, ptr %i.aks, align 8
  %.pre221 = load ptr, ptr %i.aki, align 8
  %.pre222 = load i64, ptr %i.akj, align 8
  %i.akv = icmp eq ptr %.pre221, null
  %i.akw = select i1 %i.akv, i64 0, i64 %.pre222
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread

bb.es:                                            ; preds = %bb.eq
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.akr, i64 noundef %.pre223, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #22
  unreachable

bb.et:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread
  %i.akx = load i32, ptr %i.k, align 4, !noundef !4
  %.not22 = icmp ne i32 %i.akx, 0
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 65600
  %i.akz = load i64, ptr %i.aky, align 8, !noundef !4
  %i.ala = icmp ne i64 %i.akz, 0
  %brmerge = or i1 %.not22, %i.ala
  br i1 %brmerge, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core15compress_normal.exit.thread.thread, %bb.ey, %bb.fa, %bb.et
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core19flush_output_buffer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %2, ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alc = load i32, ptr %i.alb, align 8, !range !340, !noundef !4
  store i32 %i.alc, ptr %i.c, align 4
  br label %bb.fb

bb.ev:                                            ; preds = %bb.et
  %i.ald = tail call { i32, i32 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7deflate4core11flush_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(65712) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, i8 noundef %i.akn) ; 2 uses
  %i.ale = extractvalue { i32, i32 } %i.ald, 0
end_hunk_1
