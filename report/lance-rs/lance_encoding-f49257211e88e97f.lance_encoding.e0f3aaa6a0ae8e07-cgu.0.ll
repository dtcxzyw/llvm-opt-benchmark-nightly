Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_set:bb.a
  %.sroa.4114.0.ph.i = phi i64 [ 8, %bb.n ], [ 0, %bb.l ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4114.0.ph.i, i64 %i.by) #66
          to label %bb.w unwind label %.loopexit.split-lp.i, !noalias !57866

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.o, %bb.m
  %.sroa.4114.0.i = phi i64 [ %i.bk, %bb.o ], [ 0, %bb.m ] ; 2 uses
  %.sroa.10116.0.i = phi i64 [ %i.cd, %bb.o ], [ 8, %bb.m ]
  %i.ce = inttoptr i64 %.sroa.10116.0.i to ptr    ; 2 uses
  %i.cf = icmp samesign ule i64 %i.bk, %.sroa.4114.0.i
  call void @llvm.assume(i1 %i.cf)
  store i64 %.sroa.4114.0.i, ptr %i.b, align 8, !noalias !57861
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.ce, ptr %i.cg, align 8, !noalias !57861
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.ch, align 8, !noalias !57861
  %i.ci = load i64, ptr %i.c, align 8, !range !76, !noalias !57861, !noundef !75 ; 4 uses
  br label %.lr.ph.i

bb.q:                                             ; preds = %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = icmp eq i64 %i.ci, 0
  br i1 %i.ck, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = shl nuw i64 %i.ci, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57872
  br label %bb.u

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, %.loopexit.i
  %i.cm = phi ptr [ %i.cv, %.loopexit.i ], [ %i.ce, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %i.cn = phi i64 [ %.val5.i.i.i.i, %.loopexit.i ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 3 uses
  %.sroa.5.0142.i = phi ptr [ %i.co, %.loopexit.i ], [ %i.bb, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.5.0142.i, i64 16 ; 2 uses
  %i.cp = load i64, ptr %.sroa.5.0142.i, align 8, !noalias !57873, !noundef !75 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.5.0142.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !57873, !noundef !75 ; 4 uses
  %spec.select.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.cr, i64 %i.cp) ; 2 uses
  %i.cs = load i64, ptr %i.b, align 8, !range !76, !noalias !57861, !noundef !75
  %i.ct = sub i64 %i.cs, %i.cn
  %i.cu = icmp ugt i64 %spec.select.i.i.i, %i.ct
  br i1 %i.cu, label %bb.s, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.s:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cn, i64 noundef %spec.select.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %.noexc91.i unwind label %bb.q, !noalias !57866

.noexc91.i:                                       ; preds = %bb.s
  %.pre.i90.i = load i64, ptr %i.ch, align 8, !noalias !57861
  %.pre144.i = load ptr, ptr %i.cg, align 8, !noalias !57861
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %.noexc91.i, %.lr.ph.i
  %i.cv = phi ptr [ %i.cm, %.lr.ph.i ], [ %.pre144.i, %.noexc91.i ] ; 3 uses
  %i.cw = phi i64 [ %i.cn, %.lr.ph.i ], [ %.pre.i90.i, %.noexc91.i ] ; 4 uses
  %i.cx = icmp ult i64 %i.cp, %i.cr
  br i1 %i.cx, label %.lr.ph.i.i.i.i.preheader, label %.loopexit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.cy = sub nuw i64 %i.cr, %i.cp                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader653, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.cy, -4                      ; 4 uses
  %i.cz = add i64 %i.cw, %n.vec                   ; 2 uses
  %i.da = add i64 %i.cp, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.db = getelementptr [8 x i8], ptr %i.cv, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x i64> %vec.ind, ptr %i.dc, align 8, !noalias !57874
  store <2 x i64> %step.add, ptr %i.dd, align 8, !noalias !57874
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !57783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.i.i.preheader653

.lr.ph.i.i.i.i.preheader653:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.sroa.0.011.i.i.i.i.ph = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader653, %.lr.ph.i.i.i.i
  %i.df = phi i64 [ %i.di, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader653 ] ; 2 uses
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i ], [ %.sroa.0.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader653 ] ; 2 uses
  %i.dg = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.df
  store i64 %.sroa.0.011.i.i.i.i, ptr %i.dh, align 8, !noalias !57874
  %i.di = add i64 %i.df, 1                        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dg, %i.cr
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57784

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.loopexit.i
  %i.dj = icmp eq i64 %i.ci, 0
  br i1 %i.dj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i, label %bb.t

bb.t:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.dk = shl nuw i64 %i.ci, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57875
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i: ; preds = %bb.t, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i
  invoke fastcc void @_RNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB2_17SparsePositionSet14from_positions(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ar)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i._crit_edge: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i
  %.pre600 = load i8, ptr %i.e, align 8, !range !88
  br label %bb.bx

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.val5.i.i.i.i = phi i64 [ %i.cw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ], [ %i.cz, %middle.block ], [ %i.di, %.lr.ph.i.i.i.i ] ; 2 uses
  store i64 %.val5.i.i.i.i, ptr %i.ch, align 8, !noalias !57861
  %i.dl = icmp eq ptr %i.co, %i.bc
  br i1 %i.dl, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEENtNtNtNtB13_4iter6traits8iterator8Iterator4nextCsjjpCCFGI3ul_14lance_encoding.exit.i, label %.lr.ph.i

bb.u:                                             ; preds = %bb.r, %bb.q
  %.val.i93.i = load i64, ptr %i.b, align 8, !noalias !57861 ; 2 uses
  %i.dm = icmp eq i64 %.val.i93.i, 0
  br i1 %i.dm, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i94.i = load ptr, ptr %i.cg, align 8, !noalias !57861, !nonnull !75, !noundef !75
  %i.dn = shl nuw i64 %.val.i93.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i94.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57876
  br label %.body

bb.w:                                             ; preds = %bb.p
  unreachable

.loopexit140.i:                                   ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtNtBa_3ops5range5RangeyEyyINtNtBa_6result6ResultyNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse24position_segments_to_sets_0NCB2A_s0_0E0B2K_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit140.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit140.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57877)
  %.val.i95.i = load i64, ptr %i.c, align 8, !alias.scope !57877, !noalias !57861 ; 2 uses
  %i.do = icmp eq i64 %.val.i95.i, 0
  br i1 %i.do, label %.body, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = shl nuw i64 %.val.i95.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57878
  br label %.body

