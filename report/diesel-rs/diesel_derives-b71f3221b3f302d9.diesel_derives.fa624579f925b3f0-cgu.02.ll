Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.02?download=true
inline.NumInlined: 1420
inline.NumDeleted: 394
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function10expand_one:bb.a
  %i.di = alloca [32 x i8], align 8               ; 15 uses
  %i.dj = alloca [32 x i8], align 8               ; 4 uses
  %i.dk = alloca [32 x i8], align 8               ; 6 uses
  %i.dl = alloca [32 x i8], align 8               ; 4 uses
  %i.dm = alloca [32 x i8], align 8               ; 7 uses
  %i.dn = alloca [32 x i8], align 8               ; 4 uses
  %i.do = alloca [32 x i8], align 8               ; 6 uses
  %i.dp = alloca [32 x i8], align 8               ; 4 uses
  %i.dq = alloca [32 x i8], align 8               ; 7 uses
  %i.dr = alloca [32 x i8], align 8               ; 4 uses
  %i.ds = alloca [32 x i8], align 8               ; 13 uses
  %i.dt = alloca [32 x i8], align 8               ; 5 uses
  %i.du = alloca [16 x i8], align 8               ; 5 uses
  %i.dv = alloca [24 x i8], align 8               ; 4 uses
  %i.dw = alloca [24 x i8], align 8               ; 9 uses
  %i.dx = alloca [24 x i8], align 8               ; 11 uses
  %i.dy = alloca [32 x i8], align 8               ; 4 uses
  %i.dz = alloca [48 x i8], align 8               ; 5 uses
  %i.ea = alloca [400 x i8], align 8              ; 18 uses
  %i.eb = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.622 = alloca [24 x i8], align 8          ; 7 uses
  %i.ec = alloca [80 x i8], align 8               ; 8 uses
  %i.ed = alloca [24 x i8], align 8               ; 19 uses
  %i.ee = alloca [32 x i8], align 8               ; 10 uses
  %i.ef = alloca [400 x i8], align 8              ; 4 uses
  %i.eg = alloca [24 x i8], align 8               ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !14 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ek, 264
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx
  %i.em = icmp eq i64 %i.ek, 0
  br i1 %i.em, label %.loopexit262, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.backedge.i
  %i.en = phi ptr [ %i.eo, %.backedge.i ], [ %i.ei, %.lr.ph.i.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  %i.ep = load i64, ptr %i.en, align 8, !range !39, !alias.scope !1860, !noalias !1861, !noundef !14
  %i.eq = icmp eq i64 %i.ep, 46
  br i1 %i.eq, label %bb.b, label %.backedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !1862
  invoke void @_RINvMs3_NtCshMFl0SviwmK_3syn3litNtB6_6LitInt12base10_parsejECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.er)
          to label %.noexc unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.es = invoke noundef i32 @_RNvMs3_NtCshMFl0SviwmK_3syn3litNtB5_6LitInt4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.er)
          to label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function10expand_one0B5_.exit.i unwind label %bb.c, !noalias !1863

bb.c:                                             ; preds = %.noexc
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCshMFl0SviwmK_3syn5error5ErrorEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.cy) #17
          to label %.thread164 unwind label %bb.d, !noalias !1863

_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function10expand_one0B5_.exit.i: ; preds = %.noexc
  %.sroa.0.0.copyload = load i64, ptr %i.cy, align 8, !noalias !1864 ; 2 uses
  %i.eu = load <2 x i64>, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !1864
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !1864 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1862
  switch i64 %.sroa.0.0.copyload, label %bb.e [
    i64 -2, label %.backedge.i
    i64 -1, label %bb.f
  ]

.backedge.i:                                      ; preds = %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function10expand_one0B5_.exit.i, %.lr.ph.i
  %i.ev = icmp eq ptr %i.eo, %i.el
  br i1 %i.ev, label %.loopexit262, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !1863
  unreachable

.loopexit262:                                     ; preds = %.backedge.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  invoke fastcc void @_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function19parse_sql_name_attr(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.eg, ptr noalias noundef align 8 dereferenceable(400) %1)
          to label %bb.no unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function10expand_one0B5_.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.ex, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.eu, ptr %.sroa.448.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.nn

