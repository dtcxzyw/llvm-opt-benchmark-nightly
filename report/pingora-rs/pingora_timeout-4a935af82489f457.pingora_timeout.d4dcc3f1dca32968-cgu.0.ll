Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_timeout-4a935af82489f457.pingora_timeout.d4dcc3f1dca32968-cgu.0?download=true
inline.NumInlined: 144
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMNtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1L_5TimerNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3E_13OccupiedEntryB1J_B2t_E9remove_kv0NtNtB9_5alloc6GlobalEB1N_:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.016.0.copyload.i = load ptr, ptr %i.cl, align 16, !noalias !27, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.417.0.copyload.i = load i64, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !27 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i, i64 362
  %i.cn = load i16, ptr %i.cm, align 2, !noalias !30, !noundef !4
  %i.co = zext i16 %i.cn to i64
  %i.cp = icmp ult i64 %.sroa.5.0.copyload.i, %i.co
  br i1 %i.cp, label %bb.d, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1D_5TimerNtB1k_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i, %.lr.ph.i15.i
  %.sroa.0.022.i.i = phi ptr [ %i.cr, %.lr.ph.i15.i ], [ %.sroa.016.0.copyload.i, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1D_5TimerNtB1k_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i ] ; 2 uses
  %.sroa.5.021.i.i = phi i64 [ %i.cs, %.lr.ph.i15.i ], [ %.sroa.417.0.copyload.i, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1D_5TimerNtB1k_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 352
  %i.cr = load ptr, ptr %i.cq, align 16, !noalias !31, !nonnull !4, !noundef !4 ; 3 uses
  %i.cs = add i64 %.sroa.5.021.i.i, 1             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 360
  %i.cu = load i16, ptr %i.ct, align 8, !noalias !31 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 362
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !30, !noundef !4
  %i.cx = icmp ult i16 %i.cu, %i.cw
  br i1 %i.cx, label %._crit_edge.loopexit.i.i, label %.lr.ph.i15.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i15.i
  %i.cy = zext i16 %i.cu to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.loopexit.i.i, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1D_5TimerNtB1k_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i
  %.sroa.7.0.i = phi i64 [ %i.cy, %._crit_edge.loopexit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1D_5TimerNtB1k_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i ] ; 5 uses
  %.sroa.530.0.i = phi i64 [ %i.cs, %._crit_edge.loopexit.i.i ], [ %.sroa.417.0.copyload.i, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1D_5TimerNtB1k_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i ] ; 5 uses
  %.sroa.029.0.i = phi ptr [ %i.cr, %._crit_edge.loopexit.i.i ], [ %.sroa.016.0.copyload.i, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1D_5TimerNtB1k_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i ] ; 4 uses
  %i.cz = extractelement <2 x ptr> %i.ck, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %i.da = extractelement <2 x ptr> %i.ck, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sroa.029.0.i, i64 %.sroa.7.0.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.029.0.i, i64 176
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.7.0.i ; 2 uses
  %i.de = load i128, ptr %i.db, align 16, !noalias !32, !noundef !4
  store i128 %.sroa.0.0.copyload.i, ptr %i.db, align 16, !noalias !32
  %i.df = load <2 x ptr>, ptr %i.dd, align 8, !noalias !32
  store <2 x ptr> %i.ck, ptr %i.dd, align 8, !noalias !32
  %i.dg = icmp eq i64 %.sroa.530.0.i, 0
  br i1 %i.dg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dh = add nuw nsw i64 %.sroa.7.0.i, 1
  br label %_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1O_5TimerNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3A_13OccupiedEntryB1M_B2w_E9remove_kv0NtNtBc_5alloc6GlobalEB1Q_.exit

bb.f:                                             ; preds = %bb.d
  %i.di = icmp samesign ult i64 %.sroa.7.0.i, 11
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr i8, ptr %.sroa.029.0.i, i64 376
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.sroa.7.0.i ; 2 uses
  %xtraiter37 = and i64 %.sroa.530.0.i, 7         ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.sroa.017.0.in.i.i.prol = phi ptr [ %i.dl, %.prol.preheader ], [ %i.dk, %bb.f ]
  %.sroa.019.0.in.i.i.prol = phi i64 [ %.sroa.019.0.i.i.prol, %.prol.preheader ], [ %.sroa.530.0.i, %bb.f ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.prol.preheader ], [ 0, %bb.f ]
  %.sroa.019.0.i.i.prol = add i64 %.sroa.019.0.in.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.prol, align 8, !noalias !33, !nonnull !4, !noundef !4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.prol, i64 368 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.sroa.017.0.i.i.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.sroa.017.0.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.unr = phi ptr [ %i.dk, %bb.f ], [ %i.dl, %.prol.preheader ]
  %.sroa.019.0.in.i.i.unr = phi i64 [ %.sroa.530.0.i, %bb.f ], [ %.sroa.019.0.i.i.prol, %.prol.preheader ]
  %i.dm = icmp ult i64 %.sroa.530.0.i, 8
  br i1 %i.dm, label %_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1O_5TimerNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3A_13OccupiedEntryB1M_B2w_E9remove_kv0NtNtBc_5alloc6GlobalEB1Q_.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i = phi ptr [ %i.dv, %.new ], [ %.sroa.017.0.in.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i = phi i64 [ %.sroa.019.0.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i = load ptr, ptr %.sroa.017.0.in.i.i, align 8, !noalias !33, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i, i64 368
  %.sroa.017.0.i.i.1 = load ptr, ptr %i.dn, align 8, !noalias !33, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.1, i64 368
  %.sroa.017.0.i.i.2 = load ptr, ptr %i.do, align 8, !noalias !33, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.2, i64 368
  %.sroa.017.0.i.i.3 = load ptr, ptr %i.dp, align 8, !noalias !33, !nonnull !4, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.3, i64 368
  %.sroa.017.0.i.i.4 = load ptr, ptr %i.dq, align 8, !noalias !33, !nonnull !4, !noundef !4
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.4, i64 368
  %.sroa.017.0.i.i.5 = load ptr, ptr %i.dr, align 8, !noalias !33, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.5, i64 368
  %.sroa.017.0.i.i.6 = load ptr, ptr %i.ds, align 8, !noalias !33, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.6, i64 368
  %.sroa.019.0.i.i.7 = add i64 %.sroa.019.0.in.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.7 = load ptr, ptr %i.dt, align 8, !noalias !33, !nonnull !4, !noundef !4 ; 2 uses
  %i.du = icmp eq i64 %.sroa.019.0.i.i.7, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.7, i64 368
  br i1 %i.du, label %_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1O_5TimerNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3A_13OccupiedEntryB1M_B2w_E9remove_kv0NtNtBc_5alloc6GlobalEB1Q_.exit, label %.new

_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1O_5TimerNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3A_13OccupiedEntryB1M_B2w_E9remove_kv0NtNtBc_5alloc6GlobalEB1Q_.exit: ; preds = %.prol.loopexit, %.new, %bb.e
  %.sroa.733.0.i = phi i64 [ %i.dh, %bb.e ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.031.0.i = phi ptr [ %.sroa.029.0.i, %bb.e ], [ %.sroa.017.0.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.7, %.new ]
  store i128 %i.de, ptr %0, align 16, !alias.scope !26, !noalias !34
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.df, ptr %.sroa.452.0..sroa_idx.i, align 16, !alias.scope !26, !noalias !34
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.031.0.i, ptr %i.dw, align 16, !alias.scope !26, !noalias !34
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.532.0..sroa_idx.i, align 8, !alias.scope !26, !noalias !34
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.733.0.i, ptr %.sroa.733.0..sroa_idx.i, align 16, !alias.scope !26, !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  br label %bb.g

bb.g:                                             ; preds = %_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1O_5TimerNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3A_13OccupiedEntryB1M_B2w_E9remove_kv0NtNtBc_5alloc6GlobalEB1Q_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1l_5TimerE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB1n_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 362 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !4
  %i.e = zext i16 %i.d to i64                     ; 4 uses
  %i.f = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 362
  %i.j = load i16, ptr %i.i, align 2, !noundef !4
  %i.k = zext i16 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.k, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.l = load ptr, ptr %1, align 8, !alias.scope !54, !nonnull !4, !noundef !4 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !54, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !54, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !54, !nonnull !4, !noundef !4 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 362
  %i.t = load i16, ptr %i.s, align 2, !noalias !54, !noundef !4 ; 2 uses
  %i.u = zext i16 %i.t to i64                     ; 4 uses
  %i.v = add nuw nsw i64 %i.e, 1                  ; 7 uses
  %i.w = add nuw nsw i64 %i.v, %i.u               ; 3 uses
  %i.x = icmp samesign ult i64 %i.w, 12
  br i1 %i.x, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !54
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 362 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !54, !noundef !4
  %i.aa = zext i16 %i.z to i64                    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !54, !noundef !4 ; 6 uses
  %i.ad = trunc nuw nsw i64 %i.w to i16
  store i16 %i.ad, ptr %i.c, align 2, !noalias !54
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ac ; 3 uses
  %i.af = load i128, ptr %i.ae, align 16, !alias.scope !55, !noalias !54, !noundef !4
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %i.ah = xor i64 %i.ac, -1
  %i.ai = add i64 %i.aa, %i.ah                    ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ae, ptr align 16 %i.ag, i64 %i.aj, i1 false), !alias.scope !55, !noalias !54
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e
  store i128 %i.af, ptr %i.ak, align 16, !noalias !54
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v
  %i.am = shl nuw nsw i64 %i.u, 4                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.al, ptr nonnull readonly align 16 %i.r, i64 %i.am, i1 false), !alias.scope !56, !noalias !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ac ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.e
  %i.as = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !57, !noalias !54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ap, i64 %i.aj, i1 false), !alias.scope !57, !noalias !54
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !noalias !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull readonly align 16 %i.at, i64 %i.am, i1 false), !alias.scope !58, !noalias !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 368 ; 6 uses
  %i.aw = add i64 %i.ac, 1                        ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.ay, i64 %i.az, i1 false), !alias.scope !59, !noalias !54
  %i.ba = icmp ult i64 %i.aw, %i.aa
  br i1 %i.ba, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bb = xor i64 %i.ac, -1
  %i.bc = add i64 %i.bb, %i.aa
  %i.bd = add nsw i64 %i.aa, -2
  %i.be = sub i64 %i.bd, %i.ac
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.prol ], [ %i.aw, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bf = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.bg = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i.i.prol
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 352
  store ptr %i.l, ptr %i.bj, align 16, !noalias !54
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 360
  store i16 %i.bk, ptr %i.bl, align 8, !noalias !54
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !49

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.aw, %.lr.ph.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bm = icmp ult i64 %i.be, 3
  br i1 %i.bm, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bn = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 352
  store ptr %i.l, ptr %i.bq, align 16, !noalias !54
  %i.br = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 360
  store i16 %i.br, ptr %i.bs, align 8, !noalias !54
  %i.bt = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bn
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 352
  store ptr %i.l, ptr %i.bw, align 16, !noalias !54
  %i.bx = trunc nuw nsw i64 %i.bn to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 360
  store i16 %i.bx, ptr %i.by, align 8, !noalias !54
  %i.bz = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bt
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 352
  store ptr %i.l, ptr %i.cc, align 16, !noalias !54
  %i.cd = trunc nuw nsw i64 %i.bt to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 360
  store i16 %i.cd, ptr %i.ce, align 8, !noalias !54
  %i.cf = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.cg = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bz
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 352
  store ptr %i.l, ptr %i.cj, align 16, !noalias !54
  %i.ck = trunc nuw nsw i64 %i.bz to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 360
  store i16 %i.ck, ptr %i.cl, align 8, !noalias !54
  %exitcond.not.i.i.3 = icmp eq i64 %i.cf, %i.aa
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cm = load i16, ptr %i.y, align 2, !noalias !54, !noundef !4
  %i.cn = add i16 %i.cm, -1
  store i16 %i.cn, ptr %i.y, align 2, !noalias !54
  %i.co = icmp ugt i64 %i.n, 1
  br i1 %i.co, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1l_5TimerE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B23_NtB3v_14LeafOrInternalEB2T_EB1n_.exit

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 6 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.cs = shl nuw nsw i64 %i.u, 3
  %i.ct = add nuw nsw i64 %i.cs, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.cr, i64 %i.ct, i1 false), !alias.scope !60, !noalias !54
  %i.cu = add nuw nsw i64 %i.u, 1
  %xtraiter11 = and i64 %i.cu, 3                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.cv, %.lr.ph.i5.i.prol ], [ %i.v, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i ] ; 4 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i ]
  %i.cv = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.cw = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.sroa.0.06.i6.i.prol
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 352
  store ptr %i.b, ptr %i.cz, align 16, !noalias !54
  %i.da = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 360
  store i16 %i.da, ptr %i.db, align 8, !noalias !54
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !53

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %i.v, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i ], [ %i.cv, %.lr.ph.i5.i.prol ]
  %i.dc = icmp ult i16 %i.t, 3
  br i1 %i.dc, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1l_5TimerE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B23_NtB3v_14LeafOrInternalEB2T_EB1n_.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.dv, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.dd = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.sroa.0.06.i6.i
  %i.df = load ptr, ptr %i.de, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 352
  store ptr %i.b, ptr %i.dg, align 16, !noalias !54
  %i.dh = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 360
  store i16 %i.dh, ptr %i.di, align 8, !noalias !54
  %i.dj = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dd
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 352
  store ptr %i.b, ptr %i.dm, align 16, !noalias !54
  %i.dn = trunc nuw nsw i64 %i.dd to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 360
  store i16 %i.dn, ptr %i.do, align 8, !noalias !54
  %i.dp = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dj
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 352
  store ptr %i.b, ptr %i.ds, align 16, !noalias !54
  %i.dt = trunc nuw nsw i64 %i.dj to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 360
  store i16 %i.dt, ptr %i.du, align 8, !noalias !54
  %i.dv = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.dw = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dp
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !54, !nonnull !4, !noundef !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 352
  store ptr %i.b, ptr %i.dz, align 16, !noalias !54
  %i.ea = trunc nuw nsw i64 %i.dp to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 360
  store i16 %i.ea, ptr %i.eb, align 8, !noalias !54
  %exitcond.not.i7.i.3 = icmp eq i64 %i.dp, %i.w
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1l_5TimerE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B23_NtB3v_14LeafOrInternalEB2T_EB1n_.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1l_5TimerE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B23_NtB3v_14LeafOrInternalEB2T_EB1n_.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i
  %.sink.i = phi i64 [ 368, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i ], [ 464, %.lr.ph.i5.i ], [ 464, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %.sink.i, i64 noundef 16) #17, !noalias !54
  %i.ec = select i1 %i.f, i64 %i.v, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.ec, %3
  store ptr %i.b, ptr %0, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.ee, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1u_5TimerNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1w_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1r_5TimerEE13new_uninit_inB1t_() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 362
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1F_5TimerNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3H_11VacantEntryB1D_B2n_E12insert_entry0EB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i128 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 16               ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %3, ptr %i.f, align 8, !noalias !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.h, align 8, !noalias !142
  %i.i = load ptr, ptr %1, align 8, !alias.scope !141, !noalias !143, !nonnull !4, !noundef !4 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 362 ; 4 uses
  %i.k = load i16, ptr %i.j, align 2, !noalias !142, !noundef !4 ; 3 uses
  %i.l = icmp ugt i16 %i.k, 10
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !141, !noalias !143, !noundef !4 ; 6 uses
  %i.o = icmp ult i64 %i.n, 5
  br i1 %i.o, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.p = zext nneg i16 %i.k to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !145, !noalias !146, !noundef !4 ; 7 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.s, %i.p
  br i1 %.not.i.i, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.s
  %i.v = sub nsw i64 %i.p, %i.r
  %i.w = shl nuw nsw i64 %i.v, 4                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.u, ptr nonnull align 16 %i.t, i64 %i.w, i1 false), !alias.scope !147, !noalias !148
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.w, i1 false), !alias.scope !149, !noalias !148
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  switch i64 %i.n, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %i.n, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.aa, %bb.f ], [ %i.n, %bb.b ], [ %i.n, %bb.e ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.n, %bb.e ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !141, !noalias !143, !noundef !4 ; 4 uses
  %i.ad = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1r_5TimerEE13new_uninit_inB1t_()
          to label %.noexc.i unwind label %bb.m, !noalias !142 ; 8 uses

.noexc.i:                                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store ptr null, ptr %i.ae, align 16, !noalias !150
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 362 ; 2 uses
  store i16 0, ptr %i.af, align 2, !noalias !150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.ag = load i16, ptr %i.j, align 2, !noalias !152, !noundef !4
  %i.ah = zext i16 %i.ag to i64
  %i.ai = xor i64 %.sroa.013.0.i, -1
  %i.aj = add nsw i64 %i.ah, %i.ai                ; 4 uses
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %i.af, align 2, !alias.scope !151, !noalias !153
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.sroa.013.0.i
  %i.am = load i128, ptr %i.al, align 16, !noalias !152, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !152
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.sroa.013.0.i ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !152, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.ap, ptr %i.e, align 8, !noalias !152
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !noalias !152
  %i.at = icmp ult i64 %i.aj, 12
  br i1 %i.at, label %bb.n, label %bb.i, !prof !154

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aj, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #18
          to label %bb.k unwind label %bb.j, !noalias !152

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #19
          to label %.thread.i.i unwind label %bb.l, !noalias !152

bb.k:                                             ; preds = %bb.i
  unreachable
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1N_5TimerNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3r_13OccupiedEntryB1L_B2v_E9remove_kv0NtNtBb_5alloc6GlobalEB1P_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.y, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bf, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1l_5TimerE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.d, i64 noundef 1, i64 noundef %i.l)
          to label %bb.k unwind label %bb.e

