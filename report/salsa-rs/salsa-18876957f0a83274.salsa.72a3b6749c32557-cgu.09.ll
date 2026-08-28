Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.09?download=true
inline.NumInlined: 236
inline.NumDeleted: 126
begin_hunk_0_@_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE11swap_removeBO_EBS_:bb.a
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.val2.i.i.i.i.i = load i64, ptr %i.aj, align 8, !noalias !95, !noundef !3
  %i.ak = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i, label %bb.f, !prof !98

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.g, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit, !prof !50

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.05.0.i33.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.05.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i.i.i.i, %i.aq
  br label %bb.e

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.at = add nsw i64 %i.ag, -16
  %i.au = and i64 %i.at, %i.w
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i.i = load <16 x i8>, ptr %i.av, align 1, !noalias !105
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i.i, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %.sroa.0.0.copyload.i926.i.i.i.i.i = load <16 x i8>, ptr %i.as, align 1, !noalias !109
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ax, i1 false)
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 false)
  %narrow.i.i.i.i.i = add nuw nsw i16 %i.bb, %i.ba
  %i.bc = icmp samesign ugt i16 %narrow.i.i.i.i.i, 15
  br i1 %i.bc, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !112, !noalias !113, !noundef !3
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !112, !noalias !113
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %bb.h, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ -1, %bb.h ], [ -128, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCNvNtCsffXo9NmvYC7_8indexmap5inner11erase_index0ECsC8CapfvpQ1_5salsa.exit.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.as, align 1, !noalias !114
  %i.bg = getelementptr i8, ptr %i.av, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.bg, align 1, !noalias !114
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !112, !noalias !113, !noundef !3
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8, !alias.scope !112, !noalias !113
  br label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

bb.i:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1), !noalias !115 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !121, !noalias !122, !nonnull !3, !noundef !3 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.bp = lshr i64 %i.bl, 57
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !130, !noalias !131, !noundef !3 ; 5 uses
  %i.bt = load ptr, ptr %i.bo, align 8, !alias.scope !130, !noalias !131, !nonnull !3, !noundef !3 ; 6 uses
  %i.bu = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.bv = shufflevector <16 x i8> %i.bu, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !134, !noalias !135
  %i.by = load i32, ptr %1, align 4, !range !72, !alias.scope !134, !noalias !135
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !134, !noalias !135
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.db, %bb.n ]
  %.pn.i.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %i.dc, %bb.n ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bs ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !136 ; 2 uses
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.bv
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.not39.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.not39.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i
  %.sroa.05.0.i40.i.i.i = phi i16 [ %i.da, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i ], [ %i.cd, %bb.j ] ; 3 uses
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i40.i.i.i, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = add i64 %.sroa.01.0.i.i.i.i, %i.cf
  %i.ch = and i64 %i.cg, %i.bs                    ; 3 uses
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ck, align 8, !noalias !139, !noundef !3 ; 3 uses
  %i.cl = icmp ult i64 %.val.i.i.i.i, %i.b
  br i1 %i.cl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.val.i.i.i.i ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !alias.scope !142, !noalias !147, !noundef !3
  %i.cp = icmp eq i32 %i.bx, %i.co
  br i1 %i.cp, label %bb.l, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !47

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !range !72, !alias.scope !142, !noalias !147, !noundef !3
  %i.cs = icmp eq i32 %i.by, %i.cr
  br i1 %i.cs, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !47

