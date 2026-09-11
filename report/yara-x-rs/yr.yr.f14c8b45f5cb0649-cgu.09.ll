Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.09?download=true
inline.NumInlined: 1083
inline.NumDeleted: 596
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RINvMNtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB5_3map8BTreeMapNtNtB9_6string6StringNtNtNtB1N_5value5value5ValueENtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtB2s_5entryINtB4x_13OccupiedEntryB1J_B2p_E9remove_kv0NtNtB9_5alloc6GlobalECskIqAKC4t9Ft_2yr:bb.a

_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1Q_5value5value5ValueENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtB2v_5entryINtB4t_13OccupiedEntryB1M_B2s_E9remove_kv0NtNtBc_5alloc6GlobalECskIqAKC4t9Ft_2yr.exit: ; preds = %.prol.loopexit, %.new, %bb.e
  %.sroa.733.0.i = phi i64 [ %i.df, %bb.e ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.031.0.i = phi ptr [ %.sroa.029.0.i, %bb.e ], [ %.sroa.017.0.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.7, %.new ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !73
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.031.0.i, ptr %i.du, align 8, !alias.scope !66, !noalias !73
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.532.0..sroa_idx.i, align 8, !alias.scope !66, !noalias !73
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.733.0.i, ptr %.sroa.733.0..sroa_idx.i, align 8, !alias.scope !66, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1Q_5value5value5ValueENtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtB2v_5entryINtB4t_13OccupiedEntryB1M_B2s_E9remove_kv0NtNtBc_5alloc6GlobalECskIqAKC4t9Ft_2yr.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 802 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !9
  %i.g = zext i16 %i.f to i64                     ; 4 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 802
  %i.l = load i16, ptr %i.k, align 2, !noundef !9
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.m, %bb.b ], [ %i.g, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !95, !nonnull !9, !noundef !9 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !95, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !95, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !95, !nonnull !9, !noundef !9 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 802
  %i.v = load i16, ptr %i.u, align 2, !noalias !95, !noundef !9 ; 2 uses
  %i.w = zext i16 %i.v to i64                     ; 5 uses
  %i.x = add nuw nsw i64 %i.g, 1                  ; 7 uses
  %i.y = add nuw nsw i64 %i.x, %i.w               ; 3 uses
  %i.z = icmp samesign ult i64 %i.y, 12
  br i1 %i.z, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !95
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 802 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !95, !noundef !9
  %i.ac = zext i16 %i.ab to i64                   ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !95, !noundef !9 ; 6 uses
  %i.af = trunc nuw nsw i64 %i.y to i16
  store i16 %i.af, ptr %i.e, align 2, !noalias !95
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 536
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !95
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = xor i64 %i.ae, -1
  %i.ak = add i64 %i.ac, %i.aj                    ; 3 uses
  %i.al = mul nuw nsw i64 %i.ak, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.ai, i64 %i.al, i1 false), !alias.scope !96, !noalias !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 536 ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 536
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.x
  %i.aq = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull readonly align 8 %i.ao, i64 %i.aq, i1 false), !alias.scope !98, !noalias !95
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.ar, i64 48, i1 false), !noalias !95
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = mul nuw nsw i64 %i.ak, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ar, ptr align 16 %i.as, i64 %i.at, i1 false), !alias.scope !99, !noalias !100
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.au, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.x
  %i.aw = mul nuw nsw i64 %i.w, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.av, ptr nonnull readonly align 16 %i.t, i64 %i.aw, i1 false), !alias.scope !101, !noalias !95
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 816 ; 6 uses
  %i.ay = add i64 %i.ae, 1                        ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = shl nuw nsw i64 %i.ak, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ba, i64 %i.bb, i1 false), !alias.scope !102, !noalias !95
  %i.bc = icmp ult i64 %i.ay, %i.ac
  br i1 %i.bc, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bd = xor i64 %i.ae, -1
  %i.be = add i64 %i.bd, %i.ac
  %i.bf = add nsw i64 %i.ac, -2
  %i.bg = sub i64 %i.bf, %i.ae
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.bh, %.lr.ph.i.i.prol ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bh = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.bi = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i.i.prol
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 528
  store ptr %i.n, ptr %i.bl, align 16, !noalias !95
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 800
  store i16 %i.bm, ptr %i.bn, align 16, !noalias !95
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !90

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.ay, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  %i.bo = icmp ult i64 %i.bg, 3
  br i1 %i.bo, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bp = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 528
  store ptr %i.n, ptr %i.bs, align 16, !noalias !95
  %i.bt = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 800
  store i16 %i.bt, ptr %i.bu, align 16, !noalias !95
  %i.bv = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bp
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 528
  store ptr %i.n, ptr %i.by, align 16, !noalias !95
  %i.bz = trunc nuw nsw i64 %i.bp to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 800
  store i16 %i.bz, ptr %i.ca, align 16, !noalias !95
  %i.cb = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bv
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 528
  store ptr %i.n, ptr %i.ce, align 16, !noalias !95
  %i.cf = trunc nuw nsw i64 %i.bv to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 800
  store i16 %i.cf, ptr %i.cg, align 16, !noalias !95
  %i.ch = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.ci = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cb
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 528
  store ptr %i.n, ptr %i.cl, align 16, !noalias !95
  %i.cm = trunc nuw nsw i64 %i.cb to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 800
  store i16 %i.cm, ptr %i.cn, align 16, !noalias !95
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %i.ac
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.co = load i16, ptr %i.aa, align 2, !noalias !95, !noundef !9
  %i.cp = add i16 %i.co, -1
  store i16 %i.cp, ptr %i.aa, align 2, !noalias !95
  %i.cq = icmp ugt i64 %i.p, 1
  br i1 %i.cq, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3E_14LeafOrInternalEB32_ECskIqAKC4t9Ft_2yr.exit

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 816 ; 6 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.x
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 816
  %i.cu = shl nuw nsw i64 %i.w, 3
  %i.cv = add nuw nsw i64 %i.cu, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.ct, i64 %i.cv, i1 false), !alias.scope !103, !noalias !95
  %i.cw = add nuw nsw i64 %i.w, 1
  %xtraiter11 = and i64 %i.cw, 3                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.cx, %.lr.ph.i5.i.prol ], [ %i.x, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i ] ; 4 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i ]
  %i.cx = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.cy = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.0.06.i6.i.prol
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 528
  store ptr %i.d, ptr %i.db, align 16, !noalias !95
  %i.dc = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 800
  store i16 %i.dc, ptr %i.dd, align 16, !noalias !95
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !94

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %i.x, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i ], [ %i.cx, %.lr.ph.i5.i.prol ]
  %i.de = icmp ult i16 %i.v, 3
  br i1 %i.de, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3E_14LeafOrInternalEB32_ECskIqAKC4t9Ft_2yr.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.dx, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.df = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.0.06.i6.i
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 528
  store ptr %i.d, ptr %i.di, align 16, !noalias !95
  %i.dj = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 800
  store i16 %i.dj, ptr %i.dk, align 16, !noalias !95
  %i.dl = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.df
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 528
  store ptr %i.d, ptr %i.do, align 16, !noalias !95
  %i.dp = trunc nuw nsw i64 %i.df to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 800
  store i16 %i.dp, ptr %i.dq, align 16, !noalias !95
  %i.dr = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dl
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 528
  store ptr %i.d, ptr %i.du, align 16, !noalias !95
  %i.dv = trunc nuw nsw i64 %i.dl to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 800
  store i16 %i.dv, ptr %i.dw, align 16, !noalias !95
  %i.dx = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.dy = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dr
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !95, !nonnull !9, !noundef !9 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 528
  store ptr %i.d, ptr %i.eb, align 16, !noalias !95
  %i.ec = trunc nuw nsw i64 %i.dr to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 800
  store i16 %i.ec, ptr %i.ed, align 16, !noalias !95
  %exitcond.not.i7.i.3 = icmp eq i64 %i.dr, %i.y
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3E_14LeafOrInternalEB32_ECskIqAKC4t9Ft_2yr.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3E_14LeafOrInternalEB32_ECskIqAKC4t9Ft_2yr.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i
  %.sink.i = phi i64 [ 816, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i ], [ 912, %.lr.ph.i5.i ], [ 912, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %.sink.i, i64 noundef 16) #23, !noalias !95
  %i.ee = select i1 %i.h, i64 %i.x, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.ee, %3
  store ptr %i.d, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.eg, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB9_3map8BTreeMapNtNtBd_6string6StringNtNtNtB1n_5value5value5ValueEE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 538 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !9
  %i.g = zext i16 %i.f to i64                     ; 4 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 538
  %i.l = load i16, ptr %i.k, align 2, !noundef !9
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.m, %bb.b ], [ %i.g, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !125, !nonnull !9, !noundef !9 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !125, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !125, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !125, !nonnull !9, !noundef !9 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 538
  %i.v = load i16, ptr %i.u, align 2, !noalias !125, !noundef !9 ; 2 uses
  %i.w = zext i16 %i.v to i64                     ; 4 uses
  %i.x = add nuw nsw i64 %i.g, 1                  ; 7 uses
  %i.y = add nuw nsw i64 %i.x, %i.w               ; 3 uses
  %i.z = icmp samesign ult i64 %i.y, 12
  br i1 %i.z, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !125
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 538 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !125, !noundef !9
  %i.ac = zext i16 %i.ab to i64                   ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !125, !noundef !9 ; 6 uses
  %i.af = trunc nuw nsw i64 %i.y to i16
  store i16 %i.af, ptr %i.e, align 2, !noalias !125
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !125
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = xor i64 %i.ae, -1
  %i.ak = add i64 %i.ac, %i.aj                    ; 2 uses
  %i.al = mul nuw nsw i64 %i.ak, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.ai, i64 %i.al, i1 false), !alias.scope !126, !noalias !127
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.x
  %i.aq = mul nuw nsw i64 %i.w, 24                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull readonly align 8 %i.ao, i64 %i.aq, i1 false), !alias.scope !128, !noalias !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !125
  %i.at = getelementptr i8, ptr %i.as, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.at, i64 %i.al, i1 false), !alias.scope !129, !noalias !130
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 272 ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull readonly align 8 %i.aw, i64 %i.aq, i1 false), !alias.scope !131, !noalias !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 544 ; 6 uses
  %i.az = add i64 %i.ae, 1                        ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = shl nuw nsw i64 %i.ak, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bb, i64 %i.bc, i1 false), !alias.scope !132, !noalias !125
  %i.bd = icmp ult i64 %i.az, %i.ac
  br i1 %i.bd, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1u_5value5value5ValueENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.be = xor i64 %i.ae, -1
  %i.bf = add i64 %i.be, %i.ac
  %i.bg = add nsw i64 %i.ac, -2
  %i.bh = sub i64 %i.bg, %i.ae
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.prol ], [ %i.az, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.bj = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.i.prol
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !125, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.n, ptr %i.bl, align 8, !noalias !125
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 536
  store i16 %i.bm, ptr %i.bn, align 8, !noalias !125
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3A_13OccupiedEntryB1L_B26_E9remove_kv0NtNtBb_5alloc6GlobalECskIqAKC4t9Ft_2yr:bb.a
  store ptr %i.ca, ptr %i.c, align 8, !noalias !1161
  store i64 %i.cb, ptr %.sink.i.sroa.gep46, align 8, !noalias !1161
  store i64 0, ptr %.sink.i.sroa.gep55, align 8, !noalias !1161
  store ptr %.sroa.0.0.i90, ptr %.sink.i.sroa.gep49, align 8, !noalias !1161
  store i64 %.sroa.3.0.i89, ptr %.sroa.21.8..sroa_idx.i.i, align 8, !noalias !1161
  store ptr %i.ch, ptr %.sink.i.sroa.gep52, align 8, !noalias !1161
  store i64 %.sroa.3.0.i89, ptr %.sroa.25.8..sroa_idx.i.i, align 8, !noalias !1161
  %i.ci = add nuw nsw i64 %i.by, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 802
  %i.ck = load i16, ptr %i.cj, align 2, !noalias !1161, !noundef !9
  %i.cl = zext i16 %i.ck to i64                   ; 2 uses
  %i.cm = add nuw nsw i64 %i.ci, %i.cl            ; 2 uses
  %i.cn = icmp samesign ult i64 %i.cm, 12
  br i1 %i.cn, label %._crit_edge.thread, label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.co = zext nneg i16 %i.cd to i64
  %i.cp = add nsw i64 %i.co, -1                   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 816
  %i.cr = icmp ult i16 %i.cd, 13
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1163, !nonnull !9, !noundef !9 ; 3 uses
  store ptr %i.ca, ptr %i.d, align 8, !noalias !1161
  store i64 %i.cb, ptr %.sink.i.sroa.gep, align 8, !noalias !1161
  store i64 %i.cp, ptr %.sink.i.sroa.gep54, align 8, !noalias !1161
  store ptr %i.ct, ptr %.sink.i.sroa.gep48, align 8, !noalias !1161
  store i64 %.sroa.3.0.i89, ptr %.sroa.21.8..sroa_idx8.i.i, align 8, !noalias !1161
  store ptr %.sroa.0.0.i90, ptr %.sink.i.sroa.gep51, align 8, !noalias !1161
  store i64 %.sroa.3.0.i89, ptr %.sroa.25.8..sroa_idx12.i.i, align 8, !noalias !1161
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 802
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !1161, !noundef !9
  %i.cw = zext i16 %i.cv to i64                   ; 3 uses
  %i.cx = add nuw nsw i64 %i.by, 1
  %i.cy = add nuw nsw i64 %i.cx, %i.cw
  %i.cz = icmp samesign ult i64 %i.cy, 12
  br i1 %i.cz, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = sub nuw nsw i64 5, %i.by
  invoke fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE15bulk_steal_leftCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d, i64 noundef %i.da)
          to label %.thread unwind label %bb.e

