Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.02?download=true
inline.NumInlined: 1218
inline.NumDeleted: 634
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions14add_skip_query:bb.a
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !1382, !noalias !1380, !noundef !9
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i: ; preds = %bb.al, %bb.ak
  %.sroa.01.0.i.i.i = phi i64 [ %i.eh, %bb.al ], [ %.sroa.0.0.i.i.i.i, %bb.ak ]
  %.sroa.0.0.i.i.i17 = phi ptr [ %i.ef, %bb.al ], [ %i.dz, %bb.ak ]
  %.not27.i.i = icmp ne ptr %.val, null           ; 2 uses
  %i.ei = icmp eq i64 %.val10, %.sroa.01.0.i.i.i
  %or.cond6.i.i = select i1 %.not27.i.i, i1 %i.ei, i1 false
  br i1 %or.cond6.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %.val, ptr %.sroa.0.0.i.i.i17, i64 %.val10), !noalias !1385
  %i.ej = icmp ne i32 %bcmp.i.i, 0
  %spec.select.i.i = zext i1 %i.ej to i8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %.sroa.014.0.i.i = phi i8 [ %spec.select.i.i, %bb.am ], [ 1, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i ]
  %i.ek = load i8, ptr %i.bw, align 1, !range !1314, !alias.scope !1379, !noalias !1380, !noundef !9 ; 2 uses
  br i1 %i.ec, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = add i8 %i.eb, 64
  %i.em = call i8 @llvm.umin.i8(i8 %i.el, i8 24)
  %.sroa.0.0.i.i36.i.i = zext nneg i8 %i.em to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit39.i.i

bb.ap:                                            ; preds = %bb.an
  %i.en = load ptr, ptr %i.dz, align 8, !alias.scope !1386, !noalias !1380, !noundef !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !1386, !noalias !1380, !noundef !9
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit39.i.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit39.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.01.0.i37.i.i = phi i64 [ %i.ep, %bb.ap ], [ %.sroa.0.0.i.i36.i.i, %bb.ao ]
  %.sroa.0.0.i38.i.i = phi ptr [ %i.en, %bb.ap ], [ %i.dz, %bb.ao ]
  %i.eq = invoke noundef i8 @_RNvMs_NtCsoTR8nlGN3X_18ty_python_semantic14semantic_modelNtB4_8NameKind8classify(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i38.i.i, i64 noundef %.sroa.01.0.i37.i.i)
          to label %.noexc42.i unwind label %bb.x, !noalias !1337

.noexc42.i:                                       ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit39.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.z, i64 156 ; 2 uses
  %i.es = load i8, ptr %i.er, align 4, !range !1389, !alias.scope !1379, !noalias !1380, !noundef !9 ; 2 uses
  %i.et = icmp ne i8 %i.ek, 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.z, i64 119
  %i.ev = load i8, ptr %i.eu, align 1, !range !114, !alias.scope !1379, !noalias !1380 ; 3 uses
  %.not29.i.i = icmp eq i8 %i.ev, -1
  %or.cond.i.i = select i1 %i.et, i1 true, i1 %.not29.i.i
  br i1 %or.cond.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %.noexc42.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  %i.ex = icmp ugt i8 %i.ev, -41
  br i1 %i.ex, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ey = add i8 %i.ev, 64
  %i.ez = call i8 @llvm.umin.i8(i8 %i.ey, i8 24)
  %.sroa.0.0.i.i40.i.i = zext nneg i8 %i.ez to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit43.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fa = load ptr, ptr %i.ew, align 8, !alias.scope !1390, !noalias !1380, !noundef !9
  %i.fb = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !1390, !noalias !1380, !noundef !9
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit43.i.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit43.i.i: ; preds = %bb.as, %bb.ar
  %.sroa.01.0.i41.i.i = phi i64 [ %i.fc, %bb.as ], [ %.sroa.0.0.i.i40.i.i, %bb.ar ] ; 4 uses
  %.sroa.0.0.i42.i.i = phi ptr [ %i.fa, %bb.as ], [ %i.ew, %bb.ar ] ; 2 uses
  %i.fd = icmp samesign ult i64 %.sroa.01.0.i41.i.i, 16
  br i1 %i.fd, label %.preheader.i.i.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i

.preheader.i.i.i.i:                               ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit43.i.i
  %.not.i.i.i.i = icmp eq i64 %.sroa.01.0.i41.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.at
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.fh, %bb.at ], [ 0, %.preheader.i.i.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i42.i.i, i64 %.sroa.01.05.i.i.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !1393, !noalias !1385, !noundef !9
  %i.fg = icmp eq i8 %i.ff, 46
  br i1 %i.fg, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fh = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fh, %.sroa.01.0.i41.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %.lr.ph.i.i.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i: ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit43.i.i
  %i.fi = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i42.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0.i41.i.i)
          to label %.noexc43.i unwind label %bb.x, !noalias !1337