bb.m:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !noalias !152
  unreachable

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.i.i.i: ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !alias.scope !142, !noalias !147, !noundef !3
  %i.cv = icmp eq i32 %i.ca, %i.cu
  br i1 %i.cv, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i, label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, !prof !49

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1K_E0E0B1O_.exit.thread.i.i.i, %bb.j
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit, !prof !50

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ch ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.df = add nsw i64 %i.ch, -16
  %i.dg = and i64 %i.df, %i.bs
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.dh, align 1, !noalias !159
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.dj = bitcast <16 x i1> %i.di to i16
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.de, align 1, !noalias !163
  %i.dk = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.dj, i1 false)
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dl, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.dn, %i.dm
  %i.do = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.do, label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !166, !noalias !167, !noundef !3
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.dp, align 8, !alias.scope !166, !noalias !167
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.o, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.o ], [ -128, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCsffXo9NmvYC7_8indexmap5inner10equivalentNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuB1I_E0EB1M_.exit.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.de, align 1, !noalias !168
  %i.ds = getelementptr i8, ptr %i.dh, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ds, align 1, !noalias !168
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !166, !noalias !167, !noundef !3
  %i.dv = add i64 %i.du, -1
  store i64 %i.dv, ptr %i.dt, align 8, !alias.scope !166, !noalias !167
  %i.dw = load i64, ptr %i.dd, align 8, !noalias !169, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.dx = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.dx)
  %.not.i.i.i.i = icmp ult i64 %i.dw, %i.b
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i, label %bb.p, !prof !98

bb.p:                                             ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.dw, i64 noundef %i.b) #23, !noalias !176
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i: ; preds = %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE13remove_taggedCsC8CapfvpQ1_5salsa.exit.i.i
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.dw ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !179 ; 2 uses
  %i.dz = add nsw i64 %i.b, -1                    ; 4 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.dz
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false), !noalias !176
  store i64 %i.dz, ptr %i.a, align 8, !alias.scope !180, !noalias !181
  %i.eb = icmp samesign ult i64 %i.dw, %i.dz
  br i1 %i.eb, label %bb.q, label %_RINvMs3_NtCsffXo9NmvYC7_8indexmap3mapINtB6_8IndexMapNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE16swap_remove_fullBO_EBS_.exit

bb.q:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE11swap_removeB1e_.exit.i.i.i
  %i.ec = load i64, ptr %i.dy, align 8, !noalias !182, !noundef !3 ; 2 uses
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
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.eh, align 1, !noalias !183 ; 2 uses
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
  %.val2.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !191, !noundef !3
  %i.er = icmp eq i64 %.val2.i.i.i.i.i.i, %i.dz
  br i1 %i.er, label %_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i, label %bb.s, !prof !98

._crit_edge.i.i.i.i.i:                            ; preds = %bb.s, %bb.r
  %i.es = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.et = bitcast <16 x i1> %i.es to i16
  %i.eu = icmp eq i16 %i.et, 0
  br i1 %i.eu, label %bb.t, label %bb.u, !prof !50

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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !182
  unreachable