bb.z:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.y, align 8
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !75
  %.not441 = icmp eq i64 %i.dr, %4
  br i1 %.not441, label %bb.ad, label %bb.ae

bb.aa:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !75 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !75
  %i.dw = add i64 %i.dv, %i.dt                    ; 4 uses
  %i.dx = icmp ult i64 %i.dw, %i.dt
  br i1 %i.dx, label %bb.ba, label %bb.az, !prof !81

bb.ab:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %i.dz, align 8
  %.idx = shl nuw nsw i64 %3, 4                   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not439573 = icmp eq i64 %3, 0
  br i1 %.not439573, label %._crit_edge580, label %.lr.ph579

.lr.ph579:                                        ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !75, !noundef !75 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !75 ; 9 uses
  %i.ef = icmp eq i64 %i.ee, 0
  %.not21.i.i = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader, label %.preheader.i.i

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader: ; preds = %.lr.ph579
  %i.eg = add nsw i64 %.idx, -16                  ; 2 uses
  %i.eh = lshr exact i64 %i.eg, 4
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %xtraiter = and i64 %i.ei, 3                    ; 3 uses
  %i.ej = icmp ult i64 %i.eg, 48
  br i1 %i.ej, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil.preheader, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader.new

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader.new: ; preds = %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader
  %unroll_iter = and i64 %i.ei, 2305843009213693948
  br label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us: ; preds = %bb.ac, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader.new
  %.sroa.0229.2576.us = phi i64 [ 0, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader.new ], [ %i.fj, %bb.ac ] ; 2 uses
  %.sroa.0145.0574.us = phi ptr [ %2, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader.new ], [ %i.fl, %bb.ac ] ; 9 uses
  %niter = phi i64 [ 0, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader.new ], [ %niter.next.3, %bb.ac ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57881)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !noundef !75
  %i.em = load i64, ptr %.sroa.0145.0574.us, align 8, !noundef !75
  %i.en = sub i64 %i.el, %i.em
  %i.eo = add i64 %i.en, %.sroa.0229.2576.us      ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %.sroa.0229.2576.us
  br i1 %i.ep, label %.split.us, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.1, !prof !81

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.1: ; preds = %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 24
  %i.es = load i64, ptr %i.er, align 8, !noundef !75
  %i.et = load i64, ptr %i.eq, align 8, !noundef !75
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = add i64 %i.eu, %i.eo                    ; 3 uses
  %i.ew = icmp ult i64 %i.ev, %i.eo
  br i1 %i.ew, label %.split.us, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.2, !prof !81

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.2: ; preds = %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.1
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !75
  %i.fa = load i64, ptr %i.ex, align 8, !noundef !75
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = add i64 %i.fb, %i.ev                    ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %i.ev
  br i1 %i.fd, label %.split.us, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.3, !prof !81

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.3: ; preds = %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.2
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 56
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !75
  %i.fh = load i64, ptr %i.fe, align 8, !noundef !75
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = add i64 %i.fi, %i.fc                    ; 3 uses
  %i.fk = icmp ult i64 %i.fj, %i.fc
  br i1 %i.fk, label %.split.us, label %bb.ac, !prof !81

