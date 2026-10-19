Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_reqwest_client-732c24861560a46e.lance_namespace_reqwest_client.13bd7863b837ad8b-cgu.0?download=true
inline.NumInlined: 526
inline.NumDeleted: 236
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object:bb.a
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5170.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %.lr.ph232
  %i.au = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph232 ], [ %i.dk, %.loopexit ] ; 4 uses
  %i.av = phi i64 [ 0, %.lr.ph232 ], [ %i.dl, %.loopexit ] ; 13 uses
  %.sroa.5.0178230 = phi ptr [ null, %.lr.ph232 ], [ %.sroa.07.0.i.i.i, %.loopexit ] ; 2 uses
  %.sroa.14.0229 = phi i64 [ %i.af, %.lr.ph232 ], [ %.sroa.78.0.i.i.i, %.loopexit ] ; 6 uses
  %.sroa.22.0228 = phi i64 [ %i.ac, %.lr.ph232 ], [ %i.aw, %.loopexit ]
  %.sroa.9.0227 = phi i64 [ %i.ag, %.lr.ph232 ], [ 0, %.loopexit ] ; 2 uses
  %i.aw = add i64 %.sroa.22.0228, -1              ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.5.0178230, null
  br i1 %.not.i.i, label %bb.d, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ax = inttoptr i64 %.sroa.9.0227 to ptr       ; 3 uses
  %i.ay = icmp eq i64 %.sroa.14.0229, 0
  br i1 %i.ay, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %.sroa.14.0229, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ax, %.lr.ph.i.i.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.prol ], [ %.sroa.14.0229, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 632
  %i.ba = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.az, align 8, !noalias !719, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !668

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %i.ax, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %.sroa.14.0229, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = icmp ult i64 %.sroa.14.0229, 8
  br i1 %i.bb, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 632
  %.sroa.013.0.i.i = load ptr, ptr %i.bc, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 632
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.bd, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 632
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.be, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 632
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.bf, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 632
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.bg, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 632
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.bh, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 632
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.bi, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 632
  %i.bk = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.bj, align 8, !noalias !719, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.14.0229, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.9.0227, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %.sroa.5.0178230, %bb.c ], [ %i.ax, %bb.d ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 626
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !721, !noundef !3
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.bo
  br i1 %i.bp, label %bb.g, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, %bb.e
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.br, %bb.e ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.bt, %bb.e ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 352
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !722, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %i.bs = zext i16 %i.bv to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bt = add i64 %.sroa.5.021.i.i.i.i, 1         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 624
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !722 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 626
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !721, !noundef !3
  %i.by = icmp ult i16 %i.bv, %i.bx
  br i1 %i.by, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %.noexc.i.i unwind label %bb.j, !noalias !723

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bs, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bt, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.br, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5QD3CVEMyfH_10serde_json5value5ValueE10init_frontCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 5 uses
  %i.bz = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.loopexit194

bb.i:                                             ; preds = %bb.g
  %i.cb = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 640
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter330 = and i64 %.sroa.7.0.ph.i.i.i, 7   ; 2 uses
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.ce, %.prol.preheader ], [ %i.cd, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.i ]
  %prol.iter332 = phi i64 [ %prol.iter332.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !724, !nonnull !3, !noundef !3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter332.next = add i64 %prol.iter332, 1   ; 2 uses
  %prol.iter332.cmp.not = icmp eq i64 %prol.iter332.next, %xtraiter330
  br i1 %prol.iter332.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !682

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.cd, %bb.i ], [ %i.ce, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.cf = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.cf, label %.loopexit194, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.co, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 632
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.cg, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 632
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.ch, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 632
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.ci, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 632
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.cj, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 632
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.ck, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 632
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.cl, align 8, !noalias !724, !nonnull !3, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 632
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.cm, align 8, !noalias !724, !nonnull !3, !noundef !3 ; 2 uses
  %i.cn = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 632
  br i1 %i.cn, label %.loopexit194, label %.new

bb.j:                                             ; preds = %bb.f
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit193, %.loopexit.split-lp.loopexit, %bb.ao, %.body139, %bb.ad, %bb.ac, %bb.v, %bb.u, %bb.p, %bb.o, %bb.s, %bb.ar
  %.pn89 = phi { ptr, i32 } [ %.pn87, %bb.v ], [ %.pn, %bb.ad ], [ %i.fn, %bb.ar ], [ %i.dc, %bb.p ], [ %i.dg, %bb.s ], [ %lpad.phi201, %bb.ao ], [ %i.dc, %bb.o ], [ %.pn87, %bb.u ], [ %.pn, %bb.ac ], [ %lpad.phi201, %.body139 ], [ %lpad.loopexit, %.loopexit193 ], [ %lpad.loopexit195, %.loopexit.split-lp.loopexit ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.s) #27
  resume { ptr, i32 } %.pn89

.loopexit193:                                     ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.n, %bb.l, %bb.k
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit194:                                     ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.78.0.i.i.i = phi i64 [ %i.ca, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 360
  %i.cr = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.sroa.10.0.ph.i.i.i
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.cs, ptr %i.r, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.ph.i.i.i) ]
  %i.cu = load i8, ptr %i.ct, align 8, !range !718, !noundef !3
  switch i8 %i.cu, label %bb.k [
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
  ]

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.k:                                             ; preds = %.loopexit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.t, ptr %i.d, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.442.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.aq, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.480.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @5, ptr noundef nonnull %i.d)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %.loopexit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.t, ptr %i.h, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.446.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.ao, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.474.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @5, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100 unwind label %.loopexit.split-lp.loopexit