bb.m:                                             ; preds = %bb.p, %bb.k, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4 ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 352
  %i.bo = load ptr, ptr %i.bn, align 16, !noalias !234, !noundef !4 ; 3 uses
  %.not.i21 = icmp eq ptr %i.bo, null
  br i1 %.not.i21, label %.sink.split, label %bb.r

bb.n:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1k_5TimerE16bulk_steal_rightB1m_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c, i64 noundef 1)
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  store ptr %i.g, ptr %i.e, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.y, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.l, ptr %i.bq, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.q:                                             ; preds = %bb.g
  invoke fastcc void @_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1l_5TimerE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.c, i64 noundef 0, i64 noundef %i.l)
          to label %bb.p unwind label %bb.e

bb.r:                                             ; preds = %bb.m
  %.sroa.21.8..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.25.8..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.21.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.25.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 362
  %i.bs = load i16, ptr %i.br, align 2, !noalias !235, !noundef !4 ; 2 uses
  %i.bt = icmp ugt i16 %i.bs, 4
  br i1 %i.bt, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bu = add i64 %i.bj, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc27
  %.pre = phi i16 [ %i.hg, %.noexc27 ], [ %i.bs, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0.i93 = phi ptr [ %i.bx, %.noexc27 ], [ %i.bo, %.lr.ph.preheader ] ; 6 uses
  %.sroa.3.0.i92 = phi i64 [ %i.by, %.noexc27 ], [ %i.bu, %.lr.ph.preheader ] ; 5 uses
  %i.bv = zext nneg i16 %.pre to i64              ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i93, i64 352
  %i.bx = load ptr, ptr %i.bw, align 16, !noalias !236, !noundef !4 ; 16 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.by = add i64 %.sroa.3.0.i92, 1               ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i93, i64 360
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !236 ; 3 uses
  %.not.i.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 362
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !237, !noundef !4
  %.not62.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not62.i.i.i, label %.invoke, label %bb.v, !prof !6

.invoke:                                          ; preds = %bb.t, %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %.lr.ph
  %.not.i.i23 = icmp eq i16 %.pre, 0
  br i1 %.not.i.i23, label %bb.aa, label %.thread

bb.v:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 376
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !237, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.bx, ptr %i.a, align 8, !noalias !235
  store i64 %i.by, ptr %.sink.i.sroa.gep49, align 8, !noalias !235
  store i64 0, ptr %.sink.i.sroa.gep58, align 8, !noalias !235
  store ptr %.sroa.0.0.i93, ptr %.sink.i.sroa.gep52, align 8, !noalias !235
  store i64 %.sroa.3.0.i92, ptr %.sroa.21.8..sroa_idx.i.i, align 8, !noalias !235
  store ptr %i.ce, ptr %.sink.i.sroa.gep55, align 8, !noalias !235
  store i64 %.sroa.3.0.i92, ptr %.sroa.25.8..sroa_idx.i.i, align 8, !noalias !235
  %i.cf = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 362
  %i.ch = load i16, ptr %i.cg, align 2, !noalias !235, !noundef !4
  %i.ci = zext i16 %i.ch to i64                   ; 2 uses
  %i.cj = add nuw nsw i64 %i.cf, %i.ci            ; 2 uses
  %i.ck = icmp samesign ult i64 %i.cj, 12
  br i1 %i.ck, label %._crit_edge.thread, label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.cl = zext nneg i16 %i.ca to i64
  %i.cm = add nsw i64 %i.cl, -1                   ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 368
  %i.co = icmp ult i16 %i.ca, 13
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !237, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.bx, ptr %i.b, align 8, !noalias !235
  store i64 %i.by, ptr %.sink.i.sroa.gep, align 8, !noalias !235
  store i64 %i.cm, ptr %.sink.i.sroa.gep57, align 8, !noalias !235
  store ptr %i.cq, ptr %.sink.i.sroa.gep51, align 8, !noalias !235
  store i64 %.sroa.3.0.i92, ptr %.sroa.21.8..sroa_idx8.i.i, align 8, !noalias !235
  store ptr %.sroa.0.0.i93, ptr %.sink.i.sroa.gep54, align 8, !noalias !235
  store i64 %.sroa.3.0.i92, ptr %.sroa.25.8..sroa_idx12.i.i, align 8, !noalias !235
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 362
  %i.cs = load i16, ptr %i.cr, align 2, !noalias !235, !noundef !4
  %i.ct = zext i16 %i.cs to i64                   ; 3 uses
  %i.cu = add nuw nsw i64 %i.bv, 1
  %i.cv = add nuw nsw i64 %i.cu, %i.ct
  %i.cw = icmp samesign ult i64 %i.cv, 12
  br i1 %i.cw, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = sub nuw nsw i64 5, %i.bv
  invoke fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1k_5TimerE15bulk_steal_leftB1m_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b, i64 noundef %i.cx)
          to label %.thread unwind label %bb.e

