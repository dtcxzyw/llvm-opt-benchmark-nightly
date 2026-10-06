Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvMNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writerINtB4_10FileWriterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingE11write_array0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ap = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i197.i.i = alloca [7 x i8], align 1  ; 6 uses
  %.sroa.661.i198.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.aq = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i199.i.i = alloca [7 x i8], align 1    ; 6 uses
  %.sroa.6.i200.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.ar = alloca [56 x i8], align 8               ; 9 uses
  %i.as = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i112.i.i = alloca [7 x i8], align 1  ; 6 uses
  %.sroa.661.i113.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.at = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i114.i.i = alloca [7 x i8], align 1    ; 6 uses
  %.sroa.6.i115.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.au = alloca [56 x i8], align 8               ; 9 uses
  %i.av = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i27.i.i = alloca [7 x i8], align 1   ; 6 uses
  %.sroa.661.i28.i.i = alloca [40 x i8], align 8  ; 6 uses
  %i.aw = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i29.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.6.i30.i.i = alloca [40 x i8], align 8    ; 6 uses
  %i.ax = alloca [56 x i8], align 8               ; 9 uses
  %i.ay = alloca [16 x i8], align 16              ; 4 uses
  %.sroa.359.i.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.661.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %i.az = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.3.i.i.i = alloca [7 x i8], align 1       ; 6 uses
  %.sroa.6.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.ba = alloca [56 x i8], align 8               ; 9 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.329.i = alloca [7 x i8], align 1         ; 2 uses
  %.sroa.530.i = alloca [40 x i8], align 8        ; 2 uses
  %.sroa.15.i = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.17.i = alloca [40 x i8], align 8         ; 6 uses
  %.sroa.327.i = alloca [7 x i8], align 1         ; 2 uses
  %.sroa.529.i = alloca [40 x i8], align 8        ; 2 uses
  %.sroa.3.i85 = alloca [7 x i8], align 1         ; 6 uses
  %.sroa.621.i = alloca [40 x i8], align 8        ; 6 uses
  %i.bd = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.319.i = alloca [7 x i8], align 1         ; 2 uses
  %.sroa.521.i = alloca [40 x i8], align 8        ; 2 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 6 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 6 uses
  %i.be = alloca [56 x i8], align 8               ; 9 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.10450 = alloca [7 x i8], align 1         ; 9 uses
  %.sroa.18 = alloca [40 x i8], align 8           ; 10 uses
  %.sroa.9444.sroa.0 = alloca [7 x i8], align 1   ; 7 uses
  %.sroa.9444.sroa.7 = alloca [40 x i8], align 1  ; 7 uses
  %.sroa.9420.sroa.0 = alloca [7 x i8], align 1   ; 7 uses
  %.sroa.9420.sroa.7 = alloca [40 x i8], align 1  ; 7 uses
  %i.bh = alloca [56 x i8], align 8               ; 9 uses
  %i.bi = alloca [56 x i8], align 8               ; 9 uses
  %i.bj = alloca [56 x i8], align 8               ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 4, !range !561, !noundef !416
  switch i8 %i.bl, label %default.unreachable730 [
    i8 0, label %bb.c
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.ab
    i8 4, label %bb.ax
    i8 5, label %bb.bh
    i8 6, label %bb.ch
    i8 7, label %._crit_edge554
    i8 8, label %bb.b
    i8 9, label %bb.se
    i8 10, label %bb.xc
  ]

._crit_edge554:                                   ; preds = %bb.a
  %.phi.trans.insert555 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val42.pre = load ptr, ptr %.phi.trans.insert555, align 8
  %.phi.trans.insert557 = getelementptr i8, ptr %1, i64 120
  %.val43.pre = load ptr, ptr %.phi.trans.insert557, align 8
  br label %bb.rn