bb.m:                                             ; preds = %.loopexit194
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cy, 5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %.loopexit, label %.lr.ph

bb.n:                                             ; preds = %.loopexit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.t, ptr %i.o, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.450.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.ah, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.454.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @5, ptr noundef nonnull %i.o)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102 unwind label %.loopexit.split-lp.loopexit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100: ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.0159.0.copyload = load i64, ptr %i.i, align 8 ; 3 uses
  %.sroa.5161.0.copyload = load ptr, ptr %.sroa.5161.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0159.0.copyload, 0
  br i1 %i.dd, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5161.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5161.0.copyload, i64 noundef %.sroa.0159.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !725
  br label %.body

bb.q:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit100
  store i64 %.sroa.0159.0.copyload, ptr %i.j, align 8
  store ptr %.sroa.5161.0.copyload, ptr %.sroa.5161.0..sroa_idx162, align 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx164, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.de = load i64, ptr %i.s, align 8, !range !10, !alias.scope !726, !noundef !3
  %i.df = icmp eq i64 %i.av, %i.de
  br i1 %i.df, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.t unwind label %bb.s, !noalias !727

bb.s:                                             ; preds = %bb.r
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.j) #27, !noalias !726
  br label %.body

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.dh = load ptr, ptr %i.x, align 8, !alias.scope !726, !nonnull !3, !noundef !3 ; 2 uses
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !726
  %i.dj = add i64 %i.av, 1                        ; 2 uses
  store i64 %i.dj, ptr %i.y, align 8, !alias.scope !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114, %bb.m, %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138, %bb.t
  %i.dk = phi ptr [ %i.dh, %bb.t ], [ %i.au, %bb.m ], [ %i.fo, %bb.as ], [ %i.fc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138 ], [ %i.eg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ]
  %i.dl = phi i64 [ %i.dj, %bb.t ], [ %i.av, %bb.m ], [ %i.fq, %bb.as ], [ %i.fe, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138 ], [ %i.ei, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dm = icmp eq i64 %i.aw, 0
  br i1 %i.dm, label %._crit_edge, label %bb.c

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114
  %i.dn = phi i64 [ %i.ei, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ %i.av, %bb.m ] ; 5 uses
  %i.do = phi ptr [ %i.eg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ %i.au, %bb.m ]
  %.sroa.0152.0225 = phi ptr [ %i.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ %i.cw, %bb.m ] ; 2 uses
  %.sroa.7.0224 = phi i64 [ %i.dq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114 ], [ 0, %bb.m ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0152.0225, i64 32 ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.7.0224, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.7.0224, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.t, ptr %i.k, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.460.0..sroa_idx, align 8
  store ptr %i.r, ptr %i.ak, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs1H4IRjoHvx7_30lance_namespace_reqwest_client, ptr %.sroa.464.0..sroa_idx, align 8
  store ptr %i.n, ptr %i.al, align 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.468.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @6, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105 unwind label %.loopexit193

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.0154.0.copyload = load i64, ptr %i.l, align 8 ; 4 uses
  %.sroa.5155.0.copyload = load ptr, ptr %.sroa.5155.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.8156.0.copyload = load i64, ptr %.sroa.8156.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5155.0.copyload, i64 noundef %.sroa.8156.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0152.0225)
          to label %bb.x unwind label %bb.w

bb.u:                                             ; preds = %bb.z, %bb.w
  %.pn87 = phi { ptr, i32 } [ %i.ds, %bb.w ], [ %i.ef, %bb.z ] ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0154.0.copyload, 0
  br i1 %i.dr, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5155.0.copyload, i64 noundef %.sroa.0154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !728
  br label %.body

bb.w:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.x:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit105
  %i.dt = load ptr, ptr %i.am, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.du = load i64, ptr %i.an, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.dv = load i64, ptr %i.s, align 8, !range !10, !alias.scope !730, !noundef !3
  %i.dw = sub i64 %i.dv, %i.dn
  %i.dx = icmp ugt i64 %i.du, %i.dw
  br i1 %i.dx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, !prof !4

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i: ; preds = %bb.x
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.dn, i64 noundef %i.du, i64 noundef 8, i64 noundef 48)
          to label %.noexc109 unwind label %bb.z