_RNvNtCsffXo9NmvYC7_8indexmap5inner12update_index.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ez = getelementptr inbounds i8, ptr %i.ep, i64 -8
  store i64 %i.dw, ptr %i.ez, align 8, !noalias !182
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !194, !nonnull !3, !noundef !3 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.f, %i.b
  br i1 %.not.i.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !noalias !197
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.j = sub nuw nsw i64 %i.b, %i.f               ; 2 uses
  %.not.i5.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i5.i, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i, !prof !50

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !201
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit9.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE8split_atB15_.exit.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.l = sub nuw nsw i64 %i.f, %i.e               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !194, !noundef !3 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !194, !noundef !3 ; 3 uses
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
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !205, !noundef !3 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.m, align 8, !alias.scope !205, !nonnull !3, !noundef !3
  %i.af = add i64 %i.ac, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 -1, i64 %i.af, i1 false)
  %.pre.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !205
  %.pre.fr.i.i.i.i.i = freeze i64 %.pre.i.i.i.i.i ; 3 uses
  %i.ag = icmp ult i64 %.pre.fr.i.i.i.i.i, 8
  %i.ah = add i64 %.pre.fr.i.i.i.i.i, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %spec.select.i.i.i.i.i = select i1 %i.ag, i64 %.pre.fr.i.i.i.i.i, i64 %i.aj
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !205, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !205, !nonnull !3, !noundef !3
  %i.ao = add i64 %i.al, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 -1, i64 %i.ao, i1 false)
  %.pre.i.i.i2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !205
  %.pre.fr.i.i.i3.i.i = freeze i64 %.pre.i.i.i2.i.i ; 3 uses
  %i.ap = icmp ult i64 %.pre.fr.i.i.i3.i.i, 8
  %i.aq = add i64 %.pre.fr.i.i.i3.i.i, 1
  %i.ar = lshr i64 %i.aq, 3
  %i.as = mul nuw i64 %i.ar, 7
  %spec.select.i.i.i4.i.i = select i1 %i.ap, i64 %.pre.fr.i.i.i3.i.i, i64 %i.as
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i: ; preds = %bb.k, %bb.j
  %i.at = phi i64 [ %spec.select.i.i.i4.i.i, %bb.k ], [ 0, %bb.j ]
  store i64 0, ptr %i.n, align 8, !alias.scope !205
  store i64 %i.at, ptr %i.p, align 8, !alias.scope !205
  br label %_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i64 [ %spec.select.i.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  store i64 0, ptr %i.n, align 8, !alias.scope !205
  store i64 %i.au, ptr %i.p, align 8, !alias.scope !205
  resume { ptr, i32 } %i.aa

_RNvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB5_8RawTablejE5clearCsC8CapfvpQ1_5salsa.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTablejENCNvMs6_B1w_B1t_5clear0EECsC8CapfvpQ1_5salsa.exit5.i.i, %bb.f
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.e)
  tail call fastcc void @_RINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEBW_(ptr noalias noundef align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef %i.j)
  br label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit

bb.m:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = icmp eq i64 %i.o, 0
  br i1 %i.aw, label %_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indicesBO_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !214, !noalias !215, !nonnull !3, !noundef !3 ; 6 uses
  %.val24.i.i.i = load <16 x i8>, ptr %i.ax, align 16, !noalias !218
  %i.ay = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = ptrtoint ptr %i.ax to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i.i
  %i.bc = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.cn, %bb.q ] ; 4 uses
  %.sroa.14.015.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.bo, %bb.q ]
  %.sroa.10.014.i.i = phi i16 [ %i.az, %.lr.ph.i.i ], [ %i.bl, %bb.q ] ; 2 uses
  %.sroa.6.013.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.q ] ; 2 uses
  %.sroa.07.012.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.sroa.07.1.i.i, %bb.q ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %i.bd = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %.sroa.6.013.i.i, %bb.n ] ; 2 uses
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.sroa.07.012.i.i, %bb.n ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !219
  %i.bf = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.bf to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i

_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.n
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.012.i.i, %bb.n ], [ %i.bg, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.013.i.i, %bb.n ], [ %i.bh, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.014.i.i, %bb.n ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bi = add i16 %.lcssa.i.i.i, -1
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = and i16 %i.bi, %.lcssa.i.i.i
  %i.bm = sub nsw i64 0, %i.bk
  %i.bn = getelementptr inbounds [8 x i8], ptr %.sroa.07.1.i.i, i64 %i.bm ; 2 uses
  %i.bo = add i64 %.sroa.14.015.i.i, -1           ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !222, !noalias !225, !noundef !3 ; 3 uses
  %.not.i5.i.i = icmp ult i64 %i.bq, %i.f
  br i1 %.not.i5.i.i, label %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i, label %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i

_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.thread.i.i: ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.br = sub nuw i64 %i.bq, %i.l
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !222, !noalias !225
  br label %bb.q

_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i: ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECsC8CapfvpQ1_5salsa.exit.i.i
  %i.bs = icmp ult i64 %i.bq, %i.e
  br i1 %i.bs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_RNCNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB6_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE13erase_indices0BQ_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.1.i.i) ]
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = sub i64 %i.bb, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.bw = add nsw i64 %i.bv, -16
  %i.bx = load i64, ptr %i.av, align 8, !alias.scope !233, !noalias !234, !noundef !3
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.bz, align 1, !noalias !235
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bv ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !238
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
end_hunk_0