bb.f:                                             ; preds = %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function10expand_one0B5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ee)
          to label %bb.g unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  store i64 0, ptr %i.ed, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 4 uses
  store i64 0, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 224 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ea, i64 392
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 368 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 376 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 384 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 248 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 336 ; 6 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.4.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 22
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 240 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ea, i64 232 ; 2 uses
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.350.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx.i133.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %.sroa.455.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 260
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %.sroa.021.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ch, i64 48 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ch, i64 56 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.078.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.078.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.sroa.479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %.sroa.42.0..sroa_idx.i154.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %.sroa.53.0..sroa_idx.i155.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %.sroa.096.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.096.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %.sroa.497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.sroa.699.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.032.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.032.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.032.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.nj
  %.sroa.0157.0789 = phi i64 [ 0, %bb.g ], [ %i.gt, %bb.nj ] ; 3 uses
  %i.gt = add nuw nsw i64 %.sroa.0157.0789, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !1867
  invoke void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBK_12sql_function20SqlFunctionAttributeEENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa)
          to label %.noexc83 unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body84:                                          ; preds = %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.nl, %bb.lj, %bb.mu, %bb.mw, %bb.ai, %bb.ah, %.body90, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.nm, %bb.nk, %bb.ac
  %.pn76 = phi { ptr, i32 } [ %i.rz, %bb.nm ], [ %i.rz, %bb.nk ], [ %i.ho, %bb.ac ], [ %.pn.pn.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i ], [ %.pn72.pn, %bb.ai ], [ %i.ru, %bb.nl ], [ %.pn72.pn, %.body90 ], [ %.pn72.pn, %bb.ah ], [ %.pn119212252.i, %bb.mu ], [ %.pn119212252.i, %bb.mw ], [ %i.on, %bb.lj ], [ %lpad.loopexit.split-lp1602, %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.ed) #17
          to label %.thread193 unwind label %bb.by

.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit201.i, %bb.ab
  %lpad.loopexit.split-lp1602 = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.noexc83:                                         ; preds = %bb.h
  %i.gu = invoke noundef i32 @_RNvXs3P_NtCshMFl0SviwmK_3syn5tokenNtB6_2FnNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fb)
          to label %bb.j unwind label %bb.i, !noalias !1865

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.o, %bb.n, %bb.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.gv, %bb.i ], [ %.pn.pn.i, %bb.n ], [ %.pn.pn.i, %bb.o ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtB1d_12sql_function20SqlFunctionAttributeEEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.cx) #17
          to label %.body84 unwind label %bb.v, !noalias !1865

bb.i:                                             ; preds = %bb.k, %.noexc83
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %.noexc83
  %i.gw = load i8, ptr %i.fd, align 8, !range !20, !alias.scope !1868, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.gw, 2               ; 2 uses
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gx = invoke { ptr, i64 } @_RNvXsf_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxeENtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %.noexc.i unwind label %bb.i, !noalias !1865 ; 2 uses

.noexc.i:                                         ; preds = %bb.k
  %i.gy = extractvalue { ptr, i64 } %i.gx, 0      ; 2 uses
  %i.gz = extractvalue { ptr, i64 } %i.gx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gy) ]
  %.sroa.5.sroa.0.0.extract.trunc.i.i = trunc i64 %i.gz to i8
  %.sroa.5.sroa.4.0.extract.shift.i.i = and i64 %i.gz, -256
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.val.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !1869
  %i.ha = load i8, ptr %i.fe, align 8, !range !43, !alias.scope !1869, !noundef !14
  %i.hb = inttoptr i64 %.val.i.i.i.i.i to ptr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc.i
  %.sroa.5.sroa.4.sroa.0.0.i.i = phi i64 [ 0, %bb.l ], [ %.sroa.5.sroa.4.0.extract.shift.i.i, %.noexc.i ]
  %.sroa.5.sroa.0.0.i.i = phi i8 [ %i.ha, %bb.l ], [ %.sroa.5.sroa.0.0.extract.trunc.i.i, %.noexc.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.hb, %bb.l ], [ %i.gy, %.noexc.i ] ; 3 uses
  %.sroa.5.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.5.sroa.0.0.i.i to i64
  %.sroa.5.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.sroa.4.sroa.0.0.i.i, %.sroa.5.sroa.0.0.insert.ext.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !1867
  invoke void @_RNvXs1e_NtNtCshMFl0SviwmK_3syn3gen5cloneNtNtBa_8generics8GenericsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ff)
          to label %bb.q unwind label %bb.p, !noalias !1865

