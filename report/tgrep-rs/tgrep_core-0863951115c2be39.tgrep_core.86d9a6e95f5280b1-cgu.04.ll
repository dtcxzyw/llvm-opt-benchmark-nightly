Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.04?download=true
inline.NumInlined: 652
inline.NumDeleted: 292
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1G_11IndexReader4opens0_0E0EB1I_:bb.a
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.073.i.i, %bb.j ], [ %.sroa.13.0.us.i.i, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB28_11IndexReader4opens0_0E0E0B2a_.exit25.us.i.i ] ; 3 uses
  %i.cq = icmp ult i64 %.val2.i.pre.i.fr.i, %i.bh
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.val2.i.pre.i.fr.i ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  br i1 %i.cq, label %.preheader.i.split.us.i, label %.preheader.i.split.i

.preheader.i.split.us.i:                          ; preds = %.preheader.i.i, %.cont.i.us.i
  %.sroa.23.1.i.us.i = phi i64 [ %i.dj, %.cont.i.us.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.13.1.i.us.i = phi ptr [ %.sroa.13.1.sroa.gep.i.us.i, %.cont.i.us.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.032.1.i.us.i = phi ptr [ %.sroa.13.1.i.us.i, %.cont.i.us.i ], [ %.sroa.032.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.cu = icmp eq ptr %.sroa.13.1.i.us.i, %i.bb   ; 2 uses
  br i1 %i.cu, label %.cont106.i.us.i, label %.else107.i.us.i

.else107.i.us.i:                                  ; preds = %.preheader.i.split.us.i
  %.val1.i.else.val.i.us.i = load i64, ptr %.sroa.13.1.i.us.i, align 8, !alias.scope !606, !noalias !616, !noundef !7
  br label %.cont106.i.us.i

.cont106.i.us.i:                                  ; preds = %.else107.i.us.i, %.preheader.i.split.us.i
  %.val1.i.i.us.i = phi i64 [ %i.ba, %.preheader.i.split.us.i ], [ %.val1.i.else.val.i.us.i, %.else107.i.us.i ] ; 3 uses
  %i.cv = icmp ult i64 %.val1.i.i.us.i, %i.bh
  br i1 %i.cv, label %bb.l, label %.split.us.i

bb.l:                                             ; preds = %.cont106.i.us.i
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.val1.i.i.us.i ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !617, !nonnull !7, !noundef !7
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noalias !617, !noundef !7 ; 2 uses
  %i.db = load ptr, ptr %i.cs, align 8, !noalias !617, !nonnull !7, !noundef !7
  %i.dc = load i64, ptr %i.ct, align 8, !noalias !617, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.dc)
  %i.dd = tail call i32 @memcmp(ptr nonnull %i.cy, ptr nonnull %i.db, i64 %spec.store.select.i.i.i.i.us.i), !noalias !617 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp eq i32 %i.dd, 0
  %i.dg = sub i64 %i.da, %i.dc
  %spec.select.i.i.i.i.us.i = select i1 %i.df, i64 %i.dg, i64 %i.de ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.23.1.i.us.i ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !606, !noalias !616
  store i64 %i.di, ptr %.sroa.032.1.i.us.i, align 8, !alias.scope !606, !noalias !616
  br i1 %i.cu, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB26_11IndexReader4opens0_0E0EB28_.exit.i, label %.cont.i.us.i

.cont.i.us.i:                                     ; preds = %bb.l
  %.else.val.i.us.i = load i64, ptr %.sroa.13.1.i.us.i, align 8, !alias.scope !606, !noalias !616
  store i64 %.else.val.i.us.i, ptr %i.dh, align 8, !alias.scope !606, !noalias !616
  %spec.select.i.i.lobit.i.i.us.i = lshr i64 %spec.select.i.i.i.i.us.i, 63
  %i.dj = add i64 %spec.select.i.i.lobit.i.i.us.i, %.sroa.23.1.i.us.i
  %.sroa.13.1.sroa.gep.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.us.i, i64 8
  br label %.preheader.i.split.us.i

.preheader.i.split.i:                             ; preds = %.preheader.i.i
  %i.dk = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.bb
  br i1 %i.dk, label %.cont106.i.i, label %.else107.i.i

.else107.i.i:                                     ; preds = %.preheader.i.split.i
  %.val1.i.else.val.i.i = load i64, ptr %.sroa.13.0.lcssa.i.i, align 8, !alias.scope !606, !noalias !616, !noundef !7
  br label %.cont106.i.i

.cont106.i.i:                                     ; preds = %.else107.i.i, %.preheader.i.split.i
  %.val1.i.i.i = phi i64 [ %i.ba, %.preheader.i.split.i ], [ %.val1.i.else.val.i.i, %.else107.i.i ] ; 2 uses
  %i.dl = icmp ult i64 %.val1.i.i.i, %i.bh
  br i1 %i.dl, label %bb.m, label %.split.us.i

.split.us.i:                                      ; preds = %.cont106.i.us.i, %.cont106.i.i
  %.us-phi.i = phi i64 [ %.val1.i.i.i, %.cont106.i.i ], [ %.val1.i.i.us.i, %.cont106.i.us.i ]
  %.us-phi24.i = phi ptr [ %.sroa.032.0.lcssa.i.i, %.cont106.i.i ], [ %.sroa.032.1.i.us.i, %.cont106.i.us.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
          to label %.noexc.i.i unwind label %bb.o, !noalias !611

.noexc.i.i:                                       ; preds = %.split.us.i
  unreachable

bb.m:                                             ; preds = %.cont106.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.fr.i, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc5.i.i unwind label %bb.o, !noalias !611

.noexc5.i.i:                                      ; preds = %bb.m
  unreachable

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %.val1.i7.i.i = load i64, ptr %.sroa.13.073.i.i, align 8, !alias.scope !606, !noalias !612, !noundef !7 ; 2 uses
  %i.dm = icmp ult i64 %.val1.i7.i.i, %i.bh
  br i1 %i.dm, label %bb.n, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.i.i
  %.us-phi.i.i = phi i64 [ %.val1.i7.i.i, %.lr.ph.split.i.i ], [ %.val1.i7.us.i.i, %.lr.ph.split.us.i.i ]
  %.us-phi80.i.i = phi ptr [ %i.az, %.lr.ph.split.i.i ], [ %.sroa.032.075.us.i.i, %.lr.ph.split.us.i.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i.i, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
          to label %.noexc13.i.i unwind label %bb.o, !noalias !611

.noexc13.i.i:                                     ; preds = %.split.us.i.i
  unreachable

bb.n:                                             ; preds = %.lr.ph.split.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.fr.i, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc14.i.i unwind label %bb.o, !noalias !611

.noexc14.i.i:                                     ; preds = %bb.n
  unreachable

.split82.us.i.i:                                  ; preds = %bb.k
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i17.us.i.i, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
          to label %.noexc23.i.i unwind label %bb.o, !noalias !611

.noexc23.i.i:                                     ; preds = %.split82.us.i.i
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.dn, %bb.o ], [ %i.fz, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %.split82.us.i.i, %bb.n, %.split.us.i.i, %bb.m, %.split.us.i
  %.sroa.032.2.i.i = phi ptr [ %.us-phi24.i, %.split.us.i ], [ %.sroa.13.076.us.i.i, %.split82.us.i.i ], [ %i.az, %bb.n ], [ %.us-phi80.i.i, %.split.us.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.m ]
  %i.dn = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ba, ptr %.sroa.032.2.i.i, align 8, !alias.scope !606, !noalias !607
  br label %common.resume

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB26_11IndexReader4opens0_0E0EB28_.exit.i: ; preds = %bb.l
  store i64 %i.ba, ptr %i.dh, align 8, !alias.scope !606, !noalias !616
  %spec.select.i.i.lobit.i113.i.i = lshr i64 %spec.select.i.i.i.i.us.i, 63
  %i.do = add i64 %spec.select.i.i.lobit.i113.i.i, %.sroa.23.1.i.us.i ; 5 uses
  %.not7.i = icmp ult i64 %i.do, %.sroa.15.0243725
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB26_11IndexReader4opens0_0E0EB28_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB26_11IndexReader4opens0_0E0EB28_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSj14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0244724, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0243725, i64 noundef 0, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0244724, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = xor i64 %i.do, -1
  %i.ds = add i64 %.sroa.15.0243725, %i.dr
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1G_11IndexReader4opens0_0E0EB1I_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0244724, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.0242726, i32 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.q:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1E_11IndexReader4opens0_0E0EB1G_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0244724, i64 %i.ax
  %.sroa.023.0.val = load i64, ptr %.sroa.023.0242726, align 8, !noundef !7 ; 3 uses
  %.val34 = load i64, ptr %i.dt, align 8, !noundef !7 ; 3 uses
  %.val.i = load ptr, ptr %.val35.pre, align 8, !nonnull !7, !align !12, !noundef !7 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !7 ; 4 uses
  %i.dy = icmp ult i64 %.sroa.023.0.val, %i.dx
  br i1 %i.dy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dz = icmp ult i64 %.val34, %i.dx
  br i1 %i.dz, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.023.0.val, i64 noundef %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val34, i64 noundef %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit: ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %.sroa.023.0.val ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %.val34 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !7, !noundef !7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !7 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !7, !noundef !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !7 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ej)
  %i.ek = tail call i32 @memcmp(ptr nonnull %i.ed, ptr nonnull %i.eh, i64 %spec.store.select.i.i) ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i32 %i.ek, 0
  %i.en = sub i64 %i.ef, %i.ej
  %spec.select.i.i = select i1 %i.em, i64 %i.en, i64 %i.el
  %i.eo = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.eo, label %bb.j, label %bb.u

bb.u:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSj14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0244724, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0243725, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0244724, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !621, !noalias !622, !noundef !7 ; 3 uses
  %i.er = getelementptr [8 x i8], ptr %.sroa.0.0244724, i64 %.sroa.15.0243725 ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -8     ; 2 uses
  %.sroa.13.073.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0244724, i64 16 ; 3 uses
  %i.et = icmp ult ptr %.sroa.13.073.i.i44, %i.es
  %.val2.i.pre.i.i45 = load i64, ptr %.sroa.0.0244724, align 8, !alias.scope !623, !noalias !624 ; 6 uses
  %.val.i.i.i.pre.i46 = load ptr, ptr %4, align 8, !noalias !625
  %.val.i.i.i.i.pre.i = load ptr, ptr %.val.i.i.i.pre.i46, align 8, !noalias !626 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.pre.i, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !626 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.pre.i, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !626 ; 10 uses
  br i1 %i.et, label %.lr.ph.i.i68, label %.preheader.i.i47

.lr.ph.i.i68:                                     ; preds = %bb.u
  %i.ey = icmp ult i64 %.val2.i.pre.i.i45, %i.ex
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val2.i.pre.i.i45 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  br i1 %i.ey, label %.lr.ph.split.us.i.i71, label %.lr.ph.split.i.i69

.lr.ph.split.us.i.i71:                            ; preds = %.lr.ph.i.i68, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i
  %.sroa.13.076.us.i.i72 = phi ptr [ %.sroa.13.0.us.i.i80, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i ], [ %.sroa.13.073.i.i44, %.lr.ph.i.i68 ] ; 3 uses
  %.sroa.032.075.us.i.i73 = phi ptr [ %16, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i ], [ %i.ep, %.lr.ph.i.i68 ] ; 4 uses
  %.sroa.23.074.us.i.i74 = phi i64 [ %26, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i ], [ 0, %.lr.ph.i.i68 ] ; 2 uses
  %.val1.i7.us.i.i75 = load i64, ptr %.sroa.13.076.us.i.i72, align 8, !alias.scope !621, !noalias !627, !noundef !7 ; 4 uses
  %5 = icmp ult i64 %.val1.i7.us.i.i75, %i.ex
  br i1 %5, label %bb.v, label %.split.us.i.i76

bb.v:                                             ; preds = %.lr.ph.split.us.i.i71
  %6 = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val1.i7.us.i.i75 ; 2 uses
  %7 = load ptr, ptr %i.fa, align 8, !noalias !628, !nonnull !7, !noundef !7 ; 2 uses
  %8 = load i64, ptr %i.fb, align 8, !noalias !628, !noundef !7 ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load ptr, ptr %9, align 8, !noalias !628, !nonnull !7, !noundef !7
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %12 = load i64, ptr %11, align 8, !noalias !628, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i11.us.i.i = tail call i64 @llvm.umin.i64(i64 %8, i64 %12)
  %13 = tail call i32 @memcmp(ptr nonnull %7, ptr nonnull %10, i64 %spec.store.select.i.i.i.i11.us.i.i), !noalias !628 ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.23.074.us.i.i74 ; 2 uses
  %15 = load i64, ptr %14, align 8, !alias.scope !621, !noalias !627
  store i64 %15, ptr %.sroa.032.075.us.i.i73, align 8, !alias.scope !621, !noalias !627
  store i64 %.val1.i7.us.i.i75, ptr %14, align 8, !alias.scope !621, !noalias !627
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.032.075.us.i.i73, i64 16 ; 3 uses
  %.val1.i17.us.i.i78 = load i64, ptr %16, align 8, !alias.scope !621, !noalias !629, !noundef !7 ; 4 uses
  %17 = icmp ult i64 %.val1.i17.us.i.i78, %i.ex
  br i1 %17, label %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i, label %.split82.us.i.i79

_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i: ; preds = %bb.v
  %18 = icmp eq i32 %13, 0
  %19 = sub i64 %8, %12
  %20 = sext i32 %13 to i64
  %spec.select.i.i.i.i12.us.i.i = select i1 %18, i64 %19, i64 %20
  %21 = icmp sgt i64 %spec.select.i.i.i.i12.us.i.i, -1
  %22 = zext i1 %21 to i64
  %23 = add i64 %.sroa.23.074.us.i.i74, %22       ; 2 uses
  %24 = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val1.i17.us.i.i78 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !630, !nonnull !7, !noundef !7
  %i.fe = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !630, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i21.us.i.i = tail call i64 @llvm.umin.i64(i64 %8, i64 %i.ff)
  %i.fg = tail call i32 @memcmp(ptr nonnull %7, ptr nonnull %i.fd, i64 %spec.store.select.i.i.i.i21.us.i.i), !noalias !630 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp eq i32 %i.fg, 0
  %i.fj = sub i64 %8, %i.ff
  %spec.select.i.i.i.i22.us.i.i = select i1 %i.fi, i64 %i.fj, i64 %i.fh
  %i.fk = icmp sgt i64 %spec.select.i.i.i.i22.us.i.i, -1
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %23 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !621, !noalias !629
  store i64 %i.fm, ptr %.sroa.13.076.us.i.i72, align 8, !alias.scope !621, !noalias !629
  store i64 %.val1.i17.us.i.i78, ptr %i.fl, align 8, !alias.scope !621, !noalias !629
  %25 = zext i1 %i.fk to i64
  %26 = add i64 %23, %25                          ; 2 uses
  %.sroa.13.0.us.i.i80 = getelementptr inbounds nuw i8, ptr %.sroa.032.075.us.i.i73, i64 24 ; 3 uses
  %27 = icmp ult ptr %.sroa.13.0.us.i.i80, %i.es
  br i1 %27, label %.lr.ph.split.us.i.i71, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i, %bb.u
  %.sroa.23.0.lcssa.i.i48 = phi i64 [ 0, %bb.u ], [ %26, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i ]
  %.sroa.032.0.lcssa.i.i49 = phi ptr [ %i.ep, %bb.u ], [ %16, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i50 = phi ptr [ %.sroa.13.073.i.i44, %bb.u ], [ %.sroa.13.0.us.i.i80, %_RNCINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB4_9quicksortjNCINvMBa_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2r_11IndexReader4opens0_0E0E0E0B2t_.exit25.us.i.i ]
  %28 = icmp ult i64 %.val2.i.pre.i.i45, %i.ex
  %29 = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val2.i.pre.i.i45 ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %29, i64 16
  br i1 %28, label %.preheader.i.split.us.i54, label %.cont106.i.i51

.preheader.i.split.us.i54:                        ; preds = %.preheader.i.i47, %.cont.i.us.i64
  %.sroa.23.1.i.us.i55 = phi i64 [ %i.fy, %.cont.i.us.i64 ], [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ] ; 3 uses
  %.sroa.13.1.i.us.i56 = phi ptr [ %.sroa.13.1.sroa.gep.i.us.i66, %.cont.i.us.i64 ], [ %.sroa.13.0.lcssa.i.i50, %.preheader.i.i47 ] ; 5 uses
  %.sroa.032.1.i.us.i57 = phi ptr [ %.sroa.13.1.i.us.i56, %.cont.i.us.i64 ], [ %.sroa.032.0.lcssa.i.i49, %.preheader.i.i47 ] ; 2 uses
  %31 = icmp eq ptr %.sroa.13.1.i.us.i56, %i.er   ; 2 uses
  br i1 %31, label %.cont106.i.us.i60, label %.else107.i.us.i58

.else107.i.us.i58:                                ; preds = %.preheader.i.split.us.i54
  %.val1.i.else.val.i.us.i59 = load i64, ptr %.sroa.13.1.i.us.i56, align 8, !alias.scope !621, !noalias !631, !noundef !7
  br label %.cont106.i.us.i60

.cont106.i.us.i60:                                ; preds = %.else107.i.us.i58, %.preheader.i.split.us.i54
  %.val1.i.i.us.i61 = phi i64 [ %i.eq, %.preheader.i.split.us.i54 ], [ %.val1.i.else.val.i.us.i59, %.else107.i.us.i58 ] ; 3 uses
  %32 = icmp ult i64 %.val1.i.i.us.i61, %i.ex
  br i1 %32, label %bb.w, label %.split.us.i62

bb.w:                                             ; preds = %.cont106.i.us.i60
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %.val1.i.i.us.i61 ; 2 uses
  %i.fp = load ptr, ptr %30, align 8, !noalias !632, !nonnull !7, !noundef !7
  %i.fq = load i64, ptr %i.fn, align 8, !noalias !632, !noundef !7 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !632, !nonnull !7, !noundef !7
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !632, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fu)
  %i.fv = tail call i32 @memcmp(ptr nonnull %i.fp, ptr nonnull %i.fs, i64 %spec.store.select.i.i.i.i.i.us.i), !noalias !632 ; 2 uses
  %33 = sext i32 %i.fv to i64
  %34 = icmp eq i32 %i.fv, 0
  %35 = sub i64 %i.fq, %i.fu
  %spec.select.i.i.i.i.i.us.i = select i1 %34, i64 %35, i64 %33
  %36 = icmp sgt i64 %spec.select.i.i.i.i.i.us.i, -1 ; 2 uses
  %37 = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.23.1.i.us.i55 ; 3 uses
  %i.fw = load i64, ptr %37, align 8, !alias.scope !621, !noalias !631
  store i64 %i.fw, ptr %.sroa.032.1.i.us.i57, align 8, !alias.scope !621, !noalias !631
  br i1 %31, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i, label %.cont.i.us.i64

.cont.i.us.i64:                                   ; preds = %bb.w
  %.else.val.i.us.i65 = load i64, ptr %.sroa.13.1.i.us.i56, align 8, !alias.scope !621, !noalias !631
  store i64 %.else.val.i.us.i65, ptr %37, align 8, !alias.scope !621, !noalias !631
  %i.fx = zext i1 %36 to i64
  %i.fy = add i64 %.sroa.23.1.i.us.i55, %i.fx
  %.sroa.13.1.sroa.gep.i.us.i66 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.us.i56, i64 8
  br label %.preheader.i.split.us.i54

.cont106.i.i51:                                   ; preds = %.preheader.i.i47
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.i45, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
          to label %.noexc.i.i53 unwind label %bb.x, !noalias !626

.noexc.i.i53:                                     ; preds = %.cont106.i.i51
  unreachable

.split.us.i62:                                    ; preds = %.cont106.i.us.i60
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i.i.us.i61, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc5.i.i63 unwind label %bb.x, !noalias !626

.noexc5.i.i63:                                    ; preds = %.split.us.i62
  unreachable

.lr.ph.split.i.i69:                               ; preds = %.lr.ph.i.i68
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.pre.i.i45, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
          to label %.noexc13.i.i70 unwind label %bb.x, !noalias !626

.noexc13.i.i70:                                   ; preds = %.lr.ph.split.i.i69
  unreachable

.split.us.i.i76:                                  ; preds = %.lr.ph.split.us.i.i71
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i7.us.i.i75, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc14.i.i77 unwind label %bb.x, !noalias !626

.noexc14.i.i77:                                   ; preds = %.split.us.i.i76
  unreachable

.split82.us.i.i79:                                ; preds = %bb.v
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i17.us.i.i78, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
          to label %.noexc24.i.i unwind label %bb.x, !noalias !626

.noexc24.i.i:                                     ; preds = %.split82.us.i.i79
  unreachable

bb.x:                                             ; preds = %.split82.us.i.i79, %.split.us.i.i76, %.lr.ph.split.i.i69, %.split.us.i62, %.cont106.i.i51
  %.sroa.032.2.i.i52 = phi ptr [ %.sroa.13.076.us.i.i72, %.split82.us.i.i79 ], [ %.sroa.032.0.lcssa.i.i49, %.cont106.i.i51 ], [ %.sroa.032.075.us.i.i73, %.split.us.i.i76 ], [ %i.ep, %.lr.ph.split.i.i69 ], [ %.sroa.032.1.i.us.i57, %.split.us.i62 ]
  %i.fz = landingpad { ptr, i32 }
          cleanup
  store i64 %i.eq, ptr %.sroa.032.2.i.i52, align 8, !alias.scope !621, !noalias !622
  br label %common.resume

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i: ; preds = %bb.w
  store i64 %i.eq, ptr %37, align 8, !alias.scope !621, !noalias !631
  %i.ga = zext i1 %36 to i64
  %i.gb = add i64 %.sroa.23.1.i.us.i55, %i.ga     ; 3 uses
  %.not7.i67 = icmp ult i64 %i.gb, %.sroa.15.0243725
  br i1 %.not7.i67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2p_11IndexReader4opens0_0E0E0EB2r_.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSj14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0244724, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.0243725, i64 noundef 0, i64 noundef %i.gb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %i.gd = sub nuw i64 %.sroa.15.0243725, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0244724, i64 %i.gc
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.023.0.be = phi ptr [ %i.dp, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ null, %bb.z ]
  %.sroa.15.0.be = phi i64 [ %i.ds, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.gd, %bb.z ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.dq, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.ge, %bb.z ] ; 3 uses
  %i.gf = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.gf, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(4) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph129

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.082.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.081.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082.lcssa, i64 noundef %.sroa.15.081.lcssa, ptr noalias nofree nonnull poison) #24
  br label %bb.c

.lr.ph129:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.079128 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.080127 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.081126 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.082125 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.d = add nsw i32 %.sroa.026.079128, -1        ; 3 uses
  %i.e = lshr i64 %.sroa.15.081126, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 28
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.081126, 64
  br i1 %i.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph129
  %i.i = tail call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull readonly align 4 %.sroa.0.082125, ptr noundef readonly %i.f, ptr noundef readonly %i.g, i64 noundef %i.e)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.lr.ph129
  %.val6.i = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !678, !noalias !679, !noundef !7 ; 2 uses
  %.val7.i = load i32, ptr %i.f, align 4, !alias.scope !680, !noalias !681, !noundef !7 ; 2 uses
  %i.j = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i32, ptr %i.g, align 4, !alias.scope !680, !noalias !681, !noundef !7 ; 2 uses
  %i.k = icmp ult i32 %.val6.i, %.val5.i
  %i.l = xor i1 %i.j, %i.k
  %i.m = icmp ult i32 %.val7.i, %.val5.i
  %i.n = xor i1 %i.j, %i.m
  %..i.i = select i1 %i.n, ptr %i.g, ptr %i.f
  %.sroa.0.0.i.i = select i1 %i.l, ptr %.sroa.0.082125, ptr %..i.i
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3mNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.i, %bb.b ]
  %i.o = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.p = ptrtoint ptr %.sroa.0.082125 to i64
  %i.q = sub nuw i64 %i.o, %i.p                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.q, 2           ; 3 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.081126
  tail call void @llvm.assume(i1 %i.r)
  %.not = icmp eq ptr %.sroa.023.080127, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSm14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !684, !noalias !683, !noundef !7 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %.sroa.0.082125, i64 %.sroa.15.081126 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -4       ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 8 ; 3 uses
  %i.w = icmp ult ptr %.sroa.13.030.i.i, %i.v
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !685, !noalias !682 ; 4 uses
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %.lr.ph.i.i ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.s, %bb.d ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.x = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.u
  br i1 %i.x, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ac, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.else.val.i.i = load i32, ptr %.sroa.13.1.i6.i, align 4, !alias.scope !686, !noalias !687, !noundef !7 ; 2 uses
  %i.y = icmp ult i32 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !684, !noalias !688
  store i32 %i.aa, ptr %.sroa.015.1.i7.i, align 4, !alias.scope !684, !noalias !688
  store i32 %.val.i.else.val.i.i, ptr %i.z, align 4, !alias.scope !684, !noalias !688
  %i.ab = zext i1 %i.y to i64
  %i.ac = add i64 %.sroa.23.1.i5.i, %i.ab         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.u
  br i1 %i.ad, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.cont.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.d ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.033.i.i, align 4, !alias.scope !689, !noalias !690, !noundef !7 ; 2 uses
  %i.ae = icmp ult i32 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !684, !noalias !691
  store i32 %i.ag, ptr %.sroa.015.032.i.i, align 4, !alias.scope !684, !noalias !691
  store i32 %.val.i11.i.i, ptr %i.af, align 4, !alias.scope !684, !noalias !691
  %i.ah = zext i1 %i.ae to i64
  %i.ai = add i64 %.sroa.23.031.i.i, %i.ah        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 8 ; 3 uses
  %.val.i13.i.i = load i32, ptr %i.aj, align 4, !alias.scope !692, !noalias !693, !noundef !7 ; 2 uses
  %i.ak = icmp ult i32 %.val.i13.i.i, %.val1.i.pre.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ai ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !684, !noalias !694
  store i32 %i.am, ptr %.sroa.13.033.i.i, align 4, !alias.scope !684, !noalias !694
  store i32 %.val.i13.i.i, ptr %i.al, align 4, !alias.scope !684, !noalias !694
  %i.an = zext i1 %i.ak to i64
  %i.ao = add i64 %i.ai, %i.an                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 12 ; 3 uses
  %i.ap = icmp ult ptr %.sroa.13.0.i.i, %i.v
  br i1 %i.ap, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ %i.ac, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.aq = icmp ult i32 %i.t, %.val1.i.pre.i.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !684, !noalias !688
  store i32 %i.as, ptr %.sroa.015.1.i.lcssa.i, align 4, !alias.scope !684, !noalias !688
  store i32 %i.t, ptr %i.ar, align 4, !alias.scope !684, !noalias !688
  %i.at = zext i1 %i.aq to i64
  %i.au = add i64 %.sroa.23.1.i.lcssa.i, %i.at    ; 5 uses
  %.not7.i = icmp ult i64 %i.au, %.sroa.15.081126
  br i1 %.not7.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSm12split_at_mutCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSm14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.082125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = xor i64 %i.au, -1
  %i.ay = add i64 %.sroa.15.081126, %i.ax
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef %i.au, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.023.080127, i32 noundef %i.d, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot12choose_pivotmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %i.q
  %.sroa.023.0.val = load i32, ptr %.sroa.023.080127, align 4, !alias.scope !21, !noalias !22, !noundef !7
  %.val = load i32, ptr %i.az, align 4, !alias.scope !22, !noalias !21, !noundef !7
  %i.ba = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.ba, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSm14swap_uncheckedCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !697, !noalias !696, !noundef !7 ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %.sroa.0.082125, i64 %.sroa.15.081126 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -4     ; 2 uses
  %.sroa.13.030.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 8 ; 3 uses
  %i.bf = icmp ult ptr %.sroa.13.030.i.i41, %i.be
  %.val1.i.pre.i.i42 = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !698, !noalias !695 ; 4 uses
  br i1 %i.bf, label %.lr.ph.i.i56, label %.preheader.i.i43

end_hunk_0
