Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.15?download=true
inline.NumInlined: 5463
inline.NumDeleted: 1751
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvMNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnednNtNtB5_7set_val9SetValZSTNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIternB1z_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB9_3vec9into_iter8IntoIternENCINvMse_NtB5_3setINtB4O_8BTreeSetnE16from_sorted_iterB46_E0EENtNtB9_5alloc6GlobalECs8K4cjrcxBsw_6hir_ty:bb.a
  %.lcssa103.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %.sroa.03.08.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %.sroa.05.07.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.d, 8
  br i1 %i.o, label %.loopexit57, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.03.08.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.sroa.03.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %.sroa.05.07.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 186
  %i.q = load i16, ptr %i.p, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 192
  %i.t = icmp ult i16 %i.q, 12
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 186
  %i.x = load i16, ptr %i.w, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %i.aa = icmp ult i16 %i.x, 12
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 186
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.ah = icmp ult i16 %i.ae, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 186
  %i.al = load i16, ptr %i.ak, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.am = zext nneg i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.ao = icmp ult i16 %i.al, 12
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 186
  %i.as = load i16, ptr %i.ar, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.av = icmp ult i16 %i.as, 12
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 186
  %i.az = load i16, ptr %i.ay, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.bc = icmp ult i16 %i.az, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 186
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 186
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !91, !noundef !9 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !91, !nonnull !9, !noundef !9 ; 2 uses
  %i.bt = add i64 %.sroa.05.07.i, -8              ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit57, label %.lr.ph.i

