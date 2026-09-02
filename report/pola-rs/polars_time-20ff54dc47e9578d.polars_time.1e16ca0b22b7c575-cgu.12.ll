Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_time-20ff54dc47e9578d.polars_time.1e16ca0b22b7c575-cgu.12?download=true
inline.NumInlined: 3556
inline.NumDeleted: 1567
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashRSB1B_E0Cs2Aa799EbAFJ_11polars_time:bb.a
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.ag, !dbg !30857 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30858), !dbg !30861
  call void @llvm.experimental.noalias.scope.decl(metadata !30865), !dbg !30861
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !30867
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !30867, !alias.scope !30858, !noalias !30874, !noundef !13
  %i.al = icmp eq i64 %i.ak, 0, !dbg !30875
  br i1 %i.al, label %select.unfold.i.i.i.i, label %bb.g, !dbg !30875

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32, !dbg !30876
  %i.an = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.d, !dbg !30877 ; 3 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !30880), !dbg !30883
  call void @llvm.experimental.noalias.scope.decl(metadata !30887), !dbg !30883
  call void @llvm.experimental.noalias.scope.decl(metadata !30889), !dbg !30892
  %i.ao = lshr i64 %i.an, 57, !dbg !30895
  %i.ap = trunc nuw nsw i64 %i.ao to i8, !dbg !30898
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !30899
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !30899, !alias.scope !30901, !noalias !30902, !noundef !13 ; 4 uses
  %i.as = load ptr, ptr %i.ai, align 8, !alias.scope !30901, !noalias !30902, !nonnull !13, !noundef !13 ; 4 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !alias.scope !30904, !noalias !30905
  %.fr.i.i.i.i.i.i = freeze ptr %i.av             ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i.i.i, null
  %i.aw = load i64, ptr %i.u, align 8, !alias.scope !30904, !noalias !30905 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.split39.us.i.i.i.i.i.i, label %.split39.i.i.i.i.i.i

.split39.us.i.i.i.i.i.i:                          ; preds = %.noexc, %bb.h
  %.sroa.011.0.i.us.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.h ], [ 0, %.noexc ], !dbg !30906
  %.pn.i.us.i.i.i.i.i.i = phi i64 [ %i.be, %bb.h ], [ %i.an, %.noexc ]
  %.sroa.01.0.i.us.i.i.i.i.i.i = and i64 %.pn.i.us.i.i.i.i.i.i, %i.ar, !dbg !30906 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.us.i.i.i.i.i.i, !dbg !30907
  %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 1, !dbg !30910, !noalias !30914 ; 2 uses
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, %i.au, !dbg !30917
  %i.az = bitcast <16 x i1> %i.ay to i16, !dbg !30920 ; 2 uses
  %.not.i.not33.us.i.i.i.i.i.i = icmp eq i16 %i.az, 0, !dbg !30922
  br i1 %.not.i.not33.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i, !dbg !30925

._crit_edge.split.us.us.i.i.i.i.i.i:              ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i, %.split39.us.i.i.i.i.i.i
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, splat (i8 -1), !dbg !30926
  %i.bb = bitcast <16 x i1> %i.ba to i16, !dbg !30930
  %i.bc = icmp eq i16 %i.bb, 0, !dbg !30932
  br i1 %i.bc, label %bb.h, label %select.unfold.i.i.i.i, !dbg !30932, !prof !39

bb.h:                                             ; preds = %._crit_edge.split.us.us.i.i.i.i.i.i
  %i.bd = add i64 %.sroa.011.0.i.us.i.i.i.i.i.i, 16, !dbg !30934 ; 2 uses
  %i.be = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bd, !dbg !30936
  br label %.split39.us.i.i.i.i.i.i, !dbg !30937

.lr.ph.us.i.i.i.i.i.i:                            ; preds = %.split39.us.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i
  %.sroa.05.0.i34.us.us.i.i.i.i.i.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i ], [ %i.az, %.split39.us.i.i.i.i.i.i ] ; 3 uses
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.us.us.i.i.i.i.i.i, i1 true), !dbg !30938
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !30941
  %i.bh = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bg, !dbg !30942
  %i.bi = and i64 %i.bh, %i.ar, !dbg !30942
  %i.bj = sub nsw i64 0, %i.bi, !dbg !30943
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.as, i64 %i.bj, !dbg !30952 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30953), !dbg !30956, !noalias !30957
  call void @llvm.experimental.noalias.scope.decl(metadata !30958), !dbg !30961, !noalias !30957
  call void @llvm.experimental.noalias.scope.decl(metadata !30964), !dbg !30967, !noalias !30957
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !30970
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !30970, !alias.scope !30974, !noalias !30975, !noundef !13
  %i.bn = icmp eq i64 %.val6.i.i.i.i, %i.bm, !dbg !30980
  br i1 %i.bn, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i, !dbg !30980, !prof !373

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i: ; preds = %.lr.ph.us.i.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -24, !dbg !30981
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !30987, !alias.scope !30974, !noalias !30975, !noundef !13
  %i.bq = icmp eq ptr %i.bp, null, !dbg !30987
  br i1 %i.bq, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i, !dbg !30991, !prof !389

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i, %.lr.ph.us.i.i.i.i.i.i
  %i.br = add i16 %.sroa.05.0.i34.us.us.i.i.i.i.i.i, -1, !dbg !30993
  %i.bs = and i16 %i.br, %.sroa.05.0.i34.us.us.i.i.i.i.i.i, !dbg !30995 ; 2 uses
  %.not.i.not.us.us.i.i.i.i.i.i = icmp eq i16 %i.bs, 0, !dbg !30922
  br i1 %.not.i.not.us.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i, !dbg !30925

