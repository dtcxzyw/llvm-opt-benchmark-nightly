Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.09?download=true
inline.NumInlined: 236
inline.NumDeleted: 126
begin_hunk_0_@_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE11swap_removeBO_EBS_:bb.a
  %i.cl = icmp ult i64 %.val.i.i.i.i, %i.b
  br i1 %i.cl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.val.i.i.i.i ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !alias.scope !178, !noalias !179, !noundef !3
  %i.cp = icmp eq i32 %i.bx, %i.co
  br i1 %i.cp, label %bb.l, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !4

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !range !7, !alias.scope !178, !noalias !179, !noundef !3
  %i.cs = icmp eq i32 %i.by, %i.cr
  br i1 %i.cs, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !4

bb.m:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !180
  unreachable

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i: ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !alias.scope !178, !noalias !179, !noundef !3
  %i.cv = icmp eq i32 %i.ca, %i.cu
  br i1 %i.cv, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !5

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, %bb.j
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit, !prof !6

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i, %bb.l, %bb.k
  %i.cz = add i16 %.sroa.05.0.i40.i.i.i, -1
  %i.da = and i16 %i.cz, %.sroa.05.0.i40.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.db = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dc = add i64 %.sroa.01.0.i.i.i.i, %i.db
  br label %bb.j

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i: ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.cj, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ch ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.df = add nsw i64 %i.ch, -16
  %i.dg = and i64 %i.df, %i.bs
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.dh, align 1, !noalias !183
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.dj = bitcast <16 x i1> %i.di to i16
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.de, align 1, !noalias !184
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.dj, i1 false)
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dl, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.dn, %i.dm
  %i.do = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.do, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !185, !noalias !186, !noundef !3
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.dp, align 8, !alias.scope !185, !noalias !186
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.o, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.o ], [ -128, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.de, align 1, !noalias !187
  %i.ds = getelementptr i8, ptr %i.dh, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ds, align 1, !noalias !187
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !185, !noalias !186, !noundef !3
  %i.dv = add i64 %i.du, -1
  store i64 %i.dv, ptr %i.dt, align 8, !alias.scope !185, !noalias !186
  %i.dw = load i64, ptr %i.dd, align 8, !noalias !188, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.dx = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.dx)
  %.not.i.i.i.i = icmp ult i64 %i.dw, %i.b
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i, label %bb.p, !prof !8

bb.p:                                             ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.dw, i64 noundef %i.b) #23, !noalias !191
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i: ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.dw ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !192 ; 2 uses
  %i.dz = add nsw i64 %i.b, -1                    ; 4 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.dz
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false), !noalias !191
  store i64 %i.dz, ptr %i.a, align 8, !alias.scope !193, !noalias !194
  %i.eb = icmp samesign ult i64 %i.dw, %i.dz
  br i1 %i.eb, label %bb.q, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

bb.q:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i
  %i.ec = load i64, ptr %i.dy, align 8, !noalias !195, !noundef !3 ; 2 uses
  %i.ed = lshr i64 %i.ec, 57
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  %i.ef = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.eg = shufflevector <16 x i8> %i.ef, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %bb.q ], [ %i.ex, %bb.t ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.q ], [ %i.ey, %bb.t ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bs ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.eh, align 1, !noalias !196 ; 2 uses
  %i.ei = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.eg
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %.sroa.05.0.i33.i.i.i.i.i = phi i16 [ %i.ew, %bb.s ], [ %i.ej, %bb.r ] ; 3 uses
  %i.ek = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.el
  %i.en = and i64 %i.em, %i.bs
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -8
  %.val2.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !197, !noundef !3
  %i.er = icmp eq i64 %.val2.i.i.i.i.i.i, %i.dz
  br i1 %i.er, label %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i, label %bb.s, !prof !8

._crit_edge.i.i.i.i.i:                            ; preds = %bb.s, %bb.r
  %i.es = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.et = bitcast <16 x i1> %i.es to i16
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %bb.t, label %bb.u, !prof !6

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ev = add i16 %.sroa.05.0.i33.i.i.i.i.i, -1
  %i.ew = and i16 %i.ev, %.sroa.05.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ex = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.ey = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ex
  br label %bb.r

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !195
  unreachable

_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ez = getelementptr inbounds i8, ptr %i.ep, i64 -8
  store i64 %i.dw, ptr %i.ez, align 8, !noalias !195
  br label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit: ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i, %bb.a, %bb.b, %bb.c, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i
  %.sroa.4.0 = phi i32 [ %.sroa.3.0.copyload, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.a ], [ 0, %_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_.exit.i ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i ], [ %.sroa.3.0.copyload, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i ], [ 1, %._crit_edge.i.i.i.i ]
  %.not = icmp ne i32 %.sroa.4.0, 0
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB5_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBP_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 7 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtCsffXo9NmvYC7_8indexmap4util14simplify_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsC8CapfvpQ1_5salsa(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 12 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !256, !nonnull !3, !noundef !3 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.f, %i.b
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !noalias !257
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = sub nuw nsw i64 %i.b, %i.f               ; 2 uses
  %.not.i5.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i5.i, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i, !prof !6

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !258
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.l = sub nuw nsw i64 %i.f, %i.e               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !256, !noundef !3 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !256, !noundef !3 ; 3 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = lshr i64 %i.r, 1                         ; 2 uses
  %i.t = icmp eq i64 %i.f, %i.e
  br i1 %i.t, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i
  %i.u = add nuw nsw i64 %i.j, %i.e
  %i.v = icmp samesign ult i64 %i.u, %i.s
  %i.w = icmp samesign ult i64 %i.e, %i.l
  %or.cond.i = and i1 %i.w, %i.v
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = sub nuw nsw i64 %i.b, %i.e
  %i.y = icmp samesign ult i64 %i.x, %i.s
  br i1 %i.y, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.o, 0
  br i1 %i.z, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsjECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !259, !noundef !3 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.m, align 8, !alias.scope !259, !nonnull !3, !noundef !3
  %i.af = add i64 %i.ac, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 -1, i64 %i.af, i1 false)
  %.pre.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !259
  %.pre.fr.i.i.i.i.i = freeze i64 %.pre.i.i.i.i.i ; 3 uses
  %i.ag = icmp ult i64 %.pre.fr.i.i.i.i.i, 8
  %i.ah = add i64 %.pre.fr.i.i.i.i.i, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %spec.select.i.i.i.i.i = select i1 %i.ag, i64 %.pre.fr.i.i.i.i.i, i64 %i.aj
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !259, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !259, !nonnull !3, !noundef !3
  %i.ao = add i64 %i.al, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 -1, i64 %i.ao, i1 false)
  %.pre.i.i.i2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !259
  %.pre.fr.i.i.i3.i.i = freeze i64 %.pre.i.i.i2.i.i ; 3 uses
  %i.ap = icmp ult i64 %.pre.fr.i.i.i3.i.i, 8
  %i.aq = add i64 %.pre.fr.i.i.i3.i.i, 1
  %i.ar = lshr i64 %i.aq, 3
  %i.as = mul nuw i64 %i.ar, 7
  %spec.select.i.i.i4.i.i = select i1 %i.ap, i64 %.pre.fr.i.i.i3.i.i, i64 %i.as
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i: ; preds = %bb.k, %bb.j
  %i.at = phi i64 [ %spec.select.i.i.i4.i.i, %bb.k ], [ 0, %bb.j ]
  store i64 0, ptr %i.n, align 8, !alias.scope !259
  store i64 %i.at, ptr %i.p, align 8, !alias.scope !259
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i64 [ %spec.select.i.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  store i64 0, ptr %i.n, align 8, !alias.scope !259
  store i64 %i.au, ptr %i.p, align 8, !alias.scope !259
  resume { ptr, i32 } %i.aa

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, %bb.f
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.e)
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef %i.j)
  br label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit

