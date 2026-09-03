Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_time-20ff54dc47e9578d.polars_time.1e16ca0b22b7c575-cgu.12?download=true
inline.NumInlined: 3556
inline.NumDeleted: 1567
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashRSB1B_E0Cs2Aa799EbAFJ_11polars_time:bb.a
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.ag, !dbg !31073 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31026), !dbg !31074
  call void @llvm.experimental.noalias.scope.decl(metadata !31027), !dbg !31074
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !31075
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !31075, !alias.scope !31026, !noalias !31028, !noundef !966
  %i.al = icmp eq i64 %i.ak, 0, !dbg !31076
  br i1 %i.al, label %select.unfold.i.i.i.i, label %bb.g, !dbg !31076

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32, !dbg !31077
  %i.an = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.d, !dbg !31078 ; 3 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !31029), !dbg !31079
  call void @llvm.experimental.noalias.scope.decl(metadata !31030), !dbg !31079
  call void @llvm.experimental.noalias.scope.decl(metadata !31031), !dbg !31080
  %i.ao = lshr i64 %i.an, 57, !dbg !31081
  %i.ap = trunc nuw nsw i64 %i.ao to i8, !dbg !31082
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !31083
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !31083, !alias.scope !31032, !noalias !31033, !noundef !966 ; 4 uses
  %i.as = load ptr, ptr %i.ai, align 8, !alias.scope !31032, !noalias !31033, !nonnull !966, !noundef !966 ; 4 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !alias.scope !31034, !noalias !31035
  %.fr.i.i.i.i.i.i = freeze ptr %i.av             ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i.i.i, null
  %i.aw = load i64, ptr %i.u, align 8, !alias.scope !31034, !noalias !31035 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.split39.us.i.i.i.i.i.i, label %.split39.i.i.i.i.i.i

.split39.us.i.i.i.i.i.i:                          ; preds = %.noexc, %bb.h
  %.sroa.011.0.i.us.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.h ], [ 0, %.noexc ], !dbg !31084
  %.pn.i.us.i.i.i.i.i.i = phi i64 [ %i.be, %bb.h ], [ %i.an, %.noexc ]
  %.sroa.01.0.i.us.i.i.i.i.i.i = and i64 %.pn.i.us.i.i.i.i.i.i, %i.ar, !dbg !31084 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.us.i.i.i.i.i.i, !dbg !31085
  %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 1, !dbg !31086, !noalias !31036 ; 2 uses
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, %i.au, !dbg !31087
  %i.az = bitcast <16 x i1> %i.ay to i16, !dbg !31088 ; 2 uses
  %.not.i.not33.us.i.i.i.i.i.i = icmp eq i16 %i.az, 0, !dbg !31089
  br i1 %.not.i.not33.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i, !dbg !31090

._crit_edge.split.us.us.i.i.i.i.i.i:              ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i, %.split39.us.i.i.i.i.i.i
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, splat (i8 -1), !dbg !31091
  %i.bb = bitcast <16 x i1> %i.ba to i16, !dbg !31092
  %i.bc = icmp eq i16 %i.bb, 0, !dbg !31093
  br i1 %i.bc, label %bb.h, label %select.unfold.i.i.i.i, !dbg !31093, !prof !980

bb.h:                                             ; preds = %._crit_edge.split.us.us.i.i.i.i.i.i
  %i.bd = add i64 %.sroa.011.0.i.us.i.i.i.i.i.i, 16, !dbg !31094 ; 2 uses
  %i.be = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bd, !dbg !31095
  br label %.split39.us.i.i.i.i.i.i, !dbg !31096

.lr.ph.us.i.i.i.i.i.i:                            ; preds = %.split39.us.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i
  %.sroa.05.0.i34.us.us.i.i.i.i.i.i = phi i16 [ %i.bs, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i ], [ %i.az, %.split39.us.i.i.i.i.i.i ] ; 3 uses
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.us.us.i.i.i.i.i.i, i1 true), !dbg !31097
  %i.bg = zext nneg i16 %i.bf to i64, !dbg !31098
  %i.bh = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bg, !dbg !31099
  %i.bi = and i64 %i.bh, %i.ar, !dbg !31099
  %i.bj = sub nsw i64 0, %i.bi, !dbg !31100
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.as, i64 %i.bj, !dbg !31101 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31037), !dbg !31102, !noalias !31038
  call void @llvm.experimental.noalias.scope.decl(metadata !31039), !dbg !31103, !noalias !31038
  call void @llvm.experimental.noalias.scope.decl(metadata !31040), !dbg !31104, !noalias !31038
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !31105
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !31105, !alias.scope !31042, !noalias !31043, !noundef !966
  %i.bn = icmp eq i64 %.val6.i.i.i.i, %i.bm, !dbg !31106
  br i1 %i.bn, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i, !dbg !31106, !prof !1047

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i: ; preds = %.lr.ph.us.i.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -24, !dbg !31107
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !31108, !alias.scope !31042, !noalias !31043, !noundef !966
  %i.bq = icmp eq ptr %i.bp, null, !dbg !31108
  br i1 %i.bq, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i, !dbg !31109, !prof !1049

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.us.us.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i, %.lr.ph.us.i.i.i.i.i.i
  %i.br = add i16 %.sroa.05.0.i34.us.us.i.i.i.i.i.i, -1, !dbg !31110
  %i.bs = and i16 %i.br, %.sroa.05.0.i34.us.us.i.i.i.i.i.i, !dbg !31111 ; 2 uses
  %.not.i.not.us.us.i.i.i.i.i.i = icmp eq i16 %i.bs, 0, !dbg !31089
  br i1 %.not.i.not.us.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i, !dbg !31090