.noexc43.i:                                       ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i
  %.fr10.i.i = freeze { i64, i64 } %i.fi
  %i.fj = extractvalue { i64, i64 } %.fr10.i.i, 0
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3.i.i: ; preds = %.lr.ph.i.i.i.i, %.noexc43.i
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i: ; preds = %bb.at, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3.i.i, %.noexc43.i, %.preheader.i.i.i.i, %.noexc42.i
  %.sroa.017.0.i.i = phi i8 [ 1, %.noexc42.i ], [ 1, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3.i.i ], [ 0, %.noexc43.i ], [ 0, %.preheader.i.i.i.i ], [ 0, %bb.at ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.z, i64 154 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 2, !range !1179, !alias.scope !1379, !noalias !1380, !noundef !9
  %i.fn = getelementptr inbounds nuw i8, ptr %i.z, i64 155
  %i.fo = load i8, ptr %i.fn, align 1, !range !1179, !alias.scope !1379, !noalias !1380, !noundef !9
  %switch.tableidx237 = add nsw i8 %i.es, 1
  %switch.cast239 = zext i8 %switch.tableidx237 to i64
  %switch.shiftamt240 = shl nuw nsw i64 %switch.cast239, 3
  %switch.downshift241 = lshr i64 289360687023587583, %switch.shiftamt240
  %switch.masked242 = trunc i64 %switch.downshift241 to i8
  br i1 %i.ec, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i
  %i.fp = add i8 %i.eb, 64
  %i.fq = call i8 @llvm.umin.i8(i8 %i.fp, i8 24)
  %.sroa.0.0.i.i44.i.i = zext nneg i8 %i.fq to i64
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit47.i.i

bb.av:                                            ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i
  %i.fr = load ptr, ptr %i.dz, align 8, !alias.scope !1398, !noalias !1380, !noundef !9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !1398, !noalias !1380, !noundef !9
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit47.i.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit47.i.i: ; preds = %bb.av, %bb.au
  %.sroa.01.0.i45.i.i = phi i64 [ %i.ft, %bb.av ], [ %.sroa.0.0.i.i44.i.i, %bb.au ] ; 2 uses
  %.sroa.0.0.i46.i.i = phi ptr [ %i.fr, %bb.av ], [ %i.dz, %bb.au ] ; 2 uses
  br i1 %.not27.i.i, label %bb.aw, label %bb.do

bb.aw:                                            ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit47.i.i
  %i.fu = icmp eq i64 %.val10, %.sroa.01.0.i45.i.i
  br i1 %i.fu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.sroa.0.0.i46.i.i, i64 %.val10), !noalias !1385
  %i.fv = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.fv, label %bb.do, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1401
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val10)
          to label %.noexc44.i unwind label %bb.x, !noalias !1337

.noexc44.i:                                       ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1401
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i46.i.i, i64 noundef %.sroa.01.0.i45.i.i)
          to label %bb.ba unwind label %bb.az, !noalias !1385

.body.i.i.i:                                      ; preds = %bb.dj, %.loopexit.split-lp.i.i.i, %bb.az
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.fw, %bb.az ], [ %i.rv, %bb.dj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.j) #26
          to label %.body.i unwind label %bb.dn, !noalias !1385

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskEUeM34gmJU_6ty_ide.exit.i.i.i.i, %.noexc44.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ba:                                            ; preds = %.noexc44.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !1401, !nonnull !9, !noundef !9
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !1401, !noundef !9
  %i.gb = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !1401, !nonnull !9, !noundef !9
  %i.gd = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !noalias !1401, !noundef !9
  %i.gf = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fy, i64 noundef %i.ga, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.ge)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1385

.loopexit4.i.i.i:                                 ; preds = %bb.de
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.dc, %bb.da, %bb.cz, %bb.cy
  %lpad.loopexit5.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.dg, %.invoke.i.i.i, %.loopexit.i.i.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i, %bb.bi, %bb.ba
  %lpad.loopexit.split-lp6.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit4.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit4.i.i.i ], [ %lpad.loopexit5.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp6.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(24) %i.i) #26
          to label %.body.i.i.i unwind label %bb.dn, !noalias !1385

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gf, label %bb.di, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gg = load ptr, ptr %i.fx, align 8, !noalias !1401, !nonnull !9, !noundef !9 ; 10 uses
  %i.gh = load i64, ptr %i.fz, align 8, !noalias !1401, !noundef !9 ; 16 uses
  %i.gi = load ptr, ptr %i.gb, align 8, !noalias !1401, !nonnull !9, !noundef !9 ; 9 uses
  %i.gj = load i64, ptr %i.gd, align 8, !noalias !1401, !noundef !9 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.loopexit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gl = icmp ult i64 %i.gj, %i.gh
  br i1 %i.gl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gm = icmp eq i64 %i.gj, 1
  br i1 %i.gm, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gn = icmp eq i64 %i.gj, %i.gh
  br i1 %i.gn, label %bb.dh, label %.loopexit.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.go = icmp ult i64 %i.gj, 33
  br i1 %i.go, label %bb.cs, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.be
  %i.gp = load i8, ptr %i.gi, align 1, !alias.scope !1404, !noalias !1409, !noundef !9 ; 2 uses
  %i.gq = icmp samesign ult i64 %i.gh, 16
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gr = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %i.gp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef range(i64 0, -9223372036854775808) %i.gh)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1385

.noexc.i.i.i:                                     ; preds = %bb.bi
  %i.gs = extractvalue { i64, i64 } %i.gr, 0
  %i.gt = icmp eq i64 %i.gs, 1
  %i.gu = zext i1 %i.gt to i8
  br label %.loopexit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bh, %bb.bj
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.gy, %bb.bj ], [ 0, %bb.bh ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.01.05.i.i.i.i.i
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !1410, !noalias !1413, !noundef !9
  %i.gx = icmp eq i8 %i.gw, %i.gp
  br i1 %i.gx, label %.loopexit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gy = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gy, %i.gh
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i: ; preds = %bb.cu, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1414
  invoke void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %i.gh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gj)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1385