.noexc109:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i
  %i.dy = load i64, ptr %i.y, align 8, !alias.scope !729, !noundef !3 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 192153584101141163
  call void @llvm.assume(i1 %i.dz)
  br label %bb.y

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i: ; preds = %bb.x
  %i.ea = icmp ult i64 %i.dn, 192153584101141163
  call void @llvm.assume(i1 %i.ea)
  %.not.i = icmp eq i64 %i.du, 0
  br i1 %.not.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, %.noexc109
  %i.eb = phi i64 [ %i.dy, %.noexc109 ], [ %i.dn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 2 uses
  %i.ec = load ptr, ptr %i.x, align 8, !alias.scope !729, !nonnull !3, !noundef !3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = mul i64 %i.du, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull readonly align 8 %i.dt, i64 %i.ee, i1 false), !noalias !729
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i

bb.z:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.m) #27
  br label %bb.u

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i, %bb.y
  %i.eg = phi ptr [ %i.ec, %bb.y ], [ %i.do, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ] ; 2 uses
  %i.eh = phi i64 [ %i.eb, %bb.y ], [ %i.dn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i ]
  %i.ei = add i64 %i.eh, %i.du                    ; 3 uses
  store i64 %i.ei, ptr %i.y, align 8, !alias.scope !729
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %.val2.i = load i64, ptr %i.m, align 8, !range !10, !alias.scope !731, !noundef !3 ; 2 uses
  %i.ej = icmp eq i64 %.val2.i, 0
  br i1 %i.ej, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i
  %i.ek = mul nuw i64 %.val2.i, 48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !731
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.aa, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i
  %i.el = icmp eq i64 %.sroa.0154.0.copyload, 0
  br i1 %i.el, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5155.0.copyload, i64 noundef %.sroa.0154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !732
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit114: ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.em = icmp eq ptr %i.dp, %i.cz
  br i1 %i.em, label %.loopexit, label %.lr.ph

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.0149.0.copyload = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.5150.0.copyload = load ptr, ptr %.sroa.5150.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client4apis17parse_deep_object(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5150.0.copyload, i64 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ct)
          to label %bb.af unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ah, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.ae ], [ %i.fb, %bb.ah ] ; 2 uses
  %i.en = icmp eq i64 %.sroa.0149.0.copyload, 0
  br i1 %i.en, label %.body, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5150.0.copyload, i64 noundef %.sroa.0149.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !733
  br label %.body