bb.ac:                                            ; preds = %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.3
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us, i64 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge580.loopexit.unr-lcssa, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us

bb.ad:                                            ; preds = %bb.z
  %.idx592 = shl nuw nsw i64 %3, 4
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx592
  %i.fn = icmp eq i64 %3, 0
  br i1 %i.fn, label %._crit_edge590, label %.lr.ph589

bb.ae:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.ac, ptr %i.w, align 8
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.4277.0..sroa_idx, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.fo, align 8
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.4281.0..sroa_idx, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.ad, ptr %i.fp, align 8
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4285.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @1469, ptr noundef nonnull %i.w)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph589:                                        ; preds = %bb.ad, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit464
  %.sroa.014.0587 = phi ptr [ %i.fq, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit464 ], [ %2, %bb.ad ] ; 3 uses
  %.sroa.0229.0586 = phi i64 [ %i.fv, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit464 ], [ 0, %bb.ad ] ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.014.0587, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.014.0587, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !75 ; 4 uses
  %i.ft = load i64, ptr %.sroa.014.0587, align 8, !noundef !75 ; 4 uses
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = add i64 %i.fu, %.sroa.0229.0586         ; 5 uses
  %i.fw = icmp ult i64 %i.fv, %.sroa.0229.0586
  br i1 %i.fw, label %bb.al, label %bb.af, !prof !81

._crit_edge590:                                   ; preds = %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit464, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.e

bb.af:                                            ; preds = %.lr.ph589
  call void @llvm.experimental.noalias.scope.decl(metadata !57882)
  %.not.i = icmp ult i64 %.sroa.0229.0586, %i.fv
  br i1 %.not.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.fx = load i64, ptr %i.aj, align 8, !alias.scope !57882, !noundef !75 ; 5 uses
  %.not1.i = icmp eq i64 %i.fx, 0
  br i1 %.not1.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.ai, align 8, !alias.scope !57882, !nonnull !75, !noundef !75
  %i.fz = getelementptr [16 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = getelementptr i8, ptr %i.fz, i64 -8     ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !57882, !noundef !75
  %i.gc = icmp eq i64 %i.gb, %.sroa.0229.0586
  br i1 %i.gc, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gd = load i64, ptr %i.aa, align 8, !range !76, !alias.scope !57883, !noundef !75
  %i.ge = icmp eq i64 %i.fx, %i.gd
  br i1 %i.ge, label %bb.aj, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8grow_oneCs3PfUT229lOd_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %.loopexit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.aj, %bb.ai
  %i.gf = load ptr, ptr %i.ai, align 8, !alias.scope !57883, !nonnull !75, !noundef !75
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.fx ; 2 uses
  store i64 %.sroa.0229.0586, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %i.fv, ptr %i.gh, align 8
  %i.gi = add i64 %i.fx, 1
  store i64 %i.gi, ptr %i.aj, align 8, !alias.scope !57883
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  store i64 %i.fv, ptr %i.ga, align 8, !noalias !57882
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_set0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.aj, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.bp, %bb.bk
  %lpad.loopexit561 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bc, %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i, %bb.e, %bb.bs, %bb.bm, %bb.bf, %bb.ba, %bb.al
  %.sroa.0260.0.ph.ph = phi i1 [ true, %bb.ae ], [ true, %bb.al ], [ true, %bb.bm ], [ false, %bb.e ], [ true, %bb.bs ], [ true, %bb.ba ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i ], [ true, %bb.bc ], [ true, %bb.bf ]
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.af, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !57884)
  %.not.i460 = icmp ult i64 %i.ft, %i.fs
  br i1 %.not.i460, label %bb.an, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit464