.noexc5.i.i.i:                                    ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %i.gz = load i64, ptr %i.h, align 8, !range !299, !alias.scope !1415, !noalias !1418, !noundef !9
  %i.ha = trunc nuw i64 %i.gz to i1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  br i1 %i.ha, label %bb.bt, label %.preheader.i4.i.i.i.i

.preheader.i4.i.i.i.i:                            ; preds = %.noexc5.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  %i.hd = load i8, ptr %i.hc, align 2, !range !1179, !alias.scope !1420, !noalias !1423, !noundef !9
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph.i5.i.i.i.i

.lr.ph.i5.i.i.i.i:                                ; preds = %.preheader.i4.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.hb, align 8, !alias.scope !1415, !noalias !1418 ; 12 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !1420, !noalias !1423, !nonnull !9, !noundef !9 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !1420, !noalias !1423, !noundef !9 ; 14 uses
  %.promoted26.i.i.i.i.i = load i8, ptr %i.hf, align 8, !alias.scope !1420, !noalias !1423 ; 2 uses
  %i.hk = trunc nuw i8 %.promoted26.i.i.i.i.i to i1
  %i.hl = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.hl, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i5.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.hj
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.bl, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.bk
  %i.hm = icmp eq i64 %.promoted.i.i.i.i.i, %i.hj
  br i1 %i.hm, label %bb.bm, label %.loopexit.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.promoted.i.i.i.i.i
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !1425, !noalias !1428, !noundef !9
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.bm, label %.loopexit.i.i.i.i

bb.bm:                                            ; preds = %bb.bl, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i5.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.promoted.i.i.i.i.i ; 4 uses
  %i.hr = icmp samesign eq i64 %.promoted.i.i.i.i.i, %i.hj
  br i1 %i.hr, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hs = load i8, ptr %i.hq, align 1, !noalias !1430, !noundef !9 ; 5 uses
  %i.ht = icmp sgt i8 %i.hs, -1
  br i1 %i.ht, label %bb.bo, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.bn
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hv = and i8 %i.hs, 31
  %i.hw = zext nneg i8 %i.hv to i32               ; 3 uses
  %i.hx = add nuw nsw i64 %.promoted.i.i.i.i.i, 1
  %i.hy = icmp samesign ne i64 %i.hx, %i.hj
  call void @llvm.assume(i1 %i.hy)
  %i.hz = load i8, ptr %i.hu, align 1, !noalias !1430, !noundef !9
  %i.ia = shl nuw nsw i32 %i.hw, 6
  %i.ib = and i8 %i.hz, 63
  %i.ic = zext nneg i8 %i.ib to i32               ; 2 uses
  %i.id = or disjoint i32 %i.ia, %i.ic
  %i.ie = icmp samesign ugt i8 %i.hs, -33
  br i1 %i.ie, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i.i.i.i, label %bb.bp

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.ig = add nuw nsw i64 %.promoted.i.i.i.i.i, 2
  %i.ih = icmp samesign ne i64 %i.ig, %i.hj
  call void @llvm.assume(i1 %i.ih)
  %i.ii = load i8, ptr %i.if, align 1, !noalias !1430, !noundef !9
  %i.ij = shl nuw nsw i32 %i.ic, 6
  %i.ik = and i8 %i.ii, 63
  %i.il = zext nneg i8 %i.ik to i32
  %i.im = or disjoint i32 %i.ij, %i.il            ; 2 uses
  %i.in = shl nuw nsw i32 %i.hw, 12
  %i.io = or disjoint i32 %i.im, %i.in
  %i.ip = icmp samesign ugt i8 %i.hs, -17
  br i1 %i.ip, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i.i.i.i, label %bb.bp

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.ir = add nuw nsw i64 %.promoted.i.i.i.i.i, 3
  %i.is = icmp samesign ne i64 %i.ir, %i.hj
  call void @llvm.assume(i1 %i.is)
  %i.it = load i8, ptr %i.iq, align 1, !noalias !1430, !noundef !9
  %i.iu = shl nuw nsw i32 %i.hw, 18
  %i.iv = and i32 %i.iu, 1835008
  %i.iw = shl nuw nsw i32 %i.im, 6
  %i.ix = and i8 %i.it, 63
  %i.iy = zext nneg i8 %i.ix to i32
  %i.iz = or disjoint i32 %i.iw, %i.iy
  %i.ja = or disjoint i32 %i.iz, %i.iv
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jb = zext nneg i8 %i.hs to i32
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.io, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i.i.i.i ], [ %i.ja, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i.i.i.i ], [ %i.id, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i.i.i.i ], [ %i.jb, %bb.bo ] ; 4 uses
  %i.jc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.jc)
  br i1 %i.hk, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.jd, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.je = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.je, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.jf, i64 3, i64 4
  br label %bb.bu

bb.bt:                                            ; preds = %.noexc5.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !1415, !noalias !1418, !noundef !9 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, -1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.jk = load ptr, ptr %i.jj, align 8, !alias.scope !1415, !noalias !1418, !nonnull !9, !noundef !9 ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !1415, !noalias !1418, !noundef !9 ; 14 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !1415, !noalias !1418, !nonnull !9, !noundef !9 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !1415, !noalias !1418, !noundef !9 ; 12 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.js = add nsw i64 %i.jq, -1                   ; 4 uses
  br i1 %i.ji, label %bb.bz, label %bb.ch