.split39.i.i.i.i.i.i:                             ; preds = %.noexc, %bb.k
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ %i.cr, %bb.k ], [ 0, %.noexc ], !dbg !31084
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.k ], [ %i.an, %.noexc ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.ar, !dbg !31084 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !31085
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i = load <16 x i8>, ptr %i.bt, align 1, !dbg !31086, !noalias !31036 ; 2 uses
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, %i.au, !dbg !31087
  %i.bv = bitcast <16 x i1> %i.bu to i16, !dbg !31088 ; 2 uses
  %.not.i.not33.i.i.i.i.i.i = icmp eq i16 %i.bv, 0, !dbg !31089
  br i1 %.not.i.not33.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !31090

.lr.ph.i.i.i.i.i.i:                               ; preds = %.split39.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i
  %.sroa.05.0.i34.i.i.i.i.i.i = phi i16 [ %i.cq, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i ], [ %i.bv, %.split39.i.i.i.i.i.i ] ; 3 uses
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i.i.i.i.i, i1 true), !dbg !31097
  %i.bx = zext nneg i16 %i.bw to i64, !dbg !31098
  %i.by = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bx, !dbg !31099
  %i.bz = and i64 %i.by, %i.ar, !dbg !31099
  %i.ca = sub nsw i64 0, %i.bz, !dbg !31100
  %i.cb = getelementptr inbounds [24 x i8], ptr %i.as, i64 %i.ca, !dbg !31101 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31037), !dbg !31102, !noalias !31038
  call void @llvm.experimental.noalias.scope.decl(metadata !31039), !dbg !31103, !noalias !31038
  call void @llvm.experimental.noalias.scope.decl(metadata !31040), !dbg !31104, !noalias !31038
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8, !dbg !31105
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !31105, !alias.scope !31042, !noalias !31043, !noundef !966
  %i.ce = icmp eq i64 %.val6.i.i.i.i, %i.cd, !dbg !31106
  br i1 %i.ce, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, !dbg !31106, !prof !1047

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -24, !dbg !31107
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !31108, !alias.scope !31042, !noalias !31043, !noundef !966 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null, !dbg !31108
  br i1 %i.ch, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, label %bb.j, !dbg !31112

bb.j:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 -16, !dbg !31108
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !31113, !alias.scope !31042, !noalias !31043, !noundef !966
  %i.ck = icmp eq i64 %i.aw, %i.cj, !dbg !31114
  br i1 %i.ck, label %.split.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, !dbg !31114, !prof !1047

.split.i.i.i.i.i.i:                               ; preds = %bb.j
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.fr.i.i.i.i.i.i, ptr nonnull %i.cg, i64 %i.aw), !dbg !31115, !noalias !31045
  %i.cl = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0, !dbg !31115
  br i1 %i.cl, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, !dbg !31109, !prof !1049

._crit_edge.split.i.i.i.i.i.i:                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i, %.split39.i.i.i.i.i.i
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, splat (i8 -1), !dbg !31091
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !31092
  %i.co = icmp eq i16 %i.cn, 0, !dbg !31093
  br i1 %i.co, label %bb.k, label %select.unfold.i.i.i.i, !dbg !31093, !prof !980

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.thread.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %bb.j, %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.cp = add i16 %.sroa.05.0.i34.i.i.i.i.i.i, -1, !dbg !31110
  %i.cq = and i16 %i.cp, %.sroa.05.0.i34.i.i.i.i.i.i, !dbg !31111 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.cq, 0, !dbg !31089
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !31090

bb.k:                                             ; preds = %._crit_edge.split.i.i.i.i.i.i
  %i.cr = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !31094 ; 2 uses
  %i.cs = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.cr, !dbg !31095
  br label %.split39.i.i.i.i.i.i, !dbg !31096