.loopexit57:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.sroa.03.0.lcssa.i = phi ptr [ %i.e, %bb.a ], [ %.lcssa103.unr, %.lr.ph.i.prol.loopexit ], [ %i.bs, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %.loopexit57
  %.sroa.0.053 = phi ptr [ %.sroa.03.0.lcssa.i, %.loopexit57 ], [ %.sroa.0.1, %.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIternNtNtB6_7set_val9SetValZSTINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIternENCINvMse_NtB6_3setINtB3p_8BTreeSetnE16from_sorted_iterB2H_E0EENtNtNtB20_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.loopexit56, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.d ], [ %lpad.loopexit, %.loopexit56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIternENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIternNtNtBG_7set_val9SetValZSTINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBK_3vec9into_iter8IntoIternENCINvMse_NtBG_3setINtB3D_8BTreeSetnE16from_sorted_iterB2V_E0EEECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.by = load i128, ptr %i.a, align 16, !range !92, !noundef !9
  %i.bz = trunc nuw i128 %i.by to i1
  br i1 %i.bz, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIternNtNtBG_7set_val9SetValZSTINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBK_3vec9into_iter8IntoIternENCINvMse_NtBG_3setINtB3D_8BTreeSetnE16from_sorted_iterB2V_E0EEECs8K4cjrcxBsw_6hir_ty.exit15

bb.f:                                             ; preds = %bb.e
  %i.ca = load i128, ptr %i.bv, align 16, !noundef !9 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.053, i64 186 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !noundef !9 ; 3 uses
  %i.cd = icmp ult i16 %i.cc, 11
  br i1 %i.cd, label %bb.s, label %.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIternNtNtBG_7set_val9SetValZSTINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBK_3vec9into_iter8IntoIternENCINvMse_NtBG_3setINtB3D_8BTreeSetnE16from_sorted_iterB2V_E0EEECs8K4cjrcxBsw_6hir_ty.exit15: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIternENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val9 = load i64, ptr %i.c, align 8, !noundef !9 ; 2 uses
  %i.cf = icmp eq i64 %.val9, 0
  br i1 %i.cf, label %_RNvMs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker5OwnednNtNtB7_7set_val9SetValZSTNtB1f_14LeafOrInternalE29fix_right_border_of_plentifulCs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIternNtNtBG_7set_val9SetValZSTINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBK_3vec9into_iter8IntoIternENCINvMse_NtBG_3setINtB3D_8BTreeSetnE16from_sorted_iterB2V_E0EEECs8K4cjrcxBsw_6hir_ty.exit15
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.i16.preheader, %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.01.010.i = phi i64 [ %i.cn, %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %.val9, %.lr.ph.i16.preheader ]
  %.sroa.03.09.i = phi ptr [ %i.cq, %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %.val, %.lr.ph.i16.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 186
  %i.ch = load i16, ptr %i.cg, align 2, !noundef !9 ; 3 uses
  %.not.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i, label %.noexc, label %bb.g, !prof !8

.noexc:                                           ; preds = %.lr.ph.i16
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #54
  unreachable

bb.g:                                             ; preds = %.lr.ph.i16
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nsw i64 %i.ci, -1                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 192
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !93, !nonnull !9, !noundef !9 ; 4 uses
  %i.cn = add i64 %.sroa.01.010.i, -1             ; 3 uses
  %i.co = icmp ult i16 %i.ch, 12
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !93, !nonnull !9, !noundef !9 ; 18 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 186 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !noundef !9 ; 3 uses
  %i.ct = icmp ult i16 %i.cs, 5
  br i1 %i.ct, label %bb.h, label %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.loopexit.i, %bb.g
  %i.cu = icmp eq i64 %i.cn, 0
  br i1 %i.cu, label %_RNvMs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker5OwnednNtNtB7_7set_val9SetValZSTNtB1f_14LeafOrInternalE29fix_right_border_of_plentifulCs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i16

bb.h:                                             ; preds = %bb.g
  %narrow.i = sub nuw nsw i16 5, %i.cs            ; 2 uses
  %i.cv = zext nneg i16 %narrow.i to i64          ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 186 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !94, !noundef !9 ; 2 uses
  %i.cy = zext nneg i16 %i.cs to i64              ; 2 uses
  %.not.i.i = icmp ugt i16 %narrow.i, %i.cx
  br i1 %.not.i.i, label %.noexc17, label %_RINvNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8K4cjrcxBsw_6hir_ty.exit.i.i, !prof !8

.noexc17:                                         ; preds = %bb.h
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @212, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #54
  unreachable

_RINvNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %bb.h
  %i.cz = zext i16 %i.cx to i64                   ; 2 uses
  %i.da = sub nuw nsw i64 %i.cz, %i.cv            ; 3 uses
  %i.db = trunc nuw i64 %i.da to i16
  store i16 %i.db, ptr %i.cw, align 2, !noalias !94
  store i16 5, ptr %i.cr, align 2, !noalias !94
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cv
  %i.dd = shl nuw nsw i64 %i.cy, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.dc, ptr nonnull align 16 %i.cq, i64 %i.dd, i1 false), !alias.scope !95, !noalias !94
  %i.de = add nuw nsw i64 %i.da, 1                ; 3 uses
  %i.df = sub nuw nsw i64 %i.cz, %i.de            ; 2 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.de
  %i.dh = shl nuw nsw i64 %i.df, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.cq, ptr nonnull readonly align 16 %i.dg, i64 %i.dh, i1 false), !alias.scope !96, !noalias !94
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.da
  %i.dj = load i128, ptr %i.di, align 16, !noalias !94, !noundef !9
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.03.09.i, i64 %i.cj ; 2 uses
  %i.dl = load i128, ptr %i.dk, align 16, !noalias !94, !noundef !9
  store i128 %i.dj, ptr %i.dk, align 16, !noalias !94
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.df
  store i128 %i.dl, ptr %i.dm, align 16, !noalias !94
  %cond.i = icmp eq i64 %i.cn, 0
  br i1 %cond.i, label %_RNvMs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker5OwnednNtNtB7_7set_val9SetValZSTNtB1f_14LeafOrInternalE29fix_right_border_of_plentifulCs8K4cjrcxBsw_6hir_ty.exit, label %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.loopexit.i

_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.loopexit.i: ; preds = %_RINvNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 192 ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cv
  %i.dp = shl nuw nsw i64 %i.cy, 3
  %i.dq = add nuw nsw i64 %i.dp, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i64 %i.dq, i1 false), !alias.scope !97, !noalias !94
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 192
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.de
  %i.dt = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ds, i64 %i.dt, i1 false), !alias.scope !98, !noalias !94
  %i.du = load ptr, ptr %i.dn, align 8, !noalias !94, !nonnull !9, !noundef !9 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 176
  store ptr %i.cq, ptr %i.dv, align 16, !noalias !94
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 184
  store i16 0, ptr %i.dw, align 8, !noalias !94
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 200
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !94, !nonnull !9, !noundef !9 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  store ptr %i.cq, ptr %i.dz, align 16, !noalias !94
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 184
  store i16 1, ptr %i.ea, align 8, !noalias !94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cq, i64 208
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !94, !nonnull !9, !noundef !9 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 176
  store ptr %i.cq, ptr %i.ed, align 16, !noalias !94
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 184
  store i16 2, ptr %i.ee, align 8, !noalias !94
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cq, i64 216
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !94, !nonnull !9, !noundef !9 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 176
  store ptr %i.cq, ptr %i.eh, align 16, !noalias !94
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 184
  store i16 3, ptr %i.ei, align 8, !noalias !94
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 224
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !94, !nonnull !9, !noundef !9 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 176
  store ptr %i.cq, ptr %i.el, align 16, !noalias !94
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 184
  store i16 4, ptr %i.em, align 8, !noalias !94
  %i.en = getelementptr inbounds nuw i8, ptr %i.cq, i64 232
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !94, !nonnull !9, !noundef !9 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 176
  store ptr %i.cq, ptr %i.ep, align 16, !noalias !94
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 184
  store i16 5, ptr %i.eq, align 8, !noalias !94
  br label %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvMs0_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker5OwnednNtNtB7_7set_val9SetValZSTNtB1f_14LeafOrInternalE29fix_right_border_of_plentifulCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8K4cjrcxBsw_6hir_ty.exit.i.i, %_RNvMs10_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB6_16BalancingContextnNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8K4cjrcxBsw_6hir_ty.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIternNtNtBG_7set_val9SetValZSTINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBK_3vec9into_iter8IntoIternENCINvMse_NtBG_3setINtB3D_8BTreeSetnE16from_sorted_iterB2V_E0EEECs8K4cjrcxBsw_6hir_ty.exit15
  ret void