bb.bu:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.br ], [ %..i.i.peel.i.i.i.i, %bb.bs ], [ 1, %bb.bq ]
  %i.jt = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.promoted.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.jt, %i.hj
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bw, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.bv
  %i.jv = icmp eq i64 %i.jt, %i.hj
  br i1 %i.jv, label %bb.bx, label %.loopexit.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.jt
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !1425, !noalias !1434, !noundef !9
  %i.jy = icmp sgt i8 %i.jx, -65
  br i1 %i.jy, label %bb.bx, label %.loopexit.i.i.i.i

bb.bx:                                            ; preds = %bb.bw, %.split.i.i.i.i.i.i.i, %bb.bu
  %i.jz = icmp samesign eq i64 %i.jt, %i.hj
  br i1 %i.jz, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.jt
  %i.kb = load i8, ptr %i.ka, align 1, !noalias !1435, !noundef !9 ; 3 uses
  %i.kc = icmp sgt i8 %i.kb, -1
  br i1 %i.kc, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.kd = add nuw nsw i64 %i.jt, 1
  %i.ke = icmp samesign ne i64 %i.kd, %i.hj
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp samesign ugt i8 %i.kb, -33
  br i1 %i.kf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i.i
  %i.kg = add nuw nsw i64 %i.jt, 2
  %i.kh = icmp samesign ne i64 %i.kg, %i.hj
  call void @llvm.assume(i1 %i.kh)
  %i.ki = icmp samesign ugt i8 %i.kb, -17
  br i1 %i.ki, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i.i
  %i.kj = add nuw nsw i64 %i.jt, 3
  %i.kk = icmp samesign ne i64 %i.kj, %i.hj
  call void @llvm.assume(i1 %i.kk)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bw, %.split.i.i.i.i.i.i.i, %bb.bl, %.split.i.i.i.peel.i.i.i.i
  %.lcssa150.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.bl ], [ %i.jt, %.split.i.i.i.i.i.i.i ], [ %i.jt, %bb.bw ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hh, i64 noundef %i.hj, i64 noundef %.lcssa150.i.i.i.i, i64 noundef %i.hj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #24
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1385

.noexc6.i.i.i:                                    ; preds = %.loopexit.i.i.i.i
  unreachable

bb.bz:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
end_hunk_0
begin_hunk_1_@_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions14add_skip_query:bb.a
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %bb.cb, label %.preheader96.i.i.i.i.preheader

.preheader96.i.i.i.i.preheader:                   ; preds = %bb.ca
  br i1 %exitcond.not.i25.i.i.i.i231.not, label %.lr.ph233, label %.preheader.i.preheader.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.lc = add i64 %i.kt, %i.jq
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cg, %.split43.us.i.i.i, %bb.cb
  %i.ld = phi i64 [ %i.lw, %bb.cg ], [ %i.lc, %bb.cb ], [ %i.lo, %.split43.us.i.i.i ] ; 2 uses
  %i.le = add i64 %i.ld, %i.js                    ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.jm
  br i1 %i.lf, label %bb.ca, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.preheader96.i.i.i.i:                             ; preds = %bb.ce
  %i.lg = add i64 %.sroa.02.0.i24.i.i.i.i232, 1   ; 2 uses
  %exitcond.not.i25.i.i.i.i = icmp eq i64 %i.lg, %umax49.i23.i.i.i.i
  br i1 %exitcond.not.i25.i.i.i.i, label %.preheader.i.preheader.i.i.i, label %.lr.ph233

.preheader.i.preheader.i.i.i:                     ; preds = %.preheader96.i.i.i.i, %.preheader96.i.i.i.i.preheader
  br i1 %.first_iter.i.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.preheader.i.i50.i.i

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i234, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph236

.preheader.i.us.i.i.i:                            ; preds = %bb.cd
  %.not.i.us.i.i.i = icmp eq i64 %i.lh, 0
  br i1 %.not.i.us.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph236

.lr.ph236:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.2.0.i28.i.us.i.i.i235 = phi i64 [ %i.lh, %.preheader.i.us.i.i.i ], [ %.fr44.i.i.i, %.preheader.i.us.i.i.i.preheader ]
  %i.lh = add i64 %.sroa.2.0.i28.i.us.i.i.i235, -1 ; 4 uses
  %i.li = add i64 %i.lh, %i.kt                    ; 3 uses
  %i.lj = icmp ult i64 %i.li, %i.jm
  br i1 %i.lj, label %bb.cd, label %.invoke.i.i.i

bb.cd:                                            ; preds = %.lr.ph236
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.lh
  %i.ll = load i8, ptr %i.lk, align 1, !alias.scope !1441, !noalias !1446, !noundef !9
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.li
  %i.ln = load i8, ptr %i.lm, align 1, !alias.scope !1439, !noalias !1445, !noundef !9
  %.not.i29.i.us.i.i.i = icmp eq i8 %i.ll, %i.ln
  br i1 %.not.i29.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %.split43.us.i.i.i

.split43.us.i.i.i:                                ; preds = %bb.cd
  %i.lo = add i64 %i.kt, %i.kr
  br label %bb.cc

.lr.ph233:                                        ; preds = %.preheader96.i.i.i.i.preheader, %.preheader96.i.i.i.i
  %.sroa.02.0.i24.i.i.i.i232 = phi i64 [ %i.lg, %.preheader96.i.i.i.i ], [ %.fr44.i.i.i, %.preheader96.i.i.i.i.preheader ] ; 4 uses
  %i.lp = add i64 %.sroa.02.0.i24.i.i.i.i232, %i.kt ; 2 uses
  %i.lq = icmp ult i64 %i.lp, %i.jm
  br i1 %i.lq, label %bb.ce, label %bb.cf

.preheader.i.i50.i.i:                             ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i234, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.invoke.i.i.i

bb.ce:                                            ; preds = %.lr.ph233
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.sroa.02.0.i24.i.i.i.i232
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !1441, !noalias !1446, !noundef !9
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.lp
  %i.lu = load i8, ptr %i.lt, align 1, !alias.scope !1439, !noalias !1445, !noundef !9
  %.not21.i27.i.i.i.i = icmp eq i8 %i.ls, %i.lu
  br i1 %.not21.i27.i.i.i.i, label %.preheader96.i.i.i.i, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph233
  %i.lv = add i64 %i.kt, %.fr44.i.i.i
  %umax.i26.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.jm, i64 %i.lv)
  br label %.invoke.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %.reass235.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.kt, %invariant.op305
  %i.lw = add i64 %.reass235.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i24.i.i.i.i232
  br label %bb.cc