bb.an:                                            ; preds = %bb.am
  %i.gj = load i64, ptr %i.al, align 8, !alias.scope !57884, !noundef !75 ; 5 uses
  %.not1.i461 = icmp eq i64 %i.gj, 0
  br i1 %.not1.i461, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gk = load ptr, ptr %i.ak, align 8, !alias.scope !57884, !nonnull !75, !noundef !75
  %i.gl = getelementptr [16 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = getelementptr i8, ptr %i.gl, i64 -8     ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !57884, !noundef !75
  %i.go = icmp eq i64 %i.gn, %i.ft
  br i1 %i.go, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gp = load i64, ptr %i.z, align 8, !range !76, !alias.scope !57885, !noundef !75
  %i.gq = icmp eq i64 %i.gj, %i.gp
  br i1 %i.gq, label %bb.aq, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i462

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8grow_oneCs3PfUT229lOd_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i462 unwind label %.loopexit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i462: ; preds = %bb.aq, %bb.ap
  %i.gr = load ptr, ptr %i.ak, align 8, !alias.scope !57885, !nonnull !75, !noundef !75
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gj ; 2 uses
  store i64 %i.ft, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 %i.fs, ptr %i.gt, align 8
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_set:bb.a
  invoke fastcc void @_RNCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_sets2_0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %.sroa.0130.0.copyload = load i8, ptr %i.i, align 8
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.4363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4363.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6132.0..sroa_idx, i64 7, i1 false)
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6134.0.copyload = load i64, ptr %.sroa.6134.0..sroa_idx, align 8
  %.sroa.8137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6365.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8137.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %bb.bw, %bb.bt
  %.sroa.0106.0.copyload.sink = phi i8 [ %.sroa.0106.0.copyload, %bb.bv ], [ %.sroa.082.0.copyload, %bb.bw ], [ %.sroa.0130.0.copyload, %bb.bt ]
  %.sroa.6110.0.copyload.sink = phi i64 [ %.sroa.6110.0.copyload, %bb.bv ], [ %.sroa.686.0.copyload, %bb.bw ], [ %.sroa.6134.0.copyload, %bb.bt ]
  store i8 %.sroa.0106.0.copyload.sink, ptr %0, align 8
  %.sroa.5352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6110.0.copyload.sink, ptr %.sroa.5352.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.dc

bb.bv:                                            ; preds = %bb.bm
  %.sroa.0106.0.copyload = load i8, ptr %i.j, align 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.4351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4351.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6108.0..sroa_idx, i64 7, i1 false)
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6110.0.copyload = load i64, ptr %.sroa.6110.0..sroa_idx, align 8
  %.sroa.8113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6353.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8113.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bu

bb.bw:                                            ; preds = %bb.bf
  %.sroa.082.0.copyload = load i8, ptr %i.k, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4339.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.684.0..sroa_idx, i64 7, i1 false)
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.686.0.copyload = load i64, ptr %.sroa.686.0..sroa_idx, align 8
  %.sroa.889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6341.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.889.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bu