bb.ae:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.af:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit102
  %i.ep = load ptr, ptr %i.ai, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.eq = load i64, ptr %i.aj, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.er = load i64, ptr %i.s, align 8, !range !10, !alias.scope !735, !noundef !3
  %i.es = sub i64 %i.er, %i.av
  %i.et = icmp ugt i64 %i.eq, %i.es
  br i1 %i.et, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118, !prof !4

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120: ; preds = %bb.af
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.av, i64 noundef %i.eq, i64 noundef 8, i64 noundef 48)
          to label %.noexc121 unwind label %bb.ah

.noexc121:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120
  %i.eu = load i64, ptr %i.y, align 8, !alias.scope !734, !noundef !3 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, 192153584101141163
  call void @llvm.assume(i1 %i.ev)
  %.pre = load ptr, ptr %i.x, align 8, !alias.scope !734
  br label %bb.ag

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118: ; preds = %bb.af
  %i.ew = icmp ult i64 %i.av, 192153584101141163
  call void @llvm.assume(i1 %i.ew)
  %.not.i119 = icmp eq i64 %i.eq, 0
  br i1 %.not.i119, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118, %.noexc121
  %i.ex = phi ptr [ %.pre, %.noexc121 ], [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ] ; 2 uses
  %i.ey = phi i64 [ %i.eu, %.noexc121 ], [ %i.av, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [48 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = mul i64 %i.eq, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull readonly align 8 %i.ep, i64 %i.fa, i1 false), !noalias !734
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133

bb.ah:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.thread.i120
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef align 8 dereferenceable(24) %i.q) #27
  br label %bb.ac

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118, %bb.ag
  %i.fc = phi ptr [ %i.ex, %bb.ag ], [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ]
  %i.fd = phi i64 [ %i.ey, %bb.ag ], [ %i.av, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i118 ]
  %i.fe = add i64 %i.fd, %i.eq                    ; 2 uses
  store i64 %i.fe, ptr %i.y, align 8, !alias.scope !734
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %.val2.i134 = load i64, ptr %i.q, align 8, !range !10, !alias.scope !736, !noundef !3 ; 2 uses
  %i.ff = icmp eq i64 %.val2.i134, 0
  br i1 %i.ff, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135, label %bb.ai

bb.ai:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133
  %i.fg = mul nuw i64 %.val2.i134, 48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !736
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135: ; preds = %bb.ai, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.i133
  %i.fh = icmp eq i64 %.sroa.0149.0.copyload, 0
  br i1 %i.fh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5150.0.copyload, i64 noundef %.sroa.0149.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !737
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit138: ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.loopexit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.0168.0.copyload = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.5170.0.copyload = load ptr, ptr %.sroa.5170.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6173.0.copyload = load i64, ptr %.sroa.6173.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !738
  store i64 0, ptr %i.c, align 8, !noalias !738
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !738
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !738
  store i32 1610612768, ptr %i.ar, align 8, !noalias !738
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !738
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !738
  store ptr %i.c, ptr %i.b, align 8, !noalias !738
  store ptr @160, ptr %i.as, align 8, !noalias !738
  %i.fi = invoke noundef zeroext i1 @_RNvXs_NtCs5QD3CVEMyfH_10serde_json5valueNtB4_5ValueNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ct, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.am unwind label %.loopexit198, !noalias !739