bb.ch:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %.promoted.i11.i.i.i.i = load i64, ptr %i.jr, align 8, !alias.scope !1447, !noalias !1454 ; 2 uses
  %i.lx = add i64 %.promoted.i11.i.i.i.i, %i.js   ; 2 uses
  %i.ly = icmp ult i64 %i.lx, %i.jm
  br i1 %i.ly, label %.lr.ph.i14.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph.i14.i.i.i.i:                               ; preds = %bb.ch
  %i.lz = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !1447, !noalias !1454, !noundef !9
  %i.mb = load i64, ptr %i.hb, align 8, !alias.scope !1447, !noalias !1454 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.md = load i64, ptr %i.mc, align 8, !alias.scope !1447, !noalias !1454 ; 2 uses
  %i.me = sub i64 %i.jq, %i.md
  %invariant.op = sub i64 1, %i.mb
  br label %bb.ci

bb.ci:                                            ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i14.i.i.i.i
  %i.mf = phi i64 [ %.promoted.i11.i.i.i.i, %.lr.ph.i14.i.i.i.i ], [ %.ph71.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 6 uses
  %i.mg = phi i64 [ %i.jh, %.lr.ph.i14.i.i.i.i ], [ %.sink.i.i.i.i.i, %.sink.split.i.i.i.i.i ] ; 3 uses
  %i.mh = phi i64 [ %i.lx, %.lr.ph.i14.i.i.i.i ], [ %i.mq, %.sink.split.i.i.i.i.i ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !alias.scope !1450, !noalias !1456, !noundef !9
  %i.mk = and i8 %i.mj, 63
  %i.ml = zext nneg i8 %i.mk to i64
  %i.mm = shl nuw i64 1, %i.ml
  %i.mn = and i64 %i.mm, %i.ma
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mp = add i64 %i.mf, %i.jq
  br label %.sink.split.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %.sroa.0.0.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mg, i64 %i.mb) ; 4 uses
  %umax49.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.jq)
  %exitcond.not.i15.i.i.i.i226.not = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i, %i.jq
  br i1 %exitcond.not.i15.i.i.i.i226.not, label %.lr.ph228, label %.preheader35.i.i.i.i.preheader

.sink.split.i.i.i.i.i:                            ; preds = %bb.cr, %bb.co, %bb.cj
  %.sink.i.i.i.i.i = phi i64 [ %i.me, %bb.co ], [ 0, %bb.cr ], [ 0, %bb.cj ]
  %.ph71.i.i.i.i.i = phi i64 [ %i.nf, %bb.co ], [ %i.nl, %bb.cr ], [ %i.mp, %bb.cj ] ; 2 uses
  %i.mq = add i64 %.ph71.i.i.i.i.i, %i.js         ; 2 uses
  %i.mr = icmp ult i64 %i.mq, %i.jm
  br i1 %i.mr, label %bb.ci, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.cp
  %i.ms = add i64 %.sroa.02.0.i.i.i.i.i227, 1     ; 2 uses
  %exitcond.not.i15.i.i.i.i = icmp eq i64 %i.ms, %umax49.i.i.i.i.i
  br i1 %exitcond.not.i15.i.i.i.i, label %.preheader35.i.i.i.i.preheader, label %.lr.ph228

.preheader35.i.i.i.i.preheader:                   ; preds = %bb.cl, %bb.ck
  %i.mt = icmp ult i64 %i.mg, %i.mb
  br i1 %i.mt, label %.lr.ph230, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph228:                                        ; preds = %bb.ck, %bb.cl
  %.sroa.02.0.i.i.i.i.i227 = phi i64 [ %i.ms, %bb.cl ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ck ] ; 4 uses
  %i.mu = add i64 %.sroa.02.0.i.i.i.i.i227, %i.mf ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.jm
  br i1 %i.mv, label %bb.cp, label %bb.cq

.preheader35.i.i.i.i:                             ; preds = %bb.cn
  %i.mw = icmp ult i64 %i.mg, %i.mx
  br i1 %i.mw, label %.lr.ph230, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph230:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.2.0.i.i.i.i.i229 = phi i64 [ %i.mx, %.preheader35.i.i.i.i ], [ %i.mb, %.preheader35.i.i.i.i.preheader ]
  %i.mx = add i64 %.sroa.2.0.i.i.i.i.i229, -1     ; 6 uses
  %i.my = icmp ult i64 %i.mx, %i.jq
  br i1 %i.my, label %bb.cm, label %.invoke.i.i.i