bb.bx:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i._crit_edge, %bb.g, %bb.f
  %i.ix = phi i8 [ %.pre600, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit92.i._crit_edge ], [ %i.aw, %bb.g ], [ %i.aw, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !57861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not443 = icmp eq i8 %i.ix, -1
  br i1 %.not443, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.4418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.5419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5419.0..sroa_idx, i64 24, i1 false)
  %.sroa.4421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4421.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4418.0..sroa_idx, i64 31, i1 false)
  store i8 %i.ix, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !57893)
  %.val.i479 = load i64, ptr %i.z, align 8, !alias.scope !57893 ; 2 uses
  %i.iy = icmp eq i64 %.val.i479, 0
  br i1 %i.iy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit481, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.val1.i480 = load ptr, ptr %i.ak, align 8, !alias.scope !57893, !nonnull !75, !noundef !75
  %i.iz = shl nuw i64 %.val.i479, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i480, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57893
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit481

bb.ca:                                            ; preds = %bb.bx
  %i.ja = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jc, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit489, %bb.ca
  ret void

bb.cc:                                            ; preds = %bb.df, %.body
  br i1 %.sroa.0260.3, label %.thread, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit528

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit481: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit489

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit489: ; preds = %bb.cj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit519, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cb

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit467: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.0538.0.copyload = load i64, ptr %i.t, align 8 ; 3 uses
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5540.0.copyload = load ptr, ptr %.sroa.5540.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6543.0.copyload = load i64, ptr %.sroa.6543.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !57894
  %i.jd = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57894 ; 5 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.cd, label %bb.cg, !prof !77

bb.cd:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit467
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc482 unwind label %bb.ce

.noexc482:                                        ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jg = icmp eq i64 %.sroa.0538.0.copyload, 0
  br i1 %i.jg, label %.body, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5540.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5540.0.copyload, i64 noundef %.sroa.0538.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !57895
  br label %.body

bb.cg:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit467
  store i64 %.sroa.0538.0.copyload, ptr %i.jd, align 8
  %.sroa.5540.0..sroa_idx541 = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %.sroa.5540.0.copyload, ptr %.sroa.5540.0..sroa_idx541, align 8
  %.sroa.6543.0..sroa_idx544 = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i64 %.sroa.6543.0.copyload, ptr %.sroa.6543.0..sroa_idx544, align 8
  store i8 0, ptr %0, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jd, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @2551, ptr %.sroa.668.0..sroa_idx, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ax

bb.ci:                                            ; preds = %bb.ba
  %.sroa.049.0.copyload = load i8, ptr %i.l, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4309.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.651.0..sroa_idx, i64 7, i1 false)
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.653.0.copyload = load i64, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6311.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.856.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i8 %.sroa.049.0.copyload, ptr %0, align 8
  %.sroa.5310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.653.0.copyload, ptr %.sroa.5310.0..sroa_idx, align 8
  br label %bb.ch

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit519: ; preds = %bb.ax, %bb.ay, %bb.db, %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !57896)
  %.val.i487 = load i64, ptr %i.aa, align 8, !alias.scope !57896 ; 2 uses
  %i.jh = icmp eq i64 %.val.i487, 0
  br i1 %i.jh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit489, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit519
  %.val1.i488 = load ptr, ptr %i.ai, align 8, !alias.scope !57896, !nonnull !75, !noundef !75
  %i.ji = shl nuw i64 %.val.i487, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i488, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !57896
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit489

.preheader.i.i:                                   ; preds = %.lr.ph579, %bb.cv
  %.sroa.0229.2576 = phi i64 [ %i.ky, %bb.cv ], [ 0, %.lr.ph579 ] ; 4 uses
  %.sroa.0145.0574 = phi ptr [ %i.jj, %bb.cv ], [ %2, %.lr.ph579 ] ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57879)
  call void @llvm.experimental.noalias.scope.decl(metadata !57880)
  call void @llvm.experimental.noalias.scope.decl(metadata !57881)
  %.pre.i.i490 = load i64, ptr %.sroa.0145.0574, align 8, !alias.scope !57880, !noalias !57897 ; 5 uses
  br i1 %.not21.i.i, label %.preheader.i.i493.thread, label %.lr.ph.i.i491

.preheader.i.i493.thread:                         ; preds = %.preheader.i.i
  %.val14.i.i640 = load i64, ptr %i.ec, align 8, !alias.scope !57898, !noalias !57899, !noundef !75
  %i.jk = icmp ult i64 %.val14.i.i640, %.pre.i.i490
  %i.jl = zext i1 %i.jk to i64                    ; 2 uses
  %7 = icmp samesign uge i64 %i.ee, %i.jl
  call void @llvm.assume(i1 %7)
  %.phi.trans.insert.i.i641 = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574, i64 8
  %.pre.i.i495642 = load i64, ptr %.phi.trans.insert.i.i641, align 8, !alias.scope !57900, !noalias !57901
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_sets4_0EBZ_.exit