bb.y:                                             ; preds = %bb.v
  %i.cy = sub nuw nsw i64 5, %i.bv
  invoke fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1k_5TimerE16bulk_steal_rightB1m_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a, i64 noundef %i.cy)
          to label %.thread unwind label %bb.e

.thread:                                          ; preds = %.noexc27, %bb.r, %bb.u, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.sink.split

._crit_edge:                                      ; preds = %bb.w
  %.pre109 = add nuw nsw i64 %i.ct, 1             ; 2 uses
  %.pre111 = add nuw nsw i64 %.pre109, %i.bv      ; 2 uses
  %i.cz = icmp samesign ult i64 %.pre111, 12
  br i1 %i.cz, label %._crit_edge.thread, label %bb.z, !prof !238

bb.z:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16
          to label %.noexc29 unwind label %bb.e

.noexc29:                                         ; preds = %bb.z
  unreachable

._crit_edge.thread:                               ; preds = %bb.v, %._crit_edge
  %i.da = phi ptr [ %i.cq, %._crit_edge ], [ %.sroa.0.0.i93, %bb.v ] ; 10 uses
  %i.db = phi ptr [ %.sroa.0.0.i93, %._crit_edge ], [ %i.ce, %bb.v ] ; 4 uses
  %i.dc = phi i64 [ %i.cm, %._crit_edge ], [ 0, %bb.v ] ; 5 uses
  %.pre-phi130 = phi i64 [ %i.ct, %._crit_edge ], [ %i.bv, %bb.v ] ; 2 uses
  %.pre-phi108129 = phi i64 [ %i.bv, %._crit_edge ], [ %i.ci, %bb.v ] ; 2 uses
  %.pre-phi110128 = phi i64 [ %.pre109, %._crit_edge ], [ %i.cf, %bb.v ] ; 7 uses
  %.pre-phi112127 = phi i64 [ %.pre111, %._crit_edge ], [ %i.cj, %bb.v ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 362
  %i.de = getelementptr inbounds nuw i8, ptr %i.bx, i64 362 ; 4 uses
  %i.df = load i16, ptr %i.de, align 2, !noalias !239, !noundef !4
  %i.dg = zext i16 %i.df to i64                   ; 5 uses
  %i.dh = trunc nuw nsw i64 %.pre-phi112127 to i16
  store i16 %i.dh, ptr %i.dd, align 2, !noalias !239
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.dc ; 3 uses
  %i.dj = load i128, ptr %i.di, align 16, !alias.scope !240, !noalias !239, !noundef !4
  %i.dk = getelementptr i8, ptr %i.di, i64 16
  %i.dl = xor i64 %i.dc, -1
  %i.dm = add nsw i64 %i.dg, %i.dl                ; 2 uses
  %i.dn = shl nuw nsw i64 %i.dm, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.di, ptr align 16 %i.dk, i64 %i.dn, i1 false), !alias.scope !240, !noalias !239
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.pre-phi130
  store i128 %i.dj, ptr %i.do, align 16, !noalias !239
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.pre-phi110128
  %i.dq = shl nuw nsw i64 %.pre-phi108129, 4      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dp, ptr nonnull readonly align 16 %i.db, i64 %i.dq, i1 false), !alias.scope !241, !noalias !239
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bx, i64 176
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dc ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 176 ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %.pre-phi130
  %i.dw = load <2 x ptr>, ptr %i.ds, align 8, !alias.scope !242, !noalias !239
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %i.dt, i64 %i.dn, i1 false), !alias.scope !242, !noalias !239
  store <2 x ptr> %i.dw, ptr %i.dv, align 8, !noalias !239
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 176
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %.pre-phi110128
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull readonly align 16 %i.dx, i64 %i.dq, i1 false), !alias.scope !243, !noalias !239
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bx, i64 368 ; 6 uses
  %i.ea = add nuw nsw i64 %i.dc, 1                ; 5 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = shl nuw nsw i64 %i.dm, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %i.ec, i64 %i.ed, i1 false), !alias.scope !244, !noalias !239
  %i.ee = icmp samesign ult i64 %i.ea, %i.dg
  br i1 %i.ee, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.thread
  %i.ef = sub nuw nsw i64 %i.dg, %i.ea
  %reass.sub = sub nsw i64 %i.dg, %i.dc
  %i.eg = add nsw i64 %reass.sub, -2
  %xtraiter = and i64 %i.ef, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.eh, %.lr.ph.i.i.prol ], [ %i.ea, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.eh = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.ei = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.0.06.i.i.prol
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 352
  store ptr %i.bx, ptr %i.el, align 16, !noalias !239
  %i.em = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 360
  store i16 %i.em, ptr %i.en, align 8, !noalias !239
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !220

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.ea, %.lr.ph.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.prol ]
  %i.eo = icmp ult i64 %i.eg, 3
  br i1 %i.eo, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.fh, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.0.06.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 352
  store ptr %i.bx, ptr %i.es, align 16, !noalias !239
  %i.et = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 360
  store i16 %i.et, ptr %i.eu, align 8, !noalias !239
  %i.ev = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ep
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 352
  store ptr %i.bx, ptr %i.ey, align 16, !noalias !239
  %i.ez = trunc nuw nsw i64 %i.ep to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 360
  store i16 %i.ez, ptr %i.fa, align 8, !noalias !239
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ev
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.bx, ptr %i.fe, align 16, !noalias !239
  %i.ff = trunc nuw nsw i64 %i.ev to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 360
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !239
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.fi = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fb
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 352
  store ptr %i.bx, ptr %i.fl, align 16, !noalias !239
  %i.fm = trunc nuw nsw i64 %i.fb to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 360
  store i16 %i.fm, ptr %i.fn, align 8, !noalias !239
  %exitcond.not.i.i.3 = icmp eq i64 %i.fh, %i.dg
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge.thread
  %i.fo = load i16, ptr %i.de, align 2, !noalias !239, !noundef !4
  %i.fp = add i16 %i.fo, -1
  store i16 %i.fp, ptr %i.de, align 2, !noalias !239
  %i.fq = icmp ugt i64 %i.by, 1
  br i1 %i.fq, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i, label %.noexc27

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.da, i64 368 ; 6 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.pre-phi110128
  %i.ft = getelementptr inbounds nuw i8, ptr %i.db, i64 368
  %i.fu = shl nuw nsw i64 %.pre-phi108129, 3
  %i.fv = add nuw nsw i64 %i.fu, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fs, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.ft, i64 %i.fv, i1 false), !alias.scope !245, !noalias !239
  %i.fw = add nuw nsw i64 %.pre-phi112127, 1
  %i.fx = sub nsw i64 %i.fw, %.pre-phi110128
  %i.fy = sub nsw i64 %.pre-phi112127, %.pre-phi110128
  %xtraiter161 = and i64 %i.fx, 3                 ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.fz, %.lr.ph.i5.i.prol ], [ %.pre-phi110128, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i ] ; 4 uses
  %prol.iter163 = phi i64 [ %prol.iter163.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i ]
  %i.fz = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.ga = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i6.i.prol
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 352
  store ptr %i.da, ptr %i.gd, align 16, !noalias !239
  %i.ge = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 360
  store i16 %i.ge, ptr %i.gf, align 8, !noalias !239
  %prol.iter163.next = add i64 %prol.iter163, 1   ; 2 uses
  %prol.iter163.cmp.not = icmp eq i64 %prol.iter163.next, %xtraiter161
  br i1 %prol.iter163.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !224

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %.pre-phi110128, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB27_5TimerEEEB29_.exit.i ], [ %i.fz, %.lr.ph.i5.i.prol ]
  %i.gg = icmp ult i64 %i.fy, 3
  br i1 %i.gg, label %.noexc27, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.gz, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.gh = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i6.i
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 352
  store ptr %i.da, ptr %i.gk, align 16, !noalias !239
  %i.gl = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 360
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !239
  %i.gn = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gh
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 352
  store ptr %i.da, ptr %i.gq, align 16, !noalias !239
  %i.gr = trunc nuw nsw i64 %i.gh to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 360
  store i16 %i.gr, ptr %i.gs, align 8, !noalias !239
  %i.gt = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gn
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 352
  store ptr %i.da, ptr %i.gw, align 16, !noalias !239
  %i.gx = trunc nuw nsw i64 %i.gn to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 360
  store i16 %i.gx, ptr %i.gy, align 8, !noalias !239
  %i.gz = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.ha = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gt
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !239, !nonnull !4, !noundef !4 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 352
  store ptr %i.da, ptr %i.hd, align 16, !noalias !239
  %i.he = trunc nuw nsw i64 %i.gt to i16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 360
  store i16 %i.he, ptr %i.hf, align 8, !noalias !239
  %exitcond.not.i7.i.3 = icmp eq i64 %i.gt, %.pre-phi112127
  br i1 %exitcond.not.i7.i.3, label %.noexc27, label %.lr.ph.i5.i