.loopexit.i.i.i.i:                                ; preds = %.split.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs2Aa799EbAFJ_11polars_time.exit.us.us.i.i.i.i.i.i
  %i.ct = load i64, ptr %i.p, align 8, !dbg !31116, !alias.scope !31046, !noalias !31021, !noundef !966 ; 3 uses
  %i.cu = load i64, ptr %i.b, align 8, !dbg !31117, !range !981, !alias.scope !31046, !noalias !31021, !noundef !966
  %i.cv = icmp eq i64 %i.ct, %i.cu, !dbg !31118
  br i1 %i.cv, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31118

select.unfold.i.i.i.i:                            ; preds = %._crit_edge.split.i.i.i.i.i.i, %._crit_edge.split.us.us.i.i.i.i.i.i, %bb.f
  %i.cw = load i64, ptr %i.p, align 8, !dbg !31119, !alias.scope !31047, !noalias !31021, !noundef !966 ; 3 uses
  %i.cx = load i64, ptr %i.b, align 8, !dbg !31120, !range !981, !alias.scope !31047, !noalias !31021, !noundef !966
  %i.cy = icmp eq i64 %i.cw, %i.cx, !dbg !31121
  br i1 %i.cy, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31121

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink28.ph.i = phi i64 [ %i.ct, %.loopexit.i.i.i.i ], [ %i.cw, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.d, !dbg !31122

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink28.i = phi i64 [ %i.ct, %.loopexit.i.i.i.i ], [ %i.cw, %select.unfold.i.i.i.i ], [ %.sink28.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.cz = load ptr, ptr %i.o, align 8, !dbg !31123, !noalias !31021, !nonnull !966, !noundef !966
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sink28.i, !dbg !31124 ; 2 uses
  store i32 %i.ac, ptr %i.da, align 4, !dbg !31125, !noalias !31021
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4, !dbg !31125
  store i8 %.sink.i13, ptr %i.db, align 4, !dbg !31125, !noalias !31021
  %storemerge.i = add i64 %.sink28.i, 1, !dbg !31126
  store i64 %storemerge.i, ptr %i.p, align 8, !dbg !31126, !noalias !31021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31127, !noalias !31021
  %i.dc = add nuw i64 %i.z, 1, !dbg !31128        ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %i.e, !dbg !31129
  br i1 %i.dd, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1L_8adapters9enumerateINtB2A_9EnumeratepEB1F_4fold9enumerateRBQ_uNCINvNvB1F_8for_each4callTjB3D_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3D_RSBQ_E00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.f, !dbg !31129

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1L_8adapters9enumerateINtB2A_9EnumeratepEB1F_4fold9enumerateRBQ_uNCINvNvB1F_8for_each4callTjB3D_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3D_RSBQ_E00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !31130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31060
  ret void, !dbg !31131

bb.l:                                             ; preds = %bb.d
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !31132
  unreachable, !dbg !31132

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n, !dbg !31132
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRdRSdE0Cs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !31133 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = load ptr, ptr %2, align 8, !dbg !31328, !nonnull !966, !align !1124, !noundef !966
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !31328
  %i.e = load i64, ptr %i.d, align 8, !dbg !31328, !noundef !966 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !31329
  %i.g = load i64, ptr %i.f, align 8, !dbg !31329, !noundef !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31330
  %i.h = shl nuw i64 %i.e, 3, !dbg !31331         ; 2 uses
  %.not.i = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %.not.i, label %bb.d, label %bb.b, !dbg !31332, !prof !1297

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.e, 0, !dbg !31333
  br i1 %i.i, label %.thread, label %bb.c, !dbg !31333

.thread:                                          ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !dbg !31334
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !31334
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8, !dbg !31334
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !31334
  store i64 0, ptr %i.k, align 8, !dbg !31334
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, !dbg !31335

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !31336, !noalias !31310
  %i.l = tail call noundef align 4 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #37, !dbg !31337, !noalias !31310 ; 2 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !31338
  br i1 %i.m, label %bb.d, label %bb.f, !dbg !31339

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10.0.ph = phi i64 [ %i.h, %bb.c ], [ undef, %bb.a ]
  %.sroa.419.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %.sroa.10.0.ph) #33, !dbg !31340
  unreachable

bb.e:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.n unwind label %bb.m, !dbg !31341

bb.f:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.b, align 8, !dbg !31334
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !31334 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !dbg !31334
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !31334 ; 4 uses
  store i64 0, ptr %i.p, align 8, !dbg !31334
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !31342
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.r, align 8, !noalias !31311, !nonnull !966, !noundef !966
  %i.u = load i64, ptr %i.s, align 8, !noalias !31311, !noundef !966
  %i.v = load i64, ptr %i.q, align 8, !noalias !31311, !noundef !966
  %i.w = zext i64 %i.v to i128
  br label %bb.g, !dbg !31343

bb.g:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.f
  %i.x = phi i64 [ 0, %bb.f ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ]
  %i.y = phi i64 [ 0, %bb.f ], [ %i.cb, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y, !dbg !31344
  %.val.i = load double, ptr %i.z, align 8, !dbg !31345, !alias.scope !31312, !noalias !31313, !noundef !966 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31346, !noalias !31311
  store double %.val.i, ptr %i.a, align 8, !dbg !31347, !noalias !31311
  %i.aa = add i64 %i.y, %i.g, !dbg !31348
  %i.ab = trunc i64 %i.aa to i32, !dbg !31348
  %i.ac = fadd double %.val.i, 0.000000e+00, !dbg !31349
  %i.ad = fcmp uno double %.val.i, 0.000000e+00, !dbg !31350 ; 2 uses
  %i.ae = bitcast double %i.ac to i64, !dbg !31351
  %i.af = mul i64 %i.ae, 6195824352614963433, !dbg !31352
  %i.ag = zext i64 %i.af to i128, !dbg !31353
  %i.ah = select i1 %i.ad, i128 13310388698693500928, i128 %i.ag, !dbg !31354
  %i.ai = mul nuw i128 %i.ah, %i.w, !dbg !31355
  %i.aj = lshr i128 %i.ai, 64, !dbg !31356
  %i.ak = trunc nuw i128 %i.aj to i64, !dbg !31356 ; 2 uses
  %i.al = icmp ugt i64 %i.u, %i.ak, !dbg !31357
  call void @llvm.assume(i1 %i.al), !dbg !31358
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.ak, !dbg !31359 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !31360
  %i.ao = load i64, ptr %i.an, align 8, !dbg !31360, !alias.scope !31318, !noalias !31319, !noundef !966
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !31361
  br i1 %i.ap, label %select.unfold.i.i.i.i, label %bb.h, !dbg !31361

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !31362
  %i.ar = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.e, !dbg !31363 ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !31320), !dbg !31364
  call void @llvm.experimental.noalias.scope.decl(metadata !31321), !dbg !31365
  %i.as = lshr i64 %i.ar, 57, !dbg !31366
  %i.at = trunc nuw nsw i64 %i.as to i8, !dbg !31367
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !31368
  %i.av = load i64, ptr %i.au, align 8, !dbg !31368, !alias.scope !31322, !noalias !31323, !noundef !966 ; 2 uses
  %i.aw = load ptr, ptr %i.am, align 8, !alias.scope !31322, !noalias !31323, !nonnull !966, !noundef !966 ; 2 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i, !dbg !31369

bb.i:                                             ; preds = %bb.k, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bq, %bb.k ], !dbg !31370
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc ], [ %i.br, %bb.k ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.av, !dbg !31370 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !31371
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.az, align 1, !dbg !31372, !noalias !31324 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.ay, !dbg !31373
  %i.bb = bitcast <16 x i1> %i.ba to i16, !dbg !31374 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bb, 0, !dbg !31375
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !31376

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bp, %bb.j ], [ %i.bb, %bb.i ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !31377
  %i.bd = zext nneg i16 %i.bc to i64, !dbg !31378
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bd, !dbg !31379
  %i.bf = and i64 %i.be, %i.av, !dbg !31379
  %i.bg = sub nsw i64 0, %i.bf, !dbg !31380
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bg, !dbg !31381
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8, !dbg !31382
  %.val2.i.i.i.i.i.i.i = load double, ptr %i.bi, align 8, !dbg !31383, !noalias !31325 ; 2 uses
  %i.bj = fcmp uno double %.val2.i.i.i.i.i.i.i, 0.000000e+00, !dbg !31384
  %i.bk = fcmp oeq double %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !31384
  %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i = select i1 %i.ad, i1 %i.bj, i1 %i.bk, !dbg !31384
  br i1 %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.j, !dbg !31385, !prof !1167

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %bb.i
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !31386
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !31387
  %i.bn = icmp eq i16 %i.bm, 0, !dbg !31388
  br i1 %i.bn, label %bb.k, label %select.unfold.i.i.i.i.loopexit, !dbg !31388, !prof !980

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bo = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !31389
  %i.bp = and i16 %i.bo, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !31390 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bp, 0, !dbg !31375
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !31376

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bq = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !31391 ; 2 uses
  %i.br = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bq, !dbg !31392
  br label %bb.i, !dbg !31369

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.p, align 8, !dbg !31393, !alias.scope !31326, !noalias !31311, !noundef !966 ; 3 uses
  %i.bt = load i64, ptr %i.b, align 8, !dbg !31394, !range !981, !alias.scope !31326, !noalias !31311, !noundef !966
  %i.bu = icmp eq i64 %i.bs, %i.bt, !dbg !31395
  br i1 %i.bu, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31395

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.p, align 8, !dbg !31396, !alias.scope !31327, !noalias !31311
  br label %select.unfold.i.i.i.i, !dbg !31396

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.g
  %i.bv = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.x, %bb.g ], !dbg !31396 ; 3 uses
  %i.bw = load i64, ptr %i.b, align 8, !dbg !31397, !range !981, !alias.scope !31327, !noalias !31311, !noundef !966
  %i.bx = icmp eq i64 %i.bv, %i.bw, !dbg !31398
  br i1 %i.bx, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !31398

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.l
  %.sink18.ph.i = phi i64 [ %i.bs, %bb.l ], [ %i.bv, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.e, !dbg !31399

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.l
  %.sink18.i = phi i64 [ %i.bs, %bb.l ], [ %i.bv, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.by = load ptr, ptr %i.o, align 8, !dbg !31400, !noalias !31311, !nonnull !966, !noundef !966
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sink18.i, !dbg !31401 ; 2 uses
  store i32 %i.ab, ptr %i.bz, align 4, !dbg !31402, !noalias !31311
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !31402
  store i8 %.sink.i13, ptr %i.ca, align 4, !dbg !31402, !noalias !31311
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !31403 ; 2 uses
  store i64 %storemerge.i, ptr %i.p, align 8, !dbg !31403, !noalias !31311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31404, !noalias !31311
  %i.cb = add nuw i64 %i.y, 1, !dbg !31405        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.e, !dbg !31406
  br i1 %i.cc, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.g, !dbg !31406

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !31407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31341
  ret void, !dbg !31408

bb.m:                                             ; preds = %bb.e
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !31409
  unreachable, !dbg !31409

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n, !dbg !31409
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRfRSfE0Cs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !31410 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = load ptr, ptr %2, align 8, !dbg !31613, !nonnull !966, !align !1165, !noundef !966
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !31613
  %i.e = load i64, ptr %i.d, align 8, !dbg !31613, !noundef !966 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !31614
  %i.g = load i64, ptr %i.f, align 8, !dbg !31614, !noundef !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31615
  %i.h = shl i64 %i.e, 3, !dbg !31616             ; 4 uses
  %i.i = icmp ugt i64 %i.e, 2305843009213693951, !dbg !31616
  %.not.i = icmp ugt i64 %i.h, 9223372036854775804
end_hunk_0
begin_hunk_1_@_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRtRStE0Cs2Aa799EbAFJ_11polars_time:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32703
  %i.h = shl i64 %i.e, 3, !dbg !32704             ; 4 uses
  %i.i = icmp ugt i64 %i.e, 2305843009213693951, !dbg !32704
  %.not.i = icmp ugt i64 %i.h, 9223372036854775804
  %or.cond.i = or i1 %i.i, %.not.i, !dbg !32705
  br i1 %or.cond.i, label %bb.e, label %bb.b, !dbg !32705, !prof !1297

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0, !dbg !32706
  br i1 %i.j, label %bb.g, label %bb.c, !dbg !32706

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !32707, !noalias !32683
  %i.k = tail call noundef align 4 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #37, !dbg !32708, !noalias !32683 ; 2 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !32709
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !32710

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.k to i64, !dbg !32711
  br label %bb.g, !dbg !32712

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.419.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %i.h) #33, !dbg !32713
  unreachable

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.p unwind label %bb.o, !dbg !32714

bb.g:                                             ; preds = %bb.b, %bb.d
  %.sroa.10.0 = phi i64 [ %i.m, %bb.d ], [ 4, %bb.b ], !dbg !32715
  %.sroa.419.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.b ], !dbg !32716 ; 2 uses
  %i.o = inttoptr i64 %.sroa.10.0 to ptr, !dbg !32717
  %i.p = icmp samesign ule i64 %i.e, %.sroa.419.0, !dbg !32718
  tail call void @llvm.assume(i1 %i.p), !dbg !32719
  store i64 %.sroa.419.0, ptr %i.b, align 8, !dbg !32720
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32720 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !dbg !32720
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32720 ; 4 uses
  store i64 0, ptr %i.r, align 8, !dbg !32720
  %i.s = icmp eq i64 %i.e, 0, !dbg !32721
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.h, !dbg !32722

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32723
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.u, align 8, !noalias !32688, !nonnull !966, !noundef !966
  %i.x = load i64, ptr %i.v, align 8, !noalias !32688, !noundef !966
  %i.y = load i64, ptr %i.t, align 8, !noalias !32688, !noundef !966
  %i.z = zext i64 %i.y to i128
  br label %bb.i, !dbg !32724