.split39.i.i.i.i.i.i:                             ; preds = %.noexc, %bb.k
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ %i.cr, %bb.k ], [ 0, %.noexc ], !dbg !30906
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.k ], [ %i.an, %.noexc ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.ar, !dbg !30906 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !30907
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i = load <16 x i8>, ptr %i.bt, align 1, !dbg !30910, !noalias !30914 ; 2 uses
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, %i.au, !dbg !30917
  %i.bv = bitcast <16 x i1> %i.bu to i16, !dbg !30920 ; 2 uses
  %.not.i.not33.i.i.i.i.i.i = icmp eq i16 %i.bv, 0, !dbg !30922
  br i1 %.not.i.not33.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !30925

.lr.ph.i.i.i.i.i.i:                               ; preds = %.split39.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i
  %.sroa.05.0.i34.i.i.i.i.i.i = phi i16 [ %i.cq, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i ], [ %i.bv, %.split39.i.i.i.i.i.i ] ; 3 uses
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i.i.i.i.i, i1 true), !dbg !30938
  %i.bx = zext nneg i16 %i.bw to i64, !dbg !30941
  %i.by = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bx, !dbg !30942
  %i.bz = and i64 %i.by, %i.ar, !dbg !30942
  %i.ca = sub nsw i64 0, %i.bz, !dbg !30943
  %i.cb = getelementptr inbounds [24 x i8], ptr %i.as, i64 %i.ca, !dbg !30952 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30953), !dbg !30956, !noalias !30957
  call void @llvm.experimental.noalias.scope.decl(metadata !30958), !dbg !30961, !noalias !30957
  call void @llvm.experimental.noalias.scope.decl(metadata !30964), !dbg !30967, !noalias !30957
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8, !dbg !30970
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !30970, !alias.scope !30974, !noalias !30975, !noundef !13
  %i.ce = icmp eq i64 %.val6.i.i.i.i, %i.cd, !dbg !30980
  br i1 %i.ce, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, !dbg !30980, !prof !373

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -24, !dbg !30981
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !30987, !alias.scope !30974, !noalias !30975, !noundef !13 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null, !dbg !30987
  br i1 %i.ch, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, label %bb.j, !dbg !30997

bb.j:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 -16, !dbg !30987
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !30998, !alias.scope !30974, !noalias !30975, !noundef !13
  %i.ck = icmp eq i64 %i.aw, %i.cj, !dbg !31002
  br i1 %i.ck, label %.split.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, !dbg !31002, !prof !373

.split.i.i.i.i.i.i:                               ; preds = %bb.j
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.fr.i.i.i.i.i.i, ptr nonnull %i.cg, i64 %i.aw), !dbg !31006, !noalias !31010
  %i.cl = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0, !dbg !31006
  br i1 %i.cl, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, !dbg !30991, !prof !389

._crit_edge.split.i.i.i.i.i.i:                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, %.split39.i.i.i.i.i.i
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, splat (i8 -1), !dbg !30926
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !30930
  %i.co = icmp eq i16 %i.cn, 0, !dbg !30932
  br i1 %i.co, label %bb.k, label %select.unfold.i.i.i.i, !dbg !30932, !prof !39

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %bb.j, %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.cp = add i16 %.sroa.05.0.i34.i.i.i.i.i.i, -1, !dbg !30993
  %i.cq = and i16 %i.cp, %.sroa.05.0.i34.i.i.i.i.i.i, !dbg !30995 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.cq, 0, !dbg !30922
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !30925

bb.k:                                             ; preds = %._crit_edge.split.i.i.i.i.i.i
  %i.cr = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !30934 ; 2 uses
  %i.cs = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.cr, !dbg !30936
  br label %.split39.i.i.i.i.i.i, !dbg !30937