.noexc27:                                         ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i
  %.sink.i28 = phi i64 [ 368, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.i ], [ 464, %.lr.ph.i5.i ], [ 464, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %.sink.i28, i64 noundef 16) #17, !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hg = load i16, ptr %i.de, align 2, !noalias !235, !noundef !4 ; 2 uses
  %i.hh = icmp ugt i16 %i.hg, 4
  br i1 %i.hh, label %.thread, label %.lr.ph

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 1, ptr %2, align 1, !alias.scope !246
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %.thread, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  %.sroa.0.0.sink = phi ptr [ %i.g, %bb.a ], [ %i.bk, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.y, %bb.a ], [ %i.bj, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.l, %bb.a ], [ %i.bm, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.sink, ptr %i.hi, align 16
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ac:                                            ; preds = %bb.e
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ad:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1A_5TimerNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val51 = load i128, ptr %3, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.p, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.o, %bb.e ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 362
  %i.b = load i16, ptr %i.a, align 2, !noundef !4 ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.c, 4
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.idx
  %i.e = icmp eq i16 %i.b, 0
  br i1 %i.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i83, i64 16 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.8.0.i82, 1
  %i.h = icmp eq ptr %i.f, %i.d
  br i1 %i.h, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.0.03.i83 = phi ptr [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.sroa.8.0.i82 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.val6.i = load i128, ptr %.sroa.0.03.i83, align 16, !noundef !4
  %i.i = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i128(i128 %.val51, i128 %.val6.i)
  switch i8 %i.i, label %bb.d [
    i8 -1, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i
  unreachable

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge: ; preds = %bb.c, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %.sroa.8.0.i82, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i ] ; 3 uses
  %i.j = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.j, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i
  %.sink = phi i64 [ %.sroa.3.0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i ], [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i82, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i ], [ %.sroa.4.0.i.ph, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge ]
  %storemerge = phi i64 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i ], [ 1, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.k, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 368
  %i.m = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.4.0.i.ph
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1C_5TimerNtB1i_14LeafOrInternalE11search_treeB1A_EB1E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val51 = load i128, ptr %3, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.p, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.o, %bb.e ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 362
  %i.b = load i16, ptr %i.a, align 2, !noundef !4 ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.c, 4
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.idx
  %i.e = icmp eq i16 %i.b, 0
  br i1 %i.e, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i

bb.c:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i83, i64 16 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.8.0.i82, 1
  %i.h = icmp eq ptr %i.f, %i.d
  br i1 %i.h, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i._crit_edge, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeEENtNtNtB8_6traits8iterator8Iterator4nextB1B_.exit.i
end_hunk_1
begin_hunk_2_@_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1U_5TimerNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1W_:bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i, i64 noundef 16) #17, !noalias !263
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 362
  %i.ag = load i16, ptr %i.af, align 2, !noundef !4
  %i.ah = icmp ult i16 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %.not.i33 = icmp eq i64 %.sroa.5.038, 0
  %..i34 = select i1 %.not.i33, i64 368, i64 464
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i34, i64 noundef 16) #17, !noalias !263
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1T_5TimerNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1V_.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMss_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1u_5TimerNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = add i64 %i.b, -1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store ptr null, ptr %i.g, align 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 464, i64 noundef 16) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !278, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !278
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !281, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !281
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !284, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !284
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit2

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtBE_5TimerEEBG_(ptr noalias nofree noundef nonnull align 16 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !302, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !302
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !305, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !306
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !309, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !310
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_.exit

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCsih3NV0yzdTo_15pingora_timeout(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsih3NV0yzdTo_15pingora_timeout.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2awuzAz5vY4_5tokio4sync6notify6NotifyEECsih3NV0yzdTo_15pingora_timeout.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1k_5TimerE15bulk_steal_leftB1m_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 362 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !4
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 362 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !4
  %i.j = zext i16 %i.i to i64                     ; 4 uses
  %i.k = add nuw nsw i64 %1, %i.j                 ; 3 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.e, %1                 ; 4 uses
  %i.n = trunc nuw i64 %i.m to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw nsw i64 %i.k to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %1
  %i.q = shl nuw nsw i64 %i.j, 4                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.p, ptr nonnull align 16 %i.g, i64 %i.q, i1 false), !alias.scope !329
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 176 ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 16 %i.r, i64 %i.q, i1 false), !alias.scope !330
  %i.t = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %i.u = sub nuw nsw i64 %i.e, %i.t               ; 4 uses
  %i.v = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEB19_.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16, !noalias !333
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEB19_.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t
  %i.y = shl nuw nsw i64 %i.u, 4                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull readonly align 16 %i.x, i64 %i.y, i1 false), !alias.scope !333
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.r, ptr nonnull readonly align 8 %i.aa, i64 %i.y, i1 false), !alias.scope !334
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m
  %i.ac = load i128, ptr %i.ab, align 16, !noundef !4
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.m
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  %i.ai = load i128, ptr %i.af, align 16, !noalias !335, !noundef !4
  %i.aj = load <2 x ptr>, ptr %i.ad, align 8
  store i128 %i.ac, ptr %i.af, align 16, !noalias !335
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.u
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.u
  %i.am = load <2 x ptr>, ptr %i.ah, align 8, !noalias !335
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !noalias !335
  store i128 %i.ai, ptr %i.ak, align 16
  store <2 x ptr> %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEB19_.exit
  br i1 %i.as, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit, label %bb.j, !prof !7