bb.i:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.h
  %i.aa = phi i64 [ 0, %bb.h ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ]
  %i.ab = phi i64 [ 0, %bb.h ], [ %i.ca, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ab, !dbg !32725
  %.val.i = load i16, ptr %i.ac, align 2, !dbg !32726, !alias.scope !32689, !noalias !32690, !noundef !966 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32727, !noalias !32688
  store i16 %.val.i, ptr %i.a, align 2, !dbg !32728, !noalias !32688
  %i.ad = add i64 %i.ab, %i.g, !dbg !32729
  %i.ae = trunc i64 %i.ad to i32, !dbg !32729
  %i.af = zext i16 %.val.i to i64, !dbg !32730
  %i.ag = mul i64 %i.af, 6195824352614963433, !dbg !32731
  %i.ah = zext i64 %i.ag to i128, !dbg !32732
  %i.ai = mul nuw i128 %i.z, %i.ah, !dbg !32733
  %i.aj = lshr i128 %i.ai, 64, !dbg !32734
  %i.ak = trunc nuw i128 %i.aj to i64, !dbg !32734 ; 2 uses
  %i.al = icmp ugt i64 %i.x, %i.ak, !dbg !32735
  call void @llvm.assume(i1 %i.al), !dbg !32736
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.ak, !dbg !32737 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !32738
  %i.ao = load i64, ptr %i.an, align 8, !dbg !32738, !alias.scope !32691, !noalias !32692, !noundef !966
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !32739
  br i1 %i.ap, label %select.unfold.i.i.i.i, label %bb.j, !dbg !32739

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !32740
  %i.ar = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRtECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %.noexc unwind label %bb.f, !dbg !32741 ; 2 uses

.noexc:                                           ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !32693), !dbg !32742
  call void @llvm.experimental.noalias.scope.decl(metadata !32694), !dbg !32743
  %i.as = lshr i64 %i.ar, 57, !dbg !32744
  %i.at = trunc nuw nsw i64 %i.as to i8, !dbg !32745
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !32746
  %i.av = load i64, ptr %i.au, align 8, !dbg !32746, !alias.scope !32695, !noalias !32696, !noundef !966 ; 2 uses
  %i.aw = load ptr, ptr %i.am, align 8, !alias.scope !32695, !noalias !32696, !nonnull !966, !noundef !966 ; 2 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k, !dbg !32747