bb.cm:                                            ; preds = %.lr.ph230
  %i.mz = add i64 %i.mx, %i.mf                    ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.jm
  br i1 %i.na, label %bb.cn, label %.invoke.i.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.nb = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.mx
  %i.nc = load i8, ptr %i.nb, align 1, !alias.scope !1452, !noalias !1457, !noundef !9
  %i.nd = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.mz
  %i.ne = load i8, ptr %i.nd, align 1, !alias.scope !1450, !noalias !1456, !noundef !9
  %.not.i16.i.i.i.i = icmp eq i8 %i.nc, %i.ne
  br i1 %.not.i16.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nf = add i64 %i.mf, %i.md
  br label %.sink.split.i.i.i.i.i

bb.cp:                                            ; preds = %.lr.ph228
  %i.ng = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.sroa.02.0.i.i.i.i.i227
  %i.nh = load i8, ptr %i.ng, align 1, !alias.scope !1452, !noalias !1457, !noundef !9
  %i.ni = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.mu
  %i.nj = load i8, ptr %i.ni, align 1, !alias.scope !1450, !noalias !1456, !noundef !9
  %.not21.i.i.i.i.i = icmp eq i8 %i.nh, %i.nj
  br i1 %.not21.i.i.i.i.i, label %bb.cl, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph228
  %i.nk = add i64 %.sroa.0.0.i.i.i.i.i.i, %i.mf
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.jm, i64 %i.nk)
  br label %.invoke.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.mf, %invariant.op
  %i.nl = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.i.i.i.i227
  br label %.sink.split.i.i.i.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i, %bb.cc, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i.i, %bb.by, %bb.ch, %.preheader.i.i50.i.i, %bb.bz, %bb.bx, %bb.bp, %bb.bm, %.preheader.i4.i.i.i.i
  %.sroa.0.031.i.i.i.i = phi i8 [ 1, %.preheader.i.us.i.i.i ], [ 0, %bb.bz ], [ 0, %.preheader.i4.i.i.i.i ], [ 1, %bb.bx ], [ 1, %.preheader35.i.i.i.i ], [ 1, %bb.bp ], [ %.promoted26.i.i.i.i.i, %bb.bm ], [ 0, %bb.ch ], [ 1, %.preheader.i.us.i.i.i.preheader ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i.i.i.i ], [ 1, %.preheader.i.i50.i.i ], [ 1, %bb.by ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i.i.i.i ], [ 0, %bb.cc ], [ 0, %.sink.split.i.i.i.i.i ], [ 1, %.preheader35.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1414
  br label %.loopexit.i.i.i

bb.cs:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.nm = load i8, ptr %i.gi, align 1, !alias.scope !1463, !noalias !1464, !noundef !9 ; 3 uses
  %i.nn = add nsw i64 %i.gj, -1                   ; 2 uses
  %i.no = icmp eq i64 %i.gj, 2
  br i1 %i.no, label %.thread.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.np = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.gj, i64 4)
  br label %.lr.ph

bb.cu:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i
  %i.nq = icmp ult i64 %i.np, %i.ns
  br i1 %i.nq, label %.lr.ph, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i.i.i.i

.lr.ph:                                           ; preds = %bb.ct, %bb.cu
  %i.nr = phi i64 [ %i.gj, %bb.ct ], [ %i.ns, %bb.cu ]
  %i.ns = add nsw i64 %i.nr, -1                   ; 6 uses
  %i.nt = icmp ult i64 %i.ns, %i.gj
  br i1 %i.nt, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %.lr.ph, %bb.cm, %.lr.ph230, %.lr.ph236, %bb.cq, %bb.cf, %.preheader.i.i50.i.i
  %i.nu = phi i64 [ %i.ks, %.preheader.i.i50.i.i ], [ %umax.i.i.i.i.i, %bb.cq ], [ %i.mz, %bb.cm ], [ %i.li, %.lr.ph236 ], [ %umax.i26.i.i.i.i, %bb.cf ], [ %i.mx, %.lr.ph230 ], [ %i.ns, %.lr.ph ]
  %i.nv = phi i64 [ %i.jq, %.preheader.i.i50.i.i ], [ %i.jm, %bb.cq ], [ %i.jm, %bb.cm ], [ %i.jm, %.lr.ph236 ], [ %i.jm, %bb.cf ], [ %i.jq, %.lr.ph230 ], [ %i.gj, %.lr.ph ]
  %i.nw = phi ptr [ @10, %.preheader.i.i50.i.i ], [ @12, %bb.cq ], [ @11, %bb.cm ], [ @11, %.lr.ph236 ], [ @12, %bb.cf ], [ @10, %.lr.ph230 ], [ @38, %.lr.ph ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.nu, i64 noundef range(i64 0, -9223372036854775808) %i.nv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nw) #24
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1385

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ns
  %i.ny = load i8, ptr %i.nx, align 1, !alias.scope !1463, !noalias !1465, !noundef !9 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i8 %i.ny, %i.nm
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.cu, label %bb.cv