.loopexit.i.i.i.i:                                ; preds = %.split.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i
  %i.ct = load i64, ptr %i.p, align 8, !dbg !31011, !alias.scope !31016, !noalias !30802, !noundef !13 ; 3 uses
  %i.cu = load i64, ptr %i.b, align 8, !dbg !31019, !range !64, !alias.scope !31016, !noalias !30802, !noundef !13
  %i.cv = icmp eq i64 %i.ct, %i.cu, !dbg !31022
  br i1 %i.cv, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31022

select.unfold.i.i.i.i:                            ; preds = %._crit_edge.split.i.i.i.i.i.i, %._crit_edge.split.us.us.i.i.i.i.i.i, %bb.f
  %i.cw = load i64, ptr %i.p, align 8, !dbg !31023, !alias.scope !31026, !noalias !30802, !noundef !13 ; 3 uses
  %i.cx = load i64, ptr %i.b, align 8, !dbg !31029, !range !64, !alias.scope !31026, !noalias !30802, !noundef !13
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !31032
  br i1 %i.cy, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31032

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink28.ph.i = phi i64 [ %i.ct, %.loopexit.i.i.i.i ], [ %i.cw, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.d, !dbg !31033

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink28.i = phi i64 [ %i.ct, %.loopexit.i.i.i.i ], [ %i.cw, %select.unfold.i.i.i.i ], [ %.sink28.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.cz = load ptr, ptr %i.o, align 8, !dbg !31036, !noalias !30802, !nonnull !13, !noundef !13
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sink28.i, !dbg !31041 ; 2 uses
  store i32 %i.ac, ptr %i.da, align 4, !dbg !31043, !noalias !30802
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4, !dbg !31043
  store i8 %.sink.i13, ptr %i.db, align 4, !dbg !31043, !noalias !30802
  %storemerge.i = add i64 %.sink28.i, 1, !dbg !31045
  store i64 %storemerge.i, ptr %i.p, align 8, !dbg !31045, !noalias !30802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31046, !noalias !30802
  %i.dc = add nuw i64 %i.z, 1, !dbg !31047        ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %i.e, !dbg !31049
  br i1 %i.dd, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1L_8adapters9enumerateINtB2A_9EnumeratepEB1F_4fold9enumerateRBQ_uNCINvNvB1F_8for_each4callTjB3D_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3D_RSBQ_E00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.f, !dbg !31049

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1L_8adapters9enumerateINtB2A_9EnumeratepEB1F_4fold9enumerateRBQ_uNCINvNvB1F_8for_each4callTjB3D_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3D_RSBQ_E00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !31050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !30800
  ret void, !dbg !31051

bb.l:                                             ; preds = %bb.d
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !31052
  unreachable, !dbg !31052

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n, !dbg !31052
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRdRSdE0Cs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !31053 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = load ptr, ptr %2, align 8, !dbg !31054, !nonnull !13, !align !1022, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !31054
  %i.e = load i64, ptr %i.d, align 8, !dbg !31054, !noundef !13 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !31055
  %i.g = load i64, ptr %i.f, align 8, !dbg !31055, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31056
  %i.h = shl nuw nsw i64 %i.e, 3, !dbg !31060     ; 2 uses
  %.not.i = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %.not.i, label %bb.d, label %bb.b, !dbg !31074, !prof !26912

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.e, 0, !dbg !31076
  br i1 %i.i, label %.thread, label %bb.c, !dbg !31076

.thread:                                          ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !dbg !31077
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !31077
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8, !dbg !31077
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !31077
  store i64 0, ptr %i.k, align 8, !dbg !31077
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, !dbg !31078

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !31087, !noalias !31088
  %i.l = tail call noundef align 4 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #37, !dbg !31091, !noalias !31088 ; 2 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !31096
  br i1 %i.m, label %bb.d, label %bb.f, !dbg !31097

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10.0.ph = phi i64 [ %i.h, %bb.c ], [ undef, %bb.a ]
  %.sroa.419.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %.sroa.10.0.ph) #33, !dbg !31098
  unreachable

bb.e:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.n unwind label %bb.m, !dbg !31100

bb.f:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.b, align 8, !dbg !31077
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !31077 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !dbg !31077
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !31077 ; 4 uses
  store i64 0, ptr %i.p, align 8, !dbg !31077
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !31101
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.r, align 8, !noalias !31102, !nonnull !13, !noundef !13
  %i.u = load i64, ptr %i.s, align 8, !noalias !31102, !noundef !13
  %i.v = load i64, ptr %i.q, align 8, !noalias !31102, !noundef !13
  %i.w = zext i64 %i.v to i128
  br label %bb.g, !dbg !31112

bb.g:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.f
  %i.x = phi i64 [ 0, %bb.f ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ]
  %i.y = phi i64 [ 0, %bb.f ], [ %i.cb, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y, !dbg !31116
  %.val.i = load double, ptr %i.z, align 8, !dbg !31120, !alias.scope !31121, !noalias !31124, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31126, !noalias !31102
  store double %.val.i, ptr %i.a, align 8, !dbg !31134, !noalias !31102
  %i.aa = add i64 %i.y, %i.g, !dbg !31135
  %i.ab = trunc i64 %i.aa to i32, !dbg !31135
  %i.ac = fadd double %.val.i, 0.000000e+00, !dbg !31137
  %i.ad = fcmp uno double %.val.i, 0.000000e+00, !dbg !31146 ; 2 uses
  %i.ae = bitcast double %i.ac to i64, !dbg !31153
  %i.af = mul i64 %i.ae, 6195824352614963433, !dbg !31156
  %i.ag = zext i64 %i.af to i128, !dbg !31162
  %i.ah = select i1 %i.ad, i128 13310388698693500928, i128 %i.ag, !dbg !31165
  %i.ai = mul nuw i128 %i.ah, %i.w, !dbg !31166
  %i.aj = lshr i128 %i.ai, 64, !dbg !31167
  %i.ak = trunc nuw i128 %i.aj to i64, !dbg !31167 ; 2 uses
  %i.al = icmp ugt i64 %i.u, %i.ak, !dbg !31168
  call void @llvm.assume(i1 %i.al), !dbg !31173
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.ak, !dbg !31174 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !31175
  %i.ao = load i64, ptr %i.an, align 8, !dbg !31175, !alias.scope !31185, !noalias !31188, !noundef !13
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !31190
  br i1 %i.ap, label %select.unfold.i.i.i.i, label %bb.h, !dbg !31190

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !31191
  %i.ar = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.e, !dbg !31192 ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !31195), !dbg !31198
  call void @llvm.experimental.noalias.scope.decl(metadata !31202), !dbg !31205
  %i.as = lshr i64 %i.ar, 57, !dbg !31208
  %i.at = trunc nuw nsw i64 %i.as to i8, !dbg !31211
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !31212
  %i.av = load i64, ptr %i.au, align 8, !dbg !31212, !alias.scope !31214, !noalias !31215, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.am, align 8, !alias.scope !31214, !noalias !31215, !nonnull !13, !noundef !13 ; 2 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i, !dbg !31218

bb.i:                                             ; preds = %bb.k, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bq, %bb.k ], !dbg !31219
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc ], [ %i.br, %bb.k ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.av, !dbg !31219 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !31220
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.az, align 1, !dbg !31223, !noalias !31227 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.ay, !dbg !31230
  %i.bb = bitcast <16 x i1> %i.ba to i16, !dbg !31233 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bb, 0, !dbg !31235
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !31238

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bp, %bb.j ], [ %i.bb, %bb.i ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !31239
  %i.bd = zext nneg i16 %i.bc to i64, !dbg !31242
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bd, !dbg !31243
  %i.bf = and i64 %i.be, %i.av, !dbg !31243
  %i.bg = sub nsw i64 0, %i.bf, !dbg !31244
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bg, !dbg !31253
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8, !dbg !31254
  %.val2.i.i.i.i.i.i.i = load double, ptr %i.bi, align 8, !dbg !31260, !noalias !31261 ; 2 uses
  %i.bj = fcmp uno double %.val2.i.i.i.i.i.i.i, 0.000000e+00, !dbg !31264
  %i.bk = fcmp oeq double %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !31264
  %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i = select i1 %i.ad, i1 %i.bj, i1 %i.bk, !dbg !31264
  br i1 %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.j, !dbg !31272, !prof !6363

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %bb.i
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !31274
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !31278
  %i.bn = icmp eq i16 %i.bm, 0, !dbg !31280
  br i1 %i.bn, label %bb.k, label %select.unfold.i.i.i.i.loopexit, !dbg !31280, !prof !39

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bo = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !31282
  %i.bp = and i16 %i.bo, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !31284 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bp, 0, !dbg !31235
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !31238

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bq = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !31286 ; 2 uses
  %i.br = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bq, !dbg !31288
  br label %bb.i, !dbg !31218

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.p, align 8, !dbg !31289, !alias.scope !31294, !noalias !31102, !noundef !13 ; 3 uses
  %i.bt = load i64, ptr %i.b, align 8, !dbg !31297, !range !64, !alias.scope !31294, !noalias !31102, !noundef !13
  %i.bu = icmp eq i64 %i.bs, %i.bt, !dbg !31300
  br i1 %i.bu, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31300

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.p, align 8, !dbg !31301, !alias.scope !31304, !noalias !31102
  br label %select.unfold.i.i.i.i, !dbg !31301

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.g
  %i.bv = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.x, %bb.g ], !dbg !31301 ; 3 uses
  %i.bw = load i64, ptr %i.b, align 8, !dbg !31307, !range !64, !alias.scope !31304, !noalias !31102, !noundef !13
  %i.bx = icmp eq i64 %i.bv, %i.bw, !dbg !31310
  br i1 %i.bx, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31310

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.l
  %.sink18.ph.i = phi i64 [ %i.bs, %bb.l ], [ %i.bv, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.e, !dbg !31311

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.l
  %.sink18.i = phi i64 [ %i.bs, %bb.l ], [ %i.bv, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.by = load ptr, ptr %i.o, align 8, !dbg !31314, !noalias !31102, !nonnull !13, !noundef !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sink18.i, !dbg !31319 ; 2 uses
  store i32 %i.ab, ptr %i.bz, align 4, !dbg !31321, !noalias !31102
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !31321
  store i8 %.sink.i13, ptr %i.ca, align 4, !dbg !31321, !noalias !31102
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !31323 ; 2 uses
  store i64 %storemerge.i, ptr %i.p, align 8, !dbg !31323, !noalias !31102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31324, !noalias !31102
  %i.cb = add nuw i64 %i.y, 1, !dbg !31325        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.e, !dbg !31327
  br i1 %i.cc, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.g, !dbg !31327

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !31328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31100
  ret void, !dbg !31329

bb.m:                                             ; preds = %bb.e
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !31330
  unreachable, !dbg !31330

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n, !dbg !31330
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRfRSfE0Cs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !31331 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %2, align 8, !dbg !31332, !nonnull !13, !align !5197, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !31332
  %i.e = load i64, ptr %i.d, align 8, !dbg !31332, !noundef !13 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !31333
  %i.g = load i64, ptr %i.f, align 8, !dbg !31333, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31334
  %i.h = shl i64 %i.e, 3, !dbg !31338             ; 4 uses
  %i.i = icmp ugt i64 %i.e, 2305843009213693951, !dbg !31338
  %.not.i = icmp ugt i64 %i.h, 9223372036854775804
end_hunk_0
begin_hunk_1_@_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRtRStE0Cs2Aa799EbAFJ_11polars_time:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32439
  %i.h = shl i64 %i.e, 3, !dbg !32443             ; 4 uses
  %i.i = icmp ugt i64 %i.e, 2305843009213693951, !dbg !32443
  %.not.i = icmp ugt i64 %i.h, 9223372036854775804
  %or.cond.i = or i1 %i.i, %.not.i, !dbg !32457
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !32457, !prof !26912

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0, !dbg !32459
  br i1 %i.j, label %bb.g, label %bb.c, !dbg !32459

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !32460, !noalias !32461
  %i.k = tail call noundef align 4 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #37, !dbg !32464, !noalias !32461 ; 2 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !32469
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !32470

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.k to i64, !dbg !32471
  br label %bb.g, !dbg !32472

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.419.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %i.h) #33, !dbg !32473
  unreachable

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.p unwind label %bb.o, !dbg !32475

bb.g:                                             ; preds = %bb.b, %bb.d
  %.sroa.10.0 = phi i64 [ %i.m, %bb.d ], [ 4, %bb.b ], !dbg !32476
  %.sroa.419.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.b ], !dbg !32477 ; 2 uses
  %i.o = inttoptr i64 %.sroa.10.0 to ptr, !dbg !32478
  %i.p = icmp samesign ule i64 %i.e, %.sroa.419.0, !dbg !32479
  tail call void @llvm.assume(i1 %i.p), !dbg !32483
  store i64 %.sroa.419.0, ptr %i.b, align 8, !dbg !32486
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32486 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !dbg !32486
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32486 ; 4 uses
  store i64 0, ptr %i.r, align 8, !dbg !32486
  %i.s = icmp eq i64 %i.e, 0, !dbg !32487
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.h, !dbg !32499

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32500
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.u, align 8, !noalias !32501, !nonnull !13, !noundef !13
  %i.x = load i64, ptr %i.v, align 8, !noalias !32501, !noundef !13
  %i.y = load i64, ptr %i.t, align 8, !noalias !32501, !noundef !13
  %i.z = zext i64 %i.y to i128
  br label %bb.i, !dbg !32511