bb.y:                                             ; preds = %bb.v
  %i.db = sub nuw nsw i64 5, %i.by
  invoke fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE16bulk_steal_rightCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c, i64 noundef %i.db)
          to label %.thread unwind label %bb.e

.thread:                                          ; preds = %.noexc27, %bb.r, %bb.u, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.sink.split

._crit_edge:                                      ; preds = %bb.w
  %.pre106 = add nuw nsw i64 %i.cw, 1             ; 2 uses
  %.pre108 = add nuw nsw i64 %.pre106, %i.by      ; 2 uses
  %i.dc = icmp samesign ult i64 %.pre108, 12
  br i1 %i.dc, label %._crit_edge.thread, label %bb.z, !prof !15

bb.z:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %.noexc29 unwind label %bb.e

.noexc29:                                         ; preds = %bb.z
  unreachable

._crit_edge.thread:                               ; preds = %bb.v, %._crit_edge
  %i.dd = phi ptr [ %i.ct, %._crit_edge ], [ %.sroa.0.0.i90, %bb.v ] ; 10 uses
  %i.de = phi ptr [ %.sroa.0.0.i90, %._crit_edge ], [ %i.ch, %bb.v ] ; 4 uses
  %i.df = phi i64 [ %i.cp, %._crit_edge ], [ 0, %bb.v ] ; 5 uses
  %.pre-phi127 = phi i64 [ %i.cw, %._crit_edge ], [ %i.by, %bb.v ] ; 2 uses
  %.pre-phi105126 = phi i64 [ %i.by, %._crit_edge ], [ %i.cl, %bb.v ] ; 3 uses
  %.pre-phi107125 = phi i64 [ %.pre106, %._crit_edge ], [ %i.ci, %bb.v ] ; 7 uses
  %.pre-phi109124 = phi i64 [ %.pre108, %._crit_edge ], [ %i.cm, %bb.v ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 802
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 802 ; 4 uses
  %i.di = load i16, ptr %i.dh, align 2, !noalias !1164, !noundef !9
  %i.dj = zext i16 %i.di to i64                   ; 5 uses
  %i.dk = trunc nuw nsw i64 %.pre-phi109124 to i16
  store i16 %i.dk, ptr %i.dg, align 2, !noalias !1164
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 536
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.df ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !1164
  %i.dn = getelementptr i8, ptr %i.dm, i64 24
  %i.do = xor i64 %i.df, -1
  %i.dp = add nsw i64 %i.dj, %i.do                ; 3 uses
  %i.dq = mul nuw nsw i64 %i.dp, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %i.dn, i64 %i.dq, i1 false), !alias.scope !1165, !noalias !1166
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 536 ; 2 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %.pre-phi127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 536
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %.pre-phi107125
  %i.dv = mul nuw nsw i64 %.pre-phi105126, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull readonly align 8 %i.dt, i64 %i.dv, i1 false), !alias.scope !1167, !noalias !1164
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.df ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.dw, i64 48, i1 false), !noalias !1164
  %i.dx = getelementptr i8, ptr %i.dw, i64 48
  %i.dy = mul nuw nsw i64 %i.dp, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.dw, ptr align 16 %i.dx, i64 %i.dy, i1 false), !alias.scope !1168, !noalias !1169
  %i.dz = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %.pre-phi127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dz, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %.pre-phi107125
  %i.eb = mul nuw nsw i64 %.pre-phi105126, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ea, ptr nonnull readonly align 16 %i.de, i64 %i.eb, i1 false), !alias.scope !1170, !noalias !1164
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ca, i64 816 ; 6 uses
  %i.ed = add nuw nsw i64 %i.df, 1                ; 5 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = shl nuw nsw i64 %i.dp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %i.ef, i64 %i.eg, i1 false), !alias.scope !1171, !noalias !1164
  %i.eh = icmp samesign ult i64 %i.ed, %i.dj
  br i1 %i.eh, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.thread
  %i.ei = sub nuw nsw i64 %i.dj, %i.ed
  %reass.sub = sub nsw i64 %i.dj, %i.df
  %i.ej = add nsw i64 %reass.sub, -2
  %xtraiter = and i64 %i.ei, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.ek, %.lr.ph.i.i.prol ], [ %i.ed, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ek = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.el = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.sroa.0.06.i.i.prol
  %i.en = load ptr, ptr %i.em, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 528
  store ptr %i.ca, ptr %i.eo, align 16, !noalias !1164
  %i.ep = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 800
  store i16 %i.ep, ptr %i.eq, align 16, !noalias !1164
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1144

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.ed, %.lr.ph.i.i.preheader ], [ %i.ek, %.lr.ph.i.i.prol ]
  %i.er = icmp ult i64 %i.ej, 3
  br i1 %i.er, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.fk, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.es = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.sroa.0.06.i.i
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 528
  store ptr %i.ca, ptr %i.ev, align 16, !noalias !1164
  %i.ew = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 800
  store i16 %i.ew, ptr %i.ex, align 16, !noalias !1164
  %i.ey = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.es
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 528
  store ptr %i.ca, ptr %i.fb, align 16, !noalias !1164
  %i.fc = trunc nuw nsw i64 %i.es to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 800
  store i16 %i.fc, ptr %i.fd, align 16, !noalias !1164
  %i.fe = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ey
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 528
  store ptr %i.ca, ptr %i.fh, align 16, !noalias !1164
  %i.fi = trunc nuw nsw i64 %i.ey to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 800
  store i16 %i.fi, ptr %i.fj, align 16, !noalias !1164
  %i.fk = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.fl = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.fe
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 528
  store ptr %i.ca, ptr %i.fo, align 16, !noalias !1164
  %i.fp = trunc nuw nsw i64 %i.fe to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 800
  store i16 %i.fp, ptr %i.fq, align 16, !noalias !1164
  %exitcond.not.i.i.3 = icmp eq i64 %i.fk, %i.dj
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge.thread
  %i.fr = load i16, ptr %i.dh, align 2, !noalias !1164, !noundef !9
  %i.fs = add i16 %i.fr, -1
  store i16 %i.fs, ptr %i.dh, align 2, !noalias !1164
  %i.ft = icmp ugt i64 %i.cb, 1
  br i1 %i.ft, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i, label %.noexc27

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dd, i64 816 ; 6 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.pre-phi107125
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 816
  %i.fx = shl nuw nsw i64 %.pre-phi105126, 3
  %i.fy = add nuw nsw i64 %i.fx, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.fw, i64 %i.fy, i1 false), !alias.scope !1172, !noalias !1164
  %i.fz = add nuw nsw i64 %.pre-phi109124, 1
  %i.ga = sub nsw i64 %i.fz, %.pre-phi107125
  %i.gb = sub nsw i64 %.pre-phi109124, %.pre-phi107125
  %xtraiter158 = and i64 %i.ga, 3                 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.gc, %.lr.ph.i5.i.prol ], [ %.pre-phi107125, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i ] ; 4 uses
  %prol.iter160 = phi i64 [ %prol.iter160.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i ]
  %i.gc = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.gd = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.sroa.0.06.i6.i.prol
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 528
  store ptr %i.dd, ptr %i.gg, align 16, !noalias !1164
  %i.gh = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 800
  store i16 %i.gh, ptr %i.gi, align 16, !noalias !1164
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !1148

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %.pre-phi107125, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEEECskIqAKC4t9Ft_2yr.exit.i ], [ %i.gc, %.lr.ph.i5.i.prol ]
  %i.gj = icmp ult i64 %i.gb, 3
  br i1 %i.gj, label %.noexc27, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.hc, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.gk = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.sroa.0.06.i6.i
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 528
  store ptr %i.dd, ptr %i.gn, align 16, !noalias !1164
  %i.go = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 800
  store i16 %i.go, ptr %i.gp, align 16, !noalias !1164
  %i.gq = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gk
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 528
  store ptr %i.dd, ptr %i.gt, align 16, !noalias !1164
  %i.gu = trunc nuw nsw i64 %i.gk to i16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 800
  store i16 %i.gu, ptr %i.gv, align 16, !noalias !1164
  %i.gw = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gq
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 528
  store ptr %i.dd, ptr %i.gz, align 16, !noalias !1164
  %i.ha = trunc nuw nsw i64 %i.gq to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 800
  store i16 %i.ha, ptr %i.hb, align 16, !noalias !1164
  %i.hc = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.hd = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gw
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !1164, !nonnull !9, !noundef !9 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 528
  store ptr %i.dd, ptr %i.hg, align 16, !noalias !1164
  %i.hh = trunc nuw nsw i64 %i.gw to i16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 800
  store i16 %i.hh, ptr %i.hi, align 16, !noalias !1164
  %exitcond.not.i7.i.3 = icmp eq i64 %i.gw, %.pre-phi109124
  br i1 %exitcond.not.i7.i.3, label %.noexc27, label %.lr.ph.i5.i