.loopexit198:                                     ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  %lpad.loopexit200 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp199:                            ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp199, %.loopexit198
  %lpad.phi201 = phi { ptr, i32 } [ %lpad.loopexit200, %.loopexit198 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp199 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !740, !noalias !738 ; 2 uses
  %i.fj = icmp eq i64 %.val.i.i, 0
  br i1 %i.fj, label %.body139, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !740, !noalias !738, !nonnull !3, !noundef !3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !741
  br label %.body139

bb.am:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  br i1 %i.fi, label %bb.an, label %bb.ap, !prof !4

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #29
          to label %.noexc.i unwind label %.loopexit.split-lp199, !noalias !739

.noexc.i:                                         ; preds = %bb.an
  unreachable

.body139:                                         ; preds = %bb.ak, %bb.al
  %i.fk = icmp eq i64 %.sroa.0168.0.copyload, 0
  br i1 %i.fk, label %.body, label %bb.ao

bb.ao:                                            ; preds = %.body139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5170.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5170.0.copyload, i64 noundef %.sroa.0168.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !742
  br label %.body

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !738
  store i64 %.sroa.0168.0.copyload, ptr %i.f, align 8
  store ptr %.sroa.5170.0.copyload, ptr %.sroa.5170.0..sroa_idx171, align 8
  store i64 %.sroa.6173.0.copyload, ptr %.sroa.6173.0..sroa_idx174, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.fl = load i64, ptr %i.s, align 8, !range !10, !alias.scope !743, !noundef !3
  %i.fm = icmp eq i64 %i.av, %i.fl
  br i1 %i.fm, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.as unwind label %bb.ar, !noalias !744

bb.ar:                                            ; preds = %bb.aq
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs1H4IRjoHvx7_30lance_namespace_reqwest_client(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f) #27, !noalias !743
  br label %.body

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.fo = load ptr, ptr %i.x, align 8, !alias.scope !743, !nonnull !3, !noundef !3 ; 2 uses
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.fo, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !743
  %i.fq = add i64 %i.av, 1                        ; 2 uses
  store i64 %i.fq, ptr %i.y, align 8, !alias.scope !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 32, 121) %2) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.a, 14
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.sroa.0.04.i = phi i64 [ 0, %.new ], [ %i.f, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.c = or disjoint i64 %.sroa.0.04.i, 1         ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 1, !alias.scope !760
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.e, align 1, !alias.scope !761
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !760
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !761
  %i.f = add nuw nsw i64 %.sroa.0.04.i, 2         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.g, align 1, !alias.scope !762
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.h, align 1, !alias.scope !763
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.g, align 1, !alias.scope !762
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.h, align 1, !alias.scope !763
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa, label %bb.b

_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa: ; preds = %bb.b
  %i.i = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not, label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa, %bb.a
  %.sroa.0.04.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.f, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.i.epil.init ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %.sroa.0.0.copyload.i.i.epil = load i64, ptr %i.j, align 1, !alias.scope !760
  %.sroa.02.0.copyload.i.i.epil = load i64, ptr %i.k, align 1, !alias.scope !761
  store i64 %.sroa.02.0.copyload.i.i.epil, ptr %i.j, align 1, !alias.scope !760
  store i64 %.sroa.0.0.copyload.i.i.epil, ptr %i.k, align 1, !alias.scope !761
  br label %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit

_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit: ; preds = %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit.unr-lcssa, %.epil.preheader
  %i.l = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  %i.m = and i64 %2, 120                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 4 uses
  %i.p = icmp samesign ult i64 %i.l, 4
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.n, align 1, !alias.scope !764
  %.sroa.02.0.copyload.i.i5 = load i32, ptr %i.o, align 1, !alias.scope !765
  store i32 %.sroa.02.0.copyload.i.i5, ptr %i.n, align 1, !alias.scope !764
  store i32 %.sroa.0.0.copyload.i.i4, ptr %i.o, align 1, !alias.scope !765
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 4, %bb.d ] ; 4 uses
  %i.q = and i64 %2, 2
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.s, align 1, !alias.scope !766
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.t, align 1, !alias.scope !767
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.s, align 1, !alias.scope !766
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.t, align 1, !alias.scope !767
  %i.u = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.1.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.x, align 1, !alias.scope !768
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.y, align 1, !alias.scope !769
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.x, align 1, !alias.scope !768
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.y, align 1, !alias.scope !769
  br label %_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.h, %bb.g, %_RINvNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1H4IRjoHvx7_30lance_namespace_reqwest_client.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models11boost_querys_1__NtB7_10BoostQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1D_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models11match_querys_1__NtB7_10MatchQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1D_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12phrase_querys_1__NtB7_11PhraseQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1F_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models12tag_contentss_1__NtB7_11TagContentsNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1F_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13boolean_querys_1__NtB7_12BooleanQueryNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models13index_contents_1__NtB7_12IndexContentNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1H_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 16)
  ret i1 %i.a
end_hunk_0