bb.n:                                             ; preds = %bb.r, %bb.p
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.r ], [ %i.hd, %bb.p ] ; 2 uses
  %i.hc = icmp eq i64 %.sroa.5.sroa.0.0.insert.insert.i.i, 0
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %i.hc
  br i1 %or.cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i, i64 noundef range(i64 1, 0) %.sroa.5.sroa.0.0.insert.insert.i.i, i64 noundef 1) #16, !noalias !1870
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i

bb.p:                                             ; preds = %bb.m
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !1867
  invoke void @_RNvXs_NtCshMFl0SviwmK_3syn10punctuatedINtB4_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB6_5token5CommaENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBW_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fg)
          to label %bb.t unwind label %bb.s, !noalias !1865

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.hf, %bb.u ], [ %i.he, %bb.s ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(88) %i.cw) #17
          to label %bb.n unwind label %bb.v, !noalias !1865

bb.s:                                             ; preds = %bb.q
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !1867
  invoke void @_RNvXs2p_NtNtCshMFl0SviwmK_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %1)
          to label %bb.cl unwind label %bb.u, !noalias !1865

bb.u:                                             ; preds = %bb.t
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1q_(ptr noalias noundef align 8 dereferenceable(32) %i.cv) #17
          to label %bb.r unwind label %bb.v, !noalias !1865

bb.v:                                             ; preds = %bb.u, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit.i
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !1865
  unreachable

bb.w:                                             ; preds = %bb.nj
  br i1 %3, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 32, i1 false)
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.433.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCshMFl0SviwmK_3syn4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %.thread164 unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store ptr %i.fc, ptr %i.du, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr @_RNvXsE_Csf5uYjtxkodL_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dv, ptr noundef nonnull @86, ptr noundef nonnull %i.du)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread203:                                       ; preds = %bb.mz, %bb.ci
  %lpad.thr_comm201 = landingpad { ptr, i32 }
          cleanup
  br label %.thread193

.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %.loopexit262, %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit120, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit139, %bb.z
  %lpad.loopexit.split-lp1857 = landingpad { ptr, i32 }
          cleanup
  br label %.thread164

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit122

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit122: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit120, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclEBF_(ptr noalias noundef align 8 dereferenceable(400) %1)
  br label %bb.ck

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !nonnull !14, !noundef !14
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !14
  %i.hn = invoke noundef i32 @_RNvMsx_Csf5uYjtxkodL_11proc_macro2NtB5_5Ident4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw) #17
          to label %.body84 unwind label %bb.by

bb.ad:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsluMP4ekZjHw_14diesel_derives.exit
  invoke void @_RNvMsx_Csf5uYjtxkodL_11proc_macro2NtB5_5Ident3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hk, i64 noundef %i.hm, i32 noundef %i.hn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
end_hunk_0
begin_hunk_1_@_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function10expand_one:bb.a
          to label %bb.mi unwind label %bb.kk, !noalias !1877

bb.mk:                                            ; preds = %bb.kf
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.814.0.copyload.i = load i64, ptr %.sroa.814.0..sroa_idx.i, align 16, !noalias !1879
  %i.rc = load <2 x i64>, ptr %i.bm, align 16, !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1879
  store <2 x i64> %i.rc, ptr %.sroa.451.0..sroa_idx, align 8, !alias.scope !1877
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i64 %.sroa.814.0.copyload.i, ptr %.sroa.567.0..sroa_idx.i, align 8, !alias.scope !1877
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i197.i unwind label %bb.ml, !noalias !1877

bb.ml:                                            ; preds = %bb.mk
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %bb.mn unwind label %bb.mm, !noalias !1877

bb.mm:                                            ; preds = %bb.ml
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !1877
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i197.i: ; preds = %bb.mk
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit201.i unwind label %.loopexit.split-lp242.loopexit.split-lp.loopexit.split-lp, !noalias !1877

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit201.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i197.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1879
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclEBF_(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.ea)
          to label %.thread208 unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread208:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit201.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %.loopexit256