.noexc27:                                         ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i
  %.sink.i28 = phi i64 [ 816, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i ], [ 912, %.lr.ph.i5.i ], [ 912, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %.sink.i28, i64 noundef 16) #23, !noalias !1164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.hj = load i16, ptr %i.dh, align 2, !noalias !1161, !noundef !9 ; 2 uses
  %i.hk = icmp ugt i16 %i.hj, 4
  br i1 %i.hk, label %.thread, label %.lr.ph

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 1, ptr %2, align 1, !alias.scope !1173
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %.thread, %bb.m
  %.sink.ph = phi ptr [ %i.e, %bb.m ], [ %i.i, %.thread ], [ %i.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  %.sink = phi ptr [ %i.e, %bb.a ], [ %.sink.ph, %.sink.split ]
  %.sroa.0.0.sink = phi ptr [ %i.j, %bb.a ], [ %i.bn, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.ab, %bb.a ], [ %i.bm, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.p, %bb.a ], [ %i.bp, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %.sink, i64 80, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.0.sink, ptr %i.hl, align 16
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ac:                                            ; preds = %bb.e
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ad:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB7_3map8BTreeMapNtNtBb_6string6StringNtNtNtB1P_5value5value5ValueENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtB2u_5entryINtB4k_13OccupiedEntryB1L_B2r_E9remove_kv0NtNtBb_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [56 x i8], align 8                ; 13 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 11 uses
  %i.g = alloca [56 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !1218, !noalias !1219, !nonnull !9, !noundef !9 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 538 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !noalias !1220, !noundef !9 ; 3 uses
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1218, !noalias !1219, !noundef !9 ; 9 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.p ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = xor i64 %i.p, -1
  %i.t = add i64 %i.s, %i.m
  %i.u = mul nuw nsw i64 %i.t, 24                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.r, i64 %i.u, i1 false), !alias.scope !1221, !noalias !1222
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.p ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.y = getelementptr i8, ptr %i.w, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.y, i64 %i.u, i1 false), !alias.scope !1223, !noalias !1224
  %i.z = add i16 %i.l, -1                         ; 3 uses
  store i16 %i.z, ptr %i.k, align 2, !noalias !1220
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1218, !noalias !1219, !noundef !9 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.ac = icmp ult i16 %i.z, 5
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sink.i.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sink.i.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br i1 %i.ac, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ad = load ptr, ptr %i.j, align 8, !noalias !1225, !noundef !9 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 536
  %i.ag = load i16, ptr %i.af, align 8, !noalias !1225 ; 3 uses
  %.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 538
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !1226, !noundef !9
  %.not62.i = icmp eq i16 %i.ai, 0
  br i1 %.not62.i, label %.invoke, label %bb.g, !prof !11

bb.e:                                             ; preds = %.invoke, %bb.z, %bb.y, %bb.x, %bb.q, %bb.n, %bb.l, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtB1r_6string6StringNtNtNtBG_5value5value5ValueEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #25
          to label %bb.ad unwind label %bb.ac

bb.f:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ab, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.p, ptr %i.al, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 552
end_hunk_1
begin_hunk_2_@_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECskIqAKC4t9Ft_2yr:bb.a
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !1676, !noalias !1672
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECskIqAKC4t9Ft_2yr.exit.i.i.i

bb.l:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.af, label %.split35.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECskIqAKC4t9Ft_2yr.exit.i.i.i

.split35.i.i.i.i.i.i.i.i:                         ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i), !alias.scope !1677, !noalias !1678
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECskIqAKC4t9Ft_2yr.exit.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0CskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskIqAKC4t9Ft_2yr.exit27.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !1679, !noalias !1672
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECskIqAKC4t9Ft_2yr.exit.i.i.i

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0CskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %.split33.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1666
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e)
  %i.ai = load i8, ptr %i.b, align 8, !range !1668, !noalias !1666, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsG258MDvU3F_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB1Z_E0E0CskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i, %bb.l, %.split.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskIqAKC4t9Ft_2yr.exit33.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %.split33.i.i.i.i.i.i.i.i, %bb.j, %.split31.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCsG258MDvU3F_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCskIqAKC4t9Ft_2yr.exit27.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %.split27.i.i.i.i.i.i.i.i, %bb.h, %bb.f, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1666
  br label %_RINvXNtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB30_NCINvYBN_B2y_2eqBN_E0E0ECskIqAKC4t9Ft_2yr.exit