bb.cv:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i
  %i.nz = add nuw nsw i64 %i.gj, 15
  %i.oa = icmp ult i64 %i.gh, %i.nz
  br i1 %i.oa, label %.lr.ph.split.us.i.i.i.i.i.i, label %bb.cw

.thread.i.i.i.i.i:                                ; preds = %bb.cs
  %i.ob = icmp ult i64 %i.gh, 17
  br i1 %i.ob, label %.lr.ph.split.us.i.i.i.i.i.i, label %.thread93.i.i.i.i.i

.thread93.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i
  %i.oc = insertelement <16 x i8> poison, i8 %i.nm, i64 0
  %i.od = shufflevector <16 x i8> %i.oc, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !alias.scope !1463, !noalias !1464
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.oe = insertelement <16 x i8> poison, i8 %i.nm, i64 0
  %i.of = shufflevector <16 x i8> %i.oe, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cx

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.thread.i.i.i.i.i, %bb.cv
  %bcmp.i.i.us23.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gg, ptr noundef nonnull readonly dereferenceable(1) %i.gi, i64 range(i64 2, 33) %i.gj), !alias.scope !1473, !noalias !1474
  %i.og = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i.i, 0
  br i1 %i.og, label %.loopexit.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.i.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.oh, ptr noundef nonnull readonly dereferenceable(1) %i.gi, i64 range(i64 2, 33) %i.gj), !alias.scope !1473, !noalias !1474
  %i.oi = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.oi, label %.loopexit.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i
  %.pn.i.i.i.i.i = phi ptr [ %i.oh, %.split.us.i.i.i.i.i.i ], [ %i.gg, %.lr.ph.split.us.i.i.i.i.i.i ]
  %.in.i.i.i.i.i = phi i64 [ %i.oj, %.split.us.i.i.i.i.i.i ], [ %i.gh, %.lr.ph.split.us.i.i.i.i.i.i ]
  %i.oj = add i64 %.in.i.i.i.i.i, -1              ; 2 uses
  %.not28.i.i.i.i.i.i = icmp ugt i64 %i.gj, %i.oj
  br i1 %.not28.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.split.us.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cw, %.thread93.i.i.i.i.i
  %i.ok = phi i8 [ %.pre.i.i.i.i.i, %.thread93.i.i.i.i.i ], [ %i.ny, %bb.cw ]
  %i.ol = phi <16 x i8> [ %i.od, %.thread93.i.i.i.i.i ], [ %i.of, %bb.cw ] ; 6 uses
  %storemerge9295.i.i.i.i.i = phi i64 [ 1, %.thread93.i.i.i.i.i ], [ %i.ns, %bb.cw ] ; 6 uses
  %i.om = insertelement <16 x i8> poison, i8 %i.ok, i64 0
  %i.on = shufflevector <16 x i8> %i.om, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1478
  store ptr %i.gg, ptr %i.g, align 8, !noalias !1478
  %i.op = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.gh, ptr %i.op, align 8, !noalias !1478
  %i.oq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.oo, ptr %i.oq, align 8, !noalias !1478
  %i.or = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.nn, ptr %i.or, align 8, !noalias !1478
  %i.os = add nuw nsw i64 %i.gj, 63               ; 2 uses
  %.not.i7.i.i.i.i = icmp ult i64 %i.os, %i.gh
  br i1 %.not.i7.i.i.i.i, label %.lr.ph.i10.i.i.i.i, label %.preheader.i8.i.i.i.i

.preheader.i8.i.i.i.i:                            ; preds = %bb.db, %bb.cx
  %.sroa.014.0.lcssa.i.i.i.i.i = phi i8 [ 0, %bb.cx ], [ %.sroa.014.2.3.i.i.i.i.i, %bb.db ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.cx ], [ %i.qo, %bb.db ] ; 2 uses
  %i.ot = add nuw nsw i64 %i.gj, 15               ; 2 uses
  %i.ou = add i64 %.sroa.06.0.lcssa.i.i.i.i.i, %i.ot
  %i.ov = icmp uge i64 %i.ou, %i.gh
  %i.ow = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i to i1 ; 2 uses
  %or.cond3105.i.i.i.i.i = select i1 %i.ov, i1 true, i1 %i.ow
  br i1 %or.cond3105.i.i.i.i.i, label %._crit_edge.i9.i.i.i.i, label %.lr.ph107.i.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.cx, %bb.db
  %.sroa.06.0103.i.i.i.i.i = phi i64 [ %i.qo, %bb.db ], [ 0, %bb.cx ] ; 6 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.06.0103.i.i.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.ox, align 1, !alias.scope !1479, !noalias !1480
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i = load <16 x i8>, ptr %i.oy, align 1, !alias.scope !1479, !noalias !1480
  %i.oz = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i, %i.ol
  %i.pa = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i.i, %i.on
  %i.pb = and <16 x i1> %i.oz, %i.pa
  %i.pc = bitcast <16 x i1> %i.pb to i16          ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.pd, align 1, !alias.scope !1479, !noalias !1480
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.1.i.i.i.i.i = load <16 x i8>, ptr %i.pe, align 1, !alias.scope !1479, !noalias !1480
  %i.pf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i, %i.ol
  %i.pg = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i.i, %i.on
  %i.ph = and <16 x i1> %i.pf, %i.pg
  %i.pi = bitcast <16 x i1> %i.ph to i16          ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ox, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.pj, align 1, !alias.scope !1479, !noalias !1480
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.2.i.i.i.i.i = load <16 x i8>, ptr %i.pk, align 1, !alias.scope !1479, !noalias !1480
  %i.pl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i, %i.ol
  %i.pm = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i.i, %i.on
  %i.pn = and <16 x i1> %i.pl, %i.pm
  %i.po = bitcast <16 x i1> %i.pn to i16          ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ox, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.pp, align 1, !alias.scope !1479, !noalias !1480
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i.3.i.i.i.i.i = load <16 x i8>, ptr %i.pq, align 1, !alias.scope !1479, !noalias !1480
  %i.pr = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i, %i.ol
  %i.ps = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i.i, %i.on
  %i.pt = and <16 x i1> %i.pr, %i.ps
  %i.pu = bitcast <16 x i1> %i.pt to i16          ; 2 uses
  %i.pv = icmp eq i16 %i.pc, 0
  br i1 %i.pv, label %.preheader96.1.i.i.i.i.i, label %bb.dc