bb.h:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEB19_.exit
  br i1 %i.as, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.cb, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.at, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.at = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i.epil
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 352
  store ptr %i.g, ptr %i.aw, align 16
  %i.ax = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 360
  store i16 %i.ax, ptr %i.ay, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit, label %bb.i, !llvm.loop !323

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #16
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 368 ; 8 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  %i.bb = shl nuw nsw i64 %i.j, 3
  %i.bc = add nuw nsw i64 %i.bb, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 16 dereferenceable(1) %i.az, i64 %i.bc, i1 false), !alias.scope !336
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.t
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.be, i64 %i.bf, i1 false), !alias.scope !337
  %i.bg = add nuw nsw i64 %1, %i.j
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %xtraiter = and i64 %i.bh, 3                    ; 3 uses
  %i.bi = icmp samesign ult i64 %i.k, 3
  br i1 %i.bi, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bh, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.cb, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bj = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 352
  store ptr %i.g, ptr %i.bm, align 16
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 360
  store i16 %i.bn, ptr %i.bo, align 8
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bj
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 352
  store ptr %i.g, ptr %i.bs, align 16
  %i.bt = trunc nuw nsw i64 %i.bj to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 360
  store i16 %i.bt, ptr %i.bu, align 8
  %i.bv = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bp
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 352
  store ptr %i.g, ptr %i.by, align 16
  %i.bz = trunc nuw nsw i64 %i.bp to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 360
  store i16 %i.bz, ptr %i.ca, align 8
  %i.cb = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bv
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  store ptr %i.g, ptr %i.ce, align 16
  %i.cf = trunc nuw nsw i64 %i.bv to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 360
  store i16 %i.cf, ptr %i.cg, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1k_5TimerE16bulk_steal_rightB1m_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 362 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !4 ; 6 uses
  %i.e = zext i16 %i.d to i64                     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 362 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !4
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %i.k = add nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.j, %1                 ; 4 uses
  %i.n = trunc nuw nsw i64 %i.k to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw i64 %i.m to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = add nsw i64 %1, -1                       ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.p
  %i.r = load i128, ptr %i.q, align 16, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 176 ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.p
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = load i128, ptr %i.v, align 16, !noalias !356, !noundef !4
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.e
  %i.ac = load <2 x ptr>, ptr %i.x, align 8, !noalias !356
  %i.ad = load <2 x ptr>, ptr %i.t, align 8
  store i128 %i.r, ptr %i.v, align 16, !noalias !356
  store <2 x ptr> %i.ad, ptr %i.x, align 8, !noalias !356
  store i128 %i.y, ptr %i.z, align 16
  store <2 x ptr> %i.ac, ptr %i.ab, align 8
  %i.ae = add nuw nsw i64 %i.e, 1                 ; 5 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ae
  %i.ag = shl nuw nsw i64 %i.p, 4                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.af, ptr nonnull readonly align 16 %i.g, i64 %i.ag, i1 false), !alias.scope !357
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 16 %i.s, i64 %i.ag, i1 false), !alias.scope !358
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %1
  %i.aj = shl nuw nsw i64 %i.m, 4                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 16 %i.ai, i64 %i.aj, i1 false), !alias.scope !359
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.s, ptr nonnull align 8 %i.ak, i64 %i.aj, i1 false), !alias.scope !360
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4
  %i.aq = icmp eq i64 %i.ap, 0                    ; 2 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.aq, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.e
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil.preheader

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader ], [ %i.di, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ar, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil.preheader ]
  %i.ar = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.as = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i23.epil
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  store ptr %i.g, ptr %i.av, align 16
  %i.aw = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 360
  store i16 %i.aw, ptr %i.ax, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil, !llvm.loop !350

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 368 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ae
  %i.bb = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.ay, i64 %i.bb, i1 false), !alias.scope !361
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %1
  %i.bd = shl nuw nsw i64 %i.m, 3
  %i.be = add nuw nsw i64 %i.bd, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.be, i1 false), !alias.scope !362
  %i.bf = icmp ult i16 %i.d, 11
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ae
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 352
  store ptr %i.b, ptr %i.bi, align 16
  %i.bj = trunc nuw nsw i64 %i.ae to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 360
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.d, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 352
  store ptr %i.b, ptr %i.bp, align 16
  %i.bq = trunc nuw nsw i64 %i.bl to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 360
  store i16 %i.bq, ptr %i.br, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = add nuw nsw i64 %i.e, 3                 ; 2 uses
  %i.bt = icmp samesign ult i16 %i.d, 9
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 352
  store ptr %i.b, ptr %i.bw, align 16
  %i.bx = trunc nuw nsw i64 %i.bs to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 360
  store i16 %i.bx, ptr %i.by, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = add nuw nsw i64 %i.e, 4                 ; 2 uses
  %i.ca = icmp samesign ult i16 %i.d, 8
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 352
  store ptr %i.b, ptr %i.cd, align 16
  %i.ce = trunc nuw nsw i64 %i.bz to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 360
  store i16 %i.ce, ptr %i.cf, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = add nuw nsw i64 %i.e, 5                 ; 2 uses
  %i.ch = icmp ne i16 %i.d, 7
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 352
  store ptr %i.b, ptr %i.ck, align 16
  %i.cl = trunc nuw nsw i64 %i.cg to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 360
  store i16 %i.cl, ptr %i.cm, align 8
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cn = add nuw nsw i64 %i.j, 1
  %i.co = sub nsw i64 %i.cn, %1                   ; 2 uses
  %xtraiter = and i64 %i.co, 3                    ; 3 uses
  %i.cp = icmp samesign ult i64 %i.m, 3
  br i1 %i.cp, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.epil.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader.new

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader
  %unroll_iter = and i64 %i.co, -4
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader.new ], [ %i.di, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit ]
  %i.cq = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i23
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 352
  store ptr %i.g, ptr %i.ct, align 16
  %i.cu = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 360
  store i16 %i.cu, ptr %i.cv, align 8
  %i.cw = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cq
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 352
  store ptr %i.g, ptr %i.cz, align 16
  %i.da = trunc nuw nsw i64 %i.cq to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 360
  store i16 %i.da, ptr %i.db, align 8
  %i.dc = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cw
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 352
  store ptr %i.g, ptr %i.df, align 16
  %i.dg = trunc nuw nsw i64 %i.cw to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 360
  store i16 %i.dg, ptr %i.dh, align 8
  %i.di = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dj = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dc
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 352
  store ptr %i.g, ptr %i.dm, align 16
  %i.dn = trunc nuw nsw i64 %i.dc to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 360
  store i16 %i.dn, ptr %i.do, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1s_5TimerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEB1u_.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1G_5TimerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB1I_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ult i64 %i.c, 11
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.c
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1E_5TimerNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1E_5TimerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.c
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1T_5TimerNtB1y_4LeafENtB1y_4EdgeE7next_kvB1V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 362
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %i.o, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 352
  %i.k = load ptr, ptr %i.j, align 16, !noalias !365, !noundef !4 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = zext i16 %i.q to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