bb.i:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.h
  %i.aa = phi i64 [ 0, %bb.h ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ]
  %i.ab = phi i64 [ 0, %bb.h ], [ %i.ca, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ab, !dbg !32515
  %.val.i = load i16, ptr %i.ac, align 2, !dbg !32519, !alias.scope !32520, !noalias !32523, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32525, !noalias !32501
  store i16 %.val.i, ptr %i.a, align 2, !dbg !32533, !noalias !32501
  %i.ad = add i64 %i.ab, %i.g, !dbg !32534
  %i.ae = trunc i64 %i.ad to i32, !dbg !32534
  %i.af = zext i16 %.val.i to i64, !dbg !32536
  %i.ag = mul i64 %i.af, 6195824352614963433, !dbg !32540
  %i.ah = zext i64 %i.ag to i128, !dbg !32543
  %i.ai = mul nuw i128 %i.z, %i.ah, !dbg !32546
  %i.aj = lshr i128 %i.ai, 64, !dbg !32547
  %i.ak = trunc nuw i128 %i.aj to i64, !dbg !32547 ; 2 uses
  %i.al = icmp ugt i64 %i.x, %i.ak, !dbg !32548
  call void @llvm.assume(i1 %i.al), !dbg !32553
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.ak, !dbg !32554 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !32555
  %i.ao = load i64, ptr %i.an, align 8, !dbg !32555, !alias.scope !32565, !noalias !32568, !noundef !13
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !32570
  br i1 %i.ap, label %select.unfold.i.i.i.i, label %bb.j, !dbg !32570

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !32571
  %i.ar = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRtECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %.noexc unwind label %bb.f, !dbg !32572 ; 2 uses

.noexc:                                           ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !32575), !dbg !32578
  call void @llvm.experimental.noalias.scope.decl(metadata !32582), !dbg !32585
  %i.as = lshr i64 %i.ar, 57, !dbg !32588
  %i.at = trunc nuw nsw i64 %i.as to i8, !dbg !32591
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !32592
  %i.av = load i64, ptr %i.au, align 8, !dbg !32592, !alias.scope !32594, !noalias !32595, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.am, align 8, !alias.scope !32594, !noalias !32595, !nonnull !13, !noundef !13 ; 2 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k, !dbg !32598