.lr.ph.i.i491:                                    ; preds = %.preheader.i.i, %.lr.ph.i.i491
  %.sroa.01.020.i.i = phi i64 [ %i.jr, %.lr.ph.i.i491 ], [ %i.ee, %.preheader.i.i ] ; 2 uses
  %.sroa.05.019.i.i = phi i64 [ %i.jq, %.lr.ph.i.i491 ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.jm = lshr i64 %.sroa.01.020.i.i, 1           ; 2 uses
  %i.jn = add nuw nsw i64 %i.jm, %.sroa.05.019.i.i ; 3 uses
  %i.jo = icmp ult i64 %i.jn, %i.ee
  call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.jn
  %.val16.i.i = load i64, ptr %i.jp, align 8, !alias.scope !57898, !noalias !57899, !noundef !75
  %.not.i.i492 = icmp ult i64 %.val16.i.i, %.pre.i.i490
  %i.jq = select i1 %.not.i.i492, i64 %i.jn, i64 %.sroa.05.019.i.i, !unpredictable !75 ; 3 uses
  %i.jr = sub nuw nsw i64 %.sroa.01.020.i.i, %i.jm ; 2 uses
  %i.js = icmp ugt i64 %i.jr, 1
  br i1 %i.js, label %.lr.ph.i.i491, label %.lr.ph.i.i496.preheader

._crit_edge580.loopexit594:                       ; preds = %bb.cv
  %.pre598 = load ptr, ptr %i.ac, align 8
  %.pre599 = load i64, ptr %i.ae, align 8
  br label %._crit_edge580

._crit_edge580.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge580, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil.preheader

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil.preheader: ; preds = %._crit_edge580.loopexit.unr-lcssa, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader
  %.sroa.0229.2576.us.epil.init = phi i64 [ 0, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader ], [ %i.fj, %._crit_edge580.loopexit.unr-lcssa ]
  %.sroa.0145.0574.us.epil.init = phi ptr [ %2, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.preheader ], [ %i.fl, %._crit_edge580.loopexit.unr-lcssa ]
  %lcmp.mod658 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod658)
  br label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil: ; preds = %bb.ck, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil.preheader
  %.sroa.0229.2576.us.epil = phi i64 [ %i.jx, %bb.ck ], [ %.sroa.0229.2576.us.epil.init, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil.preheader ] ; 2 uses
  %.sroa.0145.0574.us.epil = phi ptr [ %i.jz, %bb.ck ], [ %.sroa.0145.0574.us.epil.init, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.ck ], [ 0, %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57881)
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us.epil, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !noundef !75
  %i.jv = load i64, ptr %.sroa.0145.0574.us.epil, align 8, !noundef !75
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = add i64 %i.jw, %.sroa.0229.2576.us.epil ; 2 uses
  %i.jy = icmp ult i64 %i.jx, %.sroa.0229.2576.us.epil
  br i1 %i.jy, label %.split.us, label %bb.ck, !prof !81

bb.ck:                                            ; preds = %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574.us.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge580, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513.us.epil, !llvm.loop !57841