.preheader96.1.i.i.i.i.i:                         ; preds = %.noexc17.i.i.i, %.lr.ph.i10.i.i.i.i
  %.sroa.014.2.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i10.i.i.i.i ], [ %i.qt, %.noexc17.i.i.i ] ; 3 uses
  %i.pw = icmp eq i16 %i.pi, 0
  br i1 %i.pw, label %.preheader96.2.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.preheader96.1.i.i.i.i.i
  %i.px = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 16
  %i.py = trunc nuw i8 %.sroa.014.2.i.i.i.i.i to i1
  %i.pz = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.px, i16 noundef %i.pi, i1 noundef zeroext %i.py)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1385

.noexc14.i.i.i:                                   ; preds = %bb.cy
  %i.qa = zext i1 %i.pz to i8
  %i.qb = or i8 %.sroa.014.2.i.i.i.i.i, %i.qa
  br label %.preheader96.2.i.i.i.i.i

.preheader96.2.i.i.i.i.i:                         ; preds = %.noexc14.i.i.i, %.preheader96.1.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i, %.preheader96.1.i.i.i.i.i ], [ %i.qb, %.noexc14.i.i.i ] ; 3 uses
  %i.qc = icmp eq i16 %i.po, 0
  br i1 %i.qc, label %.preheader96.3.i.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %.preheader96.2.i.i.i.i.i
  %i.qd = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 32
  %i.qe = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i to i1
  %i.qf = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.qd, i16 noundef %i.po, i1 noundef zeroext %i.qe)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1385

.noexc15.i.i.i:                                   ; preds = %bb.cz
  %i.qg = zext i1 %i.qf to i8
  %i.qh = or i8 %.sroa.014.2.1.i.i.i.i.i, %i.qg
  br label %.preheader96.3.i.i.i.i.i

.preheader96.3.i.i.i.i.i:                         ; preds = %.noexc15.i.i.i, %.preheader96.2.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i, %.preheader96.2.i.i.i.i.i ], [ %i.qh, %.noexc15.i.i.i ] ; 3 uses
  %i.qi = icmp eq i16 %i.pu, 0
  br i1 %i.qi, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.preheader96.3.i.i.i.i.i
  %i.qj = or disjoint i64 %.sroa.06.0103.i.i.i.i.i, 48
  %i.qk = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i to i1
  %i.ql = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.qj, i16 noundef %i.pu, i1 noundef zeroext %i.qk)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1385

.noexc16.i.i.i:                                   ; preds = %bb.da
  %i.qm = zext i1 %i.ql to i8
  %i.qn = or i8 %.sroa.014.2.2.i.i.i.i.i, %i.qm
  br label %bb.db

bb.db:                                            ; preds = %.noexc16.i.i.i, %.preheader96.3.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i, %.preheader96.3.i.i.i.i.i ], [ %i.qn, %.noexc16.i.i.i ] ; 2 uses
  %i.qo = add i64 %.sroa.06.0103.i.i.i.i.i, 64    ; 3 uses
  %i.qp = add i64 %i.qo, %i.os
  %i.qq = icmp uge i64 %i.qp, %i.gh
  %i.qr = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i = select i1 %i.qq, i1 true, i1 %i.qr
  br i1 %or.cond.i.i.i.i.i, label %.preheader.i8.i.i.i.i, label %.lr.ph.i10.i.i.i.i

bb.dc:                                            ; preds = %.lr.ph.i10.i.i.i.i
  %i.qs = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.0103.i.i.i.i.i, i16 noundef %i.pc, i1 noundef zeroext false)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1385

.noexc17.i.i.i:                                   ; preds = %bb.dc
  %i.qt = zext i1 %i.qs to i8
  br label %.preheader96.1.i.i.i.i.i

._crit_edge.i9.i.i.i.i:                           ; preds = %bb.dd, %.preheader.i8.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i, %.preheader.i8.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i, %bb.dd ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i1 [ %i.ow, %.preheader.i8.i.i.i.i ], [ %i.rn, %bb.dd ]
  %i.qu = sub nuw i64 %i.gh, %i.nn
  %i.qv = add i64 %i.qu, -16                      ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.qv ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i.i = load <16 x i8>, ptr %i.qw, align 1, !alias.scope !1479, !noalias !1483
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %storemerge9295.i.i.i.i.i
  %.sroa.02.0.copyload.i59.i.i.i.i.i = load <16 x i8>, ptr %i.qx, align 1, !alias.scope !1479, !noalias !1483
  %i.qy = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i.i, %i.ol
end_hunk_1