.thread215.i:                                     ; preds = %.body144.i.thread, %bb.jz, %bb.jw, %.body144.i
  %.pn117223.i = phi { ptr, i32 } [ %.pn117.i, %.body144.i ], [ %i.lz, %bb.jw ], [ %i.md, %bb.jz ], [ %lpad.loopexit.split-lp249, %.body144.i.thread ]
  %.sroa.047.1221.i = phi i8 [ %.sroa.047.1.i, %.body144.i ], [ 1, %bb.jw ], [ 1, %bb.jz ], [ 1, %.body144.i.thread ]
  %.sroa.046.1220.i = phi i8 [ %.sroa.046.1.i, %.body144.i ], [ 1, %bb.jw ], [ 1, %bb.jz ], [ 1, %.body144.i.thread ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr) #17
          to label %bb.mn unwind label %bb.ln, !noalias !1877

bb.mn:                                            ; preds = %.loopexit.split-lp242.loopexit.split-lp.loopexit.split-lp, %.thread215.i, %bb.ml, %bb.jt, %.body135.i, %.loopexit.split-lp237.loopexit.split-lp.loopexit.split-lp
  %.sroa.046.0.ph.i = phi i8 [ 1, %.body135.i ], [ %.sroa.046.1220.i, %.thread215.i ], [ 1, %.loopexit.split-lp237.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.jt ], [ 1, %bb.ml ], [ 1, %.loopexit.split-lp242.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.047.0.ph.i = phi i8 [ 1, %.body135.i ], [ %.sroa.047.1221.i, %.thread215.i ], [ 1, %.loopexit.split-lp237.loopexit.split-lp.loopexit.split-lp ], [ 1, %bb.jt ], [ 1, %bb.ml ], [ 1, %.loopexit.split-lp242.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn119.ph.i = phi { ptr, i32 } [ %eh.lpad-body136.i, %.body135.i ], [ %.pn117223.i, %.thread215.i ], [ %lpad.loopexit.split-lp1605, %.loopexit.split-lp237.loopexit.split-lp.loopexit.split-lp ], [ %i.lt, %bb.jt ], [ %i.rd, %bb.ml ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp242.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtB1d_12sql_function20SqlFunctionAttributeEEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.fh) #17
          to label %.thread248.i unwind label %bb.ln, !noalias !1877

.body144.thread262.i:                             ; preds = %bb.mp, %bb.mo, %.thread248.i, %.body144.i
  %.sroa.046.0208256.i = phi i8 [ %.sroa.046.1.i, %.body144.i ], [ %.sroa.046.0.ph.i, %.thread248.i ], [ %.sroa.046.0.ph.i, %bb.mo ], [ %.sroa.046.0.ph.i, %bb.mp ]
  %.sroa.047.0210254.i = phi i8 [ %.sroa.047.1.i, %.body144.i ], [ %.sroa.047.0.ph.i, %.thread248.i ], [ %.sroa.047.0.ph.i, %bb.mo ], [ %.sroa.047.0.ph.i, %bb.mp ]
  %.pn119212252.i = phi { ptr, i32 } [ %.pn117.i, %.body144.i ], [ %.pn119.ph.i, %.thread248.i ], [ %.pn119.ph.i, %bb.mo ], [ %.pn119.ph.i, %bb.mp ] ; 2 uses
  %i.rf = phi i1 [ false, %.body144.i ], [ true, %.thread248.i ], [ true, %bb.mo ], [ true, %bb.mp ] ; 2 uses
  %i.rg = trunc nuw i8 %.sroa.046.0208256.i to i1
  br i1 %i.rg, label %bb.mr, label %bb.mq

.thread248.i:                                     ; preds = %bb.mn
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  call void @llvm.experimental.noalias.scope.decl(metadata !1926), !noalias !1877
  %i.rh = load i8, ptr %.sroa.7.0..sroa_idx.i, align 8, !range !20, !alias.scope !1927, !noalias !1877, !noundef !14
  %i.ri = icmp eq i8 %i.rh, 2
  br i1 %i.ri, label %.body144.thread262.i, label %bb.mo

bb.mo:                                            ; preds = %.thread248.i
  %.val1.i.i148 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1927, !noalias !1877, !noundef !14 ; 2 uses
  %i.rj = icmp eq i64 %.val1.i.i148, 0
  br i1 %i.rj, label %.body144.thread262.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %.val.i.i149 = load ptr, ptr %i.fj, align 8, !alias.scope !1927, !noalias !1877, !nonnull !14, !noundef !14
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i149, i64 noundef range(i64 1, 0) %.val1.i.i148, i64 noundef 1) #16, !noalias !1928
  br label %.body144.thread262.i

bb.mq:                                            ; preds = %bb.mr, %.body144.thread262.i
  br i1 %i.rf, label %bb.mt, label %bb.ms

bb.mr:                                            ; preds = %.body144.thread262.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.fk) #17
          to label %bb.mq unwind label %bb.ln, !noalias !1877