.preheader:                                       ; preds = %bb.f, %bb.i
  %.sroa.3.0 = phi i64 [ %i.et, %bb.i ], [ 0, %bb.f ]
  %.sroa.0.0 = phi ptr [ %i.es, %bb.i ], [ %.sroa.0.053, %bb.f ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 176
  %i.es = load ptr, ptr %i.er, align 16, !noalias !99, !noundef !9 ; 4 uses
  %.not.i19 = icmp eq ptr %i.es, null
  br i1 %.not.i19, label %bb.j, label %bb.i

.loopexit56:                                      ; preds = %.loopexit55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.i:                                             ; preds = %.preheader
  %i.et = add i64 %.sroa.3.0, 1                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 186
  %i.ev = load i16, ptr %i.eu, align 2, !noundef !9
  %i.ew = icmp ult i16 %i.ev, 11
  br i1 %i.ew, label %.loopexit55, label %.preheader

bb.j:                                             ; preds = %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.ex = load ptr, ptr %0, align 8, !alias.scope !100, !nonnull !9, !noundef !9 ; 3 uses
  %i.ey = load i64, ptr %i.c, align 8, !alias.scope !100, !noundef !9
  %i.ez = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodenNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8K4cjrcxBsw_6hir_ty()
          to label %.noexc.i unwind label %bb.n, !noalias !100 ; 7 uses

.noexc.i:                                         ; preds = %bb.j
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 176
  store ptr null, ptr %i.fa, align 16, !noalias !100
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 186
  store i16 0, ptr %i.fb, align 2, !noalias !100
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 192
  store ptr %i.ex, ptr %i.fc, align 16, !noalias !100
  %i.fd = add i64 %i.ey, 1                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.o, !prof !8

bb.k:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #51
          to label %bb.l unwind label %bb.m, !noalias !100

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ez, i64 noundef 288, i64 noundef 16) #55, !noalias !100
  br label %.body.i

bb.n:                                             ; preds = %bb.j
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %.noexc.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 176
  store ptr %i.ez, ptr %i.fg, align 16, !noalias !101
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  store i16 0, ptr %i.fh, align 8, !noalias !102
  store ptr %i.ez, ptr %0, align 8, !alias.scope !100
  store i64 %i.fd, ptr %i.c, align 8, !alias.scope !100
  br label %.loopexit55

.loopexit55:                                      ; preds = %bb.i, %bb.o
  %.sroa.638.0 = phi i64 [ %i.fd, %bb.o ], [ %i.et, %bb.i ] ; 6 uses
  %.sroa.037.0 = phi ptr [ %i.ez, %bb.o ], [ %i.es, %bb.i ] ; 7 uses
  %i.fi = add i64 %.sroa.638.0, -1                ; 2 uses
  %i.fj = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodenNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8K4cjrcxBsw_6hir_ty()
          to label %bb.p unwind label %.loopexit56 ; 4 uses