bb.m:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %3 = load ptr, ptr %i.m, align 8, !alias.scope !262, !noalias !263, !nonnull !3, !noundef !3 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load i64, ptr %i.av, align 8, !alias.scope !262, !noalias !263, !noundef !3
  %i.aw = icmp eq i64 %i.o, 0
  br i1 %i.aw, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %.val24.i.i.i = load <16 x i8>, ptr %3, align 16, !noalias !264
  %i.ax = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = ptrtoint ptr %3 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i.i
  %i.bb = phi i64 [ %i.q, %.lr.ph.i.i ], [ %6, %bb.q ] ; 4 uses
  %.sroa.14.015.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.bn, %bb.q ]
  %.sroa.10.014.i.i = phi i16 [ %i.ay, %.lr.ph.i.i ], [ %i.bk, %bb.q ] ; 2 uses
  %.sroa.6.013.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.q ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %3, %.lr.ph.i.i ], [ %.sroa.07.1.i.i, %bb.q ] ; 2 uses
  %5 = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.ck, %bb.q ] ; 3 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.sroa.6.013.i.i, %bb.n ] ; 2 uses
  %i.bd = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.sroa.07.012.i.i, %bb.n ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.bc, align 16, !noalias !265
  %i.be = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -128 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.be to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i

_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.012.i.i, %bb.n ], [ %i.bf, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.013.i.i, %bb.n ], [ %i.bg, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.014.i.i, %bb.n ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bh = add i16 %.lcssa.i.i.i, -1
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = and i16 %i.bh, %.lcssa.i.i.i
  %i.bl = sub nsw i64 0, %i.bj
  %i.bm = getelementptr inbounds [8 x i8], ptr %.sroa.07.1.i.i, i64 %i.bl ; 2 uses
  %i.bn = add i64 %.sroa.14.015.i.i, -1           ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !266, !noalias !267, !noundef !3 ; 3 uses
  %.not.i5.i.i = icmp ult i64 %i.bp, %i.f
  br i1 %.not.i5.i.i, label %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i, label %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i

_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i: ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.bq = sub nuw i64 %i.bp, %i.l
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !266, !noalias !267
  br label %bb.q

_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i: ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.br = icmp ult i64 %i.bp, %i.e
  br i1 %i.br, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1.i.i) ]
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = sub i64 %i.ba, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.bv = add nsw i64 %i.bu, -16
  %i.bw = and i64 %i.bv, %4
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.bx, align 1, !noalias !270
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.bz = bitcast <16 x i1> %i.by to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.ca, align 1, !noalias !271
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.bz, i1 false)
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cc, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.ce, %i.cd
  %i.cf = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.cf, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.p, align 8, !alias.scope !272, !noalias !273
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.p, %bb.o
  %i.ch = phi i64 [ %i.cg, %bb.p ], [ %i.bb, %bb.o ]
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.p ], [ -128, %bb.o ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ca, align 1, !noalias !274
  %i.ci = getelementptr i8, ptr %i.bx, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ci, align 1, !noalias !274
  %i.cj = add i64 %5, -1                          ; 2 uses
  store i64 %i.cj, ptr %i.n, align 8, !alias.scope !272, !noalias !273
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i
  %6 = phi i64 [ %i.bb, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i ], [ %i.bb, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i ], [ %i.ch, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i ]
  %i.ck = phi i64 [ %5, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i ], [ %5, %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i ], [ %i.cj, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa.exit.i.i ]
  %i.cl = icmp eq i64 %i.bn, 0
  br i1 %i.cl, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %bb.n

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i: ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !275, !noalias !276, !noundef !3 ; 5 uses
  %i.co = load ptr, ptr %i.m, align 8, !alias.scope !275, !noalias !276, !nonnull !3, !noundef !3 ; 6 uses
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i: ; preds = %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i
  %i.cp = phi i64 [ %i.o, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.ef, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 2 uses
  %i.cq = phi i64 [ %i.q, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.eg, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 3 uses
  %.sroa.031.064.i = phi ptr [ %i.k, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.cs, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 2 uses
  %.sroa.7.063.i = phi i64 [ %i.e, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.lr.ph.i ], [ %i.cr, %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i ] ; 2 uses
  %i.cr = add i64 %.sroa.7.063.i, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.031.064.i, i64 24 ; 2 uses
  %i.ct = load i64, ptr %.sroa.031.064.i, align 8, !noalias !256, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.cu = lshr i64 %i.ct, 57
  %i.cv = trunc nuw nsw i64 %i.cu to i8
  %i.cw = insertelement <16 x i8> poison, i8 %i.cv, i64 0
  %i.cx = shufflevector <16 x i8> %i.cw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i ], [ %i.do, %bb.t ]
  %.pn.i.i.i.i = phi i64 [ %i.ct, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i ], [ %i.dp, %bb.t ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.cn ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.cy, align 1, !noalias !280 ; 2 uses
  %i.cz = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.cx
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %bb.r, %bb.s
  %.sroa.05.0.i33.i.i.i = phi i16 [ %i.dn, %bb.s ], [ %i.da, %bb.r ] ; 3 uses
  %i.db = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i, i1 true)
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = add i64 %.sroa.01.0.i.i.i.i, %i.dc
  %i.de = and i64 %i.dd, %i.cn                    ; 3 uses
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %.val2.i.i.i.i = load i64, ptr %i.dh, align 8, !noalias !281, !noundef !3
  %i.di = icmp eq i64 %.val2.i.i.i.i, %.sroa.7.063.i
  br i1 %i.di, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i, label %bb.s, !prof !8

._crit_edge.i.i.i:                                ; preds = %bb.s, %bb.r
  %i.dj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.t, label %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i, !prof !6

bb.s:                                             ; preds = %.lr.ph.i.i10.i
  %i.dm = add i16 %.sroa.05.0.i33.i.i.i, -1
  %i.dn = and i16 %i.dm, %.sroa.05.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i10.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.do = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.dp = add i64 %.sroa.01.0.i.i.i.i, %i.do
  br label %bb.r

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %.lr.ph.i.i10.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.de ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.dr = add nsw i64 %i.de, -16
  %i.ds = and i64 %i.dr, %i.cn
  %i.dt = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ds ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i11.i = load <16 x i8>, ptr %i.dt, align 1, !noalias !284
  %i.du = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i11.i, splat (i8 -1)
  %i.dv = bitcast <16 x i1> %i.du to i16
  %.sroa.0.0.copyload.i926.i.i.i12.i = load <16 x i8>, ptr %i.dq, align 1, !noalias !285
  %i.dw = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i12.i, splat (i8 -1)
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.dv, i1 false)
  %i.dz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dx, i1 false)
  %narrow.i.i.i13.i = add nuw nsw i16 %i.dz, %i.dy
  %i.ea = icmp samesign ugt i16 %narrow.i.i.i13.i, 15
  br i1 %i.ea, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.eb = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.eb, ptr %i.p, align 8, !alias.scope !286, !noalias !287
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.u, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.ec = phi i64 [ %i.eb, %bb.u ], [ %i.cq, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i ]
  %.sroa.0.0.i.i.i14.i = phi i8 [ -1, %bb.u ], [ -128, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i14.i, ptr %i.dq, align 1, !noalias !288
  %i.ed = getelementptr i8, ptr %i.dt, i64 16
  store i8 %.sroa.0.0.i.i.i14.i, ptr %i.ed, align 1, !noalias !288
  %i.ee = add i64 %i.cp, -1                       ; 2 uses
  store i64 %i.ee, ptr %i.n, align 8, !alias.scope !286, !noalias !287
  br label %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i

_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i: ; preds = %._crit_edge.i.i.i, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  %i.ef = phi i64 [ %i.ee, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i ], [ %i.cp, %._crit_edge.i.i.i ]
  %i.eg = phi i64 [ %i.ec, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i ], [ %i.cq, %._crit_edge.i.i.i ]
  %i.eh = icmp eq ptr %i.cs, %i.i
  br i1 %i.eh, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i: ; preds = %_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index.exit.i
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.b
  %i.ej = icmp samesign eq i64 %i.f, %i.b
  br i1 %i.ej, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i
  %.sroa.1042.068.i = phi i64 [ %i.el, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i ], [ %i.f, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i ] ; 2 uses
  %.sroa.741.067.i = phi i64 [ %i.ek, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i ], [ %i.e, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i ] ; 2 uses
  %.sroa.039.066.i = phi ptr [ %i.em, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i ], [ %i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i ] ; 2 uses
  %i.ek = add i64 %.sroa.741.067.i, 1
  %i.el = add i64 %.sroa.1042.068.i, 1
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.039.066.i, i64 24 ; 2 uses
  %i.en = load i64, ptr %.sroa.039.066.i, align 8, !noalias !256, !noundef !3 ; 2 uses
  %i.eo = lshr i64 %i.en, 57
  %i.ep = trunc nuw nsw i64 %i.eo to i8
  %i.eq = insertelement <16 x i8> poison, i8 %i.ep, i64 0
  %i.er = shufflevector <16 x i8> %i.eq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i
  %.sroa.011.0.i.i.i15.i = phi i64 [ 0, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i ], [ %i.fi, %bb.x ]
  %.pn.i.i.i16.i = phi i64 [ %i.en, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i ], [ %i.fj, %bb.x ]
  %.sroa.01.0.i.i.i17.i = and i64 %.pn.i.i.i16.i, %i.cn ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.01.0.i.i.i17.i
  %.sroa.0.0.copyload.i26.i.i18.i = load <16 x i8>, ptr %i.es, align 1, !noalias !289 ; 2 uses
  %i.et = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i18.i, %i.er
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.not32.i.i19.i = icmp eq i16 %i.eu, 0
  br i1 %.not.i.not32.i.i19.i, label %._crit_edge.i.i24.i, label %.lr.ph.i.i20.i

.lr.ph.i.i20.i:                                   ; preds = %bb.v, %bb.w
  %.sroa.05.0.i33.i.i21.i = phi i16 [ %i.fh, %bb.w ], [ %i.eu, %bb.v ] ; 3 uses
  %i.ev = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i21.i, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  %i.ex = add i64 %.sroa.01.0.i.i.i17.i, %i.ew
  %i.ey = and i64 %i.ex, %i.cn
  %i.ez = sub nsw i64 0, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -8
  %.val2.i.i.i22.i = load i64, ptr %i.fb, align 8, !noalias !290, !noundef !3
  %i.fc = icmp eq i64 %.val2.i.i.i22.i, %.sroa.1042.068.i
  br i1 %i.fc, label %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i, label %bb.w, !prof !8

._crit_edge.i.i24.i:                              ; preds = %bb.w, %bb.v
  %i.fd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i18.i, splat (i8 -1)
  %i.fe = bitcast <16 x i1> %i.fd to i16
  %i.ff = icmp eq i16 %i.fe, 0
  br i1 %i.ff, label %bb.x, label %bb.y, !prof !6

bb.w:                                             ; preds = %.lr.ph.i.i20.i
  %i.fg = add i16 %.sroa.05.0.i33.i.i21.i, -1
  %i.fh = and i16 %i.fg, %.sroa.05.0.i33.i.i21.i  ; 2 uses
  %.not.i.not.i.i23.i = icmp eq i16 %i.fh, 0
  br i1 %.not.i.not.i.i23.i, label %._crit_edge.i.i24.i, label %.lr.ph.i.i20.i

bb.x:                                             ; preds = %._crit_edge.i.i24.i
  %i.fi = add i64 %.sroa.011.0.i.i.i15.i, 16      ; 2 uses
  %i.fj = add i64 %.sroa.01.0.i.i.i17.i, %i.fi
  br label %bb.v

bb.y:                                             ; preds = %._crit_edge.i.i24.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !256
  unreachable

_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i: ; preds = %.lr.ph.i.i20.i
  %i.fk = getelementptr inbounds i8, ptr %i.fa, i64 -8
  store i64 %.sroa.741.067.i, ptr %i.fk, align 8, !noalias !256
  %i.fl = icmp eq ptr %i.em, %i.ei
  br i1 %i.fl, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_3ops5range9RangeFromjEB10_EINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1B_E4nextB2C_.exit.i

_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit: ; preds = %bb.q, %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i, %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i, %bb.m, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjEINtNtNtBb_5slice4iter4IterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEEEINtB5_7ZipImplBW_B1s_E4nextB2t_.exit.thread.i
  tail call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB1f_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.e, i64 noundef %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEEEB1P_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!70 = distinct !{!70, i1 false, !"_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index"}
!71 = distinct !{!71, !70, !"_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index: argument 0"}
!72 = distinct !{!72, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa"}
!73 = distinct !{!73, !72, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa: argument 0"}
!74 = distinct !{!74, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!75 = distinct !{!75, !74, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!76 = distinct !{!76, !74, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!77 = distinct !{!77, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!78 = distinct !{!78, !77, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!79 = distinct !{!79, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0E0CsC8CapfvpQ1_5salsa"}
!80 = distinct !{!80, !79, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0E0CsC8CapfvpQ1_5salsa: argument 0"}
!81 = distinct !{!81, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa"}
!82 = distinct !{!82, !81, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa: argument 1"}
!83 = distinct !{!83, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase"}
!84 = distinct !{!84, !83, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!85 = distinct !{!85, !81, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa: argument 0"}
!86 = distinct !{!86, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!87 = distinct !{!87, !86, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!88 = distinct !{!88, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!89 = distinct !{!89, !88, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!90 = distinct !{!90, i1 false, !"_RINvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB5_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE16swap_remove_fullBL_EBP_"}
!91 = distinct !{!91, !90, !"_RINvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB5_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE16swap_remove_fullBL_EBP_: argument 1"}
!92 = distinct !{!92, !90, !"_RINvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB5_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE16swap_remove_fullBL_EBP_: argument 2"}
!93 = distinct !{!93, !90, !"_RINvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB5_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE16swap_remove_fullBL_EBP_: argument 0"}
!94 = distinct !{!94, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_"}
!95 = distinct !{!95, !94, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_: argument 0"}
!96 = distinct !{!96, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!97 = distinct !{!97, !96, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!98 = distinct !{!98, !94, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_: argument 1"}
!99 = distinct !{!99, !96, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!100 = distinct !{!100, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!101 = distinct !{!101, !100, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!102 = distinct !{!102, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_"}
!103 = distinct !{!103, !102, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_: argument 0"}
!104 = distinct !{!104, i1 false, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_"}
!105 = distinct !{!105, !104, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_: argument 1"}
!106 = distinct !{!106, i1 false, !"_RNvXs4_NtCsC8CapfvpQ1_5salsa3keyNtB5_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!107 = distinct !{!107, !106, !"_RNvXs4_NtCsC8CapfvpQ1_5salsa3keyNtB5_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!108 = distinct !{!108, i1 false, !"_RNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuBL_E0BP_"}
!109 = distinct !{!109, !108, !"_RNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuBL_E0BP_: argument 0"}
!110 = distinct !{!110, !104, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_: argument 0"}
!111 = distinct !{!111, !106, !"_RNvXs4_NtCsC8CapfvpQ1_5salsa3keyNtB5_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!112 = distinct !{!112, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa"}
!113 = distinct !{!113, !112, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa: argument 1"}
!114 = distinct !{!114, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase"}
!115 = distinct !{!115, !114, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!116 = distinct !{!116, !112, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa: argument 0"}
!117 = distinct !{!117, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!118 = distinct !{!118, !117, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!119 = distinct !{!119, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!120 = distinct !{!120, !119, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!121 = distinct !{!121, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE18swap_remove_finishBO_"}
!122 = distinct !{!122, !121, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE18swap_remove_finishBO_: argument 1"}
!123 = distinct !{!123, i1 false, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_"}
!124 = distinct !{!124, !123, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_: argument 1"}
!125 = distinct !{!125, !121, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE18swap_remove_finishBO_: argument 0"}
!126 = distinct !{!126, !123, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_: argument 0"}
!127 = distinct !{!127, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0ECsC8CapfvpQ1_5salsa"}
!128 = distinct !{!128, !127, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0ECsC8CapfvpQ1_5salsa: argument 0"}
!129 = distinct !{!129, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!130 = distinct !{!130, !129, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!131 = distinct !{!131, !129, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!132 = distinct !{!132, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!133 = distinct !{!133, !132, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!134 = distinct !{!134, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0E0CsC8CapfvpQ1_5salsa"}
!135 = distinct !{!135, !134, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0E0CsC8CapfvpQ1_5salsa: argument 0"}
!136 = !{!58}
!137 = !{!59}
!138 = !{!60, !59}
!139 = !{!62}
!140 = !{!63}
!141 = !{!65}
!142 = !{!66}
!143 = !{!65, !62, !59}
!144 = !{!66, !63, !60, !58}
!145 = !{!66, !63}
!146 = !{!65, !62, !60, !58, !59}
!147 = !{!68}
!148 = !{!68, !58}
!149 = !{!69, !60, !59}
!150 = !{!69, !68, !60, !58, !59}
!151 = !{!71}
!152 = !{!73}
!153 = !{!75}
!154 = !{!75, !73, !71, !68, !58}
!155 = !{!76, !69, !60, !59}
!156 = !{!78, !75, !76, !73, !71, !69, !68, !60, !58, !59}
!157 = !{!80, !75, !76, !73, !71, !69, !68, !60, !58, !59}
!158 = !{!82}
!159 = !{!84}
!160 = !{!87, !84, !85, !82, !71, !69, !68, !60, !58, !59}
!161 = !{!89, !84, !85, !82, !71, !69, !68, !60, !58, !59}
!162 = !{!84, !82, !71, !68, !58}
!163 = !{!85, !69, !60, !59}
!164 = !{!84, !85, !82, !71, !69, !68, !60, !58, !59}
!165 = !{!60}
!166 = !{!91}
!167 = !{!92}
!168 = !{!91, !58}
!169 = !{!93, !92, !60, !59}
!170 = !{!95}
!171 = !{!97}
!172 = !{!97, !95, !91, !58}
!173 = !{!99, !98, !93, !92, !60, !59}
!174 = !{!92, !59}
!175 = !{!93, !91, !60, !58}
!176 = !{!101, !97, !99, !95, !98, !93, !91, !92, !60}
!177 = !{!103, !97, !99, !95, !98, !93, !91, !92, !60}
!178 = !{!107, !105}
!179 = !{!111, !110, !109, !103, !97, !99, !95, !98, !93, !91, !92, !60}
!180 = !{!109, !103, !97, !99, !95, !98, !93, !91, !92, !60}
!181 = !{!113}
!182 = !{!115}
!183 = !{!118, !115, !116, !113, !93, !91, !92, !60}
!184 = !{!120, !115, !116, !113, !93, !91, !92, !60}
!185 = !{!115, !113, !91, !58}
!186 = !{!116, !93, !92, !60, !59}
!187 = !{!115, !116, !113, !93, !91, !92, !60}
!188 = !{!116, !113, !93, !91, !92, !60}
!189 = !{!122}
!190 = !{!124}
!191 = !{!126, !124, !125, !122, !93, !91, !92, !60}
!192 = !{!124, !125, !122, !93, !91, !92, !60}
!193 = !{!124, !122, !91, !58}
!194 = !{!126, !125, !93, !92, !60, !59}
!195 = !{!125, !122, !93, !91, !92, !60}
!196 = !{!133, !131, !130, !128, !125, !122, !93, !91, !92, !60}
!197 = !{!135, !131, !130, !128, !125, !122, !93, !91, !92, !60}
!198 = distinct !{!198, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_"}
!199 = distinct !{!199, !198, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_: argument 0"}
!200 = distinct !{!200, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_"}
!201 = distinct !{!201, !200, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_: argument 1"}
!202 = distinct !{!202, !200, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_: argument 0"}
!203 = distinct !{!203, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_"}
!204 = distinct !{!204, !203, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_: argument 1"}
!205 = distinct !{!205, !203, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_: argument 0"}
!206 = distinct !{!206, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa"}
!207 = distinct !{!207, !206, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa: argument 0"}
!208 = distinct !{!208, i1 false, !"_RINvMs_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_9HashTablejE6retainNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB17_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0EB1S_"}
!209 = distinct !{!209, !208, !"_RINvMs_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_9HashTablejE6retainNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB17_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0EB1S_: argument 0"}
!210 = distinct !{!210, i1 false, !"_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner4iterjECsC8CapfvpQ1_5salsa"}
!211 = distinct !{!211, !210, !"_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner4iterjECsC8CapfvpQ1_5salsa: argument 1"}
!212 = distinct !{!212, !208, !"_RINvMs_NtCsgMW4BsFgQdt_9hashbrown5tableINtB5_9HashTablejE6retainNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB17_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0EB1S_: argument 1"}
!213 = distinct !{!213, !210, !"_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner4iterjECsC8CapfvpQ1_5salsa: argument 0"}
!214 = distinct !{!214, i1 false, !"_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa"}
!215 = distinct !{!215, !214, !"_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa: argument 0"}
!216 = distinct !{!216, i1 false, !"_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_"}
!217 = distinct !{!217, !216, !"_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_: argument 1"}
!218 = distinct !{!218, !216, !"_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_: argument 0"}
!219 = distinct !{!219, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa"}
!220 = distinct !{!220, !219, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13erase_no_dropCsC8CapfvpQ1_5salsa: argument 0"}
!221 = distinct !{!221, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase"}
!222 = distinct !{!222, !221, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!223 = distinct !{!223, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!224 = distinct !{!224, !223, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!225 = distinct !{!225, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!226 = distinct !{!226, !225, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!227 = distinct !{!227, i1 false, !"_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index"}
!228 = distinct !{!228, !227, !"_RNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index: argument 0"}
!229 = distinct !{!229, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa"}
!230 = distinct !{!230, !229, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa: argument 0"}
!231 = distinct !{!231, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!232 = distinct !{!232, !231, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!233 = distinct !{!233, !231, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!234 = distinct !{!234, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!235 = distinct !{!235, !234, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!236 = distinct !{!236, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0E0CsC8CapfvpQ1_5salsa"}
!237 = distinct !{!237, !236, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0E0CsC8CapfvpQ1_5salsa: argument 0"}
!238 = distinct !{!238, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa"}
!239 = distinct !{!239, !238, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa: argument 1"}
!240 = distinct !{!240, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase"}
!241 = distinct !{!241, !240, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!242 = distinct !{!242, !238, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa: argument 0"}
!243 = distinct !{!243, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!244 = distinct !{!244, !243, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!245 = distinct !{!245, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!246 = distinct !{!246, !245, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!247 = distinct !{!247, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0ECsC8CapfvpQ1_5salsa"}
!248 = distinct !{!248, !247, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0ECsC8CapfvpQ1_5salsa: argument 0"}
!249 = distinct !{!249, i1 false, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!250 = distinct !{!250, !249, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!251 = distinct !{!251, !249, !"_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!252 = distinct !{!252, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!253 = distinct !{!253, !252, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!254 = distinct !{!254, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0E0CsC8CapfvpQ1_5salsa"}
!255 = distinct !{!255, !254, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner12update_index0E0CsC8CapfvpQ1_5salsa: argument 0"}
!256 = !{!199}
!257 = !{!202, !201, !199}
!258 = !{!205, !204, !199}
!259 = !{!207, !199}
!260 = !{!209}
!261 = !{!211}
!262 = !{!211, !209, !199}
!263 = !{!213, !212}
!264 = !{!213, !211, !209, !212, !199}
!265 = !{!215, !209, !212, !199}
!266 = !{!217}
!267 = !{!218, !209, !212, !199}
!268 = !{!220}
!269 = !{!222}
!270 = !{!224, !222, !220, !209, !212, !199}
!271 = !{!226, !222, !220, !209, !212, !199}
!272 = !{!222, !220, !209, !199}
!273 = !{!212}
!274 = !{!222, !220, !209, !212, !199}
!275 = !{!232, !230, !228, !199}
!276 = !{!233}
!277 = !{!228}
!278 = !{!230}
!279 = !{!232}
!280 = !{!235, !232, !233, !230, !228, !199}
!281 = !{!237, !232, !233, !230, !228, !199}
!282 = !{!239}
!283 = !{!241}
!284 = !{!244, !241, !242, !239, !228, !199}
!285 = !{!246, !241, !242, !239, !228, !199}
!286 = !{!241, !239, !228, !199}
!287 = !{!242}
!288 = !{!241, !242, !239, !228, !199}
!289 = !{!253, !251, !250, !248, !199}
!290 = !{!255, !251, !250, !248, !199}
!291 = distinct !{!291, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_"}
!292 = distinct !{!292, !291, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1X_: argument 0"}
!293 = distinct !{!293, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!294 = distinct !{!294, !293, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!295 = distinct !{!295, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsC8CapfvpQ1_5salsa"}
!296 = distinct !{!296, !295, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsC8CapfvpQ1_5salsa: argument 0"}
!297 = !{!292}
!298 = !{!294, !292}
!299 = !{!"branch_weights", i32 1, i32 4001}
!300 = !{!296}
!301 = !{!296, !292}
!302 = distinct !{!302, i1 false, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!303 = distinct !{!303, !302, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!304 = distinct !{!304, !302, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!305 = distinct !{!305, i1 false, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!306 = distinct !{!306, !305, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!307 = distinct !{!307, !305, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!308 = distinct !{!308, i1 false, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_"}
!309 = distinct !{!309, !308, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_: argument 0"}
!310 = distinct !{!310, !308, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_: argument 2"}
!311 = distinct !{!311, !308, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_: argument 1"}
!312 = distinct !{!312, i1 false, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!313 = distinct !{!313, !312, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!314 = distinct !{!314, !312, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!315 = distinct !{!315, i1 false, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!316 = distinct !{!316, !315, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!317 = distinct !{!317, !315, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!318 = distinct !{!318, i1 false, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_"}
!319 = distinct !{!319, !318, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 0"}
!320 = distinct !{!320, !318, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar7sort_byNCINvMs1_Bz_NtBz_5Zalsa3newNtNtBB_13database_impl12DatabaseImplE0E0BB_: argument 1"}
!321 = distinct !{!321, i1 false, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_"}
!322 = distinct !{!322, !321, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 0"}
!323 = distinct !{!323, !321, !"_RNCINvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB8_5Zalsa3newNtNtBa_13database_impl12DatabaseImplE0Ba_: argument 1"}
!324 = !{!303}
!325 = !{!304}
!326 = !{!306}
!327 = !{!307}
!328 = !{i8 0, i8 2}
!329 = !{!306, !303, !309}
!330 = !{!307, !304, !311, !310}
!331 = !{!307, !304, !309}
!332 = !{!306, !303, !311, !310}
!333 = !{!311, !310}
!334 = !{!313}
!335 = !{!314}
!336 = !{!316}
!337 = !{!317}
!338 = !{!316, !313, !309}
!339 = !{!317, !314, !311, !310}
!340 = !{!317, !314, !309}
!341 = !{!316, !313, !311, !310}
!342 = !{!319}
!343 = !{!320}
!344 = !{!322}
!345 = !{!323}
!346 = !{!322, !319, !309}
!347 = !{!323, !320, !311, !310}
!348 = !{!323, !320, !309}
!349 = !{!322, !319, !311, !310}
!350 = distinct !{!350, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2a_NtB2a_10QueryEdges12iter_outputs0ENvMsi_B2a_B28_3keyENCINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB46_8IndexSetNtNtB2c_3key16DatabaseKeyIndexINtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect12FromIteratorB4P_E9from_iterBW_E0ENtNtB6y_8iterator8Iterator9size_hintB2c_"}
!351 = distinct !{!351, !350, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2a_NtB2a_10QueryEdges12iter_outputs0ENvMsi_B2a_B28_3keyENCINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB46_8IndexSetNtNtB2c_3key16DatabaseKeyIndexINtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect12FromIteratorB4P_E9from_iterBW_E0ENtNtB6y_8iterator8Iterator9size_hintB2c_: argument 1"}
!352 = distinct !{!352, !350, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2a_NtB2a_10QueryEdges12iter_outputs0ENvMsi_B2a_B28_3keyENCINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB46_8IndexSetNtNtB2c_3key16DatabaseKeyIndexINtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect12FromIteratorB4P_E9from_iterBW_E0ENtNtB6y_8iterator8Iterator9size_hintB2c_: argument 0"}
!353 = distinct !{!353, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator9size_hintB28_"}
!354 = distinct !{!354, !353, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator9size_hintB28_: argument 1"}
!355 = distinct !{!355, !353, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator9size_hintB28_: argument 0"}
!356 = distinct !{!356, i1 false, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_"}
!357 = distinct !{!357, !356, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_: argument 1"}
!358 = distinct !{!358, !356, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_: argument 0"}
!359 = distinct !{!359, i1 false, !"_RNvMs1_NtCsffXo9NmvYC7_8indexmap3mapINtB5_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24with_capacity_and_hasherBR_"}
!360 = distinct !{!360, !359, !"_RNvMs1_NtCsffXo9NmvYC7_8indexmap3mapINtB5_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24with_capacity_and_hasherBR_: argument 0"}
!361 = distinct !{!361, i1 false, !"_RINvXsb_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB1D_4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB35_8adapters3map3MapIB3R_INtNtB3V_6filter6FilterINtNtB3V_6copied6CopiedINtNtNtB1D_5slice4iter4IterNtNtBS_11zalsa_local9QueryEdgeEENCNvMsm_B5A_NtB5A_10QueryEdges12iter_outputs0ENvMsi_B5A_B5y_3keyENCINvXs6_NtB8_3setINtB7g_8IndexSetBO_B1y_EINtB31_12FromIteratorBO_E9from_iterB4i_E0EEBS_"}
!362 = distinct !{!362, !361, !"_RINvXsb_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB1D_4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB35_8adapters3map3MapIB3R_INtNtB3V_6filter6FilterINtNtB3V_6copied6CopiedINtNtNtB1D_5slice4iter4IterNtNtBS_11zalsa_local9QueryEdgeEENCNvMsm_B5A_NtB5A_10QueryEdges12iter_outputs0ENvMsi_B5A_B5y_3keyENCINvXs6_NtB8_3setINtB7g_8IndexSetBO_B1y_EINtB31_12FromIteratorBO_E9from_iterB4i_E0EEBS_: argument 0"}
!363 = distinct !{!363, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2a_NtB2a_10QueryEdges12iter_outputs0ENvMsi_B2a_B28_3keyENCINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB46_8IndexSetNtNtB2c_3key16DatabaseKeyIndexINtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect12FromIteratorB4P_E9from_iterBW_E0ENtNtB6y_8iterator8Iterator9size_hintB2c_"}
!364 = distinct !{!364, !363, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2a_NtB2a_10QueryEdges12iter_outputs0ENvMsi_B2a_B28_3keyENCINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB46_8IndexSetNtNtB2c_3key16DatabaseKeyIndexINtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect12FromIteratorB4P_E9from_iterBW_E0ENtNtB6y_8iterator8Iterator9size_hintB2c_: argument 1"}
!365 = distinct !{!365, !363, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B2a_NtB2a_10QueryEdges12iter_outputs0ENvMsi_B2a_B28_3keyENCINvXs6_NtCsffXo9NmvYC7_8indexmap3setINtB46_8IndexSetNtNtB2c_3key16DatabaseKeyIndexINtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect12FromIteratorB4P_E9from_iterBW_E0ENtNtB6y_8iterator8Iterator9size_hintB2c_: argument 0"}
!366 = distinct !{!366, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator9size_hintB28_"}
!367 = distinct !{!367, !366, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator9size_hintB28_: argument 1"}
!368 = distinct !{!368, !366, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENvMsi_B26_B24_3keyENtNtNtB9_6traits8iterator8Iterator9size_hintB28_: argument 0"}
!369 = distinct !{!369, i1 false, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_"}
!370 = distinct !{!370, !369, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_: argument 1"}
!371 = distinct !{!371, !369, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_: argument 0"}
!372 = !{!358, !357, !355, !354, !352, !351}
!373 = !{!358, !355, !352}
!374 = !{!360}
!375 = !{!362}
!376 = !{!371, !370, !368, !367, !365, !364, !362}
!377 = distinct !{!377, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENCINvXs8_NtCsffXo9NmvYC7_8indexmap3setINtB3J_8IndexSetB24_INtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect6ExtendB24_E6extendBW_E0ENtNtB5L_8iterator8Iterator9size_hintB28_"}
!378 = distinct !{!378, !377, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENCINvXs8_NtCsffXo9NmvYC7_8indexmap3setINtB3J_8IndexSetB24_INtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect6ExtendB24_E6extendBW_E0ENtNtB5L_8iterator8Iterator9size_hintB28_: argument 1"}
!379 = distinct !{!379, !377, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B26_NtB26_10QueryEdges12iter_outputs0ENCINvXs8_NtCsffXo9NmvYC7_8indexmap3setINtB3J_8IndexSetB24_INtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtB9_6traits7collect6ExtendB24_E6extendBW_E0ENtNtB5L_8iterator8Iterator9size_hintB28_: argument 0"}
!380 = distinct !{!380, i1 false, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_"}
!381 = distinct !{!381, !380, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_: argument 1"}
!382 = distinct !{!382, !380, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B1Q_NtB1Q_10QueryEdges12iter_outputs0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_: argument 0"}
!383 = !{!382, !381, !379, !378}
!384 = !{!382, !379}
!385 = distinct !{!385, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE11insert_fullBO_"}
!386 = distinct !{!386, !385, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE11insert_fullBO_: argument 0"}
!387 = distinct !{!387, !385, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE11insert_fullBO_: argument 1"}
!388 = distinct !{!388, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB24_E0NCINvB1n_8get_hashB24_uE0EB28_"}
!389 = distinct !{!389, !388, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 0"}
!390 = distinct !{!390, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1M_"}
!391 = distinct !{!391, !390, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1M_: argument 0"}
!392 = distinct !{!392, !388, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 2"}
!393 = distinct !{!393, !388, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 1"}
!394 = distinct !{!394, !390, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1M_: argument 1"}
!395 = distinct !{!395, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!396 = distinct !{!396, !395, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!397 = distinct !{!397, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_"}
!398 = distinct !{!398, !397, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_: argument 0"}
!399 = distinct !{!399, i1 false, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_"}
!400 = distinct !{!400, !399, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_: argument 1"}
!401 = distinct !{!401, i1 false, !"_RNvXs12_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!402 = distinct !{!402, !401, !"_RNvXs12_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!403 = distinct !{!403, i1 false, !"_RNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuBL_E0BP_"}
!404 = distinct !{!404, !403, !"_RNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuBL_E0BP_: argument 0"}
!405 = distinct !{!405, !399, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBs_E10equivalentBw_: argument 0"}
!406 = distinct !{!406, !401, !"_RNvXs12_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!407 = distinct !{!407, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsC8CapfvpQ1_5salsa"}
!408 = distinct !{!408, !407, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsC8CapfvpQ1_5salsa: argument 0"}
!409 = distinct !{!409, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE10push_entryBO_"}
!410 = distinct !{!410, !409, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE10push_entryBO_: argument 0"}
!411 = distinct !{!411, !409, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE10push_entryBO_: argument 1"}
!412 = distinct !{!412, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE15reserve_entriesBO_"}
!413 = distinct !{!413, !412, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE15reserve_entriesBO_: argument 0"}
!414 = distinct !{!414, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE8push_mutB1f_"}
!415 = distinct !{!415, !414, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE8push_mutB1f_: argument 0"}
!416 = distinct !{!416, !414, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE8push_mutB1f_: argument 1"}
!417 = !{!386}
!418 = !{!387}
!419 = !{!391, !389, !386}
!420 = !{!394, !393, !392, !387}
!421 = !{!393, !387}
!422 = !{!389, !386}
!423 = !{!393, !392, !387}
!424 = !{!396, !393, !387}
!425 = !{!398, !393, !387}
!426 = !{!402, !400}
!427 = !{!406, !405, !404, !398, !393, !387}
!428 = !{!404, !398, !393, !387}
!429 = !{!408, !387}
!430 = !{!408}
!431 = !{!408, !386}
!432 = !{!410, !386}
!433 = !{!411, !387}
!434 = !{!413, !410, !386}
!435 = !{!415, !410, !386}
!436 = !{!416, !411, !387}
!437 = distinct !{!437, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE11insert_fullBO_"}
!438 = distinct !{!438, !437, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE11insert_fullBO_: argument 0"}
!439 = distinct !{!439, !437, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE11insert_fullBO_: argument 1"}
!440 = distinct !{!440, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB24_E0NCINvB1n_8get_hashB24_uE0EB28_"}
!441 = distinct !{!441, !440, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 0"}
!442 = distinct !{!442, i1 false, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE0EB1M_"}
!443 = distinct !{!443, !442, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE0EB1M_: argument 0"}
!444 = distinct !{!444, !440, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 2"}
!445 = distinct !{!445, !440, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 1"}
!446 = distinct !{!446, !442, !"_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE0EB1M_: argument 1"}
!447 = distinct !{!447, i1 false, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!448 = distinct !{!448, !447, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!449 = distinct !{!449, i1 false, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_"}
!450 = distinct !{!450, !449, !"_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_: argument 0"}
!451 = distinct !{!451, i1 false, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_"}
!452 = distinct !{!452, !451, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_: argument 1"}
!453 = distinct !{!453, i1 false, !"_RNvXs4_NtCsC8CapfvpQ1_5salsa3keyNtB5_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq"}
!454 = distinct !{!454, !453, !"_RNvXs4_NtCsC8CapfvpQ1_5salsa3keyNtB5_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 1"}
!455 = distinct !{!455, i1 false, !"_RNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuBL_E0BP_"}
!456 = distinct !{!456, !455, !"_RNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuBL_E0BP_: argument 0"}
!457 = distinct !{!457, !451, !"_RNvXCsiwaX7x13T3L_10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBs_E10equivalentBw_: argument 0"}
!458 = distinct !{!458, !453, !"_RNvXs4_NtCsC8CapfvpQ1_5salsa3keyNtB5_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq: argument 0"}
!459 = distinct !{!459, i1 false, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsC8CapfvpQ1_5salsa"}
!460 = distinct !{!460, !459, !"_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsC8CapfvpQ1_5salsa: argument 0"}
!461 = distinct !{!461, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE10push_entryBO_"}
!462 = distinct !{!462, !461, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE10push_entryBO_: argument 0"}
!463 = distinct !{!463, !461, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE10push_entryBO_: argument 1"}
!464 = distinct !{!464, i1 false, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE15reserve_entriesBO_"}
!465 = distinct !{!465, !464, !"_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE15reserve_entriesBO_: argument 0"}
!466 = distinct !{!466, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE8push_mutB1f_"}
!467 = distinct !{!467, !466, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE8push_mutB1f_: argument 0"}
!468 = distinct !{!468, !466, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE8push_mutB1f_: argument 1"}
!469 = !{!438}
!470 = !{!439}
!471 = !{!443, !441, !438}
!472 = !{!446, !445, !444, !439}
!473 = !{!445, !439}
end_hunk_1