default.unreachable730:                           ; preds = %bb.xc, %bb.se, %bb.pj, %bb.np, %bb.lv, %bb.kb, %bb.ih, %bb.gn, %bb.et, %bb.cy, %bb.cp, %bb.ch, %bb.bh, %bb.ab, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writerINtB4_10FileWriterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingE24write_fixed_stride_array0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bh, ptr noundef nonnull align 8 %i.bm, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.rv unwind label %bb.ru

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !416
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.d, label %bb.e, !prof !426

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @644, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1643) #72
          to label %bb.g unwind label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.bq = load ptr, ptr %1, align 8, !nonnull !416, !align !417, !noundef !416
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !416, !align !417, !noundef !416
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.br)
          to label %bb.h unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit72: ; preds = %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.l, %bb.x, %bb.f
  %.pn37 = phi { ptr, i32 } [ %i.hq, %bb.x ], [ %i.bu, %bb.f ], [ %.pn34.pn, %bb.q ], [ %i.dg, %bb.l ], [ %.pn34.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  store i8 2, ptr %i.bk, align 4
  resume { ptr, i32 } %.pn37

bb.f:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit72

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.e
  store ptr %i.bt, ptr %i.bs, align 8
  %i.bv = load ptr, ptr %1, align 8, !nonnull !416, !align !417, !noundef !416 ; 3 uses
  %i.bw = load i64, ptr %i.bn, align 8, !noundef !416 ; 15 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144868)
  %i.by = shl i64 %i.bw, 4                        ; 4 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.by, 9223372036854775800
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.i, !prof !441

bb.i:                                             ; preds = %bb.h
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !144869
  %i.ca = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.by, i64 noundef range(i64 1, 17) 8) #68, !noalias !144869 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.by) #72
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ca, %bb.j ] ; 10 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bw, %bb.j ] ; 2 uses
  %i.cc = icmp samesign ule i64 %i.bw, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp eq i64 %i.bw, 0
  br i1 %i.cd, label %.loopexit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %xtraiter = and i64 %i.bw, 1
  %i.ce = icmp eq i64 %i.bw, 1
  br i1 %i.ce, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bw, -2
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.cf = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.df, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cf
  %.val16.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !noalias !144870, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.ch = load ptr, ptr %.val16.i.i.i.i.i.i.i.i.i, align 8, !noalias !144871, !nonnull !416, !noundef !416
  %i.ci = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !144871, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !420, !invariant.load !416, !noalias !144871
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = and i64 %i.cm, -16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.cf ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !noalias !144872
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cj, ptr %i.cr, align 8, !noalias !144872
  %i.cs = or disjoint i64 %i.cf, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cs
  %.val16.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ct, align 8, !noalias !144870, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.cu = load ptr, ptr %.val16.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !144871, !nonnull !416, !noundef !416
  %i.cv = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i.1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !144871, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !420, !invariant.load !416, !noalias !144871
  %i.cz = add nsw i64 %i.cy, -1
  %i.da = and i64 %i.cz, -16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.cs ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !noalias !144872
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.cw, ptr %i.de, align 8, !noalias !144872
  %i.df = add nuw i64 %i.cf, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit72

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.df, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod834 = trunc i64 %i.bw to i1
  tail call void @llvm.assume(i1 %lcmp.mod834)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.epil.init
  %.val16.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.dh, align 8, !noalias !144870, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.di = load ptr, ptr %.val16.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !144871, !nonnull !416, !noundef !416
  %i.dj = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i.epil, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !144871, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !range !420, !invariant.load !416, !noalias !144871
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = and i64 %i.dn, -16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !noalias !144872
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dk, ptr %i.ds, align 8, !noalias !144872
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.bx, align 8, !alias.scope !144873
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !144873
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.bw, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !144873
  %i.dt = load ptr, ptr %i.bs, align 8, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !range !622, !noundef !416
  switch i8 %i.du, label %bb.m [
    i8 0, label %.thread
    i8 1, label %bb.w
    i8 2, label %bb.w
    i8 3, label %bb.w
    i8 4, label %bb.w
    i8 5, label %bb.w
    i8 6, label %bb.w
    i8 7, label %bb.w
    i8 8, label %bb.w
    i8 9, label %bb.w
    i8 10, label %bb.w
    i8 11, label %bb.w
    i8 12, label %bb.w
    i8 13, label %bb.w
    i8 14, label %bb.w
    i8 15, label %bb.w
    i8 16, label %bb.w
    i8 17, label %bb.w
    i8 18, label %bb.w
    i8 21, label %bb.w
    i8 29, label %bb.w
    i8 37, label %bb.w
    i8 38, label %bb.w
    i8 20, label %.thread731
    i8 22, label %.thread731
    i8 23, label %.thread731
    i8 24, label %.thread731
    i8 25, label %.thread731
    i8 26, label %.thread731
    i8 34, label %.thread732
    i8 32, label %bb.r
    i8 30, label %.thread734
    i8 27, label %.thread733
  ]