bb.k:                                             ; preds = %bb.m, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bp, %bb.m ], !dbg !32748
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc ], [ %i.bq, %bb.m ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.av, !dbg !32748 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !32749
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.az, align 1, !dbg !32750, !noalias !32697 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.ay, !dbg !32751
  %i.bb = bitcast <16 x i1> %i.ba to i16, !dbg !32752 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bb, 0, !dbg !32753
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !32754

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %bb.l
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bo, %bb.l ], [ %i.bb, %bb.k ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !32755
  %i.bd = zext nneg i16 %i.bc to i64, !dbg !32756
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bd, !dbg !32757
  %i.bf = and i64 %i.be, %i.av, !dbg !32757
  %i.bg = sub nsw i64 0, %i.bf, !dbg !32758
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.bg, !dbg !32759
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -2, !dbg !32760
  %.val2.i.i.i.i.i.i.i = load i16, ptr %i.bi, align 2, !dbg !32761, !noalias !32698, !noundef !966
  %i.bj = icmp eq i16 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !32762
  br i1 %i.bj, label %bb.n, label %bb.l, !dbg !32763, !prof !1167

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.k
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !32764
  %i.bl = bitcast <16 x i1> %i.bk to i16, !dbg !32765
  %i.bm = icmp eq i16 %i.bl, 0, !dbg !32766
  br i1 %i.bm, label %bb.m, label %select.unfold.i.i.i.i.loopexit, !dbg !32766, !prof !980

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bn = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !32767
  %i.bo = and i16 %i.bn, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !32768 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bo, 0, !dbg !32753
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !32754

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !32769 ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bp, !dbg !32770
  br label %bb.k, !dbg !32747

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.br = load i64, ptr %i.r, align 8, !dbg !32771, !alias.scope !32699, !noalias !32688, !noundef !966 ; 3 uses
  %i.bs = load i64, ptr %i.b, align 8, !dbg !32772, !range !981, !alias.scope !32699, !noalias !32688, !noundef !966
  %i.bt = icmp eq i64 %i.br, %i.bs, !dbg !32773
  br i1 %i.bt, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !32773

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.r, align 8, !dbg !32774, !alias.scope !32700, !noalias !32688
  br label %select.unfold.i.i.i.i, !dbg !32774

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.i
  %i.bu = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.aa, %bb.i ], !dbg !32774 ; 3 uses
  %i.bv = load i64, ptr %i.b, align 8, !dbg !32775, !range !981, !alias.scope !32700, !noalias !32688, !noundef !966
  %i.bw = icmp eq i64 %i.bu, %i.bv, !dbg !32776
  br i1 %i.bw, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !32776

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.n
  %.sink18.ph.i = phi i64 [ %i.br, %bb.n ], [ %i.bu, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.n ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.f, !dbg !32777

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.n
  %.sink18.i = phi i64 [ %i.br, %bb.n ], [ %i.bu, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %bb.n ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.bx = load ptr, ptr %i.q, align 8, !dbg !32778, !noalias !32688, !nonnull !966, !noundef !966
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.sink18.i, !dbg !32779 ; 2 uses
  store i32 %i.ae, ptr %i.by, align 4, !dbg !32780, !noalias !32688
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4, !dbg !32780
  store i8 %.sink.i13, ptr %i.bz, align 4, !dbg !32780, !noalias !32688
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !32781 ; 2 uses
  store i64 %storemerge.i, ptr %i.r, align 8, !dbg !32781, !noalias !32688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !32782, !noalias !32688
  %i.ca = add nuw i64 %i.ab, 1, !dbg !32783       ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.e, !dbg !32784
  br i1 %i.cb, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.i, !dbg !32784

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !32785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32714
  ret void, !dbg !32786

bb.o:                                             ; preds = %bb.f
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !32787
  unreachable, !dbg !32787

bb.p:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n, !dbg !32787
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRyRSyE0Cs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !32788 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = load ptr, ptr %2, align 8, !dbg !32967, !nonnull !966, !align !1124, !noundef !966
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !32967
  %i.e = load i64, ptr %i.d, align 8, !dbg !32967, !noundef !966 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !32968
  %i.g = load i64, ptr %i.f, align 8, !dbg !32968, !noundef !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32969
  %i.h = shl nuw i64 %i.e, 3, !dbg !32970         ; 2 uses
  %.not.i = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %.not.i, label %bb.d, label %bb.b, !dbg !32971, !prof !1297

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.e, 0, !dbg !32972
  br i1 %i.i, label %.thread, label %bb.c, !dbg !32972

.thread:                                          ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !dbg !32973
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32973
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8, !dbg !32973
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32973
  store i64 0, ptr %i.k, align 8, !dbg !32973
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, !dbg !32974

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !32975, !noalias !32953
  %i.l = tail call noundef align 4 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #37, !dbg !32976, !noalias !32953 ; 2 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !32977
  br i1 %i.m, label %bb.d, label %bb.f, !dbg !32978

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10.0.ph = phi i64 [ %i.h, %bb.c ], [ undef, %bb.a ]
  %.sroa.419.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %.sroa.10.0.ph) #33, !dbg !32979
  unreachable

bb.e:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.n unwind label %bb.m, !dbg !32980

bb.f:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.b, align 8, !dbg !32973
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !32973 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !dbg !32973
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !32973 ; 4 uses
  store i64 0, ptr %i.p, align 8, !dbg !32973
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !32981
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.r, align 8, !noalias !32954, !nonnull !966, !noundef !966
  %i.u = load i64, ptr %i.s, align 8, !noalias !32954, !noundef !966
  %i.v = load i64, ptr %i.q, align 8, !noalias !32954, !noundef !966
  %i.w = zext i64 %i.v to i128
  br label %bb.g, !dbg !32982

bb.g:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %bb.f
  %i.x = phi i64 [ 0, %bb.f ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ]
  %i.y = phi i64 [ 0, %bb.f ], [ %i.bw, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y, !dbg !32983
  %.val.i = load i64, ptr %i.z, align 8, !dbg !32984, !alias.scope !32955, !noalias !32956, !noundef !966 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32985, !noalias !32954
  store i64 %.val.i, ptr %i.a, align 8, !dbg !32986, !noalias !32954
  %i.aa = add i64 %i.y, %i.g, !dbg !32987
  %i.ab = trunc i64 %i.aa to i32, !dbg !32987
  %i.ac = mul i64 %.val.i, 6195824352614963433, !dbg !32988
  %i.ad = zext i64 %i.ac to i128, !dbg !32989
  %i.ae = mul nuw i128 %i.w, %i.ad, !dbg !32990
  %i.af = lshr i128 %i.ae, 64, !dbg !32991
  %i.ag = trunc nuw i128 %i.af to i64, !dbg !32991 ; 2 uses
  %i.ah = icmp ugt i64 %i.u, %i.ag, !dbg !32992
  call void @llvm.assume(i1 %i.ah), !dbg !32993
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.ag, !dbg !32994 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !32995
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !32995, !alias.scope !32957, !noalias !32958, !noundef !966
  %i.al = icmp eq i64 %i.ak, 0, !dbg !32996
  br i1 %i.al, label %select.unfold.i.i.i.i, label %bb.h, !dbg !32996

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32, !dbg !32997
  %i.an = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRyECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.e, !dbg !32998 ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !32959), !dbg !32999
  call void @llvm.experimental.noalias.scope.decl(metadata !32960), !dbg !33000
  %i.ao = lshr i64 %i.an, 57, !dbg !33001
  %i.ap = trunc nuw nsw i64 %i.ao to i8, !dbg !33002
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !33003
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !33003, !alias.scope !32961, !noalias !32962, !noundef !966 ; 2 uses
  %i.as = load ptr, ptr %i.ai, align 8, !alias.scope !32961, !noalias !32962, !nonnull !966, !noundef !966 ; 2 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i, !dbg !33004

bb.i:                                             ; preds = %bb.k, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bl, %bb.k ], !dbg !33005
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.an, %.noexc ], [ %i.bm, %bb.k ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.ar, !dbg !33005 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !33006
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.av, align 1, !dbg !33007, !noalias !32963 ; 2 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.au, !dbg !33008
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !33009 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ax, 0, !dbg !33010
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !33011

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bk, %bb.j ], [ %i.ax, %bb.i ] ; 3 uses
  %i.ay = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !33012
  %i.az = zext nneg i16 %i.ay to i64, !dbg !33013
  %i.ba = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.az, !dbg !33014
  %i.bb = and i64 %i.ba, %i.ar, !dbg !33014
  %i.bc = sub nsw i64 0, %i.bb, !dbg !33015
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bc, !dbg !33016
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8, !dbg !33017
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !dbg !33018, !noalias !32964, !noundef !966
  %i.bf = icmp eq i64 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !33019
  br i1 %i.bf, label %bb.l, label %bb.j, !dbg !33020, !prof !1167

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %bb.i
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !33021
  %i.bh = bitcast <16 x i1> %i.bg to i16, !dbg !33022
  %i.bi = icmp eq i16 %i.bh, 0, !dbg !33023
  br i1 %i.bi, label %bb.k, label %select.unfold.i.i.i.i.loopexit, !dbg !33023, !prof !980

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bj = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !33024
  %i.bk = and i16 %i.bj, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !33025 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bk, 0, !dbg !33010
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !33011

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bl = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !33026 ; 2 uses
  %i.bm = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bl, !dbg !33027
  br label %bb.i, !dbg !33004

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.p, align 8, !dbg !33028, !alias.scope !32965, !noalias !32954, !noundef !966 ; 3 uses
  %i.bo = load i64, ptr %i.b, align 8, !dbg !33029, !range !981, !alias.scope !32965, !noalias !32954, !noundef !966
  %i.bp = icmp eq i64 %i.bn, %i.bo, !dbg !33030
  br i1 %i.bp, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !33030

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.p, align 8, !dbg !33031, !alias.scope !32966, !noalias !32954
  br label %select.unfold.i.i.i.i, !dbg !33031

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.g
  %i.bq = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.x, %bb.g ], !dbg !33031 ; 3 uses
  %i.br = load i64, ptr %i.b, align 8, !dbg !33032, !range !981, !alias.scope !32966, !noalias !32954, !noundef !966
  %i.bs = icmp eq i64 %i.bq, %i.br, !dbg !33033
  br i1 %i.bs, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, !dbg !33033

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.l
  %.sink18.ph.i = phi i64 [ %i.bn, %bb.l ], [ %i.bq, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.e, !dbg !33034

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.l
  %.sink18.i = phi i64 [ %i.bn, %bb.l ], [ %i.bq, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ] ; 2 uses
  %.sink.i13 = phi i8 [ 1, %bb.l ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.sink.split.i ]
  %i.bt = load ptr, ptr %i.o, align 8, !dbg !33035, !noalias !32954, !nonnull !966, !noundef !966
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sink18.i, !dbg !33036 ; 2 uses
  store i32 %i.ab, ptr %i.bu, align 4, !dbg !33037, !noalias !32954
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4, !dbg !33037
  store i8 %.sink.i13, ptr %i.bv, align 4, !dbg !33037, !noalias !32954
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !33038 ; 2 uses
  store i64 %storemerge.i, ptr %i.p, align 8, !dbg !33038, !noalias !32954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33039, !noalias !32954
  %i.bw = add nuw i64 %i.y, 1, !dbg !33040        ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.e, !dbg !33041
  br i1 %i.bx, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECs2Aa799EbAFJ_11polars_time.exit, label %bb.g, !dbg !33041

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0Cs2Aa799EbAFJ_11polars_time.exit.i, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !33042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32980
  ret void, !dbg !33043

bb.m:                                             ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !33044
  unreachable, !dbg !33044

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n, !dbg !33044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3lenCs2Aa799EbAFJ_11polars_time(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !33045 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33051
  %i.b = load ptr, ptr %i.a, align 8, !dbg !33051, !noundef !966
  %i.c = load ptr, ptr %0, align 8, !dbg !33052, !noundef !966
  %i.d = ptrtoint ptr %i.b to i64, !dbg !33053
  %i.e = ptrtoint ptr %i.c to i64, !dbg !33053
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !33053
  %i.g = lshr exact i64 %i.f, 4, !dbg !33053
  ret i64 %i.g, !dbg !33054
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE3lenCs2Aa799EbAFJ_11polars_time(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !33055 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33061
  %i.b = load ptr, ptr %i.a, align 8, !dbg !33061, !noundef !966
  %i.c = load ptr, ptr %0, align 8, !dbg !33062, !noundef !966
  %i.d = ptrtoint ptr %i.b to i64, !dbg !33063
end_hunk_1