.loopexit.i.i.i:                                  ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1680
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.aj = load i8, ptr %i.c, align 8, !range !1668, !noalias !1680, !noundef !9
  %.not4.i.not.i.i = icmp eq i8 %i.aj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1680
  br label %_RINvXNtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB30_NCINvYBN_B2y_2eqBN_E0E0ECskIqAKC4t9Ft_2yr.exit

_RINvXNtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB30_NCINvYBN_B2y_2eqBN_E0E0ECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECskIqAKC4t9Ft_2yr.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.not4.i.not.i.i, %.loopexit.i.i.i ], [ false, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1w_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1u_5eq_by7compareB2Q_B2Q_NCINvYB3_B1u_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB43_uNtNtBc_3cmp8OrderingEEECskIqAKC4t9Ft_2yr.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs1jzQjjwemIA_5yansi3setINtB2_3SetNtNtB4_10attr_quirk5QuirkE8containsCskIqAKC4t9Ft_2yr(i16 noundef %0, i8 noundef range(i8 0, 7) %1) unnamed_addr #4 {
bb.a:
  %i.a = zext nneg i8 %1 to i16
  %i.b = shl nuw nsw i16 1, %i.a
  %i.c = and i16 %i.b, %0
  %i.d = icmp ne i16 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE15bulk_steal_leftCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 16           ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 16           ; 2 uses
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 802 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !9
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 802 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !9
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 536 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !1700
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %1
  %i.u = mul nuw nsw i64 %i.k, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.t, ptr nonnull align 16 %i.h, i64 %i.u, i1 false), !alias.scope !1701
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22, !noalias !1704
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 536 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !1704
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.v
  %i.ad = mul nuw nsw i64 %i.w, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.h, ptr nonnull readonly align 16 %i.ac, i64 %i.ad, i1 false), !alias.scope !1705
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.af, i64 48, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ag, align 8, !noundef !9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 536
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val17 ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.2, ptr noundef nonnull align 16 dereferenceable(48) %i.aj, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aj, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1706
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.2, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !9
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !9
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr.exit
  br i1 %i.ar, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit, label %bb.j, !prof !12