.thread:                                          ; preds = %.loopexit
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !416, !align !417, !noundef !416
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dz = load i32, ptr %i.dy, align 8, !noundef !416
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !416, !align !417, !noundef !416
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ed = load <2 x ptr>, ptr %i.dv, align 8
  store <2 x ptr> %i.ed, ptr %i.ec, align 8
  %.sroa.8291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.dx, ptr %.sroa.8291.0..sroa_idx, align 8
  %.sroa.9292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9292.0..sroa_idx, align 8
  %.sroa.10293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bw, ptr %.sroa.10293.0..sroa_idx, align 8
  %.sroa.11294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.eb, ptr %.sroa.11294.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i32 %i.dz, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 180
  br label %bb.ad

.thread732:                                       ; preds = %.loopexit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !416, !align !417, !noundef !416
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !416, !align !417, !noundef !416
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.em = load i32, ptr %i.el, align 8, !noundef !416
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !416, !align !417, !noundef !416
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.eq = load <2 x ptr>, ptr %i.eg, align 8
  store <2 x ptr> %i.eq, ptr %i.ep, align 8
  %.sroa.8362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.ei, ptr %.sroa.8362.0..sroa_idx, align 8
  %.sroa.9363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9363.0..sroa_idx, align 8
  %.sroa.10364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bw, ptr %.sroa.10364.0..sroa_idx, align 8
  %.sroa.11365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ek, ptr %.sroa.11365.0..sroa_idx, align 8
  %.sroa.12366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.eo, ptr %.sroa.12366.0..sroa_idx, align 8
  %.sroa.14368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 %i.em, ptr %.sroa.14368.0..sroa_idx, align 8
  %.sroa.16370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.16370.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.ci

.thread733:                                       ; preds = %.loopexit
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !416, !align !417, !noundef !416
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ew = load i32, ptr %i.ev, align 8, !noundef !416
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !416, !align !417, !noundef !416
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fa = load <2 x ptr>, ptr %i.es, align 8
  store <2 x ptr> %i.fa, ptr %i.ez, align 8
  %.sroa.8410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.eu, ptr %.sroa.8410.0..sroa_idx, align 8
  %.sroa.9411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9411.0..sroa_idx, align 8
  %.sroa.10412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bw, ptr %.sroa.10412.0..sroa_idx, align 8
  %.sroa.11413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ey, ptr %.sroa.11413.0..sroa_idx, align 8
  %.sroa.13415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 %i.ew, ptr %.sroa.13415.0..sroa_idx, align 8
  %.sroa.15417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.15417.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9420.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9420.sroa.7)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3119.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3119.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i153.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i153.sroa.5)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.sf

.thread734:                                       ; preds = %.loopexit
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !416, !align !417, !noundef !416
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fh = load i32, ptr %i.fg, align 8, !noundef !416
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !416, !align !417, !noundef !416
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fl = load <2 x ptr>, ptr %i.fd, align 8
  store <2 x ptr> %i.fl, ptr %i.fk, align 8
  %.sroa.8434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.ff, ptr %.sroa.8434.0..sroa_idx, align 8
  %.sroa.9435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.9435.0..sroa_idx, align 8
  %.sroa.10436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.bw, ptr %.sroa.10436.0..sroa_idx, align 8
  %.sroa.11437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.fj, ptr %.sroa.11437.0..sroa_idx, align 8
  %.sroa.13439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 %i.fh, ptr %.sroa.13439.0..sroa_idx, align 8
  %.sroa.15441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.15441.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9444.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9444.sroa.7)
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3108.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3108.i.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i188.sroa.0)
end_hunk_0