bb.ms:                                            ; preds = %bb.mt, %bb.mq
  %i.rk = trunc nuw i8 %.sroa.047.0210254.i to i1
  br i1 %i.rk, label %bb.mv, label %bb.mu

bb.mt:                                            ; preds = %bb.mq
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn8generics11WhereClauseEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(40) %i.rl) #17
          to label %bb.ms unwind label %bb.ln, !noalias !1877

bb.mu:                                            ; preds = %bb.mv, %bb.ms
  br i1 %i.rf, label %bb.mw, label %.body84

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtBG_5token5CommaEEB1q_(ptr noalias noundef align 8 dereferenceable(32) %i.fl) #17
          to label %bb.mu unwind label %bb.ln, !noalias !1877

bb.mw:                                            ; preds = %bb.mu
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(400) %i.ea) #17
          to label %.body84 unwind label %bb.ln, !noalias !1877

bb.mx:                                            ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !1879
  %.pr = load i64, ptr %i.eb, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.rm = icmp eq i64 %.pr, -2
  br i1 %i.rm, label %.loopexit256, label %bb.nb

.loopexit256:                                     ; preds = %bb.mx, %.thread208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.451.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCshMFl0SviwmK_3syn4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %bb.mz unwind label %bb.my

bb.my:                                            ; preds = %.loopexit256
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %.thread193 unwind label %bb.na

bb.mz:                                            ; preds = %.loopexit256
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4path4PathENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit139 unwind label %.thread203

bb.na:                                            ; preds = %bb.my
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.nb:                                            ; preds = %bb.mx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.451.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622, i64 24, i1 false)
  store i64 %.pr, ptr %i.ec, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622)
  %i.rq = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !range !18, !noundef !14
  %.not75 = icmp eq i64 %i.rq, -1                 ; 2 uses
  br i1 %.not75, label %bb.ng, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.528.0..sroa_idx, i64 48, i1 false)
  %i.rr = load i64, ptr %i.ez, align 8, !alias.scope !1929, !noundef !14 ; 3 uses
  %i.rs = load i64, ptr %i.ed, align 8, !range !28, !alias.scope !1929, !noundef !14
  %i.rt = icmp eq i64 %i.rr, %i.rs
  br i1 %i.rt, label %bb.nd, label %bb.nh

bb.nd:                                            ; preds = %bb.nc
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn4path4PathE8grow_oneCsjWx9XcG30NR_12darling_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %bb.nh unwind label %bb.ne, !noalias !1930

bb.ne:                                            ; preds = %bb.nd
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path4PathECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dz) #17
          to label %bb.nl unwind label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ng:                                            ; preds = %bb.nh, %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  invoke void @_RNvXs0_NtCsf5uYjtxkodL_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.dy)
          to label %bb.ni unwind label %bb.nk

bb.nh:                                            ; preds = %bb.nd, %bb.nc
  %i.rw = load ptr, ptr %i.ey, align 8, !alias.scope !1929, !nonnull !14, !noundef !14
  %i.rx = getelementptr inbounds nuw [48 x i8], ptr %i.rw, i64 %i.rr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rx, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false)
  %i.ry = add i64 %i.rr, 1
  store i64 %i.ry, ptr %i.ez, align 8, !alias.scope !1929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br label %bb.ng

bb.ni:                                            ; preds = %bb.ng
  invoke void @_RINvNvXNtCsa66IwKi6YE3_5quote3extNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allNtNtBx_12token_stream8IntoIterECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cz)
          to label %bb.nj unwind label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %.not.i = icmp samesign ugt i64 %.sroa.0157.0789, 1
  br i1 %.not.i, label %bb.w, label %bb.h

bb.nk:                                            ; preds = %bb.ni, %bb.ng
  %i.rz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sa = load i64, ptr %.sroa.528.0..sroa_idx, align 8, !range !18, !noundef !14
  %i.sb = icmp ne i64 %i.sa, -1
  %or.cond = and i1 %.not75, %i.sb
  br i1 %or.cond, label %bb.nm, label %.body84