._crit_edge580:                                   ; preds = %._crit_edge580.loopexit.unr-lcssa, %bb.ck, %._crit_edge580.loopexit594, %bb.ab
  %i.ka = phi i64 [ %.pre599, %._crit_edge580.loopexit594 ], [ %6, %bb.ab ], [ %6, %bb.ck ], [ %6, %._crit_edge580.loopexit.unr-lcssa ]
  %i.kb = phi ptr [ %.pre598, %._crit_edge580.loopexit594 ], [ %5, %bb.ab ], [ %5, %bb.ck ], [ %5, %._crit_edge580.loopexit.unr-lcssa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  invoke fastcc void @_RNvMNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB2_17SparsePositionSet14from_positions(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, i64 noundef %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kb, i64 noundef %i.ka)
          to label %bb.cz unwind label %.body507.thread555

.body507.thread555:                               ; preds = %._crit_edge580
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body507.loopexit:                                ; preds = %bb.cr
  %lpad.loopexit564 = landingpad { ptr, i32 }
          cleanup
  br label %.body507

.body507.loopexit.split-lp.loopexit:              ; preds = %bb.co
  %lpad.loopexit566 = landingpad { ptr, i32 }
          cleanup
  br label %.body507

.body507.loopexit.split-lp.loopexit.split-lp:     ; preds = %bb.cs, %.split.us
  %lpad.loopexit.split-lp567 = landingpad { ptr, i32 }
          cleanup
  br label %.body507

.body507:                                         ; preds = %.body507.loopexit.split-lp.loopexit, %.body507.loopexit.split-lp.loopexit.split-lp, %.body507.loopexit
  %lpad.phi565 = phi { ptr, i32 } [ %lpad.loopexit564, %.body507.loopexit ], [ %lpad.loopexit566, %.body507.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp567, %.body507.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57902)
  %.val.i520 = load i64, ptr %i.r, align 8, !alias.scope !57902 ; 2 uses
  %i.kd = icmp eq i64 %.val.i520, 0
  br i1 %i.kd, label %.body, label %bb.de

.lr.ph.i.i496.preheader:                          ; preds = %.lr.ph.i.i491
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.jq
  %.val14.i.i = load i64, ptr %i.ke, align 8, !alias.scope !57898, !noalias !57899, !noundef !75
  %i.kf = icmp ult i64 %.val14.i.i, %.pre.i.i490
  %i.kg = zext i1 %i.kf to i64
  %i.kh = add nuw nsw i64 %i.jq, %i.kg            ; 2 uses
  %i.ki = icmp ule i64 %i.kh, %i.ee
  call void @llvm.assume(i1 %i.ki)
  call void @llvm.experimental.noalias.scope.decl(metadata !57903)
  call void @llvm.experimental.noalias.scope.decl(metadata !57904)
  call void @llvm.experimental.noalias.scope.decl(metadata !57905)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0145.0574, i64 8
  %.pre.i.i495 = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !57904, !noalias !57906 ; 2 uses
  br label %.lr.ph.i.i496

.lr.ph.i.i496:                                    ; preds = %.lr.ph.i.i496.preheader, %.lr.ph.i.i496
  %.sroa.01.020.i.i497 = phi i64 [ %i.ko, %.lr.ph.i.i496 ], [ %i.ee, %.lr.ph.i.i496.preheader ] ; 2 uses
  %.sroa.05.019.i.i498 = phi i64 [ %i.kn, %.lr.ph.i.i496 ], [ 0, %.lr.ph.i.i496.preheader ] ; 2 uses
  %i.kj = lshr i64 %.sroa.01.020.i.i497, 1        ; 2 uses
  %i.kk = add nuw nsw i64 %i.kj, %.sroa.05.019.i.i498 ; 3 uses
  %i.kl = icmp ult i64 %i.kk, %i.ee
  call void @llvm.assume(i1 %i.kl)
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.kk
  %.val16.i.i499 = load i64, ptr %i.km, align 8, !alias.scope !57907, !noalias !57908, !noundef !75
  %.not.i.i500 = icmp ult i64 %.val16.i.i499, %.pre.i.i495
  %i.kn = select i1 %.not.i.i500, i64 %i.kk, i64 %.sroa.05.019.i.i498, !unpredictable !75 ; 2 uses
  %i.ko = sub nuw nsw i64 %.sroa.01.020.i.i497, %i.kj ; 2 uses
  %i.kp = icmp ugt i64 %i.ko, 1
  br i1 %i.kp, label %.lr.ph.i.i496, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_sets4_0EBZ_.exit

_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_sets4_0EBZ_.exit: ; preds = %.lr.ph.i.i496, %.preheader.i.i493.thread
  %.pre.i.i495643 = phi i64 [ %.pre.i.i495642, %.preheader.i.i493.thread ], [ %.pre.i.i495, %.lr.ph.i.i496 ] ; 2 uses
  %i.kq = phi i64 [ %i.jl, %.preheader.i.i493.thread ], [ %i.kh, %.lr.ph.i.i496 ] ; 4 uses
  %.sroa.05.0.lcssa.i.i502 = phi i64 [ 0, %.preheader.i.i493.thread ], [ %i.kn, %.lr.ph.i.i496 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.sroa.05.0.lcssa.i.i502
  %.val14.i.i503 = load i64, ptr %i.kr, align 8, !alias.scope !57907, !noalias !57908, !noundef !75
  %i.ks = icmp ult i64 %.val14.i.i503, %.pre.i.i495643
  %i.kt = zext i1 %i.ks to i64
  %i.ku = add nuw nsw i64 %.sroa.05.0.lcssa.i.i502, %i.kt ; 5 uses
  %i.kv = icmp ule i64 %i.ku, %i.ee
  call void @llvm.assume(i1 %i.kv)
  %i.kw = icmp samesign ult i64 %i.kq, %i.ku
  br i1 %i.kw, label %.lr.ph, label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513

_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513: ; preds = %bb.cp, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i511, %_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_sets4_0EBZ_.exit
  %i.kx = sub i64 %.pre.i.i495643, %.pre.i.i490
  %i.ky = add i64 %i.kx, %.sroa.0229.2576         ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %.sroa.0229.2576
  br i1 %i.kz, label %.split.us, label %bb.cv, !prof !81

.lr.ph:                                           ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSy15partition_pointNCNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse19select_position_sets4_0EBZ_.exit
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ku
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.kq
  %invariant.op = sub i64 %.sroa.0229.2576, %.pre.i.i490
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph, %bb.ct
  %.sroa.0178.0572 = phi ptr [ %i.lb, %.lr.ph ], [ %i.lc, %bb.ct ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0178.0572, i64 8 ; 2 uses
  %i.ld = load i64, ptr %.sroa.0178.0572, align 8, !noundef !75
  %.reass = add i64 %i.ld, %invariant.op          ; 2 uses
  %i.le = icmp ult i64 %.reass, %.sroa.0229.2576
  br i1 %i.le, label %bb.cs, label %bb.cq, !prof !81

._crit_edge:                                      ; preds = %bb.ct
  %.pre = load i64, ptr %i.al, align 8, !alias.scope !57909 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57909)
  %.not1.i510 = icmp eq i64 %.pre, 0
  br i1 %.not1.i510, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge
  %i.lf = load ptr, ptr %i.ak, align 8, !alias.scope !57909, !nonnull !75, !noundef !75
  %i.lg = getelementptr [16 x i8], ptr %i.lf, i64 %.pre
  %i.lh = getelementptr i8, ptr %i.lg, i64 -8     ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !noalias !57909, !noundef !75
  %i.lj = icmp eq i64 %i.li, %i.kq
  br i1 %i.lj, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge
  %i.lk = load i64, ptr %i.z, align 8, !range !76, !alias.scope !57910, !noundef !75
  %i.ll = icmp eq i64 %.pre, %i.lk
  br i1 %i.ll, label %bb.co, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i511

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8grow_oneCs3PfUT229lOd_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i511 unwind label %.body507.loopexit.split-lp.loopexit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i511: ; preds = %bb.co, %bb.cn
  %i.lm = load ptr, ptr %i.ak, align 8, !alias.scope !57910, !nonnull !75, !noundef !75
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %.pre ; 2 uses
  store i64 %i.kq, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store i64 %i.ku, ptr %i.lo, align 8
  %i.lp = add i64 %.pre, 1
  store i64 %i.lp, ptr %i.al, align 8, !alias.scope !57910
  br label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513

bb.cp:                                            ; preds = %bb.cm
  store i64 %i.ku, ptr %i.lh, align 8, !noalias !57909
  br label %_RNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparse20push_coalesced_range.exit513

bb.cq:                                            ; preds = %bb.cl
  %i.lq = load i64, ptr %i.dz, align 8, !alias.scope !57911, !noundef !75 ; 3 uses
  %i.lr = load i64, ptr %i.r, align 8, !range !76, !alias.scope !57911, !noundef !75
  %i.ls = icmp eq i64 %i.lq, %i.lr
  br i1 %i.ls, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
end_hunk_1