bb.k:                                             ; preds = %bb.m, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bp, %bb.m ], !dbg !32599
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc ], [ %i.bq, %bb.m ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.av, !dbg !32599 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !32600
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.az, align 1, !dbg !32603, !noalias !32607 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.ay, !dbg !32610
  %i.bb = bitcast <16 x i1> %i.ba to i16, !dbg !32613 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bb, 0, !dbg !32615
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !32618

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %bb.l
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bo, %bb.l ], [ %i.bb, %bb.k ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !32619
  %i.bd = zext nneg i16 %i.bc to i64, !dbg !32622
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bd, !dbg !32623
  %i.bf = and i64 %i.be, %i.av, !dbg !32623
  %i.bg = sub nsw i64 0, %i.bf, !dbg !32624
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.bg, !dbg !32633
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -2, !dbg !32634
  %.val2.i.i.i.i.i.i.i = load i16, ptr %i.bi, align 2, !dbg !32640, !noalias !32641, !noundef !13
  %i.bj = icmp eq i16 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !32644
  br i1 %i.bj, label %bb.n, label %bb.l, !dbg !32651, !prof !6363

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.k
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !32653
  %i.bl = bitcast <16 x i1> %i.bk to i16, !dbg !32657
  %i.bm = icmp eq i16 %i.bl, 0, !dbg !32659
  br i1 %i.bm, label %bb.m, label %select.unfold.i.i.i.i.loopexit, !dbg !32659, !prof !39

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bn = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !32661
  %i.bo = and i16 %i.bn, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !32663 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bo, 0, !dbg !32615
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !32618

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !32665 ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bp, !dbg !32667
  br label %bb.k, !dbg !32598

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.br = load i64, ptr %i.r, align 8, !dbg !32668, !alias.scope !32673, !noalias !32501, !noundef !13 ; 3 uses
  %i.bs = load i64, ptr %i.b, align 8, !dbg !32676, !range !64, !alias.scope !32673, !noalias !32501, !noundef !13
  %i.bt = icmp eq i64 %i.br, %i.bs, !dbg !32679
  br i1 %i.bt, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !32679

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.r, align 8, !dbg !32680, !alias.scope !32683, !noalias !32501
  br label %select.unfold.i.i.i.i, !dbg !32680

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.i
  %i.bu = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.aa, %bb.i ], !dbg !32680 ; 3 uses
  %i.bv = load i64, ptr %i.b, align 8, !dbg !32686, !range !64, !alias.scope !32683, !noalias !32501, !noundef !13
  %i.bw = icmp eq i64 %i.bu, %i.bv, !dbg !32689
  br i1 %i.bw, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !32689

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.n
  %.sink18.ph.i = phi i64 [ %i.br, %bb.n ], [ %i.bu, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.n ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.f, !dbg !32690

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.n
  %.sink18.i = phi i64 [ %i.br, %bb.n ], [ %i.bu, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %bb.n ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.bx = load ptr, ptr %i.q, align 8, !dbg !32693, !noalias !32501, !nonnull !13, !noundef !13
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.sink18.i, !dbg !32698 ; 2 uses
  store i32 %i.ae, ptr %i.by, align 4, !dbg !32700, !noalias !32501
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4, !dbg !32700
  store i8 %.sink.i13, ptr %i.bz, align 4, !dbg !32700, !noalias !32501
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !32702 ; 2 uses
  store i64 %storemerge.i, ptr %i.r, align 8, !dbg !32702, !noalias !32501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32703, !noalias !32501
  %i.ca = add nuw i64 %i.ab, 1, !dbg !32704       ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.e, !dbg !32706
  br i1 %i.cb, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.i, !dbg !32706

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !32707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32475
  ret void, !dbg !32708

bb.o:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !32709
  unreachable, !dbg !32709

bb.p:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n, !dbg !32709
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRyRSyE0Cs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !32710 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = load ptr, ptr %2, align 8, !dbg !32711, !nonnull !13, !align !1022, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !32711
  %i.e = load i64, ptr %i.d, align 8, !dbg !32711, !noundef !13 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !32712
  %i.g = load i64, ptr %i.f, align 8, !dbg !32712, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32713
  %i.h = shl nuw nsw i64 %i.e, 3, !dbg !32717     ; 2 uses
  %.not.i = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %.not.i, label %bb.d, label %bb.b, !dbg !32731, !prof !26912

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.e, 0, !dbg !32733
  br i1 %i.i, label %.thread, label %bb.c, !dbg !32733

.thread:                                          ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !dbg !32734
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32734
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8, !dbg !32734
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32734
  store i64 0, ptr %i.k, align 8, !dbg !32734
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, !dbg !32735

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !32744, !noalias !32745
  %i.l = tail call noundef align 4 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #37, !dbg !32748, !noalias !32745 ; 2 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !32753
  br i1 %i.m, label %bb.d, label %bb.f, !dbg !32754

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10.0.ph = phi i64 [ %i.h, %bb.c ], [ undef, %bb.a ]
  %.sroa.419.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %.sroa.10.0.ph) #33, !dbg !32755
  unreachable

bb.e:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.n unwind label %bb.m, !dbg !32757

bb.f:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.b, align 8, !dbg !32734
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32734 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !dbg !32734
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32734 ; 4 uses
  store i64 0, ptr %i.p, align 8, !dbg !32734
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32758
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.r, align 8, !noalias !32759, !nonnull !13, !noundef !13
  %i.u = load i64, ptr %i.s, align 8, !noalias !32759, !noundef !13
  %i.v = load i64, ptr %i.q, align 8, !noalias !32759, !noundef !13
  %i.w = zext i64 %i.v to i128
  br label %bb.g, !dbg !32769

bb.g:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.f
  %i.x = phi i64 [ 0, %bb.f ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ]
  %i.y = phi i64 [ 0, %bb.f ], [ %i.bw, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y, !dbg !32773
  %.val.i = load i64, ptr %i.z, align 8, !dbg !32777, !alias.scope !32778, !noalias !32781, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32783, !noalias !32759
  store i64 %.val.i, ptr %i.a, align 8, !dbg !32791, !noalias !32759
  %i.aa = add i64 %i.y, %i.g, !dbg !32792
  %i.ab = trunc i64 %i.aa to i32, !dbg !32792
  %i.ac = mul i64 %.val.i, 6195824352614963433, !dbg !32794
  %i.ad = zext i64 %i.ac to i128, !dbg !32800
  %i.ae = mul nuw i128 %i.w, %i.ad, !dbg !32803
  %i.af = lshr i128 %i.ae, 64, !dbg !32804
  %i.ag = trunc nuw i128 %i.af to i64, !dbg !32804 ; 2 uses
  %i.ah = icmp ugt i64 %i.u, %i.ag, !dbg !32805
  call void @llvm.assume(i1 %i.ah), !dbg !32810
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.ag, !dbg !32811 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !32812
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !32812, !alias.scope !32822, !noalias !32825, !noundef !13
  %i.al = icmp eq i64 %i.ak, 0, !dbg !32827
  br i1 %i.al, label %select.unfold.i.i.i.i, label %bb.h, !dbg !32827

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32, !dbg !32828
  %i.an = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRyECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.e, !dbg !32829 ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !32832), !dbg !32835
  call void @llvm.experimental.noalias.scope.decl(metadata !32839), !dbg !32842
  %i.ao = lshr i64 %i.an, 57, !dbg !32845
  %i.ap = trunc nuw nsw i64 %i.ao to i8, !dbg !32848
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !32849
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !32849, !alias.scope !32851, !noalias !32852, !noundef !13 ; 2 uses
  %i.as = load ptr, ptr %i.ai, align 8, !alias.scope !32851, !noalias !32852, !nonnull !13, !noundef !13 ; 2 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i, !dbg !32855

bb.i:                                             ; preds = %bb.k, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bl, %bb.k ], !dbg !32856
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.an, %.noexc ], [ %i.bm, %bb.k ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.ar, !dbg !32856 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !32857
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.av, align 1, !dbg !32860, !noalias !32864 ; 2 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.au, !dbg !32867
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !32870 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ax, 0, !dbg !32872
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !32875

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bk, %bb.j ], [ %i.ax, %bb.i ] ; 3 uses
  %i.ay = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !32876
  %i.az = zext nneg i16 %i.ay to i64, !dbg !32879
  %i.ba = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.az, !dbg !32880
  %i.bb = and i64 %i.ba, %i.ar, !dbg !32880
  %i.bc = sub nsw i64 0, %i.bb, !dbg !32881
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bc, !dbg !32890
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8, !dbg !32891
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !dbg !32897, !noalias !32898, !noundef !13
  %i.bf = icmp eq i64 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !32901
  br i1 %i.bf, label %bb.l, label %bb.j, !dbg !32908, !prof !6363

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %bb.i
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !32910
  %i.bh = bitcast <16 x i1> %i.bg to i16, !dbg !32914
  %i.bi = icmp eq i16 %i.bh, 0, !dbg !32916
  br i1 %i.bi, label %bb.k, label %select.unfold.i.i.i.i.loopexit, !dbg !32916, !prof !39

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bj = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !32918
  %i.bk = and i16 %i.bj, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !32920 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bk, 0, !dbg !32872
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !32875

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bl = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !32922 ; 2 uses
  %i.bm = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bl, !dbg !32924
  br label %bb.i, !dbg !32855

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.p, align 8, !dbg !32925, !alias.scope !32930, !noalias !32759, !noundef !13 ; 3 uses
  %i.bo = load i64, ptr %i.b, align 8, !dbg !32933, !range !64, !alias.scope !32930, !noalias !32759, !noundef !13
  %i.bp = icmp eq i64 %i.bn, %i.bo, !dbg !32936
  br i1 %i.bp, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !32936

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.p, align 8, !dbg !32937, !alias.scope !32940, !noalias !32759
  br label %select.unfold.i.i.i.i, !dbg !32937

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.g
  %i.bq = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.x, %bb.g ], !dbg !32937 ; 3 uses
  %i.br = load i64, ptr %i.b, align 8, !dbg !32943, !range !64, !alias.scope !32940, !noalias !32759, !noundef !13
  %i.bs = icmp eq i64 %i.bq, %i.br, !dbg !32946
  br i1 %i.bs, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !32946

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.l
  %.sink18.ph.i = phi i64 [ %i.bn, %bb.l ], [ %i.bq, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.e, !dbg !32947

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.l
  %.sink18.i = phi i64 [ %i.bn, %bb.l ], [ %i.bq, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.bt = load ptr, ptr %i.o, align 8, !dbg !32950, !noalias !32759, !nonnull !13, !noundef !13
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sink18.i, !dbg !32955 ; 2 uses
  store i32 %i.ab, ptr %i.bu, align 4, !dbg !32957, !noalias !32759
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4, !dbg !32957
  store i8 %.sink.i13, ptr %i.bv, align 4, !dbg !32957, !noalias !32759
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !32959 ; 2 uses
  store i64 %storemerge.i, ptr %i.p, align 8, !dbg !32959, !noalias !32759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32960, !noalias !32759
  %i.bw = add nuw i64 %i.y, 1, !dbg !32961        ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.e, !dbg !32963
  br i1 %i.bx, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.g, !dbg !32963

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !32964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32757
  ret void, !dbg !32965

bb.m:                                             ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !32966
  unreachable, !dbg !32966

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n, !dbg !32966
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3lenCs2Aa799EbAFJ_11polars_time(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !32967 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32969
  %i.b = load ptr, ptr %i.a, align 8, !dbg !32969, !noundef !13
  %i.c = load ptr, ptr %0, align 8, !dbg !32970, !noundef !13
  %i.d = ptrtoint ptr %i.b to i64, !dbg !32971
  %i.e = ptrtoint ptr %i.c to i64, !dbg !32971
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !32971
  %i.g = lshr exact i64 %i.f, 4, !dbg !32971
  ret i64 %i.g, !dbg !32977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE3lenCs2Aa799EbAFJ_11polars_time(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !32978 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32979
  %i.b = load ptr, ptr %i.a, align 8, !dbg !32979, !noundef !13
  %i.c = load ptr, ptr %0, align 8, !dbg !32980, !noundef !13
  %i.d = ptrtoint ptr %i.b to i64, !dbg !32981
end_hunk_1