bb.h:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr.exit
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !11

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.ca, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.as, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.as = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.epil
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 528
  store ptr %i.h, ptr %i.av, align 16
  %i.aw = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 800
  store i16 %i.aw, ptr %i.ax, align 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit, label %bb.i, !llvm.loop !1694

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 816 ; 8 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %1
  %i.ba = shl nuw nsw i64 %i.k, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 16 dereferenceable(1) %i.ay, i64 %i.bb, i1 false), !alias.scope !1707
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.v
  %i.be = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bd, i64 %i.be, i1 false), !alias.scope !1708
  %i.bf = add nuw nsw i64 %1, %i.k
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %xtraiter = and i64 %i.bg, 3                    ; 3 uses
  %i.bh = icmp samesign ult i64 %i.l, 3
  br i1 %i.bh, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bg, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.ca, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bi = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 528
  store ptr %i.h, ptr %i.bl, align 16
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 800
  store i16 %i.bm, ptr %i.bn, align 16
  %i.bo = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bi
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 528
  store ptr %i.h, ptr %i.br, align 16
  %i.bs = trunc nuw nsw i64 %i.bi to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 800
  store i16 %i.bs, ptr %i.bt, align 16
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bo
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 528
  store ptr %i.h, ptr %i.bx, align 16
  %i.by = trunc nuw nsw i64 %i.bo to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 800
  store i16 %i.by, ptr %i.bz, align 16
  %i.ca = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bu
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 528
  store ptr %i.h, ptr %i.cd, align 16
  %i.ce = trunc nuw nsw i64 %i.bu to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 800
  store i16 %i.ce, ptr %i.cf, align 16
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE16bulk_steal_rightCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 16           ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 16           ; 2 uses
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 802 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !9 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 802 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !9
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 536 ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.t, i64 48, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !9 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 536
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.val18 ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.2, ptr noundef nonnull align 16 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1728
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 536 ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.2, i64 48, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ab
  %i.ad = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull readonly align 8 %i.r, i64 %i.ad, i1 false), !alias.scope !1729
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.ab
  %i.af = mul nuw nsw i64 %i.q, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ae, ptr nonnull readonly align 16 %i.h, i64 %i.af, i1 false), !alias.scope !1730
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %1
  %i.ah = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.ag, i64 %i.ah, i1 false), !alias.scope !1731
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %1
  %i.aj = mul nuw nsw i64 %i.n, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.h, ptr nonnull align 16 %i.ai, i64 %i.aj, i1 false), !alias.scope !1732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !9
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !9
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !11

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil.preheader

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader ], [ %i.dh, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aq, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil.preheader ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ar = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23.epil
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 528
  store ptr %i.h, ptr %i.au, align 16
  %i.av = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 800
  store i16 %i.av, ptr %i.aw, align 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil, !llvm.loop !1722

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 816 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 816 ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.ba = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.ax, i64 %i.ba, i1 false), !alias.scope !1733
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %1
  %i.bc = shl nuw nsw i64 %i.n, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !alias.scope !1734
  %i.be = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 528
  store ptr %i.c, ptr %i.bh, align 16
  %i.bi = trunc nuw nsw i64 %i.ab to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 800
  store i16 %i.bi, ptr %i.bj, align 16
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bl = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 528
  store ptr %i.c, ptr %i.bo, align 16
  %i.bp = trunc nuw nsw i64 %i.bk to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 800
  store i16 %i.bp, ptr %i.bq, align 16
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 528
  store ptr %i.c, ptr %i.bv, align 16
  %i.bw = trunc nuw nsw i64 %i.br to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 800
  store i16 %i.bw, ptr %i.bx, align 16
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bz = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 528
  store ptr %i.c, ptr %i.cc, align 16
  %i.cd = trunc nuw nsw i64 %i.by to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 800
  store i16 %i.cd, ptr %i.ce, align 16
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.cg = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 528
  store ptr %i.c, ptr %i.cj, align 16
  %i.ck = trunc nuw nsw i64 %i.cf to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 800
  store i16 %i.ck, ptr %i.cl, align 16
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = add nuw nsw i64 %i.k, 1
  %i.cn = sub nsw i64 %i.cm, %1                   ; 2 uses
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp samesign ult i64 %i.n, 3
  br i1 %i.co, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.epil.preheader, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader.new

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader.new ], [ %i.dh, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit ]
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 528
  store ptr %i.h, ptr %i.cs, align 16
  %i.ct = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 800
  store i16 %i.ct, ptr %i.cu, align 16
  %i.cv = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cp
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 528
  store ptr %i.h, ptr %i.cy, align 16
  %i.cz = trunc nuw nsw i64 %i.cp to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 800
  store i16 %i.cz, ptr %i.da, align 16
  %i.db = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cv
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 528
  store ptr %i.h, ptr %i.de, align 16
  %i.df = trunc nuw nsw i64 %i.cv to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 800
  store i16 %i.df, ptr %i.dg, align 16
  %i.dh = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.di = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.db
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 528
  store ptr %i.h, ptr %i.dl, align 16
  %i.dm = trunc nuw nsw i64 %i.db to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 800
  store i16 %i.dm, ptr %i.dn, align 16
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1m_5value5value5ValueEE15bulk_steal_leftCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 538 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !9
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 538 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !9
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !1754
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.s, i1 false), !alias.scope !1755
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 4 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr.exit, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22, !noalias !1758
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !1758
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ad, i64 %i.ab, i1 false), !alias.scope !1759
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ag, align 8, !noundef !9 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val17 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1760
end_hunk_2