bb.nl:                                            ; preds = %bb.ne
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ec)
          to label %.body84 unwind label %bb.by

bb.nm:                                            ; preds = %bb.nk
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4path4PathECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(48) %.sroa.528.0..sroa_idx) #17
          to label %.body84 unwind label %bb.by

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit139: ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit145 unwind label %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit145: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4path4PathEECsluMP4ekZjHw_14diesel_derives.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %bb.nn

bb.nn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit145, %bb.e
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclEBF_(ptr noalias noundef align 8 dereferenceable(400) %1)
  br label %bb.ck

.thread193:                                       ; preds = %.body84, %bb.my, %bb.ch, %.thread203
  %.pn78189 = phi { ptr, i32 } [ %i.ro, %bb.my ], [ %lpad.thr_comm201, %.thread203 ], [ %i.it, %bb.ch ], [ %.pn76, %.body84 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsf5uYjtxkodL_11proc_macro23imp11TokenStreamECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %.thread164 unwind label %bb.by

bb.no:                                            ; preds = %.loopexit262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ef, ptr noundef nonnull align 8 dereferenceable(400) %1, i64 400, i1 false)
  call fastcc void @_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadic(ptr noalias noundef align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(400) %i.ef, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.eg, i1 noundef zeroext %2, i1 noundef zeroext %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %bb.ck

bb.np:                                            ; preds = %.thread164
  resume { ptr, i32 } %.pn80163

.thread164:                                       ; preds = %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y, %.thread193, %bb.c
  %.pn80163 = phi { ptr, i32 } [ %i.et, %bb.c ], [ %i.hh, %bb.y ], [ %.pn78189, %.thread193 ], [ %lpad.loopexit.split-lp1857, %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function15SqlFunctionDeclEBF_(ptr noalias noundef align 8 dereferenceable(400) %1) #17
          to label %bb.np unwind label %bb.by
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function14is_sqlite_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = load i64, ptr %0, align 8, !range !30, !noundef !14 ; 2 uses
  %i.g = icmp ne i64 %i.f, 3
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 10
  br i1 %i.h, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef align 8 ptr @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i) ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1934
  store i64 0, ptr %i.c, align 8, !noalias !1934
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1934
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1934
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.l, align 8, !noalias !1934
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1934
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1934
  store ptr %i.c, ptr %i.b, align 8, !noalias !1934
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @239, ptr %i.m, align 8, !noalias !1934
  %i.n = invoke noundef zeroext i1 @_RNvXsE_Csf5uYjtxkodL_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !1935

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %common.resume unwind label %bb.g, !noalias !1935

bb.e:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.f, label %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsluMP4ekZjHw_14diesel_derives.exit, !prof !40

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #19
          to label %.noexc.i unwind label %bb.d, !noalias !1935

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15, !noalias !1935
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.u, %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.u ], [ %i.o, %bb.d ], [ %i.ad, %bb.m ], [ %i.ac, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1934
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !14 ; 2 uses
  %i.t = icmp eq i64 %i.s, 8
  %.pre = load ptr, ptr %i.q, align 8             ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsluMP4ekZjHw_14diesel_derives.exit
  %i.u = load i64, ptr %.pre, align 1
  %i.v = icmp ne i64 %i.u, 7308324465885869390
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCsluMP4ekZjHw_14diesel_derives.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.s, ptr %i.y, align 8
  %i.z = invoke noundef zeroext i1 @_RNvXsf_NtNtCscI6d9CVNmLh_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @108, i64 noundef 12)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.j, align 8, !range !21, !noundef !14
  %i.ab = icmp eq i64 %i.aa, -9223372036854775807
  br i1 %i.ab, label %bb.p, label %bb.t

bb.k:                                             ; preds = %bb.s, %bb.p, %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #17
          to label %common.resume unwind label %bb.w

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.l
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit9 ], [ %i.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.sroa.0.0

bb.p:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = invoke noundef align 8 ptr @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path15GenericArgumentNtNtB4_5token5CommaE5firstCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %bb.q unwind label %bb.k       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not7 = icmp eq ptr %i.ag, null
  br i1 %.not7, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = load i64, ptr %i.ag, align 8, !range !25, !noundef !14 ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 20
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 18
  br i1 %i.aj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
end_hunk_1