bb.p:                                             ; preds = %.loopexit55
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 176
  store ptr null, ptr %i.fk, align 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 186
  store i16 0, ptr %i.fl, align 2
  %.not = icmp eq i64 %i.fi, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnednNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs8K4cjrcxBsw_6hir_ty.exit31, %bb.p
  %.sroa.043.0.lcssa = phi ptr [ %i.fj, %bb.p ], [ %i.iq, %_RINvNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnednNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs8K4cjrcxBsw_6hir_ty.exit31 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 186 ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !noundef !9 ; 3 uses
  %i.fo = icmp ult i16 %i.fn, 11
  br i1 %i.fo, label %bb.r, label %bb.q, !prof !11

bb.q:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #54
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %._crit_edge
  %i.fp = zext nneg i16 %i.fn to i64              ; 2 uses
  %i.fq = add nuw nsw i16 %i.fn, 1
  store i16 %i.fq, ptr %i.fm, align 2
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.037.0, i64 %i.fp
  store i128 %i.ca, ptr %i.fr, align 16
  %i.fs = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.037.0, i64 192
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fs
  store ptr %.sroa.043.0.lcssa, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.043.0.lcssa, i64 176
  store ptr %.sroa.037.0, ptr %i.fv, align 16
  %i.fw = trunc nuw nsw i64 %i.fs to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.043.0.lcssa, i64 184
  store i16 %i.fw, ptr %i.fx, align 8
  %i.fy = icmp eq i64 %.sroa.638.0, 0
  br i1 %i.fy, label %.loopexit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %bb.r
  %xtraiter104 = and i64 %.sroa.638.0, 7          ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i23.prol.loopexit, label %.lr.ph.i23.prol

.lr.ph.i23.prol:                                  ; preds = %.lr.ph.i23.preheader, %.lr.ph.i23.prol
  %.sroa.03.08.i24.prol = phi ptr [ %i.gf, %.lr.ph.i23.prol ], [ %.sroa.037.0, %.lr.ph.i23.preheader ] ; 2 uses
  %.sroa.05.07.i25.prol = phi i64 [ %i.gg, %.lr.ph.i23.prol ], [ %.sroa.638.0, %.lr.ph.i23.preheader ]
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph.i23.prol ], [ 0, %.lr.ph.i23.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i24.prol, i64 186
  %i.ga = load i16, ptr %i.fz, align 2, !noalias !103, !noundef !9 ; 2 uses
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i24.prol, i64 192
  %i.gd = icmp ult i16 %i.ga, 12
  call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !103, !nonnull !9, !noundef !9 ; 3 uses
  %i.gg = add i64 %.sroa.05.07.i25.prol, -1       ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i23.prol.loopexit, label %.lr.ph.i23.prol, !llvm.loop !82

.lr.ph.i23.prol.loopexit:                         ; preds = %.lr.ph.i23.prol, %.lr.ph.i23.preheader
  %.lcssa101.unr = phi ptr [ poison, %.lr.ph.i23.preheader ], [ %i.gf, %.lr.ph.i23.prol ]
  %.sroa.03.08.i24.unr = phi ptr [ %.sroa.037.0, %.lr.ph.i23.preheader ], [ %i.gf, %.lr.ph.i23.prol ]
  %.sroa.05.07.i25.unr = phi i64 [ %.sroa.638.0, %.lr.ph.i23.preheader ], [ %i.gg, %.lr.ph.i23.prol ]
  %i.gh = icmp ult i64 %.sroa.638.0, 8
  br i1 %i.gh, label %.loopexit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.prol.loopexit, %.lr.ph.i23
  %.sroa.03.08.i24 = phi ptr [ %i.il, %.lr.ph.i23 ], [ %.sroa.03.08.i24.unr, %.lr.ph.i23.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i25 = phi i64 [ %i.im, %.lr.ph.i23 ], [ %.sroa.05.07.i25.unr, %.lr.ph.i23.prol.loopexit ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i24, i64 186
  %i.gj = load i16, ptr %i.gi, align 2, !noalias !103, !noundef !9 ; 2 uses
  %i.gk = zext nneg i16 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i24, i64 192
  %i.gm = icmp ult i16 %i.gj, 12
  call void @llvm.assume(i1 %i.gm)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gk
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !103, !nonnull !9, !noundef !9 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 186
  %i.gq = load i16, ptr %i.gp, align 2, !noalias !103, !noundef !9 ; 2 uses
  %i.gr = zext nneg i16 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 192
  %i.gt = icmp ult i16 %i.gq, 12
  call void @llvm.assume(i1 %i.gt)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gr
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !103, !nonnull !9, !noundef !9 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 186
  %i.gx = load i16, ptr %i.gw, align 2, !noalias !103, !noundef !9 ; 2 uses
  %i.gy = zext nneg i16 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 192
  %i.ha = icmp ult i16 %i.gx, 12
  call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gy
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !103, !nonnull !9, !noundef !9 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 186
  %i.he = load i16, ptr %i.hd, align 2, !noalias !103, !noundef !9 ; 2 uses
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 192
  %i.hh = icmp ult i16 %i.he, 12
  call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hf
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !103, !nonnull !9, !noundef !9 ; 2 uses
end_hunk_0
