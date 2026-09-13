Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
begin_hunk_0_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_:bb.a
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.an = xor i64 %index11, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %index11 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.an
  %wide.load12 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !37194, !noalias !37196
  %i.aq = getelementptr i8, ptr %i.ap, i64 -3     ; 2 uses
  %wide.load13 = load <4 x i8>, ptr %i.aq, align 1, !alias.scope !37195, !noalias !37197
  %reverse14 = shufflevector <4 x i8> %wide.load13, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse14, ptr %i.ao, align 1, !alias.scope !37194, !noalias !37196
  %reverse15 = shufflevector <4 x i8> %wide.load12, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse15, ptr %i.aq, align 1, !alias.scope !37195, !noalias !37197
  %index.next16 = add nuw i64 %index11, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next16, %n.vec10
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.af, %n.vec10
  br i1 %cmp.n17, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ax, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i.preheader ] ; 3 uses
  %i.as = xor i64 %.sroa.0.016.i, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.ag, i64 %i.as  ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !range !149, !alias.scope !37194, !noalias !37196, !noundef !67
  %i.aw = load i8, ptr %i.au, align 1, !alias.scope !37195, !noalias !37197
  store i8 %i.aw, ptr %i.at, align 1, !alias.scope !37194, !noalias !37196
  store i8 %i.av, ptr %i.au, align 1, !alias.scope !37195, !noalias !37197
  %i.ax = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit11.i, !llvm.loop !37180

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.n, %bb.o, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEBS_.exit ], [ %i.ab, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  %i.ay = lshr i64 %.sroa.023.0, 1
  %i.az = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw i64 %.sroa.09.0, 1            ; 2 uses
  %i.ba = sub i64 %factor, %i.ay
  %i.bb = add i64 %i.az, %factor
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 false)
  %i.bg = trunc nuw nsw i64 %i.bf to i8
  br label %bb.f

bb.q:                                             ; preds = %.lr.ph60, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.02.159 = phi i64 [ %.sroa.02.0, %.lr.ph60 ], [ %i.bh, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.023.158 = phi i64 [ %.sroa.023.0, %.lr.ph60 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.159, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !67
  %.not28 = icmp ult i8 %i.bj, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %bb.q, %bb.f
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.f ], [ %.sroa.023.158, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.f ], [ %.sroa.02.159, %bb.q ], [ 1, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bl, align 1
  br i1 %i.i, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !67 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.023.158, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp samesign ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.023.158 to i1
  %i.bv = or i64 %i.bn, %.sroa.023.158
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw i64 %i.bq, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.bp, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37200)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bo, i64 %i.bp) ; 3 uses
  %i.cn = icmp samesign ult i64 %3, %i.cm
  br i1 %i.cn, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.co, ptr %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !37201
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cq = phi ptr [ %i.db, %.preheader.i ], [ %i.cp, %.critedge.i ]
  %i.cr = phi ptr [ %i.cz, %.preheader.i ], [ %i.co, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.cu, %.preheader.i ], [ %i.k, %.critedge.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -1 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -1 ; 2 uses
  %.val.i.i = load i8, ptr %i.ct, align 1, !range !149, !alias.scope !37200, !noalias !37202, !noundef !67 ; 2 uses
  %.val12.i.i = load i8, ptr %i.cs, align 1, !range !149, !alias.scope !37199, !noalias !37203, !noundef !67 ; 2 uses
  %i.cv = icmp samesign ult i8 %.val.i.i, %.val12.i.i ; 2 uses
  %i.cw = tail call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val12.i.i)
  store i8 %i.cw, ptr %i.cu, align 1, !alias.scope !37199, !noalias !37203
  %i.cx = xor i1 %i.cv, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cv to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bs
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.de = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.bs, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.co, %.critedge.i ] ; 2 uses
  %i.df = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.04.i.i, align 1, !range !149, !alias.scope !37199, !noalias !37204, !noundef !67 ; 2 uses
  %.val.i18.i = load i8, ptr %i.df, align 1, !range !149, !alias.scope !37200, !noalias !37205, !noundef !67 ; 2 uses
  %i.dg = icmp samesign ult i8 %.sroa.0.0.val.i.i, %.val.i18.i ; 2 uses
  %i.dh = xor i1 %i.dg, true
  %i.di = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0.val.i.i, i8 %.val.i18.i)
  store i8 %i.di, ptr %i.de, align 1, !alias.scope !37199, !noalias !37204
  %i.dj = zext i1 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dg to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.do = icmp ne ptr %i.dk, %i.cp
  %i.dp = icmp ne ptr %i.dm, %i.k
  %or.cond.i19.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i

_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cz, %.preheader.i ], [ %i.dn, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.db, %.preheader.i ], [ %i.cp, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dr = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.13.1.i, ptr align 1 %.sroa.0.1.i, i64 %i.ds, i1 false), !alias.scope !37201, !noalias !37206
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i
  %i.dt = shl nuw i64 %i.bq, 1
  %i.du = or disjoint i64 %i.dt, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.t, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.du, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit ], [ %i.by, %bb.t ] ; 2 uses
  %i.dv = icmp ugt i64 %i.bh, 1
  br i1 %i.dv, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dw = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dx = lshr i64 %.sroa.018.0, 1
  %i.dy = add nuw i64 %i.dx, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.dz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dz, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = or i64 %1, 1
  %i.eb = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %i.ee, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null) #62
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i260 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i265 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.ap, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.ka, %bb.ap ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.jy, %bb.ap ] ; 3 uses
  %i.i = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %bb.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37282)
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val14.i = load ptr, ptr %5, align 8, !alias.scope !37282, !noalias !37283, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !37281, !noalias !37284 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 12
  %.val16.i = load i32, ptr %i.p, align 4, !alias.scope !37281, !noalias !37284 ; 3 uses
  %.val17.i = load i32, ptr %i.m, align 4, !alias.scope !37281, !noalias !37284
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %.val18.i = load i32, ptr %i.q, align 4, !alias.scope !37281, !noalias !37284
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val15.i, i32 %.val16.i, i32 %.val17.i, i32 %.val18.i) #64, !noalias !37285, !inline_history !37211 ; 2 uses
  %.not187 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.r, label %.preheader80, label %.preheader81

.preheader81:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, label %.lr.ph

.preheader80:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, label %.lr.ph136

.lr.ph:                                           ; preds = %.preheader81, %bb.k
  %.val13.i = phi i32 [ %.val11.i, %bb.k ], [ %.val16.i, %.preheader81 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.k ], [ %.val15.i, %.preheader81 ]
  %.sroa.01.0.i.i132 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader81 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i132 ; 2 uses
  %.val10.i = load i32, ptr %i.s, align 4, !alias.scope !37281, !noalias !37284 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !37281, !noalias !37284 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val10.i, i32 %.val11.i, i32 %.val12.i, i32 %.val13.i) #64, !noalias !37285, !inline_history !37211
  br i1 %i.u, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i132, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph

.lr.ph136:                                        ; preds = %.preheader80, %bb.l
  %.val8.i = phi i32 [ %.val6.i, %bb.l ], [ %.val16.i, %.preheader80 ]
  %.val7.i = phi i32 [ %.val5.i, %bb.l ], [ %.val15.i, %.preheader80 ]
  %.sroa.01.1.i.i135 = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader80 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i135 ; 2 uses
  %.val5.i = load i32, ptr %i.w, align 4, !alias.scope !37281, !noalias !37284 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val6.i = load i32, ptr %i.x, align 4, !alias.scope !37281, !noalias !37284 ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs1_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val5.i, i32 %.val6.i, i32 %.val7.i, i32 %.val8.i) #64, !noalias !37285, !inline_history !37211
  br i1 %i.y, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

bb.l:                                             ; preds = %.lr.ph136
  %i.z = add nuw i64 %.sroa.01.1.i.i135, 1        ; 2 uses
  %exitcond228.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond228.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph136

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph136
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i135, %.lr.ph136 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i132, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263: ; preds = %.preheader80
  br i1 %.not4.i265, label %bb.h, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %.preheader81
  br i1 %.not4.i260, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.r, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.h
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.l)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.h
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37211
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %i.bc, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod393 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod393)
  %i.ag = xor i64 %.sroa.0.016.i.epil.init, -1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i.epil.init ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ap, i64 %i.ag ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 4, !alias.scope !37286, !noalias !37287
  %i.ak = load <2 x i32>, ptr %i.ah, align 4, !alias.scope !37288, !noalias !37289
  store i64 %i.aj, ptr %i.ah, align 4, !alias.scope !37288, !noalias !37289
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !alias.scope !37286, !noalias !37287
  br label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i7376 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread ], [ %.sroa.0.0.i.i261268272, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i261268272, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader ]
  %i.al = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37286)
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %bb.p
  %i.ao = phi i64 [ %i.an, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 4 uses
  %.sroa.0.0.i.i261268272 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i261268272 ; 3 uses
  %xtraiter = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.new
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37293), !noalias !37292
  %i.gt = xor i64 %.val.i.i.i, %.sroa.0.0.val.i.i
  %i.gu = zext i64 %i.gt to i128
  %i.gv = mul nuw i128 %i.da, %i.gu               ; 2 uses
  %i.gw = lshr i128 %i.gv, 64
  %i.gx = xor i128 %i.gw, %i.gv
  %i.gy = trunc i128 %i.gx to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37314), !noalias !37292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37315), !noalias !37292
  %i.gz = lshr i64 %i.gy, 57
  %i.ha = trunc nuw nsw i64 %i.gz to i8
  %i.hb = insertelement <16 x i8> poison, i8 %i.ha, i64 0
  %i.hc = shufflevector <16 x i8> %i.hb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph.i.i
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.hv, %bb.aj ]
  %.pn.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i ], [ %i.hw, %bb.aj ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dd ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hd, align 1, !noalias !37316 ; 2 uses
  %i.he = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hc
  %i.hf = bitcast <16 x i1> %i.he to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hf, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %bb.ai
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.hu, %bb.ai ], [ %i.hf, %bb.ah ] ; 3 uses
  %i.hg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hh = zext nneg i16 %i.hg to i64
  %i.hi = add i64 %.sroa.01.0.i.i.i.i.i, %i.hh
  %i.hj = and i64 %i.hi, %i.dd
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.hk ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.hm, align 4, !noalias !37317, !noundef !67
  %i.hn = getelementptr i8, ptr %i.hl, i64 -12
  %.val3.i.i.i.i.i = load i32, ptr %i.hn, align 4, !noalias !37317
  %i.ho = icmp eq i32 %.val2.i.i.i.i.i, %i.gn
  %i.hp = icmp eq i32 %.val3.i.i.i.i.i, %i.gp
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.ai, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.ai, %bb.ah
  %i.hq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = icmp eq i16 %i.hr, 0
  br i1 %i.hs, label %bb.aj, label %select.unfold.i.i, !prof !71

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ht = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.hu = and i16 %i.ht, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.hu, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hv = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.hw = add i64 %.sroa.01.0.i.i.i.i.i, %i.hv
  br label %bb.ah

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.us
  %.sroa.13.1.i95 = phi ptr [ %i.bx, %.lr.ph.i.i.us ], [ %.sroa.13.1.i, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i3490 = phi ptr [ %2, %.lr.ph.i.i.us ], [ %.sroa.0.0.i34, %._crit_edge.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1259) #60
          to label %.noexc unwind label %.loopexit.split-lp.i

.noexc:                                           ; preds = %select.unfold.i.i
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hl, i64 -8
  %i.hy = load i64, ptr %i.hx, align 8, !noalias !37292, !noundef !67
  %i.hz = xor i64 %.val.i.i.i, %.val7.i.i
  %i.ia = zext i64 %i.hz to i128
  %i.ib = mul nuw i128 %i.da, %i.ia               ; 2 uses
  %i.ic = lshr i128 %i.ib, 64
  %i.id = xor i128 %i.ic, %i.ib
  %i.ie = trunc i128 %i.id to i64                 ; 2 uses
  %i.if = lshr i64 %i.ie, 57
  %i.ig = trunc nuw nsw i64 %i.if to i8
  %i.ih = insertelement <16 x i8> poison, i8 %i.ig, i64 0
  %i.ii = shufflevector <16 x i8> %i.ih, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %bb.ak ], [ %i.jb, %bb.an ]
  %.pn.i.i.i8.i = phi i64 [ %i.ie, %bb.ak ], [ %i.jc, %bb.an ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.dd ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ij, align 1, !noalias !37318 ; 2 uses
  %i.ik = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.ii
  %i.il = bitcast <16 x i1> %i.ik to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.ja, %bb.am ], [ %i.il, %bb.al ] ; 3 uses
  %i.im = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.in = zext nneg i16 %i.im to i64
  %i.io = add i64 %.sroa.01.0.i.i.i.i9.i, %i.in
  %i.ip = and i64 %i.io, %i.dd
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.iq ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.is, align 4, !noalias !37319, !noundef !67
  %i.it = getelementptr i8, ptr %i.ir, i64 -12
  %.val3.i.i.i.i15.i = load i32, ptr %i.it, align 4, !noalias !37319
  %i.iu = icmp eq i32 %.val2.i.i.i.i14.i, %i.gq
  %i.iv = icmp eq i32 %.val3.i.i.i.i15.i, %i.gs
  %spec.select.i.i.i.i.i.i.i16.i = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i16.i, label %.noexc20.i, label %bb.am, !prof !77

._crit_edge.i.i.i18.i:                            ; preds = %bb.am, %bb.al
  %i.iw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.ix = bitcast <16 x i1> %i.iw to i16
  %i.iy = icmp eq i16 %i.ix, 0
  br i1 %i.iy, label %bb.an, label %select.unfold.i19.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.iz = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.ja = and i16 %i.iz, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i17.i = icmp eq i16 %i.ja, 0
  br i1 %.not.i.not.i.i.i17.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i12.i

bb.an:                                            ; preds = %._crit_edge.i.i.i18.i
  %i.jb = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jc = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jb
  br label %bb.al

select.unfold.i19.i:                              ; preds = %._crit_edge.i.i.i18.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1259) #60
          to label %.noexc37 unwind label %.loopexit.split-lp.i

.noexc37:                                         ; preds = %select.unfold.i19.i
  unreachable

.noexc20.i:                                       ; preds = %.lr.ph.i.i.i12.i
  %i.jd = getelementptr inbounds i8, ptr %i.ir, i64 -8
  %i.je = load i64, ptr %i.jd, align 8, !noalias !37292, !noundef !67
  %i.jf = icmp ult i64 %i.hy, %i.je               ; 3 uses
  %i.jg = xor i1 %i.jf, true
  %.sroa.05.0.i.i = select i1 %i.jf, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.jh = load i64, ptr %.sroa.05.0.i.i, align 4, !alias.scope !37292, !noalias !37320
  store i64 %i.jh, ptr %.sroa.13.1.i, align 4, !alias.scope !37290, !noalias !37312
  %i.ji = zext i1 %i.jg to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.ji ; 3 uses
  %i.jk = zext i1 %i.jf to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.jn = icmp ne ptr %i.jj, %i.cv
  %i.jo = icmp ne ptr %i.jl, %i.k
  %or.cond.i19.i = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.gi, %.noexc.i ], [ %i.jm, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.gk, %.noexc.i ], [ %i.cv, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.jj, %.noexc20.i ] ; 2 uses
  %i.jp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.jq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.jr = sub nuw i64 %i.jp, %i.jq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.jr, i1 false), !alias.scope !37292, !noalias !37321
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

.loopexit.i:                                      ; preds = %select.unfold.i19.i65, %select.unfold.i.i52
  %.sroa.13.0.i110 = phi ptr [ %.sroa.13.0.i, %select.unfold.i19.i65 ], [ %.sroa.13.0.i111, %select.unfold.i.i52 ]
  %.sroa.7.0.i105 = phi ptr [ %.sroa.7.0.i, %select.unfold.i19.i65 ], [ %.sroa.7.0.i106, %select.unfold.i.i52 ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.i:                             ; preds = %select.unfold.i19.i, %select.unfold.i.i
  %.sroa.13.1.i94 = phi ptr [ %.sroa.13.1.i, %select.unfold.i19.i ], [ %.sroa.13.1.i95, %select.unfold.i.i ]
  %.sroa.0.0.i3489 = phi ptr [ %.sroa.0.0.i34, %select.unfold.i19.i ], [ %.sroa.0.0.i3490, %select.unfold.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i110, %.loopexit.i ], [ %.sroa.13.1.i94, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i105, %.loopexit.i ], [ %i.cv, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i3489, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.js = ptrtoint ptr %.sroa.7.1.i to i64
  %i.jt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ju = sub nuw i64 %i.js, %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.ju, i1 false), !alias.scope !37292, !noalias !37322
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  %i.jv = shl nuw nsw i64 %i.bv, 1
  %i.jw = or disjoint i64 %i.jv, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.t, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i = phi i64 [ %i.jw, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %i.cd, %bb.t ] ; 2 uses
  %i.jx = icmp ugt i64 %i.bm, 1
  br i1 %i.jx, label %bb.q, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.jy = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.jz = lshr i64 %.sroa.018.0, 1
  %i.ka = add nuw nsw i64 %i.jz, %.sroa.09.0
  br label %bb.e

bb.aq:                                            ; preds = %._crit_edge
  %i.kb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.kb, 0
  br i1 %.not30, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kc = or i64 %1, 1
  %i.kd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.kc, i1 true)
  %i.ke = trunc nuw nsw i64 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 1
  %i.kg = xor i32 %i.kf, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs1_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.kg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37215
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 21, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = add nuw nsw i64 %1, 4611686018427387903
  %.sroa.0.0 = udiv i64 %i.c, %1                  ; 2 uses
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 1
  %i.g = sub nuw nsw i64 %1, %i.f
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not4.i260 = icmp ugt i64 %.sroa.01.0, 2
  %.not4.i265 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.ap, %bb.d
  %.sroa.023.0 = phi i64 [ 1, %bb.d ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.ka, %bb.ap ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.jy, %bb.ap ] ; 3 uses
  %i.i = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ 1, %bb.e ] ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.j, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %bb.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37398)
  %.not.i31 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, %bb.g
  br i1 %4, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val14.i = load ptr, ptr %5, align 8, !alias.scope !37398, !noalias !37399, !nonnull !67, !align !98, !noundef !67 ; 3 uses
  %.val15.i = load i32, ptr %i.o, align 4, !alias.scope !37397, !noalias !37400 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 12
  %.val16.i = load i32, ptr %i.p, align 4, !alias.scope !37397, !noalias !37400 ; 3 uses
  %.val17.i = load i32, ptr %i.m, align 4, !alias.scope !37397, !noalias !37400
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %.val18.i = load i32, ptr %i.q, align 4, !alias.scope !37397, !noalias !37400
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val15.i, i32 %.val16.i, i32 %.val17.i, i32 %.val18.i) #64, !noalias !37401, !inline_history !37327 ; 2 uses
  %.not187 = icmp eq i64 %i.l, 2                  ; 2 uses
  br i1 %i.r, label %.preheader80, label %.preheader81

.preheader81:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, label %.lr.ph

.preheader80:                                     ; preds = %bb.j
  br i1 %.not187, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, label %.lr.ph136

.lr.ph:                                           ; preds = %.preheader81, %bb.k
  %.val13.i = phi i32 [ %.val11.i, %bb.k ], [ %.val16.i, %.preheader81 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.k ], [ %.val15.i, %.preheader81 ]
  %.sroa.01.0.i.i132 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader81 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.0.i.i132 ; 2 uses
  %.val10.i = load i32, ptr %i.s, align 4, !alias.scope !37397, !noalias !37400 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !37397, !noalias !37400 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val10.i, i32 %.val11.i, i32 %.val12.i, i32 %.val13.i) #64, !noalias !37401, !inline_history !37327
  br i1 %i.u, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i132, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph

.lr.ph136:                                        ; preds = %.preheader80, %bb.l
  %.val8.i = phi i32 [ %.val6.i, %bb.l ], [ %.val16.i, %.preheader80 ]
  %.val7.i = phi i32 [ %.val5.i, %bb.l ], [ %.val15.i, %.preheader80 ]
  %.sroa.01.1.i.i135 = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader80 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.01.1.i.i135 ; 2 uses
  %.val5.i = load i32, ptr %i.w, align 4, !alias.scope !37397, !noalias !37400 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val6.i = load i32, ptr %i.x, align 4, !alias.scope !37397, !noalias !37400 ; 2 uses
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs87CvPiUlf0m_5alloc5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBz_E11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBB_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3E_5types3any5PyAnyEB3z_NtBD_10UndirectedENCINvB1J_9is_planarB2Z_Es_0NtB1J_9NonPlanarEs_0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val14.i, i32 %.val5.i, i32 %.val6.i, i32 %.val7.i, i32 %.val8.i) #64, !noalias !37401, !inline_history !37327
  br i1 %i.y, label %bb.l, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

bb.l:                                             ; preds = %.lr.ph136
  %i.z = add nuw i64 %.sroa.01.1.i.i135, 1        ; 2 uses
  %exitcond228.not = icmp eq i64 %i.z, %i.l
  br i1 %exitcond228.not, label %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph136

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.k, %.lr.ph, %bb.l, %.lr.ph136
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i135, %.lr.ph136 ], [ %i.l, %bb.l ], [ %.sroa.01.0.i.i132, %.lr.ph ], [ %i.l, %bb.k ] ; 6 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.aa)
  %.not4.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not4.i, label %bb.h, label %bb.m

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263: ; preds = %.preheader80
  br i1 %.not4.i265, label %bb.h, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread: ; preds = %.preheader81
  br i1 %.not4.i260, label %bb.h, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  br i1 %i.r, label %bb.p, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %bb.h
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.l)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.h
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.l, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37327
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %i.bc, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod393 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod393)
  %i.ag = xor i64 %.sroa.0.016.i.epil.init, -1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.016.i.epil.init ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ap, i64 %i.ag ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 4, !alias.scope !37402, !noalias !37403
  %i.ak = load <2 x i32>, ptr %i.ah, align 4, !alias.scope !37404, !noalias !37405
  store i64 %i.aj, ptr %i.ah, align 4, !alias.scope !37404, !noalias !37405
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !alias.scope !37402, !noalias !37403
  br label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread, %bb.i, %bb.p, %bb.m
  %.sroa.0.0.i.i7376 = phi i64 [ %i.l, %bb.i ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread ], [ %.sroa.0.0.i.i261268272, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i261268272, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader ]
  %i.al = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift10create_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB14_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB13_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB16_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4O_5types3any5PyAnyEB4J_NtB18_10UndirectedENCINvB2S_9is_planarB48_Es_0NtB2S_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37402)
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBP_EECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263, %bb.p
  %i.ao = phi i64 [ %i.an, %bb.p ], [ 1, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 4 uses
  %.sroa.0.0.i.i261268272 = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared17find_existing_runTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB13_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB12_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB15_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB17_10UndirectedENCINvB2R_9is_planarB47_Es_0NtB2R_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i.thread263 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.0.0.i.i261268272 ; 3 uses
  %xtraiter = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.epil.preheader, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBv_E12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.new
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift4sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBX_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBW_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4E_5types3any5PyAnyEB4z_NtB11_10UndirectedENCINvB2J_9is_planarB3Z_Es_0NtB2J_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37409), !noalias !37408
  %i.gt = xor i64 %.val.i.i.i, %.sroa.0.0.val.i.i
  %i.gu = zext i64 %i.gt to i128
  %i.gv = mul nuw i128 %i.da, %i.gu               ; 2 uses
  %i.gw = lshr i128 %i.gv, 64
  %i.gx = xor i128 %i.gw, %i.gv
  %i.gy = trunc i128 %i.gx to i64                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37430), !noalias !37408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37431), !noalias !37408
  %i.gz = lshr i64 %i.gy, 57
  %i.ha = trunc nuw nsw i64 %i.gz to i8
  %i.hb = insertelement <16 x i8> poison, i8 %i.ha, i64 0
  %i.hc = shufflevector <16 x i8> %i.hb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph.i.i
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.hv, %bb.aj ]
  %.pn.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i ], [ %i.hw, %bb.aj ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dd ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hd, align 1, !noalias !37432 ; 2 uses
  %i.he = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hc
  %i.hf = bitcast <16 x i1> %i.he to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hf, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %bb.ai
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.hu, %bb.ai ], [ %i.hf, %bb.ah ] ; 3 uses
  %i.hg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hh = zext nneg i16 %i.hg to i64
  %i.hi = add i64 %.sroa.01.0.i.i.i.i.i, %i.hh
  %i.hj = and i64 %i.hi, %i.dd
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.hk ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.hm, align 4, !noalias !37433, !noundef !67
  %i.hn = getelementptr i8, ptr %i.hl, i64 -12
  %.val3.i.i.i.i.i = load i32, ptr %i.hn, align 4, !noalias !37433
  %i.ho = icmp eq i32 %.val2.i.i.i.i.i, %i.gn
  %i.hp = icmp eq i32 %.val3.i.i.i.i.i, %i.gp
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.ai, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.ai, %bb.ah
  %i.hq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.hr = bitcast <16 x i1> %i.hq to i16
  %i.hs = icmp eq i16 %i.hr, 0
  br i1 %i.hs, label %bb.aj, label %select.unfold.i.i, !prof !71

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ht = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.hu = and i16 %i.ht, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.hu, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hv = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.hw = add i64 %.sroa.01.0.i.i.i.i.i, %i.hv
  br label %bb.ah

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.us
  %.sroa.13.1.i95 = phi ptr [ %i.bx, %.lr.ph.i.i.us ], [ %.sroa.13.1.i, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i3490 = phi ptr [ %2, %.lr.ph.i.i.us ], [ %.sroa.0.0.i34, %._crit_edge.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1260) #60
          to label %.noexc unwind label %.loopexit.split-lp.i

.noexc:                                           ; preds = %select.unfold.i.i
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hl, i64 -8
  %i.hy = load i64, ptr %i.hx, align 8, !noalias !37408, !noundef !67
  %i.hz = xor i64 %.val.i.i.i, %.val7.i.i
  %i.ia = zext i64 %i.hz to i128
  %i.ib = mul nuw i128 %i.da, %i.ia               ; 2 uses
  %i.ic = lshr i128 %i.ib, 64
  %i.id = xor i128 %i.ic, %i.ib
  %i.ie = trunc i128 %i.id to i64                 ; 2 uses
  %i.if = lshr i64 %i.ie, 57
  %i.ig = trunc nuw nsw i64 %i.if to i8
  %i.ih = insertelement <16 x i8> poison, i8 %i.ig, i64 0
  %i.ii = shufflevector <16 x i8> %i.ih, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %bb.ak ], [ %i.jb, %bb.an ]
  %.pn.i.i.i8.i = phi i64 [ %i.ie, %bb.ak ], [ %i.jc, %bb.an ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.dd ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ij, align 1, !noalias !37434 ; 2 uses
  %i.ik = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.ii
  %i.il = bitcast <16 x i1> %i.ik to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.il, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.al, %bb.am
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.ja, %bb.am ], [ %i.il, %bb.al ] ; 3 uses
  %i.im = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.in = zext nneg i16 %i.im to i64
  %i.io = add i64 %.sroa.01.0.i.i.i.i9.i, %i.in
  %i.ip = and i64 %i.io, %i.dd
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.iq ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.is, align 4, !noalias !37435, !noundef !67
  %i.it = getelementptr i8, ptr %i.ir, i64 -12
  %.val3.i.i.i.i15.i = load i32, ptr %i.it, align 4, !noalias !37435
  %i.iu = icmp eq i32 %.val2.i.i.i.i14.i, %i.gq
  %i.iv = icmp eq i32 %.val3.i.i.i.i15.i, %i.gs
  %spec.select.i.i.i.i.i.i.i16.i = select i1 %i.iu, i1 %i.iv, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i16.i, label %.noexc20.i, label %bb.am, !prof !77

._crit_edge.i.i.i18.i:                            ; preds = %bb.am, %bb.al
  %i.iw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.ix = bitcast <16 x i1> %i.iw to i16
  %i.iy = icmp eq i16 %i.ix, 0
  br i1 %i.iy, label %bb.an, label %select.unfold.i19.i, !prof !71

bb.am:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.iz = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.ja = and i16 %i.iz, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i17.i = icmp eq i16 %i.ja, 0
  br i1 %.not.i.not.i.i.i17.i, label %._crit_edge.i.i.i18.i, label %.lr.ph.i.i.i12.i

bb.an:                                            ; preds = %._crit_edge.i.i.i18.i
  %i.jb = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jc = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jb
  br label %bb.al

select.unfold.i19.i:                              ; preds = %._crit_edge.i.i.i18.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1260) #60
          to label %.noexc37 unwind label %.loopexit.split-lp.i

.noexc37:                                         ; preds = %select.unfold.i19.i
  unreachable

.noexc20.i:                                       ; preds = %.lr.ph.i.i.i12.i
  %i.jd = getelementptr inbounds i8, ptr %i.ir, i64 -8
  %i.je = load i64, ptr %i.jd, align 8, !noalias !37408, !noundef !67
  %i.jf = icmp ult i64 %i.hy, %i.je               ; 3 uses
  %i.jg = xor i1 %i.jf, true
  %.sroa.05.0.i.i = select i1 %i.jf, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  %i.jh = load i64, ptr %.sroa.05.0.i.i, align 4, !alias.scope !37408, !noalias !37436
  store i64 %i.jh, ptr %.sroa.13.1.i, align 4, !alias.scope !37406, !noalias !37428
  %i.ji = zext i1 %i.jg to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.ji ; 3 uses
  %i.jk = zext i1 %i.jf to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.jn = icmp ne ptr %i.jj, %i.cv
  %i.jo = icmp ne ptr %i.jl, %i.k
  %or.cond.i19.i = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i

_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.gi, %.noexc.i ], [ %i.jm, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.gk, %.noexc.i ], [ %i.cv, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.jj, %.noexc20.i ] ; 2 uses
  %i.jp = ptrtoint ptr %.sroa.7.2.i to i64
  %i.jq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.jr = sub nuw i64 %i.jp, %i.jq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.jr, i1 false), !alias.scope !37408, !noalias !37437
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

.loopexit.i:                                      ; preds = %select.unfold.i19.i65, %select.unfold.i.i52
  %.sroa.13.0.i110 = phi ptr [ %.sroa.13.0.i, %select.unfold.i19.i65 ], [ %.sroa.13.0.i111, %select.unfold.i.i52 ]
  %.sroa.7.0.i105 = phi ptr [ %.sroa.7.0.i, %select.unfold.i19.i65 ], [ %.sroa.7.0.i106, %select.unfold.i.i52 ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.i:                             ; preds = %select.unfold.i19.i, %select.unfold.i.i
  %.sroa.13.1.i94 = phi ptr [ %.sroa.13.1.i, %select.unfold.i19.i ], [ %.sroa.13.1.i95, %select.unfold.i.i ]
  %.sroa.0.0.i3489 = phi ptr [ %.sroa.0.0.i34, %select.unfold.i19.i ], [ %.sroa.0.0.i3490, %select.unfold.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i110, %.loopexit.i ], [ %.sroa.13.1.i94, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i105, %.loopexit.i ], [ %i.cv, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i3489, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.js = ptrtoint ptr %.sroa.7.1.i to i64
  %i.jt = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ju = sub nuw i64 %i.js, %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.ju, i1 false), !alias.scope !37408, !noalias !37438
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1b_EE10merge_downNCINvMNtCs87CvPiUlf0m_5alloc5sliceSB1a_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB1d_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB58_5types3any5PyAnyEB53_NtB1f_10UndirectedENCINvB3c_9is_planarB4s_Es_0NtB3c_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit.i
  %i.jv = shl nuw nsw i64 %i.bv, 1
  %i.jw = or disjoint i64 %i.jv, 1
  br label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5drift13logical_mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB17_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB16_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB19_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4R_5types3any5PyAnyEB4M_NtB1b_10UndirectedENCINvB2V_9is_planarB4b_Es_0NtB2V_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.t, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.i = phi i64 [ %i.jw, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable5merge5mergeTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBY_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSBX_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB10_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4G_5types3any5PyAnyEB4B_NtB12_10UndirectedENCINvB2K_9is_planarB40_Es_0NtB2K_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx.exit ], [ %i.cd, %bb.t ] ; 2 uses
  %i.jx = icmp ugt i64 %i.bm, 1
  br i1 %i.jx, label %bb.q, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.jy = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.jz = lshr i64 %.sroa.018.0, 1
  %i.ka = add nuw nsw i64 %i.jz, %.sroa.09.0
  br label %bb.e

bb.aq:                                            ; preds = %._crit_edge
  %i.kb = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.kb, 0
  br i1 %.not30, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kc = or i64 %1, 1
  %i.kd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.kc, i1 true)
  %i.ke = trunc nuw nsw i64 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 1
  %i.kg = xor i32 %i.kf, 126
  tail call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB16_ENCINvMNtCs87CvPiUlf0m_5alloc5sliceSB15_11sort_by_keyjNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core6planar9lr_planar25lr_visit_ordered_dfs_treeRINtNtB18_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Q_5types3any5PyAnyEB4L_NtB1a_10UndirectedENCINvB2U_9is_planarB4a_Es_0NtB2U_9NonPlanarEs_0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.kg, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #62, !inline_history !37331
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6stable9quicksort9quicksortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef range(i32 0, 125) %4, ptr noalias nofree noundef readonly captures(address) dereferenceable_or_null(1) %5) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph129 = phi ptr [ %i.li, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph128 = phi i64 [ %i.kn, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph127 = phi i32 [ %i.ee, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph126 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph129 to i64     ; 7 uses
  %.not = icmp eq ptr %.sroa.028.0.ph126, null
  %i.d = icmp eq i32 %.sroa.025.0.ph127, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.lr.ph
  %i.e = add i64 %i.c, -1
  br label %.lr.ph47

bb.b:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit
  %i.f = icmp eq i32 %i.ee, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph47

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph129, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.li, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4Rule12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.kn, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37499)
  call void @llvm.experimental.noalias.scope.decl(metadata !37500)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.i = icmp samesign ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort8_stableNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef nonnull %.sroa.0.0.ph.lcssa119, ptr noundef nonnull %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call fastcc void @_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort12sort8_stableNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 1
  %.val8.i.i = load i8, ptr %i.q, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %.val9.i.i = load i8, ptr %.sroa.0.0.ph.lcssa119, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %i.r = icmp samesign ult i8 %.val8.i.i, %.val9.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 2
  %.val6.i.i = load i8, ptr %i.s, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %.val7.i.i = load i8, ptr %i.t, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %i.u = icmp samesign ult i8 %.val6.i.i, %.val7.i.i ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.v ; 2 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.y ; 3 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.aa ; 3 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.ac ; 2 uses
  %.val4.i.i = load i8, ptr %i.ab, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %.val5.i.i = load i8, ptr %i.w, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %i.ae = icmp samesign ult i8 %.val4.i.i, %.val5.i.i ; 2 uses
  %.val2.i.i = load i8, ptr %i.ad, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %.val3.i.i = load i8, ptr %i.z, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %i.af = icmp samesign ult i8 %.val2.i.i, %.val3.i.i ; 2 uses
  %i.ag = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !67
  %i.ah = select i1 %i.ae, ptr %i.w, ptr %i.ag, !unpredictable !67
  %i.ai = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !67
  %i.aj = select i1 %i.af, ptr %i.ad, ptr %i.ai, !unpredictable !67
  %.val.i.i = load i8, ptr %i.aj, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %.val1.i.i = load i8, ptr %i.ah, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %i.ak = call i8 @llvm.umin.i8(i8 %.val4.i.i, i8 %.val5.i.i)
  store i8 %i.ak, ptr %2, align 1, !alias.scope !37500, !noalias !37499
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.am = call i8 @llvm.umin.i8(i8 %.val.i.i, i8 %.val1.i.i)
  store i8 %i.am, ptr %i.al, align 1, !alias.scope !37500, !noalias !37499
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ao = call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val1.i.i)
  store i8 %i.ao, ptr %i.an, align 1, !alias.scope !37500, !noalias !37499
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.aq = call i8 @llvm.umax.i8(i8 %.val2.i.i, i8 %.val3.i.i)
  store i8 %i.aq, ptr %i.ap, align 1, !alias.scope !37500, !noalias !37499
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.j ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.val8.i24.i = load i8, ptr %i.at, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %.val9.i25.i = load i8, ptr %i.ar, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %i.au = icmp samesign ult i8 %.val8.i24.i, %.val9.i25.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %.val6.i26.i = load i8, ptr %i.av, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %.val7.i27.i = load i8, ptr %i.aw, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67
  %i.ax = icmp samesign ult i8 %.val6.i26.i, %.val7.i27.i ; 2 uses
  %i.ay = zext i1 %i.au to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay ; 2 uses
  %i.ba = xor i1 %i.au, true
  %i.bb = zext i1 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bb ; 3 uses
  %i.bd = select i1 %i.ax, i64 3, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bd ; 3 uses
  %i.bf = select i1 %i.ax, i64 2, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bf ; 2 uses
  %.val4.i28.i = load i8, ptr %i.be, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %.val5.i29.i = load i8, ptr %i.az, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %i.bh = icmp samesign ult i8 %.val4.i28.i, %.val5.i29.i ; 2 uses
  %.val2.i30.i = load i8, ptr %i.bg, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %.val3.i31.i = load i8, ptr %i.bc, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %i.bi = icmp samesign ult i8 %.val2.i30.i, %.val3.i31.i ; 2 uses
  %i.bj = select i1 %i.bi, ptr %i.be, ptr %i.bc, !unpredictable !67
  %i.bk = select i1 %i.bh, ptr %i.az, ptr %i.bj, !unpredictable !67
  %i.bl = select i1 %i.bh, ptr %i.bc, ptr %i.be, !unpredictable !67
  %i.bm = select i1 %i.bi, ptr %i.bg, ptr %i.bl, !unpredictable !67
  %.val.i32.i = load i8, ptr %i.bm, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %.val1.i33.i = load i8, ptr %i.bk, align 1, !range !149, !alias.scope !37499, !noalias !37500, !noundef !67 ; 2 uses
  %i.bn = call i8 @llvm.umin.i8(i8 %.val4.i28.i, i8 %.val5.i29.i)
  store i8 %i.bn, ptr %i.as, align 1, !alias.scope !37500, !noalias !37499
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.bp = call i8 @llvm.umin.i8(i8 %.val.i32.i, i8 %.val1.i33.i)
  store i8 %i.bp, ptr %i.bo, align 1, !alias.scope !37500, !noalias !37499
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.br = call i8 @llvm.umax.i8(i8 %.val.i32.i, i8 %.val1.i33.i)
  store i8 %i.br, ptr %i.bq, align 1, !alias.scope !37500, !noalias !37499
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bt = call i8 @llvm.umax.i8(i8 %.val2.i30.i, i8 %.val3.i31.i)
  store i8 %i.bt, ptr %i.bs, align 1, !alias.scope !37500, !noalias !37499
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bu = load i8, ptr %.sroa.0.0.ph.lcssa119, align 1, !alias.scope !37499, !noalias !37500
  store i8 %i.bu, ptr %2, align 1, !alias.scope !37500, !noalias !37499
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.bx = load i8, ptr %i.bv, align 1, !alias.scope !37499, !noalias !37500
  store i8 %i.bx, ptr %i.bw, align 1, !alias.scope !37500, !noalias !37499
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.by = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.j ; 2 uses
  %i.bz = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.bz, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.i, %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.cb = getelementptr i8, ptr %2, i64 %i.j      ; 6 uses
  %i.cc = icmp samesign ult i64 %.sroa.0.0.i, %i.by
  br i1 %i.cc, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1.i
  %.sroa.019.05.1.i = phi i64 [ %i.cm, %_RINvNtNtNtNtCslwFuT2d6ECx_4core5slice4sort6shared9smallsort11insert_tailNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.019.05.1.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.019.05.1.i ; 3 uses
  %i.cf = load i8, ptr %i.cd, align 1, !alias.scope !37499, !noalias !37500 ; 4 uses
  store i8 %i.cf, ptr %i.ce, align 1, !alias.scope !37500, !noalias !37499
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -1 ; 2 uses
  %.val10.i.1.i = load i8, ptr %i.cg, align 1, !range !149, !alias.scope !37500, !noalias !37499, !noundef !67 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core13token_swapperINtB7_12TokenSwapperRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2p_5types3any5PyAnyEB2k_NtB1k_10UndirectedEE3maps0_0CskcxRuJ53GpR_9rustworkx:bb.a
  %wide.load1045 = load <4 x i32>, ptr %i.or, align 4, !alias.scope !57029, !noalias !57031
  %reverse1046 = shufflevector <4 x i32> %wide.load1044, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1047 = shufflevector <4 x i32> %wide.load1045, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1046, ptr %i.on, align 4, !alias.scope !57028, !noalias !57030
  store <4 x i32> %reverse1047, ptr %i.op, align 4, !alias.scope !57028, !noalias !57030
  %reverse1048 = shufflevector <4 x i32> %wide.load1042, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1049 = shufflevector <4 x i32> %wide.load1043, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1048, ptr %i.oq, align 4, !alias.scope !57029, !noalias !57031
  store <4 x i32> %reverse1049, ptr %i.or, align 4, !alias.scope !57029, !noalias !57031
  %index.next1050 = add nuw i64 %index1041, 8     ; 2 uses
  %i.os = icmp eq i64 %index.next1050, %n.vec1039
  br i1 %i.os, label %middle.block1051, label %vector.body1040, !llvm.loop !56788

middle.block1051:                                 ; preds = %vector.body1040
  %cmp.n1052 = icmp eq i64 %i.ok, %n.vec1039
  br i1 %cmp.n1052, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader: ; preds = %.preheader.i.i.i.i.i.i.i.i, %middle.block1051
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %n.vec1039, %middle.block1051 ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.oy, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader ] ; 3 uses
  %i.ot = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6248.0.copyload250.i.pre, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ov = getelementptr [4 x i8], ptr %i.ol, i64 %i.ot ; 2 uses
  %i.ow = load i32, ptr %i.ou, align 4, !alias.scope !57028, !noalias !57030, !noundef !67
  %i.ox = load i32, ptr %i.ov, align 4, !alias.scope !57029, !noalias !57031
  store i32 %i.ox, ptr %i.ou, align 4, !alias.scope !57028, !noalias !57030
  store i32 %i.ow, ptr %i.ov, align 4, !alias.scope !57029, !noalias !57031
  %i.oy = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.oy, %i.ok
  br i1 %exitcond.not.i.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i, !llvm.loop !56789

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.sink.split: ; preds = %bb.ay, %bb.aw
  %.sroa.8251.0267.i.ph = phi i64 [ 0, %bb.aw ], [ 1, %bb.ay ]
  %.sroa.6248.0266.i.ph = phi ptr [ inttoptr (i64 4 to ptr), %bb.aw ], [ %i.np, %bb.ay ]
  %.sroa.0246.0265.i.ph = phi i64 [ 0, %bb.aw ], [ 4, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57017
  br label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.sink.split, %middle.block1051
  %.sroa.8251.0267.i = phi i64 [ %.sroa.8251.0267.i.ph, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.sink.split ], [ %i.oe, %middle.block1051 ], [ %i.oe, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i ]
  %.sroa.6248.0266.i = phi ptr [ %.sroa.6248.0266.i.ph, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.sink.split ], [ %.sroa.6248.0.copyload250.i.pre, %middle.block1051 ], [ %.sroa.6248.0.copyload250.i.pre, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i ] ; 2 uses
  %.sroa.0246.0265.i = phi i64 [ %.sroa.0246.0265.i.ph, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i.sink.split ], [ %.sroa.0246.0.copyload247.i.pre, %middle.block1051 ], [ %.sroa.0246.0.copyload247.i.pre, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !56999
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !56998
  %i.oz = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !56998 ; 8 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %bb.ba, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit63.i.i, !prof !104

bb.ba:                                            ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #61
          to label %.noexc62.i.i unwind label %bb.bx, !noalias !56998

.noexc62.i.i:                                     ; preds = %bb.ba
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit63.i.i: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i
  store i64 %.sroa.0246.0265.i, ptr %i.oz, align 8, !noalias !56998
  %.sroa.6248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  store ptr %.sroa.6248.0266.i, ptr %.sroa.6248.0..sroa_idx.i, align 8, !noalias !56998
  %.sroa.8251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store i64 %.sroa.8251.0267.i, ptr %.sroa.8251.0..sroa_idx.i, align 8, !noalias !56998
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  store i32 %i.ku, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !56998
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  store i64 0, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !56998
  store i64 1, ptr %i.c, align 8, !noalias !56999
  store ptr %i.oz, ptr %i.gu, align 8, !noalias !56999
  store i64 1, ptr %i.gv, align 8, !noalias !56999
  br label %bb.bb

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !57032)
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !57032, !noalias !56999 ; 2 uses
  %i.pb = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.pb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.pc = mul nuw i64 %.val2.i.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i64.i.i, i64 noundef %i.pc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !57033
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bb:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit63.i.i
  %i.pd = phi ptr [ %i.oz, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit63.i.i ], [ %.val.i64.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 4 uses
  %i.pe = phi i64 [ 1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit63.i.i ], [ %.pr.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  %i.pf = getelementptr [40 x i8], ptr %i.pd, i64 %i.pe ; 4 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 -8     ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pf, i64 -24
  %i.pi = load i64, ptr %i.pg, align 8, !noalias !56998, !noundef !67 ; 2 uses
  %i.pj = load i64, ptr %i.ph, align 8, !noalias !56998, !noundef !67 ; 3 uses
  %i.pk = icmp ult i64 %i.pj, 2305843009213693952
  call void @llvm.assume(i1 %i.pk)
  %i.pl = icmp ult i64 %i.pi, %i.pj
  br i1 %i.pl, label %.lr.ph.i81.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80._crit_edge.i.i

.lr.ph.i81.i:                                     ; preds = %bb.bb
  %i.pm = getelementptr i8, ptr %i.pf, i64 -32
  %.pre.i.i = load ptr, ptr %i.pm, align 8, !noalias !56998
  br label %bb.bc

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !56999
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.backedge.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.backedge.i.i: ; preds = %.lr.ph.i.i.i.i14, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kp, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !57034
  %.sroa.0191.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !57035 ; 8 uses
  %.sroa.4192.0.copyload.i = load ptr, ptr %i.gp, align 8, !noalias !57035 ; 9 uses
  %.sroa.5193.0.copyload.i = load i64, ptr %i.gq, align 8, !noalias !57035 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !56999
  %.val.i.i15 = load ptr, ptr %i.e, align 8, !noalias !56999 ; 2 uses
  %.val35.i.i = load i64, ptr %i.gt, align 8, !noalias !56999, !noundef !67 ; 4 uses
  %i.pn = icmp eq i64 %.val35.i.i, 0
  br i1 %i.pn, label %bb.by, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80.loopexit.i.i: ; preds = %.lr.ph.i.i71.i.i
  %exitcond.not.i = icmp eq i64 %i.qg, %i.pj
  br i1 %exitcond.not.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80._crit_edge.i.i, label %bb.bc

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80._crit_edge.i.i
  %.pr.i.i = phi i64 [ %i.po, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80._crit_edge.i.i ], [ %i.po, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %i.wz, %bb.bw ] ; 2 uses
  %.val.i64.i.i = phi ptr [ %i.pd, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80._crit_edge.i.i ], [ %i.pd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %i.wx, %bb.bw ] ; 2 uses
  %.not28.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not28.i.i, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.bb

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80._crit_edge.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80.loopexit.i.i, %bb.bb
  %i.po = add nsw i64 %i.pe, -1                   ; 5 uses
  store i64 %i.po, ptr %i.gv, align 8, !noalias !56999
  %i.pp = load i64, ptr %i.c, align 8, !range !70, !noalias !56999, !noundef !67
  %i.pq = icmp ult i64 %i.po, %i.pp
  call void @llvm.assume(i1 %i.pq)
  %i.pr = icmp ult i64 %i.pe, 230584300921369397
  call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw [40 x i8], ptr %i.pd, i64 %i.po ; 2 uses
  %.sroa.0147.0.copyload.i.i = load i64, ptr %i.ps, align 8, !noalias !56998 ; 2 uses
  %.0.val.off.i.i.i = add i64 %.sroa.0147.0.copyload.i.i, -1
  %switch.i.i.i = icmp ult i64 %.0.val.off.i.i.i, -2
  br i1 %switch.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80._crit_edge.i.i
  %.sroa.4148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %.sroa.4148.0.copyload.i.i = load ptr, ptr %.sroa.4148.0..sroa_idx.i.i, align 8, !noalias !56998, !nonnull !67, !noundef !67
  %i.pt = shl nuw i64 %.sroa.0147.0.copyload.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4148.0.copyload.i.i, i64 noundef %i.pt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !56998
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i103.i.i, %bb.bv, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i94.i.i, %.loopexit.split-lp.i.i, %.loopexit199.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.wu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i103.i.i ], [ %i.vz, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i94.i.i ], [ %i.wu, %bb.bv ], [ %lpad.loopexit.i.i, %.loopexit199.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57036)
  %.val.i167.i = load ptr, ptr %i.gu, align 8, !alias.scope !57036, !noalias !56999, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i.i = load i64, ptr %i.gv, align 8, !alias.scope !57036, !noalias !56999, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57037), !noalias !57005
  %i.pu = icmp eq i64 %.val1.i.i, 0
  br i1 %i.pu, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i168.i

.lr.ph.i.i.i168.i:                                ; preds = %.body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.pw, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %.body.i.i ] ; 2 uses
  %i.pv = getelementptr inbounds nuw [40 x i8], ptr %.val.i167.i, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.pw = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.pv, align 8, !alias.scope !57037, !noalias !57038 ; 2 uses
  %i.px = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.px, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i168.i
  %i.py = getelementptr i8, ptr %i.pv, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.py, align 8, !alias.scope !57037, !noalias !57038, !nonnull !67, !noundef !67
  %i.pz = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.pz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !57039
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i168.i
  %i.qa = icmp eq i64 %i.pw, %.val1.i.i
  br i1 %i.qa, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i168.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.body.i.i
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !57036, !noalias !56999 ; 2 uses
  %i.qb = icmp eq i64 %.val2.i.i, 0
  br i1 %i.qb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.qc = mul nuw i64 %.val2.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i167.i, i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !57038
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

.loopexit199.i.i:                                 ; preds = %bb.bj, %bb.bh
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.bs
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bc:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80.loopexit.i.i, %.lr.ph.i81.i
  %i.qd = phi i64 [ %i.pi, %.lr.ph.i81.i ], [ %i.qg, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80.loopexit.i.i ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !noalias !56998, !noundef !67 ; 6 uses
  %i.qg = add nsw i64 %i.qd, 1                    ; 3 uses
  store i64 %i.qg, ptr %i.pg, align 8, !noalias !56998
  call void @llvm.experimental.noalias.scope.decl(metadata !57040)
  %i.qh = load i64, ptr %i.gr, align 8, !alias.scope !57040, !noalias !56999, !noundef !67
  %i.qi = icmp eq i64 %i.qh, 0
  br i1 %i.qi, label %select.unfold180.loopexit221.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val.i65.i.i = load i64, ptr %i.gs, align 8, !alias.scope !57041, !noalias !57042, !noundef !67
  %i.qj = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !57043, !noundef !67
  %i.qk = zext i32 %i.qf to i64                   ; 2 uses
  %i.ql = xor i64 %.val.i65.i.i, %i.qk
  %i.qm = zext i64 %i.ql to i128
  %i.qn = zext i64 %i.qj to i128
  %i.qo = mul nuw i128 %i.qn, %i.qm               ; 2 uses
  %i.qp = lshr i128 %i.qo, 64
  %i.qq = xor i128 %i.qp, %i.qo
  %i.qr = trunc i128 %i.qq to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57044)
  call void @llvm.experimental.noalias.scope.decl(metadata !57045)
  %i.qs = lshr i64 %i.qr, 57
  %i.qt = trunc nuw nsw i64 %i.qs to i8
  %i.qu = load i64, ptr %i.gt, align 8, !alias.scope !57046, !noalias !57047, !noundef !67 ; 2 uses
  %i.qv = load ptr, ptr %i.e, align 8, !alias.scope !57046, !noalias !57047, !nonnull !67, !noundef !67 ; 2 uses
  %i.qw = insertelement <16 x i8> poison, i8 %i.qt, i64 0
  %i.qx = shufflevector <16 x i8> %i.qw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %bb.bd
  %.sroa.011.0.i.i.i66.i.i = phi i64 [ 0, %bb.bd ], [ %i.ro, %bb.bg ]
  %.pn.i.i67.i.i = phi i64 [ %i.qr, %bb.bd ], [ %i.rp, %bb.bg ]
  %.sroa.01.0.i.i.i68.i.i = and i64 %.pn.i.i67.i.i, %i.qu ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 %.sroa.01.0.i.i.i68.i.i
  %.sroa.0.0.copyload.i24.i.i69.i.i = load <16 x i8>, ptr %i.qy, align 1, !noalias !57048 ; 2 uses
  %i.qz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i69.i.i, %i.qx
  %i.ra = bitcast <16 x i1> %i.qz to i16          ; 2 uses
  %.not.i.not30.i.i70.i.i = icmp eq i16 %i.ra, 0
  br i1 %.not.i.not30.i.i70.i.i, label %._crit_edge.i.i75.i.i, label %.lr.ph.i.i71.i.i

.lr.ph.i.i71.i.i:                                 ; preds = %bb.be, %bb.bf
  %.sroa.05.0.i31.i.i72.i.i = phi i16 [ %i.rn, %bb.bf ], [ %i.ra, %bb.be ] ; 3 uses
  %i.rb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i72.i.i, i1 true)
  %i.rc = zext nneg i16 %i.rb to i64
  %i.rd = add i64 %.sroa.01.0.i.i.i68.i.i, %i.rc
  %i.re = and i64 %i.rd, %i.qu
  %i.rf = sub nsw i64 0, %i.re
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.rf
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 -4
  %.val2.i.i.i73.i.i = load i32, ptr %i.rh, align 4, !noalias !57049, !noundef !67
  %i.ri = icmp eq i32 %i.qf, %.val2.i.i.i73.i.i
  br i1 %i.ri, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit80.loopexit.i.i, label %bb.bf, !prof !77

._crit_edge.i.i75.i.i:                            ; preds = %bb.bf, %bb.be
  %i.rj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i69.i.i, splat (i8 -1)
  %i.rk = bitcast <16 x i1> %i.rj to i16
  %i.rl = icmp eq i16 %i.rk, 0
  br i1 %i.rl, label %bb.bg, label %select.unfold180.i.i, !prof !71

bb.bf:                                            ; preds = %.lr.ph.i.i71.i.i
  %i.rm = add i16 %.sroa.05.0.i31.i.i72.i.i, -1
  %i.rn = and i16 %i.rm, %.sroa.05.0.i31.i.i72.i.i ; 2 uses
  %.not.i.not.i.i74.i.i = icmp eq i16 %i.rn, 0
  br i1 %.not.i.not.i.i74.i.i, label %._crit_edge.i.i75.i.i, label %.lr.ph.i.i71.i.i

bb.bg:                                            ; preds = %._crit_edge.i.i75.i.i
  %i.ro = add i64 %.sroa.011.0.i.i.i66.i.i, 16    ; 2 uses
  %i.rp = add i64 %.sroa.01.0.i.i.i68.i.i, %i.ro
  br label %bb.be

select.unfold180.loopexit221.i.i:                 ; preds = %bb.bc
  %.pre236.i.i = zext i32 %i.qf to i64
  br label %select.unfold180.i.i

select.unfold180.i.i:                             ; preds = %._crit_edge.i.i75.i.i, %select.unfold180.loopexit221.i.i
  %.pre-phi.i.i = phi i64 [ %.pre236.i.i, %select.unfold180.loopexit221.i.i ], [ %i.qk, %._crit_edge.i.i75.i.i ] ; 4 uses
  %i.rq = getelementptr i8, ptr %i.pf, i64 -16
  %i.rr = load i32, ptr %i.rq, align 8, !noalias !56998, !noundef !67
  %i.rs = zext i32 %i.rr to i64
  %i.rt = load i64, ptr %i.gq, align 8, !alias.scope !57050, !noalias !56999, !noundef !67 ; 3 uses
  %i.ru = load i64, ptr %i.d, align 8, !range !70, !alias.scope !57050, !noalias !56999, !noundef !67
  %i.rv = icmp eq i64 %i.rt, %i.ru
  br i1 %i.rv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %select.unfold180.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #62
          to label %bb.bi unwind label %.loopexit199.i.i, !noalias !56998

bb.bi:                                            ; preds = %bb.bh, %select.unfold180.i.i
  %i.rw = load ptr, ptr %i.gp, align 8, !alias.scope !57050, !noalias !56999, !nonnull !67, !noundef !67
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %i.rw, i64 %i.rt ; 2 uses
  store i64 %i.rs, ptr %i.rx, align 8, !noalias !56998
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i64 %.pre-phi.i.i, ptr %i.ry, align 8, !noalias !56998
  %i.rz = add i64 %i.rt, 1
  store i64 %i.rz, ptr %i.gq, align 8, !alias.scope !57050, !noalias !56999
  call void @llvm.experimental.noalias.scope.decl(metadata !57051)
  %.val.i82.i.i = load i64, ptr %i.gs, align 8, !alias.scope !57052, !noalias !57053, !noundef !67
  %i.sa = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !57054, !noundef !67
  %i.sb = xor i64 %.val.i82.i.i, %.pre-phi.i.i
  %i.sc = zext i64 %i.sb to i128
  %i.sd = zext i64 %i.sa to i128
  %i.se = mul nuw i128 %i.sd, %i.sc               ; 2 uses
  %i.sf = lshr i128 %i.se, 64
  %i.sg = xor i128 %i.sf, %i.se
  %i.sh = trunc i128 %i.sg to i64                 ; 2 uses
  %i.si = load i64, ptr %i.gw, align 8, !alias.scope !57055, !noalias !56999, !noundef !67
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %bb.bj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, !prof !71

bb.bj:                                            ; preds = %bb.bi
  %i.sk = invoke { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef 1, ptr noundef nonnull align 8 %i.gs, i1 noundef zeroext true) #62
          to label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i unwind label %.loopexit199.i.i, !noalias !56998 ; 0 uses

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !57056, !noalias !56999, !nonnull !67, !noundef !67 ; 8 uses
  %.val5.i.i.i.i = load i64, ptr %i.gt, align 8, !alias.scope !57056, !noalias !56999, !noundef !67 ; 4 uses
  %i.sl = lshr i64 %i.sh, 57
  %i.sm = trunc nuw nsw i64 %i.sl to i8           ; 3 uses
  %i.sn = insertelement <16 x i8> poison, i8 %i.sm, i64 0
  %i.so = shufflevector <16 x i8> %i.sn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bn, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.sh, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.tn, %bb.bn ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i, %bb.bn ]
  %.sroa.01.0.i.i.i83.i.i = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %.sroa.01.122.i.i.i.i.i, %bb.bn ]
  %i.sp = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.tm, %bb.bn ]
  %.sroa.0.017.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val5.i.i.i.i ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.sq, align 1, !noalias !57057 ; 3 uses
  %i.sr = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %i.so
  %i.ss = bitcast <16 x i1> %i.sr to i16          ; 2 uses
  %.not28.i.i.i.i.i = icmp eq i16 %i.ss, 0
  br i1 %.not28.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i84.i.i

.lr.ph.i.i.i84.i.i:                               ; preds = %bb.bk, %bb.bl
  %.sroa.05.029.i.i.i.i.i = phi i16 [ %i.tc, %bb.bl ], [ %i.ss, %bb.bk ] ; 3 uses
  %i.st = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i.i.i.i, i1 true)
  %i.su = zext nneg i16 %i.st to i64
  %i.sv = add i64 %.sroa.0.017.i.i.i.i.i, %i.su
  %i.sw = and i64 %i.sv, %.val5.i.i.i.i
  %i.sx = sub nsw i64 0, %i.sw
  %i.sy = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.sx
  %i.sz = getelementptr inbounds i8, ptr %i.sy, i64 -4
  %.val2.i.i.i85.i.i = load i32, ptr %i.sz, align 4, !noalias !57058, !noundef !67
  %i.ta = icmp eq i32 %i.qf, %.val2.i.i.i85.i.i
  br i1 %i.ta, label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bl, !prof !77

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bl, %bb.bk
  %.not11.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i83.i.i, 1
  br i1 %.not11.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.bm, !prof !71

bb.bl:                                            ; preds = %.lr.ph.i.i.i84.i.i
  %i.tb = add i16 %.sroa.05.029.i.i.i.i.i, -1
  %i.tc = and i16 %i.tb, %.sroa.05.029.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.tc, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i84.i.i

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.td = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, zeroinitializer
  %i.te = bitcast <16 x i1> %i.td to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.te, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bn, label %.thread24.i.i.i.i.i, !prof !71

.thread24.i.i.i.i.i:                              ; preds = %bb.bm
  %i.tf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.te, i1 true)
  %i.tg = zext nneg i16 %i.tf to i64
  %i.th = add i64 %.sroa.0.017.i.i.i.i.i, %i.tg
  %i.ti = and i64 %i.th, %.val5.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread24.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i = phi i64 [ %i.ti, %.thread24.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.tj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1)
  %i.tk = bitcast <16 x i1> %i.tj to i16
  %i.tl = icmp eq i16 %i.tk, 0
  br i1 %i.tl, label %bb.bn, label %bb.bo, !prof !71

bb.bn:                                            ; preds = %.thread.i.i.i.i.i, %bb.bm
  %.sroa.01.122.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.bm ]
  %.sroa.4.120.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.bm ]
  %i.tm = add i64 %i.sp, 16                       ; 2 uses
  %i.tn = add i64 %i.tm, %.sroa.0.017.i.i.i.i.i
  br label %bb.bk

bb.bo:                                            ; preds = %.thread.i.i.i.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i
  %i.tp = load i8, ptr %i.to, align 1, !noalias !56998, !noundef !67 ; 2 uses
  %i.tq = icmp sgt i8 %i.tp, -1
  br i1 %i.tq, label %bb.bp, label %bb.bq, !prof !71

bb.bp:                                            ; preds = %bb.bo
  %.val62.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !56998
  %i.tr = icmp slt <16 x i8> %.val62.i.i.i.i.i.i, zeroinitializer
  %i.ts = bitcast <16 x i1> %i.tr to i16          ; 2 uses
  %.not.i22.i.i.i.i.i = icmp ne i16 %i.ts, 0
  %i.tt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ts, i1 true)
  %i.tu = zext nneg i16 %i.tt to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.tu
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !57059
end_hunk_3
begin_hunk_4_@_RNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_0B5_:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !57226
  %i.e = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !57226 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.e to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.49.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i, i64 %i.c) #61
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.d, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.g, %bb.d ], [ 8, %bb.b ]
  %.sroa.49.0.i = phi i64 [ %.sroa.8.0.copyload, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.h = inttoptr i64 %.sroa.10.0.i to ptr        ; 9 uses
  %i.i = icmp samesign ule i64 %.sroa.8.0.copyload, %.sroa.49.0.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.j, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_00EE9from_iterB3H_.exit, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %min.iters.check = icmp ult i64 %.sroa.8.0.copyload, 10
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader3, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.c
  %i.k = shl i64 %.sroa.8.0.copyload, 2
  %scevgep1 = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.k
  %bound0 = icmp ugt ptr %scevgep1, %i.h
  %bound1 = icmp ult ptr %.sroa.5.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.preheader3, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.sroa.8.0.copyload, -4        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load = load <2 x i32>, ptr %i.l, align 4, !alias.scope !57227, !noalias !57228
  %wide.load2 = load <2 x i32>, ptr %i.m, align 4, !alias.scope !57227, !noalias !57228
  %i.n = zext <2 x i32> %wide.load to <2 x i64>
  %i.o = zext <2 x i32> %wide.load2 to <2 x i64>
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %i.n, ptr %i.p, align 8, !alias.scope !57229, !noalias !57230
  store <2 x i64> %i.o, ptr %i.q, align 8, !alias.scope !57229, !noalias !57230
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !57223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.8.0.copyload, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_00EE9from_iterB3H_.exit, label %.preheader.i.i.i.preheader3

.preheader.i.i.i.preheader3:                      ; preds = %vector.memcheck, %.preheader.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.8.0.copyload, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader3, %.preheader.i.i.i.prol
  %i.s = phi i64 [ %i.w, %.preheader.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.preheader3 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.prol ], [ 0, %.preheader.i.i.i.preheader3 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.s
  %.val15.i.i.i.i.i.i.prol = load i32, ptr %i.t, align 4, !noalias !57228, !noundef !67
  %i.u = zext i32 %.val15.i.i.i.i.i.i.prol to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.s
  store i64 %i.u, ptr %i.v, align 8, !noalias !57231
  %i.w = add nuw i64 %i.s, 1                      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol, !llvm.loop !57224

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader3
  %.unr = phi i64 [ %.ph, %.preheader.i.i.i.preheader3 ], [ %i.w, %.preheader.i.i.i.prol ]
  %i.x = sub i64 %.ph, %.sroa.8.0.copyload
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_00EE9from_iterB3H_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %i.z = phi i64 [ %i.ap, %.preheader.i.i.i ], [ %.unr, %.preheader.i.i.i.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.z
  %.val15.i.i.i.i.i.i = load i32, ptr %i.aa, align 4, !noalias !57228, !noundef !67
  %i.ab = zext i32 %.val15.i.i.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !57231
  %i.ad = add nuw i64 %i.z, 1                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.ad
  %.val15.i.i.i.i.i.i.1 = load i32, ptr %i.ae, align 4, !noalias !57228, !noundef !67
  %i.af = zext i32 %.val15.i.i.i.i.i.i.1 to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !noalias !57231
  %i.ah = add nuw i64 %i.z, 2                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.ah
  %.val15.i.i.i.i.i.i.2 = load i32, ptr %i.ai, align 4, !noalias !57228, !noundef !67
  %i.aj = zext i32 %.val15.i.i.i.i.i.i.2 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ah
  store i64 %i.aj, ptr %i.ak, align 8, !noalias !57231
  %i.al = add nuw i64 %i.z, 3                     ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.al
  %.val15.i.i.i.i.i.i.3 = load i32, ptr %i.am, align 4, !noalias !57228, !noundef !67
  %i.an = zext i32 %.val15.i.i.i.i.i.i.3 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  store i64 %i.an, ptr %i.ao, align 8, !noalias !57231
  %i.ap = add nuw i64 %i.z, 4                     ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %.sroa.8.0.copyload
  br i1 %i.aq, label %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_00EE9from_iterB3H_.exit, label %.preheader.i.i.i, !llvm.loop !57225

bb.f:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.as, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.f
  %i.at = shl nuw i64 %.sroa.0.0.copyload, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit

_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_00EE9from_iterB3H_.exit: ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  store i64 %.sroa.49.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.57.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.b, ptr %i.au, align 8
  %i.av = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.av, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit5, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i4

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i4: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_00EE9from_iterB3H_.exit
  %i.aw = shl nuw i64 %.sroa.0.0.copyload, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit5

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit5: ; preds = %_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx8geometry25hyperbolic_greedy_routings0_00EE9from_iterB3H_.exit, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i4
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.f
  resume { ptr, i32 } %i.ar
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef double @_RNCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_components_0B7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %3, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3
  %i.c = load <2 x double>, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !67 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !67, !align !98
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !67, !align !98
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !67, !align !98
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.07.0.ph31 = phi ptr [ %i.e, %.lr.ph.lr.ph ], [ %i.s, %.outer ]
  %i.r = phi <2 x double> [ zeroinitializer, %.lr.ph.lr.ph ], [ %i.av, %.outer ] ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1432) #60
  unreachable

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.07.027 = phi ptr [ %.sroa.07.0.ph31, %.lr.ph ], [ %i.s, %bb.j ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.027, i64 8 ; 4 uses
  %i.t = load i64, ptr %.sroa.07.027, align 8, !noundef !67 ; 5 uses
  %i.u = icmp eq i64 %i.t, %3
  br i1 %i.u, label %bb.j, label %bb.e

.outer._crit_edge:                                ; preds = %.outer, %bb.j, %bb.b
  %i.v = phi <2 x double> [ %i.r, %bb.j ], [ zeroinitializer, %bb.b ], [ %i.av, %.outer ] ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.v             ; 2 uses
  %shift = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.w
  %4 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.x = tail call double @llvm.sqrt.f64(double %4)
  ret double %i.x

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.k, align 8, !noundef !67
  %i.z = mul i64 %i.y, %3
  %i.aa = add i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp ult i64 %i.aa, %i.m
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ad = load double, ptr %i.ac, align 8, !noundef !67 ; 4 uses
  %or.cond = tail call i1 @llvm.is.fpclass.f64(double %i.ad, /* (nan inf zero nsub nnorm) */ i32 639)
  br i1 %or.cond, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1433) #60
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp ult i64 %i.t, %2
  br i1 %i.ae, label %.outer, label %bb.i

.outer:                                           ; preds = %bb.h
  %i.af = fmul nnan double %i.ad, %i.ad
  %i.ag = fdiv nnan double 1.000000e+00, %i.af
  %i.ah = load double, ptr %i.q, align 8, !noundef !67
  %i.ai = fdiv double %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.t
  %i.ak = load <2 x double>, ptr %i.aj, align 8
  %i.al = fsub <2 x double> %i.c, %i.ak           ; 3 uses
  %i.am = fmul <2 x double> %i.al, %i.al          ; 2 uses
  %shift98 = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop99 = fadd <2 x double> %i.am, %shift98
  %5 = extractelement <2 x double> %foldExtExtBinop99, i64 0
  %i.an = tail call double @llvm.sqrt.f64(double %5)
  %i.ao = tail call nsz double @llvm.maximumnum.f64(double %i.an, double 1.000000e-08)
  %i.ap = fdiv double %i.ai, %i.ao
  %i.aq = fsub double 1.000000e+00, %i.ap
  %i.ar = fmul double %i.ag, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.al, %i.at
  %i.av = fadd <2 x double> %i.r, %i.au           ; 2 uses
  %i.aw = icmp eq ptr %i.s, %i.h
  br i1 %i.aw, label %.outer._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1434) #60
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.d
  %i.ax = icmp eq ptr %i.s, %i.h
  br i1 %i.ax, label %.outer._crit_edge, label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7graphml4TypeEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvXsz_B1y_B1w_NtNtB11_10conversion12IntoPyObject13into_pyobject0BW_NtNtB11_3err5PyErrE0B4u_E0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB1A_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7graphml4TypeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvXsz_B1t_B1r_NtNtBW_10conversion12IntoPyObject13into_pyobject0BR_NtNtBW_3err5PyErrE0B4n_E0B1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64, !inline_history !57232
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7graphml6DomainEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvXsm_B1y_B1w_NtNtB11_10conversion12IntoPyObject13into_pyobject0BW_NtNtB11_3err5PyErrE0B4w_E0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB1A_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7graphml6DomainEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvXsm_B1t_B1r_NtNtBW_10conversion12IntoPyObject13into_pyobject0BR_NtNtBW_3err5PyErrE0B4p_E0B1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64, !inline_history !57233
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx8coloring16ColoringStrategyEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvXs0_B1y_B1w_NtNtB11_10conversion12IntoPyObject13into_pyobject0BW_NtNtB11_3err5PyErrE0B4I_E0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB1A_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx8coloring16ColoringStrategyEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvXs0_B1t_B1r_NtNtBW_10conversion12IntoPyObject13into_pyobject0BR_NtNtBW_3err5PyErrE0B4B_E0B1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64, !inline_history !57234
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXs13_CskcxRuJ53GpR_9rustworkxNtB4c_22JSONSerializationErrorNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4c_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXs13_CskcxRuJ53GpR_9rustworkxNtB45_22JSONSerializationErrorNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B45_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXs18_CskcxRuJ53GpR_9rustworkxNtB4c_24JSONDeserializationErrorNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4c_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXs18_CskcxRuJ53GpR_9rustworkxNtB45_24JSONDeserializationErrorNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B45_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXs1d_CskcxRuJ53GpR_9rustworkxNtB4c_13NegativeCycleNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4c_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXs1d_CskcxRuJ53GpR_9rustworkxNtB45_13NegativeCycleNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B45_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXs1i_CskcxRuJ53GpR_9rustworkxNtB4c_16FailedToConvergeNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4c_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXs1i_CskcxRuJ53GpR_9rustworkxNtB45_16FailedToConvergeNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B45_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXs1n_CskcxRuJ53GpR_9rustworkxNtB4c_17GraphNotBipartiteNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4c_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXs1n_CskcxRuJ53GpR_9rustworkxNtB45_17GraphNotBipartiteNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B45_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXsC_CskcxRuJ53GpR_9rustworkxNtB4b_9NullGraphNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXsC_CskcxRuJ53GpR_9rustworkxNtB44_9NullGraphNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXsH_CskcxRuJ53GpR_9rustworkxNtB4b_11NoPathFoundNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXsH_CskcxRuJ53GpR_9rustworkxNtB44_11NoPathFoundNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXsM_CskcxRuJ53GpR_9rustworkxNtB4b_14InvalidMappingNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXsM_CskcxRuJ53GpR_9rustworkxNtB44_14InvalidMappingNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXsd_CskcxRuJ53GpR_9rustworkxNtB4b_11InvalidNodeNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXsd_CskcxRuJ53GpR_9rustworkxNtB44_11InvalidNodeNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXsi_CskcxRuJ53GpR_9rustworkxNtB4b_13DAGWouldCycleNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXsi_CskcxRuJ53GpR_9rustworkxNtB44_13DAGWouldCycleNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXsn_CskcxRuJ53GpR_9rustworkxNtB4b_18NoEdgeBetweenNodesNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXsn_CskcxRuJ53GpR_9rustworkxNtB44_18NoEdgeBetweenNodesNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXss_CskcxRuJ53GpR_9rustworkxNtB4b_11DAGHasCycleNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXss_CskcxRuJ53GpR_9rustworkxNtB44_11DAGHasCycleNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBf_4syncINtB2s_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvXsx_CskcxRuJ53GpR_9rustworkxNtB4b_19NoSuitableNeighborsNtNtB11_11type_object10PyTypeInfo15type_object_raw0BW_E0E0NtNvMs4_B2s_IB2D_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableB4b_(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvMs4_NtBa_4syncINtB2m_8OnceCellBR_E11get_or_initNCINvNtNtBW_4sync9once_lock26init_once_cell_py_attachedNCNvXsx_CskcxRuJ53GpR_9rustworkxNtB44_19NoSuitableNeighborsNtNtBW_11type_object10PyTypeInfo15type_object_raw0BR_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0B44_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64 ; 0 uses
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types10typeobject6PyTypeEE10initializeNCINvNtNtB11_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2o_INtB2o_10PyOnceLockBW_E6import0BW_NtNtB11_3err5PyErrE0B41_E0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableCskcxRuJ53GpR_9rustworkx(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB8_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBW_5types10typeobject6PyTypeEE10initializeNCINvNtNtBW_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2i_INtB2i_10PyOnceLockBR_E6import0BR_NtNtBW_3err5PyErrE0B3U_E0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %0) #64
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBd_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB11_5types6string8PyStringEE10initializeNCINvMs4_NtBf_4syncINtB2p_8OnceCellBW_E11get_or_initNCINvNtNtB11_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3d_NtB3d_8Interned3get0BW_E0E0NtNvMs4_B2p_IB2A_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_once6vtableCskcxRuJ53GpR_9rustworkx(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !57243, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !57244 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !57244
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.5.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !57244
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.sroa.5.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !57244
  store ptr null, ptr %.val, align 8, !noalias !57244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57245
  store i64 %.sroa.5.sroa.5.0.copyload.i.i, ptr %i.a, align 8, !noalias !57245
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.6.0.copyload.i.i, ptr %i.c, align 8, !noalias !57245
  call void @_RNvXs4_NtNtCsi0YPOvDEjiZ_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !57245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57245
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %i.d = call noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types6stringNtB2_8PyString6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.0.0.copyload.i.i, i64 noundef %.sroa.5.sroa.4.0.copyload.i.i), !noalias !57245 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !57244, !noundef !67
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !57244, !noundef !67 ; 3 uses
  %i.f = icmp eq ptr %.val.i.i, null
  br i1 %i.f, label %_RNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBb_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_onceCskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !57244, !noundef !67
  %i.h = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %bb.d, label %bb.c, !prof !125

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i.i)
          to label %_RNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBb_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_onceCskcxRuJ53GpR_9rustworkx.exit unwind label %bb.e, !noalias !57244

bb.d:                                             ; preds = %bb.b
  call void @_Py_DecRef(ptr noundef nonnull %.val.i.i) #59, !noalias !57244
  br label %_RNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBb_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_onceCskcxRuJ53GpR_9rustworkx.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %.val1, align 8, !noalias !57244, !noundef !67
  store ptr %i.d, ptr %i.j, align 8, !noalias !57244
  resume { ptr, i32 } %i.i

_RNvYNCINvMs2_NtCs9L98AOj04qD_9once_cell3impINtBb_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBZ_5types6string8PyStringEE10initializeNCINvMs4_NtBd_4syncINtB2m_8OnceCellBU_E11get_or_initNCINvNtNtBZ_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B3a_NtB3a_8Interned3get0BU_E0E0NtNvMs4_B2m_IB2x_pE11get_or_init4VoidE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceuE9call_onceCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = load ptr, ptr %.val1, align 8, !noalias !57244, !noundef !67
  store ptr %i.d, ptr %i.k, align 8, !noalias !57244
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBc_5PyErr3newNtCskcxRuJ53GpR_9rustworkx11DAGHasCycleNtNtCs87CvPiUlf0m_5alloc6string6StringE0INtNtNtCslwFuT2d6ECx_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBS_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph:bb.a
  %.val4.i.i.i.i.i.i.i237.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i236.i ], [ %i.js, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3G_5types3any5PyAnyEB3B_NtBZ_10UndirectedEB3B_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B52_B3B_Es3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7g_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B58_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.js = add nuw nsw i64 %.val4.i.i.i.i.i.i.i237.i, 1 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !100139
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_nodeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc.i.i.i.i.i.i.i245.i unwind label %.loopexit.i.i.i.i.i.i.i239.i, !noalias !100140

.noexc.i.i.i.i.i.i.i245.i:                        ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !100141)
  %i.jt = load i64, ptr %i.n, align 8, !range !123, !alias.scope !100141, !noalias !100142, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i246.i = icmp eq i64 %i.jt, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i246.i, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3G_5types3any5PyAnyEB3B_NtBZ_10UndirectedEB3B_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B52_B3B_Es3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7g_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B58_.exit.i.i.i.i.i.i.i.i, label %bb.cg, !prof !77

bb.cg:                                            ; preds = %.noexc.i.i.i.i.i.i.i245.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !100143
  %i.ju = load i64, ptr %i.jr, align 8, !alias.scope !100141, !noalias !100142
  store i64 %i.jt, ptr %i.m, align 8, !noalias !100143
  %i.jv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ju, ptr %i.jv, align 8, !noalias !100143
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4184) #60
          to label %.noexc7.i.i.i.i.i.i.i249.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i247.i, !noalias !100140

.noexc7.i.i.i.i.i.i.i249.i:                       ; preds = %bb.cg
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3G_5types3any5PyAnyEB3B_NtBZ_10UndirectedEB3B_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B52_B3B_Es3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7g_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B58_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i245.i
  %i.jw = load i32, ptr %i.jr, align 8, !alias.scope !100141, !noalias !100142, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !100139
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.val4.i.i.i.i.i.i.i237.i
  store i32 %i.jw, ptr %i.jx, align 4, !noalias !100144
  %exitcond.not.i.i.i.i.i.i.i250.i = icmp eq i64 %i.js, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i250.i, label %.loopexit382.i, label %bb.cf

.loopexit.i.i.i.i.i.i.i239.i:                     ; preds = %bb.cf
  %lpad.loopexit.i.i.i.i.i.i.i240.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i243.i

.loopexit.split-lp.i.i.i.i.i.i.i247.i:            ; preds = %bb.cg
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i248.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i243.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i243.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i247.i, %.loopexit.i.i.i.i.i.i.i239.i
  %lpad.phi.i.i.i.i.i.i.i242.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i240.i, %.loopexit.i.i.i.i.i.i.i239.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i248.i, %.loopexit.split-lp.i.i.i.i.i.i.i247.i ]
  %i.jy = shl nuw i64 %.sroa.410.0.i.i231.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jp, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !100145
  br label %.body178.i

bb.ch:                                            ; preds = %bb.bz
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @658) #61
          to label %bb.h unwind label %bb.bd, !noalias !100060

bb.ci:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i216.i, %._crit_edge.i.i.i.i.i.i.i214.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !100126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !100060
  br label %.loopexit382.i

.loopexit381.i:                                   ; preds = %bb.cn
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp.i:                             ; preds = %.invoke621.i, %.invoke.i, %.loopexit382.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.split-lp.i, %.loopexit381.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit381.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.jz = icmp eq i64 %.sroa.0312.0.i, 0
  br i1 %i.jz, label %.body178.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i258.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i258.i: ; preds = %bb.cj
  %i.ka = shl nuw i64 %.sroa.0312.0.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6314.0.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6314.0.i, i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !100060
  br label %.body178.i

.loopexit382.i:                                   ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3G_5types3any5PyAnyEB3B_NtBZ_10UndirectedEB3B_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B52_B3B_Es3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7g_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B58_.exit.i.i.i.i.i.i.i.i, %bb.ci, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i229.i
  %.sroa.0312.0.i = phi i64 [ %i.ie, %bb.ci ], [ %.sroa.410.0.i.i231.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i229.i ], [ %.sroa.410.0.i.i231.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3G_5types3any5PyAnyEB3B_NtBZ_10UndirectedEB3B_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B52_B3B_Es3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7g_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B58_.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6314.0.i = phi ptr [ %i.im, %bb.ci ], [ %i.jp, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i229.i ], [ %i.jp, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3G_5types3any5PyAnyEB3B_NtBZ_10UndirectedEB3B_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B52_B3B_Es3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7g_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B58_.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.11315.0.i = phi i64 [ %.sroa.5.0.i.i.i.i.i.i215.i, %bb.ci ], [ 0, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i229.i ], [ %2, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtBX_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3G_5types3any5PyAnyEB3B_NtBZ_10UndirectedEB3B_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B52_B3B_Es3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7g_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1J_EE0E0E0B58_.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.kb = icmp ult i64 %.sroa.11315.0.i, 2305843009213693952
  call void @llvm.assume(i1 %i.kb)
  %i.kc = add nuw nsw i64 %.sroa.11315.0.i, %.sroa.13.0327.i
  %i.kd = trunc i64 %i.kc to i32                  ; 2 uses
  %i.ke = add i32 %i.kd, -1
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !100146
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ao, i32 noundef %i.ke, i32 noundef %i.kd, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc263.i unwind label %.loopexit.split-lp.i, !noalias !100060

.noexc263.i:                                      ; preds = %.loopexit382.i
  %i.kf = load i64, ptr %i.l, align 8, !range !123, !noalias !100146, !noundef !67 ; 3 uses
  %cond.i.i260.i = icmp eq i64 %i.kf, 2
  br i1 %cond.i.i260.i, label %bb.cm, label %bb.ck, !prof !79

bb.ck:                                            ; preds = %.noexc263.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100147)
  %.not.i.i.i261.i = icmp eq i64 %i.kf, -1
  br i1 %.not.i.i.i261.i, label %.split453.i, label %bb.cl, !prof !77

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !100148
  %i.kg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !alias.scope !100147, !noalias !100149
  store i64 %i.kf, ptr %i.i, align 8, !noalias !100148
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.cp, %bb.cl
  %.sink624.i.sroa.phi = phi ptr [ %.sink624.i.sroa.gep, %bb.cp ], [ %.sink624.i.sroa.gep37, %bb.cl ]
  %.sink624.i = phi ptr [ %i.e, %bb.cp ], [ %i.i, %bb.cl ]
  %.sink.i = phi i64 [ %i.ld, %bb.cp ], [ %i.kh, %bb.cl ]
  %i.ki = phi ptr [ @660, %bb.cp ], [ @659, %bb.cl ]
  store i64 %.sink.i, ptr %.sink624.i.sroa.phi, align 8, !noalias !100060
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %.sink624.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ki) #60
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !100060

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.cm:                                            ; preds = %.noexc263.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !100146
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !100146, !noundef !67
  store i64 %i.kk, ptr %i.k, align 8, !noalias !100146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !100146
  store ptr %i.k, ptr %i.j, align 8, !noalias !100146
  br label %.invoke621.i

.invoke621.i:                                     ; preds = %bb.cq, %bb.cm
  %.sink625.i.sroa.phi = phi ptr [ %.sink625.i.sroa.gep, %bb.cq ], [ %.sink625.i.sroa.gep36, %bb.cm ]
  %.sink625.i = phi ptr [ %i.f, %bb.cq ], [ %i.j, %bb.cm ]
  %i.kl = phi ptr [ @660, %bb.cq ], [ @659, %bb.cm ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink625.i.sroa.phi, align 8, !noalias !100060
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %.sink625.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kl) #60
          to label %.cont622.i unwind label %.loopexit.split-lp.i, !noalias !100060

.cont622.i:                                       ; preds = %.invoke621.i
  unreachable

.split453.i:                                      ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !100146
  %i.km = add nsw i64 %.sroa.11315.0.i, -1        ; 2 uses
  %.not457.i = icmp eq i64 %i.km, 0
  br i1 %.not457.i, label %._crit_edge455.i, label %.split450.i

.loopexit.i:                                      ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit279.i, %.split450.i
  %exitcond507.not.i = icmp eq i64 %i.kp, %i.km
  br i1 %exitcond507.not.i, label %._crit_edge455.i, label %.split450.i

._crit_edge455.i:                                 ; preds = %.loopexit.i, %.split453.i
  %.sroa.032.0.copyload33 = load i64, ptr %i.ao, align 8, !noalias !100150 ; 2 uses
  %.sroa.7.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx34, i64 64, i1 false), !noalias !100150
  %i.kn = icmp eq i64 %.sroa.0312.0.i, 0
  br i1 %i.kn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit268.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i267.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i267.i: ; preds = %._crit_edge455.i
  %i.ko = shl nuw i64 %.sroa.0312.0.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6314.0.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6314.0.i, i64 noundef %i.ko, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !100060
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit268.i

.split450.i:                                      ; preds = %.split453.i, %.loopexit.i
  %.sroa.052.0454.i = phi i64 [ %i.kp, %.loopexit.i ], [ 0, %.split453.i ] ; 2 uses
  %i.kp = add nuw i64 %.sroa.052.0454.i, 1        ; 4 uses
  %i.kq = icmp ult i64 %i.kp, %.sroa.11315.0.i
  br i1 %i.kq, label %.lr.ph452.i, label %.loopexit.i

.lr.ph452.i:                                      ; preds = %.split450.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6314.0.i) ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6314.0.i, i64 %.sroa.052.0454.i
  br label %bb.cn

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit268.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i267.i, %._crit_edge455.i
  %i.ks = trunc nuw i8 %.sroa.036.1.i to i1
  %i.kt = icmp ne i64 %.sroa.0294.0339.i, 0
  %or.cond368.not.i = and i1 %i.kt, %i.ks
  br i1 %or.cond368.not.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i271.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit272.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit272.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i271.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit268.i
  %i.ku = icmp eq i64 %.sroa.0290.0579.i, 0
  br i1 %i.ku, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i269.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i269.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit272.i
  %i.kv = shl nuw i64 %.sroa.0290.0579.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0575.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0575.i, i64 noundef %i.kv, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !100060
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i271.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit268.i
  %i.kw = shl nuw i64 %.sroa.0294.0339.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0333.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0333.i, i64 noundef %i.kw, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !100060
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit272.i

bb.cn:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit279.i, %.lr.ph452.i
  %.sroa.054.0451.i = phi i64 [ %i.kp, %.lr.ph452.i ], [ %i.kx, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit279.i ] ; 2 uses
  %i.kx = add nsw i64 %.sroa.054.0451.i, 1        ; 2 uses
  %i.ky = load i32, ptr %i.kr, align 4, !noalias !100060, !noundef !67
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6314.0.i, i64 %.sroa.054.0451.i
  %i.la = load i32, ptr %i.kz, align 4, !noalias !100060, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !100151
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ao, i32 noundef %i.ky, i32 noundef %i.la, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc276.i unwind label %.loopexit381.i, !noalias !100060

.noexc276.i:                                      ; preds = %bb.cn
  %i.lb = load i64, ptr %i.h, align 8, !range !123, !noalias !100151, !noundef !67 ; 3 uses
  %cond.i.i273.i = icmp eq i64 %i.lb, 2
  br i1 %cond.i.i273.i, label %bb.cq, label %bb.co, !prof !79

bb.co:                                            ; preds = %.noexc276.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100152)
  %.not.i.i.i274.i = icmp eq i64 %i.lb, -1
  br i1 %.not.i.i.i274.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit279.i, label %bb.cp, !prof !77

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !100153
  %i.lc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !100152, !noalias !100154
  store i64 %i.lb, ptr %i.e, align 8, !noalias !100153
  br label %.invoke.i

bb.cq:                                            ; preds = %.noexc276.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !100151
  %i.lf = load i64, ptr %i.le, align 8, !noalias !100151, !noundef !67
  store i64 %i.lf, ptr %i.g, align 8, !noalias !100151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !100151
  store ptr %i.g, ptr %i.f, align 8, !noalias !100151
  br label %.invoke621.i

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit279.i: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !100151
  %exitcond506.not.i = icmp eq i64 %i.kx, %.sroa.11315.0.i
  br i1 %exitcond506.not.i, label %.loopexit.i, label %bb.cn

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i280.i: ; preds = %.body178.i
  %i.lg = shl nuw i64 %.sroa.0294.0334.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0328.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0328.i, i64 noundef %i.lg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !100060
  br label %.body138.i

bb.cr:                                            ; preds = %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit288.i, %.lr.ph.i
  %.sroa.046.0435.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.lh, %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit288.i ] ; 2 uses
  %i.lh = add i64 %.sroa.046.0435.i, 1            ; 2 uses
  %i.li = load i32, ptr %i.ds, align 4, !noalias !100060, !noundef !67
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0576.i, i64 %.sroa.046.0435.i
  %i.lk = load i32, ptr %i.lj, align 4, !noalias !100060, !noundef !67
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59, !noalias !100060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !100155
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE12try_add_edgeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ao, i32 noundef %i.li, i32 noundef %i.lk, ptr noundef nonnull @_Py_NoneStruct)
          to label %.noexc285.i unwind label %.loopexit389.i, !noalias !100060

.noexc285.i:                                      ; preds = %bb.cr
  %i.ll = load i64, ptr %i.d, align 8, !range !123, !noalias !100155, !noundef !67 ; 3 uses
  %cond.i.i282.i = icmp eq i64 %i.ll, 2
  br i1 %cond.i.i282.i, label %bb.cu, label %bb.cs, !prof !79

bb.cs:                                            ; preds = %.noexc285.i
  call void @llvm.experimental.noalias.scope.decl(metadata !100156)
  %.not.i.i.i283.i = icmp eq i64 %i.ll, -1
  br i1 %.not.i.i.i283.i, label %_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit288.i, label %bb.ct, !prof !77

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100157
  %i.lm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !alias.scope !100156, !noalias !100158
  store i64 %i.ll, ptr %i.a, align 8, !noalias !100157
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ln, ptr %i.lo, align 8, !noalias !100157
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @661) #60
          to label %.noexc286.i unwind label %.loopexit.split-lp390.i, !noalias !100060

.noexc286.i:                                      ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %.noexc285.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !100155
  %i.lq = load i64, ptr %i.lp, align 8, !noalias !100155, !noundef !67
  store i64 %i.lq, ptr %i.c, align 8, !noalias !100155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100155
  store ptr %i.c, ptr %i.b, align 8, !noalias !100155
  %.sroa.42.0..sroa_idx.i.i284.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i284.i, align 8, !noalias !100155
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @661) #60
          to label %.noexc287.i unwind label %.loopexit.split-lp390.i, !noalias !100060

.noexc287.i:                                      ; preds = %bb.cu
  unreachable

_RNvXs4_NtCs68Jln09rRqb_8petgraph4dataINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1r_5types3any5PyAnyEB1m_NtB7_10UndirectedENtB5_5Build8add_edgeCskcxRuJ53GpR_9rustworkx.exit288.i: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !100155
  %exitcond.not.i = icmp eq i64 %i.lh, %.sroa.11.0571.i
  br i1 %exitcond.not.i, label %.loopexit388.i, label %bb.cr

.body.i:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body138.i, %bb.ai, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i98.i, %bb.y, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %.body.i.i.i
  %.sroa.039.1.i = phi i1 [ true, %bb.y ], [ true, %bb.ai ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i98.i ], [ %.sroa.039.3.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ true, %.body.i.i.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %.sroa.039.3.i, %.body138.i ]
  %.sroa.040.1.i = phi i1 [ true, %bb.y ], [ true, %bb.ai ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i98.i ], [ %.sroa.040.3.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ true, %.body.i.i.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %.sroa.040.3.i, %.body138.i ]
  %.sroa.041.1.i = phi i1 [ false, %bb.y ], [ true, %bb.ai ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i98.i ], [ %.not60.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ false, %.body.i.i.i ], [ false, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %.not60.i, %.body138.i ]
  %.pn68.pn.i = phi { ptr, i32 } [ %i.cq, %bb.y ], [ %i.di, %bb.ai ], [ %lpad.phi.i.i.i.i.i.i.i97.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i98.i ], [ %.pn68.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i, %.body.i.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i ], [ %.pn68.i, %.body138.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.ao)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.cv, !noalias !100060

bb.cv:                                            ; preds = %.body.i
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.ls) #63
          to label %.body unwind label %bb.cw, !noalias !100060

bb.cw:                                            ; preds = %bb.cv
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !100159
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEB1l_NtBG_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.body.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2i_5types3any5PyAnyEEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.lu)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.bn

bb.cx:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #63
          to label %bb.cz unwind label %bb.bn, !noalias !100060

bb.cy:                                            ; preds = %bb.da, %bb.cz
  %i.lv = icmp ne i64 %i.aq, -1
  %or.cond5.i = and i1 %i.lv, %.sroa.041.5.i
  br i1 %or.cond5.i, label %bb.dc, label %bb.db

bb.cz:                                            ; preds = %bb.cx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit, %bb.g
  %.sroa.040.6.i = phi i1 [ %.sroa.040.0.i, %bb.cx ], [ %.sroa.040.0.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit ], [ true, %bb.g ]
  %.sroa.041.5.i = phi i1 [ %.sroa.041.0.i, %bb.cx ], [ %.sroa.041.0.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit ], [ true, %bb.g ]
  %.pn68.pn.pn.pn.i = phi { ptr, i32 } [ %.pn68.pn.pn.i, %bb.cx ], [ %.pn68.pn.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1N_5types3any5PyAnyEB1I_NtBI_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.au, %bb.g ]
  %i.lw = load i64, ptr %7, align 8, !range !66, !alias.scope !100056, !noalias !100059, !noundef !67
  %i.lx = icmp ne i64 %i.lw, -1
  %or.cond3.i = and i1 %.sroa.040.6.i, %i.lx
  br i1 %or.cond3.i, label %bb.da, label %bb.cy

bb.da:                                            ; preds = %bb.cz
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %7) #63
          to label %bb.cy unwind label %bb.bn, !noalias !100059

bb.db:                                            ; preds = %bb.dc, %bb.cy
  resume { ptr, i32 } %.pn68.pn.pn.pn.i

bb.dc:                                            ; preds = %bb.cy
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %6) #63
          to label %bb.db unwind label %bb.bn, !noalias !100057

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit272.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i269.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !100060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !100060
  %i.ly = icmp eq i64 %.sroa.032.0.copyload33, -1
  br i1 %i.ly, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit.thread, label %bb.de

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit.thread: ; preds = %bb.d, %bb.c, %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.lz = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.dd, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit, !prof !104

bb.dd:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit.thread
  call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit.thread
  store ptr @2445, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i64 40, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.010.sroa.5.sroa.4.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.010.sroa.5.sroa.4.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.010.sroa.5.sroa.5.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.lz, ptr %.sroa.010.sroa.5.sroa.5.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.010.sroa.5.sroa.6.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @1267, ptr %.sroa.010.sroa.5.sroa.6.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.411.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.df

bb.de:                                            ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators13barbell_graph13barbell_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2s_5types3any5PyAnyEB2n_NtB1n_10UndirectedEB2n_NCNvNtCskcxRuJ53GpR_9rustworkx10generators13barbell_graph0B3P_B2n_EB3V_.exit
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #59
  %i.md = zext i1 %5 to i8
  store i64 %.sroa.032.0.copyload33, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_Py_NoneStruct, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx12connectivity30___pyfunction_is_semi_connected:bb.a
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.preheader

bb.ba:                                            ; preds = %bb.ax
  %i.ju = add nsw i64 %i.jq, -1                   ; 2 uses
  store i64 %i.ju, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110397, !noalias !110398
  %i.jv = load i64, ptr %i.aa, align 8, !range !70, !alias.scope !110397, !noalias !110398, !noundef !67
  %i.jw = icmp samesign ult i64 %i.ju, %i.jv
  call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp ult i64 %i.jq, 2305843009213693953
  call void @llvm.assume(i1 %i.jx)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !110406)
  call void @llvm.experimental.noalias.scope.decl(metadata !110407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !110408
  store i64 %i.jf, ptr %i.p, align 8, !noalias !110409
  %i.jy = load i64, ptr %i.dm, align 8, !alias.scope !110410, !noalias !110398, !noundef !67
  %i.jz = icmp ugt i64 %i.jy, %i.jf
  br i1 %i.jz, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i, label %bb.bc, !prof !77

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !110409
  store ptr %i.p, ptr %i.o, align 8, !noalias !110409
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.bc, %bb.aw
  %.sink258.i.sroa.phi.i.i = phi ptr [ %.sink258.i.sroa.gep.i.i, %bb.aw ], [ %.sink258.i.sroa.gep188.i.i, %bb.bc ]
  %.sink258.i.sroa.phi189.i.i = phi ptr [ %.sink258.i.sroa.gep190.i.i, %bb.aw ], [ %.sink258.i.sroa.gep191.i.i, %bb.bc ]
  %.sink258.i.sroa.phi192.i.i = phi ptr [ %.sink258.i.sroa.gep193.i.i, %bb.aw ], [ %.sink258.i.sroa.gep194.i.i, %bb.bc ]
  %.sink258.i.i.i = phi ptr [ %i.q, %bb.aw ], [ %i.o, %bb.bc ]
  %.sink255.i.i.i = phi ptr [ %i.dl, %bb.aw ], [ %i.dm, %bb.bc ]
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink258.i.sroa.phi.i.i, align 8, !noalias !110411
  store ptr %.sink255.i.i.i, ptr %.sink258.i.sroa.phi189.i.i, align 8, !noalias !110411
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sink258.i.sroa.phi192.i.i, align 8, !noalias !110411
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %.sink258.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.cont.i.i.i unwind label %.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !110358

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i: ; preds = %bb.bb
  %i.ka = load ptr, ptr %i.di, align 8, !alias.scope !110410, !noalias !110398, !nonnull !67, !noundef !67
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.ji ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !110412, !noundef !67 ; 2 uses
  %i.kd = and i64 %i.kc, %i.jn
  %.not.i10.i.i.i.i = icmp eq i64 %i.kd, 0
  %i.ke = or i64 %i.kc, %i.jn
  store i64 %i.ke, ptr %i.kb, align 8, !noalias !110412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !110408
  br i1 %.not.i10.i.i.i.i, label %bb.bg, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i
  %i.kf = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110397, !noalias !110398, !noundef !67 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i.i.i, label %.backedge166.i.i.i, label %bb.av

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.preheader
  %.sroa.615.0.i.i.i.i = phi i32 [ -1, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.preheader ], [ %.sroa.615.1.ph.i.i.i.i, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge ] ; 2 uses
  %.sroa.9.0.i.i.i.i = phi i32 [ %.sroa.9.0.i.i.i.i.ph, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.preheader ], [ %.sroa.9.2.ph.i.i.i.i, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge ] ; 2 uses
  %i.kg = zext i32 %.sroa.615.0.i.i.i.i to i64    ; 2 uses
  %i.kh = icmp ugt i64 %.sroa.16.0.copyload.i, %i.kg
  br i1 %i.kh, label %bb.bd, label %.preheader.i.i.i.i.i

bb.bd:                                            ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.0.copyload.i, i64 %i.kg ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !noalias !110413, !noundef !67
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %i.kl = load i32, ptr %i.kk, align 4, !noalias !110413, !noundef !67
  br label %.loopexit25.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.be
  %.sroa.9.1.i.i.i.i = phi i32 [ %i.kq, %bb.be ], [ %.sroa.9.0.i.i.i.i, %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  %i.km = zext i32 %.sroa.9.1.i.i.i.i to i64      ; 2 uses
  %i.kn = icmp ugt i64 %.sroa.16.0.copyload.i, %i.km
  br i1 %i.kn, label %bb.be, label %.loopexit.i.i.i.i

bb.be:                                            ; preds = %.preheader.i.i.i.i.i
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.0.copyload.i, i64 %i.km ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !noalias !110413, !noundef !67 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %.val.i.i77.i.i.i = load i32, ptr %i.kr, align 4, !noalias !110413, !noundef !67 ; 2 uses
  %i.ks = icmp eq i32 %.val.i.i77.i.i.i, -1
  br i1 %i.ks, label %.preheader.i.i.i.i.i, label %.loopexit25.i.i.i.i

.loopexit25.i.i.i.i:                              ; preds = %bb.be, %bb.bd
  %.sroa.615.1.ph.i.i.i.i = phi i32 [ %i.kj, %bb.bd ], [ %.sroa.615.0.i.i.i.i, %bb.be ]
  %.sroa.9.2.ph.i.i.i.i = phi i32 [ %.sroa.9.0.i.i.i.i, %bb.bd ], [ %i.kq, %bb.be ]
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.kl, %bb.bd ], [ %.val.i.i77.i.i.i, %bb.be ] ; 2 uses
  %.val6.i78.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !110397, !noalias !110398, !noundef !67
  %i.kt = zext i32 %.sroa.4.0.i.ph.i.i.i.i to i64 ; 3 uses
  %i.ku = icmp ugt i64 %.val6.i78.i.i.i, %i.kt
  br i1 %i.ku, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i81.i.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i79.i.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i81.i.i.i: ; preds = %.loopexit25.i.i.i.i
  %.val.i82.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !110397, !noalias !110398, !nonnull !67, !noundef !67
  %i.kv = lshr i64 %i.kt, 6
  %i.kw = and i64 %i.kt, 63
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.val.i82.i.i.i, i64 %i.kv
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !110398, !noundef !67
  %i.kz = lshr i64 %i.ky, %i.kw
  %i.la = trunc i64 %i.kz to i1
  br i1 %i.la, label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i79.i.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i79.i.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i81.i.i.i, %.loopexit25.i.i.i.i
  %i.lb = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110414, !noalias !110398, !noundef !67 ; 3 uses
  %i.lc = load i64, ptr %i.aa, align 8, !range !70, !alias.scope !110414, !noalias !110398, !noundef !67
  %i.ld = icmp eq i64 %i.lb, %i.lc
  br i1 %i.ld, label %bb.bf, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i80.i.i.i

bb.bf:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i79.i.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.aa) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i80.i.i.i unwind label %.thread117.loopexit.i.i.i, !noalias !110358

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i80.i.i.i: ; preds = %bb.bf, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i79.i.i.i
  %i.le = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110414, !noalias !110398, !nonnull !67, !noundef !67
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lb
  store i32 %.sroa.4.0.i.ph.i.i.i.i, ptr %i.lf, align 4, !noalias !110398
  %i.lg = add i64 %i.lb, 1
  store i64 %i.lg, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110414, !noalias !110398
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge

_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.backedge: ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i80.i.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i81.i.i.i
  br label %_RNvXs0_NtNtCs68Jln09rRqb_8petgraph5visit8reversedINtB5_8ReversedRINtNtB9_10graph_impl5GraphuuEENtB7_13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.bg:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE5visitCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.i
  %i.lh = load i64, ptr %i.dk, align 8, !alias.scope !110415, !noalias !110358, !noundef !67 ; 3 uses
  %i.li = load i64, ptr %i.z, align 8, !range !70, !alias.scope !110415, !noalias !110358, !noundef !67
  %i.lj = icmp eq i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.bh, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit87.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit87.i.i.i unwind label %.thread117.loopexit.split-lp.loopexit.i.i.i, !noalias !110358

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit87.i.i.i: ; preds = %bb.bh, %bb.bg
  %i.lk = load ptr, ptr %i.dj, align 8, !alias.scope !110415, !noalias !110358, !nonnull !67, !noundef !67
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lh
  store i32 %i.je, ptr %i.ll, align 4, !noalias !110358
  %i.lm = add i64 %i.lh, 1
  store i64 %i.lm, ptr %i.dk, align 8, !alias.scope !110415, !noalias !110358
  %.pr.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !110397, !noalias !110398 ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %.backedge166.i.i.i, label %.lr.ph.i.i.i.i

.backedge166.i.i.i:                               ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit87.i.i.i, %.loopexit.i.i.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %exitcond.not.i.i85.i = icmp eq i64 %i.dn, %.sroa.9.0.copyload.i
  br i1 %exitcond.not.i.i85.i, label %._crit_edge.i.i86.i, label %bb.ab

.thread117.i.i.i:                                 ; preds = %.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, %.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.thread117.loopexit.split-lp.loopexit.i.i.i, %.thread117.loopexit.i.i.i, %bb.z
  %.not199.i.i.i = phi i1 [ false, %bb.z ], [ true, %.thread117.loopexit.i.i.i ], [ true, %.thread117.loopexit.split-lp.loopexit.i.i.i ], [ true, %.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ true, %.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  %.pn26122.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.z ], [ %lpad.loopexit157.i.i.i, %.thread117.loopexit.i.i.i ], [ %lpad.loopexit161.i.i.i, %.thread117.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit164.i.i.i, %.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.thread117.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val31.i.i.i = load i64, ptr %i.z, align 8, !noalias !110358 ; 2 uses
  %i.ln = icmp eq i64 %.val31.i.i.i, 0
  br i1 %i.ln, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit89.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i88.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i88.i.i.i: ; preds = %.thread117.i.i.i
  %.val32.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !110358, !nonnull !67, !noundef !67
  %i.lo = shl nuw i64 %.val31.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i.i.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110358
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit89.i.i.i

bb.bi:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit89.i.i.i
  %.val.i.i84.i = load i64, ptr %i.aa, align 8, !noalias !110358 ; 2 uses
  %i.lp = icmp eq i64 %.val.i.i84.i, 0
  br i1 %i.lp, label %bb.bj, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i90.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i90.i.i.i: ; preds = %bb.bi
  %.val30.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !110358, !nonnull !67, !noundef !67
  %i.lq = shl nuw i64 %.val.i.i84.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i.i, i64 noundef %i.lq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110358
  br label %bb.bj

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i: ; preds = %bb.bj, %.thread123.i.i.i, %bb.z, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit89.i.i.i
  %.pn28116.i.i.i = phi { ptr, i32 } [ %.pn26122.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit89.i.i.i ], [ %.pn26122.i.i.i, %bb.bj ], [ %i.dg, %.thread123.i.i.i ], [ %.pn.pn.pn.i.i.i, %bb.z ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.thread.i.i unwind label %bb.at, !noalias !110358

bb.bj:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i90.i.i.i, %bb.bi
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit94.i.i.i unwind label %bb.at, !noalias !110358

bb.bk:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeuEEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtCs87CvPiUlf0m_5alloc3vec3VecuEuEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae) #63, !noalias !110361
  br i1 %.sroa.026.4.i.i, label %.thread.i.i, label %.body.i

bb.bl:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.w
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.bm:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph5visit9traversal3DfsNtNtBI_10graph_impl9NodeIndexNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !110358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !110361
  %i.ls = icmp ult i64 %.sroa.7177.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp ult i64 %.sroa.16.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.lt)
  call void @llvm.experimental.noalias.scope.decl(metadata !110416)
  %i.lu = shl nuw i64 %.sroa.7177.0.copyload.i, 5 ; 3 uses
  %.not.i.i85.i.i = icmp samesign ugt i64 %.sroa.7177.0.copyload.i, 288230376151711743
  br i1 %.not.i.i85.i.i, label %bb.bq, label %bb.bn, !prof !73

bb.bn:                                            ; preds = %bb.bm
  %i.lv = icmp eq i64 %.sroa.7177.0.copyload.i, 0 ; 4 uses
  br i1 %i.lv, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110417
  %i.lw = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.lu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110417 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ly = ptrtoint ptr %i.lw to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo, %bb.bm
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.lu, %bb.bo ], [ undef, %bb.bm ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.bo ], [ 0, %bb.bm ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61
          to label %.noexc86.i.i unwind label %bb.bw, !noalias !110361

.noexc86.i.i:                                     ; preds = %bb.bq
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.bp, %bb.bn
  %.sroa.10.0.i.i.i = phi i64 [ %i.ly, %bb.bp ], [ 8, %bb.bn ]
  %i.lz = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 3 uses
  %i.ma = shl nuw nsw i64 %.sroa.16.0.copyload.i, 4 ; 3 uses
  %i.mb = icmp eq i64 %.sroa.16.0.copyload.i, 0   ; 2 uses
  br i1 %i.mb, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110418
  %i.mc = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ma, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110418 ; 2 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.me = ptrtoint ptr %i.mc to i64
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bu
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.lv, label %.thread199.i.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i

.thread199.i.thread.i:                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5176.0.copyload.i) ]
  br label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i: ; preds = %bb.bt
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lz, i64 noundef %i.lu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !110419
  br label %.thread199.i.thread529.i

bb.bu:                                            ; preds = %bb.br
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.ma) #61
          to label %bb.bv unwind label %bb.bt, !noalias !110420

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bq
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.thread199.i.thread529.i

bb.bx:                                            ; preds = %bb.bs, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.1015.0.i.i.i = phi i64 [ %i.me, %bb.bs ], [ 4, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.mh = inttoptr i64 %.sroa.1015.0.i.i.i to ptr
  store i64 %.sroa.7177.0.copyload.i, ptr %i.ae, align 8, !alias.scope !110416, !noalias !110361
  %.sroa.5.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 5 uses
  store ptr %i.lz, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !alias.scope !110416, !noalias !110361
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !110416, !noalias !110361
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  store i64 %.sroa.16.0.copyload.i, ptr %i.mi, align 8, !alias.scope !110416, !noalias !110361
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  store ptr %i.mh, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !110416, !noalias !110361
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !110416, !noalias !110361
  %i.mj = shl nuw nsw i64 %.sroa.9.0.copyload.i, 2 ; 5 uses
  br i1 %.not204.not.i.i.i, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !110421
  %i.mk = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.mj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110421 ; 5 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.bz, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.mj) #61
          to label %.noexc95.i.i unwind label %.thread199.i.i, !noalias !110361

.noexc95.i.i:                                     ; preds = %bb.bz
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.by
  %.not464.i.i = icmp eq i64 %.sroa.9.0.copyload.i, 1
  br i1 %.not464.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i93.preheader.i.i

.lr.ph.i.i93.preheader.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.mm = add nsw i64 %i.mj, -4                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mk, i8 -1, i64 %i.mm, i1 false), !noalias !110422
  %scevgep.i.i = getelementptr i8, ptr %i.mk, i64 %i.mm
  br label %._crit_edge.thread.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %.lr.ph.i.i93.preheader.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.lcssa28.i.i.i.i = phi ptr [ %scevgep.i.i, %.lr.ph.i.i93.preheader.i.i ], [ %i.mk, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ]
  store i32 -1, ptr %.sroa.0.0.lcssa28.i.i.i.i, align 4, !noalias !110422
  br label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %._crit_edge.thread.i.i.i.i, %bb.bx
  %i.mn = phi ptr [ %i.mk, %._crit_edge.thread.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.bx ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5176.0.copyload.i) ]
  %.idx.i.i = mul nuw nsw i64 %.sroa.7177.0.copyload.i, 24
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.5176.0.copyload.i, i64 %.idx.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !110361
  store ptr %.sroa.5176.0.copyload.i, ptr %i.ad, align 8, !noalias !110361
  %.sroa.4.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i88.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.0175.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i88.i, align 8, !noalias !110361
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.mo, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !110361
  br i1 %i.lv, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i.sink.split: ; preds = %bb.cz, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i124.i.i
  %.pn51.pn.i.i.ph = phi { ptr, i32 } [ %lpad.phi256.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i124.i.i ], [ %i.qb, %bb.cz ]
  %.sink = shl nuw i64 %.sroa.0144.0.copyload145.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110361
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i.sink.split, %bb.dc, %bb.cz
  %.pn51.pn.i.i = phi { ptr, i32 } [ %i.qb, %bb.cz ], [ %lpad.phi256.i.i, %bb.dc ], [ %.pn51.pn.i.i.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit125.i.i.sink.split ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad) #63, !noalias !110361
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeuEEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit123.i.i
  %i.mp = phi ptr [ %i.pv, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit123.i.i ], [ %i.lz, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.mq = phi i64 [ %i.px, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit123.i.i ], [ 0, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 6 uses
  %i.mr = phi ptr [ %i.ms, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit123.i.i ], [ %.sroa.5176.0.copyload.i, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24 ; 6 uses
  %.sroa.0144.0.copyload145.i.i = load i64, ptr %i.mr, align 8, !noalias !110423 ; 6 uses
  %.sroa.7.0..sroa_idx146.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx146.i.i, align 8, !noalias !110423 ; 6 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx146.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx146.sroa_idx.i.i, align 8, !noalias !110423 ; 3 uses
  %.not.i89.i = icmp eq i64 %.sroa.0144.0.copyload145.i.i, -1
  br i1 %.not.i89.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.ca

bb.ca:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !110424)
  %i.mt = trunc i64 %i.mq to i32
  %exitcond.i = icmp eq i64 %i.mq, 4294967295
  br i1 %exitcond.i, label %bb.cx, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !110425)
  %i.mu = load i64, ptr %i.ae, align 8, !range !70, !alias.scope !110426, !noalias !110427, !noundef !67
  %i.mv = icmp eq i64 %i.mq, %i.mu
  br i1 %i.mv, label %bb.cc, label %bb.cy

bb.cc:                                            ; preds = %bb.cb
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB7_3vec3VecuEEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %._crit_edge350.i.i unwind label %.loopexit252.i.i, !noalias !110361

._crit_edge350.i.i:                               ; preds = %bb.cc
  %.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !alias.scope !110426, !noalias !110427
  br label %bb.cy

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val80.i.i = phi i64 [ 0, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.mq, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.mw = phi ptr [ %.sroa.5176.0.copyload.i, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.ms, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  %i.mx = ptrtoint ptr %i.mo to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub nuw i64 %i.mx, %i.my
  %i.na = udiv exact i64 %i.mz, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !110428)
  %i.nb = icmp eq ptr %i.mo, %i.mw
  br i1 %i.nb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.nd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.mw, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.nd = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.nc, align 8, !alias.scope !110428, !noalias !110429 ; 2 uses
  %i.ne = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.ne, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.nf = getelementptr i8, ptr %i.nc, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.nf, align 8, !alias.scope !110428, !noalias !110429, !nonnull !67, !noundef !67
  %i.ng = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.ng, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !110430
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.nh = icmp eq i64 %i.nd, %i.na
  br i1 %i.nh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path50___pyfunction_graph_all_pairs_dijkstra_path_lengths:bb.a

.body.i.i.i.i.i:                                  ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i, %bb.as, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.ar, %bb.aq, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ft, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i ], [ %i.fw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i ], [ %i.fw, %bb.as ], [ %i.fs, %bb.aq ], [ %i.fh, %.body.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ft, %bb.ar ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #63, !noalias !129611
  br label %.body72.i.i

bb.at:                                            ; preds = %bb.an
  %i.fz = add nuw nsw i64 %i.ez, %.sroa.5113.0.copyload.i.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !129593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !129593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !129591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !129591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !129612
  %i.ga = icmp samesign ult i64 %i.fz, 128102389400760776
  call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp eq i64 %i.fz, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !129612
  br i1 %i.gb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !129613
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false), !noalias !129613
  store i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, ptr %i.d, align 8, !noalias !129614
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !129614
  %.sroa.516.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.fz, ptr %.sroa.516.0..sroa_idx.i.i.i.i, align 8, !noalias !129614
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !129615
  %i.gd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !129615 ; 5 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.av, label %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, !prof !71

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #61
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !129616

.noexc.i.i.i.i.i.i:                               ; preds = %bb.av
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.av
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1T_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.d) #63, !noalias !129617
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63, !noalias !129618
  br label %.body72.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !129612
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i) ]
  %i.gg = icmp eq i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 0
  br i1 %i.gg, label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %i.gh = mul nuw i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 72
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.sroa.5.0.copyload12.i.i.i.i, i64 noundef %i.gh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !129619
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i: ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gd, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 24, i1 false), !noalias !129620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !129613
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false), !noalias !129618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !129612
  %i.gj = getelementptr i8, ptr %i.gd, i64 16
  %.val.i.i.i.i37 = load i64, ptr %i.gj, align 8, !noalias !129621, !noundef !67 ; 2 uses
  %i.gk = icmp ult i64 %.val.i.i.i.i37, 128102389400760776
  call void @llvm.assume(i1 %i.gk)
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

bb.aw:                                            ; preds = %bb.az, %bb.ax, %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i: ; preds = %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %.sroa.10122.0.i.i = phi i64 [ 1, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9119.0.i.i = phi ptr [ %i.gd, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ null, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.val.i.i.i.i37, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !129622
  %i.gm = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc4.i.i.i unwind label %bb.aw, !noalias !129623

.noexc4.i.i.i:                                    ; preds = %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.gn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !129622
  %i.go = icmp eq i8 %i.gn, 2
  br i1 %i.go, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i, label %bb.ax, !prof !77

bb.ax:                                            ; preds = %.noexc4.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i unwind label %bb.aw, !noalias !129623

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i: ; preds = %bb.ax, %.noexc4.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !129624)
  %i.gp = icmp eq i64 %.sroa.0.0.lcssa.i.i.i.i, 0
  br i1 %i.gp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i
  store i64 0, ptr %i.q, align 8, !alias.scope !129624, !noalias !129622
  %.sroa.42.0..sroa_idx.i.i69.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i69.i.i, align 8, !alias.scope !129624, !noalias !129622
  %.sroa.53.0..sroa_idx.i.i70.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i70.i.i, align 8, !alias.scope !129624, !noalias !129622
  %.sroa.6.0..sroa_idx.i.i71.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i71.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !129622
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

bb.az:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !129625
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 1, 0) %.sroa.0.0.lcssa.i.i.i.i)
          to label %.noexc7.i.i.i unwind label %bb.aw, !noalias !129623

.noexc7.i.i.i:                                    ; preds = %bb.az
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !129626 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i, align 8, !noalias !129626 ; 5 uses
  %i.gq = mul nuw i64 %.sroa.0.0.lcssa.i.i.i.i, 80 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.lcssa.i.i.i.i, 115292150460684697
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bc, label %bb.ba, !prof !73

bb.ba:                                            ; preds = %.noexc7.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !129627
  %i.gr = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !129627 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.bc, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.bc
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.gu, label %.thread.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.gv = shl i64 %.sroa.5.0.copyload.i.i.i.i.i, 3
  %i.gw = icmp slt i64 %.sroa.5.0.copyload.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.gw), !noalias !129628
  %i.gx = and i64 %i.gv, -16                      ; 2 uses
  %i.gy = add i64 %i.gx, 16                       ; 2 uses
  %i.gz = add nsw i64 %.sroa.5.0.copyload.i.i.i.i.i, 17
  %i.ha = add i64 %i.gz, %i.gy                    ; 3 uses
  %i.hb = icmp uge i64 %i.ha, %i.gy
  call void @llvm.assume(i1 %i.hb), !noalias !129628
  %i.hc = icmp ult i64 %i.ha, 9223372036854775793
  call void @llvm.assume(i1 %i.hc), !noalias !129628
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ], !noalias !129628
  %i.hd = sub nuw nsw i64 -16, %i.gx
  %i.he = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.hd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.he, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !129629
  br label %.thread.i.i.i

bb.bc:                                            ; preds = %bb.ba, %.noexc7.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ba ], [ 0, %.noexc7.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.gq) #61
          to label %bb.bd unwind label %bb.bb, !noalias !129629

bb.bd:                                            ; preds = %bb.bc
  unreachable

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i: ; preds = %bb.ba
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false), !noalias !129622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !129625
  store i64 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.q, align 8, !alias.scope !129624, !noalias !129622
  %.sroa.4.0..sroa_idx.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.gr, ptr %.sroa.4.0..sroa_idx.i6.i.i.i, align 8, !alias.scope !129624, !noalias !129622
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !129624, !noalias !129622
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !alias.scope !129624, !noalias !129622
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !129624, !noalias !129622
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i, %bb.ay
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  store i64 %i.gm, ptr %i.hg, align 8, !alias.scope !129624, !noalias !129622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !129622
  store ptr %.sroa.9119.0.i.i, ptr %i.p, align 8, !noalias !129622
  %.sroa.9119.0..sroa_idx120.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.9119.0.i.i, ptr %.sroa.9119.0..sroa_idx120.i.i, align 8, !noalias !129622
  %.sroa.10122.0..sroa_idx123.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 %.sroa.10122.0.i.i, ptr %.sroa.10122.0..sroa_idx123.i.i, align 8, !noalias !129622
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i40.i.i.i = icmp eq ptr %.sroa.9119.0.i.i, null
  br i1 %.not.i40.i.i.i, label %.thread18.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.be

.thread18.i.i.i:                                  ; preds = %bb.bj, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.bk

bb.be:                                            ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.hh = phi ptr [ %.sroa.9119.0.i.i, %.lr.ph.i.i.i ], [ %i.hl, %bb.bj ] ; 4 uses
  %i.hi = phi ptr [ %.sroa.9119.0.i.i, %.lr.ph.i.i.i ], [ %i.ho, %bb.bj ]
  %i.hj = phi i64 [ %.sroa.10122.0.i.i, %.lr.ph.i.i.i ], [ %i.hp, %bb.bj ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !129630, !noundef !67 ; 8 uses
  %.not3.i.i.i.i = icmp eq ptr %i.hl, null        ; 3 uses
  br i1 %.not3.i.i.i.i, label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store ptr null, ptr %i.hm, align 8, !noalias !129630
  br label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i

bb.bg:                                            ; preds = %bb.bh
  %i.hn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hl, ptr %i.p, align 8, !noalias !129622
  store ptr %i.ho, ptr %.sroa.9119.0..sroa_idx120.i.i, align 8, !noalias !129622
  store i64 %i.hp, ptr %.sroa.10122.0..sroa_idx123.i.i, align 8, !noalias !129622
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #63, !noalias !129623
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.q), !noalias !129623
  br label %.body72.i.i

_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i: ; preds = %bb.bf, %bb.be
  %i.ho = phi ptr [ %i.hi, %bb.bf ], [ null, %bb.be ] ; 3 uses
  %i.hp = add i64 %i.hj, -1                       ; 3 uses
  %.sroa.08.0.copyload9.i.i.i = load i64, ptr %i.hh, align 8, !noalias !129631 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i.i, i64 16, i1 false), !noalias !129631
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.hh, i64 noundef 40, i64 noundef 8) #59, !noalias !129632
  %.not.i68.i.i = icmp eq i64 %.sroa.08.0.copyload9.i.i.i, -1
  br i1 %.not.i68.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !129622
  store i64 %.sroa.08.0.copyload9.i.i.i, ptr %i.o, align 8, !noalias !129622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !129622
  invoke fastcc void @_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtCs87CvPiUlf0m_5alloc3vec3VecB3n_EEBT_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bj unwind label %bb.bg, !noalias !129623

bb.bi:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  store ptr %i.hl, ptr %i.p, align 8, !noalias !129622
  store ptr %i.ho, ptr %.sroa.9119.0..sroa_idx120.i.i, align 8, !noalias !129622
  store i64 %i.hp, ptr %.sroa.10122.0..sroa_idx123.i.i, align 8, !noalias !129622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %bb.bk, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bi
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !129633, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not3.i2.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.lcssa1.i.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.hs, %.lr.ph.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i.i.i), !noalias !129633
  br label %bb.bk

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.hs = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i ], [ %i.hr, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ht = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i ], [ %i.hl, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store ptr null, ptr %i.hu, align 8, !noalias !129633
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.ht), !noalias !129633
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !129633, !noundef !67 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not3.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !129622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %.thread18.i.i.i, label %bb.be

.thread.i.i.i:                                    ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.bb, %bb.aw
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gl, %bb.aw ], [ %i.gt, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ %i.gt, %bb.bb ] ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.sroa.9119.0.i.i, null
  br i1 %.not12.i.i.i.i, label %.body72.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.thread.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.9119.0.i.i, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !129634, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not3.i2.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i85.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i85.i.i, %.lr.ph.preheader.i.i.i.i
  %.lcssa1.i.i.i = phi ptr [ %.sroa.9119.0.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.hz, %.lr.ph.i.i85.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i), !noalias !129634
  br label %.body72.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i85.i.i
  %i.hz = phi ptr [ %i.id, %.lr.ph.i.i85.i.i ], [ %i.hy, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.ia = phi ptr [ %i.hz, %.lr.ph.i.i85.i.i ], [ %.sroa.9119.0.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store ptr null, ptr %i.ib, align 8, !noalias !129634
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.ia), !noalias !129634
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !129634, !noundef !67 ; 2 uses
  %.not3.i.i86.i.i = icmp eq ptr %i.id, null
  br i1 %.not3.i.i86.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i85.i.i

bb.bk:                                            ; preds = %.thread.i.i.i.i.i.i, %bb.bi, %.thread18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !129622
  %.sroa.7.8.copyload48 = load i64, ptr %i.q, align 8, !noalias !129573
  %.sroa.13.8..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.13.8.copyload53 = load ptr, ptr %.sroa.13.8..sroa_idx52, align 8, !noalias !129573
  %.sroa.15.8..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.15.8.copyload59 = load i64, ptr %.sroa.15.8..sroa_idx58, align 8, !noalias !129573
  %.sroa.16.8..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.8..sroa_idx63, i64 32, i1 false), !noalias !129573
  %.sroa.17.8.copyload68 = load i64, ptr %i.hg, align 8, !noalias !129573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !129622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !129572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !129572
  %.val47.i.i = load i64, ptr %i.y, align 8, !noalias !129572 ; 2 uses
  %i.ie = icmp eq i64 %.val47.i.i, 0
  br i1 %i.ie, label %bb.bl, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i.i: ; preds = %bb.bk
  %.val48.i.i = load ptr, ptr %i.dp, align 8, !noalias !129572, !nonnull !67, !noundef !67
  %i.if = shl nuw i64 %.val47.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !129574
  br label %bb.bl

bb.bl:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !129572
  %i.ig = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ig, align 8, !noalias !129572, !noundef !67
  %i.ih = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ih, label %bb.bn, label %bb.bm, !prof !125

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.bb)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i unwind label %.body

bb.bn:                                            ; preds = %bb.bl
  call void @_Py_DecRef(ptr noundef nonnull %i.bb) #59, !noalias !129574
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !129572
  br label %bb.cc

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !129572
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z, ptr nonnull %i.en)
          to label %bb.bq unwind label %.loopexit.i.i, !noalias !129574

select.unfold.i.i:                                ; preds = %bb.ad, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !129635)
  %i.ii = load i64, ptr %i.y, align 8, !range !70, !alias.scope !129635, !noalias !129572, !noundef !67
  %i.ij = icmp eq i64 %i.ef, %i.ii
  br i1 %i.ij, label %bb.bo, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bo:                                            ; preds = %select.unfold.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.i.i, !noalias !129574

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bo, %select.unfold.i.i
  %i.ik = load ptr, ptr %i.dp, align 8, !alias.scope !129635, !noalias !129572, !nonnull !67, !noundef !67
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %i.ef
  store i64 0, ptr %i.il, align 8, !noalias !129636
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bu, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sink219.i.i = phi i64 [ %i.ef, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.is, %bb.bu ]
  %i.im = add i64 %.sink219.i.i, 1                ; 2 uses
  store i64 %i.im, ptr %i.dq, align 8, !noalias !129572
  %exitcond.i.i = icmp eq i64 %i.eg, %.sroa.0.0.i.i58.i.i
  br i1 %exitcond.i.i, label %bb.ae, label %bb.ac

bb.bq:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.in = load i64, ptr %i.x, align 8, !range !68, !noalias !129572, !noundef !67
  %i.io = trunc nuw i64 %i.in to i1
  %.sroa.023.0.copyload.i.i = load double, ptr %i.ee, align 8, !noalias !129572 ; 2 uses
  br i1 %i.io, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !129573
  %.sroa.15.16..sroa.424.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.15.16.copyload = load i64, ptr %.sroa.15.16..sroa.424.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !129573
  %.sroa.16.16..sroa.424.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.16..sroa.424.0..sroa_idx.i.i.sroa_idx, i64 32, i1 false), !noalias !129573
  %.sroa.17.16..sroa.424.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.17.16.copyload = load i64, ptr %.sroa.17.16..sroa.424.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !129573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !129572
  %i.ip = bitcast double %.sroa.023.0.copyload.i.i to i64
  %.val45.i.i = load i64, ptr %i.y, align 8, !noalias !129572 ; 2 uses
  %i.iq = icmp eq i64 %.val45.i.i, 0
  br i1 %i.iq, label %bb.bv, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i: ; preds = %bb.br
  %.val46.i.i = load ptr, ptr %i.dp, align 8, !noalias !129572, !nonnull !67, !noundef !67
  %i.ir = shl nuw i64 %.val45.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !129574
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !129572
  call void @llvm.experimental.noalias.scope.decl(metadata !129637)
  %i.is = load i64, ptr %i.dq, align 8, !alias.scope !129637, !noalias !129572, !noundef !67 ; 3 uses
  %i.it = load i64, ptr %i.y, align 8, !range !70, !alias.scope !129637, !noalias !129572, !noundef !67
  %i.iu = icmp eq i64 %i.is, %i.it
  br i1 %i.iu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #62
          to label %bb.bu unwind label %.loopexit.i.i, !noalias !129574

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.iv = load ptr, ptr %i.dp, align 8, !alias.scope !129637, !noalias !129572, !nonnull !67, !noundef !67
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.is ; 2 uses
  store i64 1, ptr %i.iw, align 8, !noalias !129638
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store double %.sroa.023.0.copyload.i.i, ptr %i.ix, align 8, !noalias !129638
  br label %bb.bp

bb.bv:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !129572
  %i.iy = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i82.i.i = load i64, ptr %i.iy, align 8, !noalias !129572, !noundef !67
  %i.iz = icmp sgt i64 %.val.i.i.i.i.i82.i.i, 0
  br i1 %i.iz, label %bb.bx, label %bb.bw, !prof !125

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.bb)
          to label %bb.cb unwind label %.body

bb.bx:                                            ; preds = %bb.bv
  call void @_Py_DecRef(ptr noundef nonnull %i.bb) #59, !noalias !129574
  br label %bb.cb

bb.by:                                            ; preds = %bb.ca, %bb.w
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !129574
  unreachable

bb.bz:                                            ; preds = %bb.z
  unreachable

bb.ca:                                            ; preds = %.thread129.i.i, %.thread133.i.i
  %eh.lpad-body132.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.thread129.i.i ], [ %lpad.thr_comm.i.i, %.thread133.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %i.bb) #63
          to label %.body.thread unwind label %bb.by, !noalias !129574

bb.cb:                                            ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !129572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !129571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.975.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, i64 32, i1 false)
  %i.jb = inttoptr i64 %i.ip to ptr
  br label %bb.cg

bb.cc:                                            ; preds = %bb.v, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i, %bb.u
  %.sroa.17.1.ph = phi i64 [ %.sroa.17.0, %bb.u ], [ %.sroa.17.8.copyload68, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.17.0, %bb.v ]
  %.sroa.15.1.ph = phi i64 [ %.sroa.15.0, %bb.u ], [ %.sroa.15.8.copyload59, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.15.0, %bb.v ]
  %.sroa.13.1.ph = phi ptr [ %.sroa.13.0, %bb.u ], [ %.sroa.13.8.copyload53, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.13.0, %bb.v ]
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0, %bb.u ], [ %.sroa.7.8.copyload48, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.7.0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !129571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %.sroa.7.1.ph, ptr %i.ae, align 8
  %.sroa.13.8..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.13.1.ph, ptr %.sroa.13.8..sroa_idx50, align 8
  %.sroa.15.8..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.sroa.15.1.ph, ptr %.sroa.15.8..sroa_idx56, align 8
  %.sroa.16.8..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
end_hunk_7
begin_hunk_8_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path52___pyfunction_digraph_all_pairs_dijkstra_path_lengths:bb.a

.body.i.i.i.i.i:                                  ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i, %bb.as, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.ar, %bb.aq, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ft, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i ], [ %i.fw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i ], [ %i.fw, %bb.as ], [ %i.fs, %bb.aq ], [ %i.fh, %.body.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ft, %bb.ar ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #63, !noalias !130555
  br label %.body72.i.i

bb.at:                                            ; preds = %bb.an
  %i.fz = add nuw nsw i64 %i.ez, %.sroa.5113.0.copyload.i.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !130537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !130537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !130535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !130535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !130556
  %i.ga = icmp samesign ult i64 %i.fz, 128102389400760776
  call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp eq i64 %i.fz, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !130556
  br i1 %i.gb, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !130557
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false), !noalias !130557
  store i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, ptr %i.d, align 8, !noalias !130558
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !130558
  %.sroa.516.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.fz, ptr %.sroa.516.0..sroa_idx.i.i.i.i, align 8, !noalias !130558
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !130559
  %i.gd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130559 ; 5 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.av, label %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, !prof !71

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #61
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !130560

.noexc.i.i.i.i.i.i:                               ; preds = %bb.av
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.av
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1T_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.d) #63, !noalias !130561
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63, !noalias !130562
  br label %.body72.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !130556
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i) ]
  %i.gg = icmp eq i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 0
  br i1 %i.gg, label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %i.gh = mul nuw i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 72
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.sroa.5.0.copyload12.i.i.i.i, i64 noundef %i.gh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130563
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i: ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gd, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 24, i1 false), !noalias !130564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !130557
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i8 0, i64 16, i1 false), !noalias !130562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !130556
  %i.gj = getelementptr i8, ptr %i.gd, i64 16
  %.val.i.i.i.i37 = load i64, ptr %i.gj, align 8, !noalias !130565, !noundef !67 ; 2 uses
  %i.gk = icmp ult i64 %.val.i.i.i.i37, 128102389400760776
  call void @llvm.assume(i1 %i.gk)
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

bb.aw:                                            ; preds = %bb.az, %bb.ax, %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i: ; preds = %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %.sroa.10122.0.i.i = phi i64 [ 1, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9119.0.i.i = phi ptr [ %i.gd, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ null, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.val.i.i.i.i37, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path18all_pairs_dijkstra31all_pairs_dijkstra_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !130566
  %i.gm = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc4.i.i.i unwind label %bb.aw, !noalias !130567

.noexc4.i.i.i:                                    ; preds = %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.gn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !130566
  %i.go = icmp eq i8 %i.gn, 2
  br i1 %i.go, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i, label %bb.ax, !prof !77

bb.ax:                                            ; preds = %.noexc4.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i unwind label %bb.aw, !noalias !130567

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i: ; preds = %bb.ax, %.noexc4.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !130568)
  %i.gp = icmp eq i64 %.sroa.0.0.lcssa.i.i.i.i, 0
  br i1 %i.gp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i
  store i64 0, ptr %i.q, align 8, !alias.scope !130568, !noalias !130566
  %.sroa.42.0..sroa_idx.i.i69.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i69.i.i, align 8, !alias.scope !130568, !noalias !130566
  %.sroa.53.0..sroa_idx.i.i70.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i70.i.i, align 8, !alias.scope !130568, !noalias !130566
  %.sroa.6.0..sroa_idx.i.i71.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i71.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !130566
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

bb.az:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i67.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130569
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 1, 0) %.sroa.0.0.lcssa.i.i.i.i)
          to label %.noexc7.i.i.i unwind label %bb.aw, !noalias !130567

.noexc7.i.i.i:                                    ; preds = %bb.az
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !130570 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i, align 8, !noalias !130570 ; 5 uses
  %i.gq = mul nuw i64 %.sroa.0.0.lcssa.i.i.i.i, 80 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.lcssa.i.i.i.i, 115292150460684697
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bc, label %bb.ba, !prof !73

bb.ba:                                            ; preds = %.noexc7.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !130571
  %i.gr = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130571 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.bc, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.bc
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.gu, label %.thread.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.gv = shl i64 %.sroa.5.0.copyload.i.i.i.i.i, 3
  %i.gw = icmp slt i64 %.sroa.5.0.copyload.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.gw), !noalias !130572
  %i.gx = and i64 %i.gv, -16                      ; 2 uses
  %i.gy = add i64 %i.gx, 16                       ; 2 uses
  %i.gz = add nsw i64 %.sroa.5.0.copyload.i.i.i.i.i, 17
  %i.ha = add i64 %i.gz, %i.gy                    ; 3 uses
  %i.hb = icmp uge i64 %i.ha, %i.gy
  call void @llvm.assume(i1 %i.hb), !noalias !130572
  %i.hc = icmp ult i64 %i.ha, 9223372036854775793
  call void @llvm.assume(i1 %i.hc), !noalias !130572
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ], !noalias !130572
  %i.hd = sub nuw nsw i64 -16, %i.gx
  %i.he = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.hd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.he, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !130573
  br label %.thread.i.i.i

bb.bc:                                            ; preds = %bb.ba, %.noexc7.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ba ], [ 0, %.noexc7.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.gq) #61
          to label %bb.bd unwind label %bb.bb, !noalias !130573

bb.bd:                                            ; preds = %bb.bc
  unreachable

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i: ; preds = %bb.ba
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false), !noalias !130566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130569
  store i64 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.q, align 8, !alias.scope !130568, !noalias !130566
  %.sroa.4.0..sroa_idx.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.gr, ptr %.sroa.4.0..sroa_idx.i6.i.i.i, align 8, !alias.scope !130568, !noalias !130566
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !130568, !noalias !130566
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !alias.scope !130568, !noalias !130566
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !130568, !noalias !130566
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i, %bb.ay
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  store i64 %i.gm, ptr %i.hg, align 8, !alias.scope !130568, !noalias !130566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !130566
  store ptr %.sroa.9119.0.i.i, ptr %i.p, align 8, !noalias !130566
  %.sroa.9119.0..sroa_idx120.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.9119.0.i.i, ptr %.sroa.9119.0..sroa_idx120.i.i, align 8, !noalias !130566
  %.sroa.10122.0..sroa_idx123.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 %.sroa.10122.0.i.i, ptr %.sroa.10122.0..sroa_idx123.i.i, align 8, !noalias !130566
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i40.i.i.i = icmp eq ptr %.sroa.9119.0.i.i, null
  br i1 %.not.i40.i.i.i, label %.thread18.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.be

.thread18.i.i.i:                                  ; preds = %bb.bj, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.bk

bb.be:                                            ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.hh = phi ptr [ %.sroa.9119.0.i.i, %.lr.ph.i.i.i ], [ %i.hl, %bb.bj ] ; 4 uses
  %i.hi = phi ptr [ %.sroa.9119.0.i.i, %.lr.ph.i.i.i ], [ %i.ho, %bb.bj ]
  %i.hj = phi i64 [ %.sroa.10122.0.i.i, %.lr.ph.i.i.i ], [ %i.hp, %bb.bj ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !130574, !noundef !67 ; 8 uses
  %.not3.i.i.i.i = icmp eq ptr %i.hl, null        ; 3 uses
  br i1 %.not3.i.i.i.i, label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store ptr null, ptr %i.hm, align 8, !noalias !130574
  br label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i

bb.bg:                                            ; preds = %bb.bh
  %i.hn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hl, ptr %i.p, align 8, !noalias !130566
  store ptr %i.ho, ptr %.sroa.9119.0..sroa_idx120.i.i, align 8, !noalias !130566
  store i64 %i.hp, ptr %.sroa.10122.0..sroa_idx123.i.i, align 8, !noalias !130566
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #63, !noalias !130567
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.q), !noalias !130567
  br label %.body72.i.i

_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i: ; preds = %bb.bf, %bb.be
  %i.ho = phi ptr [ %i.hi, %bb.bf ], [ null, %bb.be ] ; 3 uses
  %i.hp = add i64 %i.hj, -1                       ; 3 uses
  %.sroa.08.0.copyload9.i.i.i = load i64, ptr %i.hh, align 8, !noalias !130575 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i.i, i64 16, i1 false), !noalias !130575
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.hh, i64 noundef 40, i64 noundef 8) #59, !noalias !130576
  %.not.i68.i.i = icmp eq i64 %.sroa.08.0.copyload9.i.i.i, -1
  br i1 %.not.i68.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !130566
  store i64 %.sroa.08.0.copyload9.i.i.i, ptr %i.o, align 8, !noalias !130566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !130566
  invoke fastcc void @_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtCs87CvPiUlf0m_5alloc3vec3VecB3n_EEBT_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bj unwind label %bb.bg, !noalias !130567

bb.bi:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  store ptr %i.hl, ptr %i.p, align 8, !noalias !130566
  store ptr %i.ho, ptr %.sroa.9119.0..sroa_idx120.i.i, align 8, !noalias !130566
  store i64 %i.hp, ptr %.sroa.10122.0..sroa_idx123.i.i, align 8, !noalias !130566
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %bb.bk, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bi
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !130577, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not3.i2.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.lcssa1.i.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.hs, %.lr.ph.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i.i.i), !noalias !130577
  br label %bb.bk

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.hs = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i ], [ %i.hr, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ht = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i ], [ %i.hl, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store ptr null, ptr %i.hu, align 8, !noalias !130577
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.ht), !noalias !130577
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !130577, !noundef !67 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not3.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !130566
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %.thread18.i.i.i, label %bb.be

.thread.i.i.i:                                    ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.bb, %bb.aw
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gl, %bb.aw ], [ %i.gt, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ %i.gt, %bb.bb ] ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.sroa.9119.0.i.i, null
  br i1 %.not12.i.i.i.i, label %.body72.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.thread.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.9119.0.i.i, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !130578, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not3.i2.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i85.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i85.i.i, %.lr.ph.preheader.i.i.i.i
  %.lcssa1.i.i.i = phi ptr [ %.sroa.9119.0.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.hz, %.lr.ph.i.i85.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i), !noalias !130578
  br label %.body72.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i85.i.i
  %i.hz = phi ptr [ %i.id, %.lr.ph.i.i85.i.i ], [ %i.hy, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.ia = phi ptr [ %i.hz, %.lr.ph.i.i85.i.i ], [ %.sroa.9119.0.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store ptr null, ptr %i.ib, align 8, !noalias !130578
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.ia), !noalias !130578
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !130578, !noundef !67 ; 2 uses
  %.not3.i.i86.i.i = icmp eq ptr %i.id, null
  br i1 %.not3.i.i86.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i85.i.i

bb.bk:                                            ; preds = %.thread.i.i.i.i.i.i, %bb.bi, %.thread18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !130566
  %.sroa.7.8.copyload48 = load i64, ptr %i.q, align 8, !noalias !130517
  %.sroa.13.8..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.13.8.copyload53 = load ptr, ptr %.sroa.13.8..sroa_idx52, align 8, !noalias !130517
  %.sroa.15.8..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.15.8.copyload59 = load i64, ptr %.sroa.15.8..sroa_idx58, align 8, !noalias !130517
  %.sroa.16.8..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.8..sroa_idx63, i64 32, i1 false), !noalias !130517
  %.sroa.17.8.copyload68 = load i64, ptr %i.hg, align 8, !noalias !130517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !130566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !130516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !130516
  %.val47.i.i = load i64, ptr %i.y, align 8, !noalias !130516 ; 2 uses
  %i.ie = icmp eq i64 %.val47.i.i, 0
  br i1 %i.ie, label %bb.bl, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i.i: ; preds = %bb.bk
  %.val48.i.i = load ptr, ptr %i.dp, align 8, !noalias !130516, !nonnull !67, !noundef !67
  %i.if = shl nuw i64 %.val47.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130518
  br label %bb.bl

bb.bl:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i74.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !130516
  %i.ig = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ig, align 8, !noalias !130516, !noundef !67
  %i.ih = icmp sgt i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ih, label %bb.bn, label %bb.bm, !prof !125

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.bb)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i unwind label %.body

bb.bn:                                            ; preds = %bb.bl
  call void @_Py_DecRef(ptr noundef nonnull %i.bb) #59, !noalias !130518
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !130516
  br label %bb.cc

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !130516
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z, ptr nonnull %i.en)
          to label %bb.bq unwind label %.loopexit.i.i, !noalias !130518

select.unfold.i.i:                                ; preds = %bb.ad, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !130579)
  %i.ii = load i64, ptr %i.y, align 8, !range !70, !alias.scope !130579, !noalias !130516, !noundef !67
  %i.ij = icmp eq i64 %i.ef, %i.ii
  br i1 %i.ij, label %bb.bo, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bo:                                            ; preds = %select.unfold.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.i.i, !noalias !130518

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bo, %select.unfold.i.i
  %i.ik = load ptr, ptr %i.dp, align 8, !alias.scope !130579, !noalias !130516, !nonnull !67, !noundef !67
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %i.ef
  store i64 0, ptr %i.il, align 8, !noalias !130580
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bu, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sink219.i.i = phi i64 [ %i.ef, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.is, %bb.bu ]
  %i.im = add i64 %.sink219.i.i, 1                ; 2 uses
  store i64 %i.im, ptr %i.dq, align 8, !noalias !130516
  %exitcond.i.i = icmp eq i64 %i.eg, %.sroa.0.0.i.i58.i.i
  br i1 %exitcond.i.i, label %bb.ae, label %bb.ac

bb.bq:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.in = load i64, ptr %i.x, align 8, !range !68, !noalias !130516, !noundef !67
  %i.io = trunc nuw i64 %i.in to i1
  %.sroa.023.0.copyload.i.i = load double, ptr %i.ee, align 8, !noalias !130516 ; 2 uses
  br i1 %i.io, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.13.16.copyload = load ptr, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !130517
  %.sroa.15.16..sroa.424.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.15.16.copyload = load i64, ptr %.sroa.15.16..sroa.424.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !130517
  %.sroa.16.16..sroa.424.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.16..sroa.424.0..sroa_idx.i.i.sroa_idx, i64 32, i1 false), !noalias !130517
  %.sroa.17.16..sroa.424.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.17.16.copyload = load i64, ptr %.sroa.17.16..sroa.424.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !130517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !130516
  %i.ip = bitcast double %.sroa.023.0.copyload.i.i to i64
  %.val45.i.i = load i64, ptr %i.y, align 8, !noalias !130516 ; 2 uses
  %i.iq = icmp eq i64 %.val45.i.i, 0
  br i1 %i.iq, label %bb.bv, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i: ; preds = %bb.br
  %.val46.i.i = load ptr, ptr %i.dp, align 8, !noalias !130516, !nonnull !67, !noundef !67
  %i.ir = shl nuw i64 %.val45.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130518
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !130516
  call void @llvm.experimental.noalias.scope.decl(metadata !130581)
  %i.is = load i64, ptr %i.dq, align 8, !alias.scope !130581, !noalias !130516, !noundef !67 ; 3 uses
  %i.it = load i64, ptr %i.y, align 8, !range !70, !alias.scope !130581, !noalias !130516, !noundef !67
  %i.iu = icmp eq i64 %i.is, %i.it
  br i1 %i.iu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCslwFuT2d6ECx_4core6option6OptiondEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #62
          to label %bb.bu unwind label %.loopexit.i.i, !noalias !130518

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.iv = load ptr, ptr %i.dp, align 8, !alias.scope !130581, !noalias !130516, !nonnull !67, !noundef !67
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.is ; 2 uses
  store i64 1, ptr %i.iw, align 8, !noalias !130582
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store double %.sroa.023.0.copyload.i.i, ptr %i.ix, align 8, !noalias !130582
  br label %bb.bp

bb.bv:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i78.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !130516
  %i.iy = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i82.i.i = load i64, ptr %i.iy, align 8, !noalias !130516, !noundef !67
  %i.iz = icmp sgt i64 %.val.i.i.i.i.i82.i.i, 0
  br i1 %i.iz, label %bb.bx, label %bb.bw, !prof !125

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.bb)
          to label %bb.cb unwind label %.body

bb.bx:                                            ; preds = %bb.bv
  call void @_Py_DecRef(ptr noundef nonnull %i.bb) #59, !noalias !130518
  br label %bb.cb

bb.by:                                            ; preds = %bb.ca, %bb.w
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !130518
  unreachable

bb.bz:                                            ; preds = %bb.z
  unreachable

bb.ca:                                            ; preds = %.thread129.i.i, %.thread133.i.i
  %eh.lpad-body132.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.thread129.i.i ], [ %lpad.thr_comm.i.i, %.thread133.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %i.bb) #63
          to label %.body.thread unwind label %bb.by, !noalias !130518

bb.cb:                                            ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !130516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !130515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.975.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, i64 32, i1 false)
  %i.jb = inttoptr i64 %i.ip to ptr
  br label %bb.cg

bb.cc:                                            ; preds = %bb.v, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i, %bb.u
  %.sroa.17.1.ph = phi i64 [ %.sroa.17.0, %bb.u ], [ %.sroa.17.8.copyload68, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.17.0, %bb.v ]
  %.sroa.15.1.ph = phi i64 [ %.sroa.15.0, %bb.u ], [ %.sroa.15.8.copyload59, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.15.0, %bb.v ]
  %.sroa.13.1.ph = phi ptr [ %.sroa.13.0, %bb.u ], [ %.sroa.13.8.copyload53, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.13.0, %bb.v ]
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0, %bb.u ], [ %.sroa.7.8.copyload48, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i.i ], [ %.sroa.7.0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !130515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %.sroa.7.1.ph, ptr %i.ae, align 8
  %.sroa.13.8..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.13.1.ph, ptr %.sroa.13.8..sroa_idx50, align 8
  %.sroa.15.8..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.sroa.15.1.ph, ptr %.sroa.15.8..sroa_idx56, align 8
  %.sroa.16.8..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
end_hunk_8
begin_hunk_9_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path54___pyfunction_graph_all_pairs_bellman_ford_path_lengths:bb.a

.body.i.i.i.i.i:                                  ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i, %bb.aq, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.ap, %bb.ao, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ew, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i ], [ %i.ez, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i ], [ %i.ez, %bb.aq ], [ %i.ev, %bb.ao ], [ %i.ek, %.body.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ek, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ew, %bb.ap ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #63, !noalias !131616
  br label %.body87.i.i

bb.ar:                                            ; preds = %bb.al
  %i.fc = add nuw nsw i64 %i.ec, %.sroa.5126.0.copyload.i.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !131598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !131598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !131596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !131596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !131617
  %i.fd = icmp samesign ult i64 %i.fc, 128102389400760776
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.fc, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !131617
  br i1 %i.fe, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131618
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false), !noalias !131618
  store i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, ptr %i.d, align 8, !noalias !131619
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !131619
  %.sroa.516.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.fc, ptr %.sroa.516.0..sroa_idx.i.i.i.i, align 8, !noalias !131619
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131620
  %i.fg = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131620 ; 5 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.at, label %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, !prof !71

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #61
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !131621

.noexc.i.i.i.i.i.i:                               ; preds = %bb.at
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.at
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1T_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.d) #63, !noalias !131622
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63, !noalias !131623
  br label %.body87.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !131617
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i) ]
  %i.fj = icmp eq i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 0
  br i1 %i.fj, label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %i.fk = mul nuw i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 72
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.sroa.5.0.copyload12.i.i.i.i, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131624
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i: ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 24, i1 false), !noalias !131625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131618
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false), !noalias !131623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !131617
  %i.fm = getelementptr i8, ptr %i.fg, i64 16
  %.val.i.i.i.i37 = load i64, ptr %i.fm, align 8, !noalias !131626, !noundef !67 ; 2 uses
  %i.fn = icmp ult i64 %.val.i.i.i.i37, 128102389400760776
  call void @llvm.assume(i1 %i.fn)
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

bb.au:                                            ; preds = %bb.ax, %bb.av, %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i: ; preds = %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %.sroa.9136.0.i.i = phi ptr [ %i.fg, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ null, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.10139.0.i.i = phi i64 [ 1, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.val.i.i.i.i37, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_10UndirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !131627
  %i.fp = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc4.i.i.i unwind label %bb.au, !noalias !131628

.noexc4.i.i.i:                                    ; preds = %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.fq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !131627
  %i.fr = icmp eq i8 %i.fq, 2
  br i1 %i.fr, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i, label %bb.av, !prof !77

bb.av:                                            ; preds = %.noexc4.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i unwind label %bb.au, !noalias !131628

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i: ; preds = %bb.av, %.noexc4.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !131629)
  %i.fs = icmp eq i64 %.sroa.0.0.lcssa.i.i.i.i, 0
  br i1 %i.fs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i
  store i64 0, ptr %i.q, align 8, !alias.scope !131629, !noalias !131627
  %.sroa.42.0..sroa_idx.i.i84.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i84.i.i, align 8, !alias.scope !131629, !noalias !131627
  %.sroa.53.0..sroa_idx.i.i85.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i85.i.i, align 8, !alias.scope !131629, !noalias !131627
  %.sroa.6.0..sroa_idx.i.i86.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i86.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !131627
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

bb.ax:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !131630
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 1, 0) %.sroa.0.0.lcssa.i.i.i.i)
          to label %.noexc7.i.i.i unwind label %bb.au, !noalias !131628

.noexc7.i.i.i:                                    ; preds = %bb.ax
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !131631 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i, align 8, !noalias !131631 ; 5 uses
  %i.ft = mul nuw i64 %.sroa.0.0.lcssa.i.i.i.i, 80 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.lcssa.i.i.i.i, 115292150460684697
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ba, label %bb.ay, !prof !73

bb.ay:                                            ; preds = %.noexc7.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131632
  %i.fu = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ft, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131632 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.ba, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ba
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.fx, label %.thread.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.az
  %i.fy = shl i64 %.sroa.5.0.copyload.i.i.i.i.i, 3
  %i.fz = icmp slt i64 %.sroa.5.0.copyload.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.fz), !noalias !131633
  %i.ga = and i64 %i.fy, -16                      ; 2 uses
  %i.gb = add i64 %i.ga, 16                       ; 2 uses
  %i.gc = add nsw i64 %.sroa.5.0.copyload.i.i.i.i.i, 17
  %i.gd = add i64 %i.gc, %i.gb                    ; 3 uses
  %i.ge = icmp uge i64 %i.gd, %i.gb
  call void @llvm.assume(i1 %i.ge), !noalias !131633
  %i.gf = icmp ult i64 %i.gd, 9223372036854775793
  call void @llvm.assume(i1 %i.gf), !noalias !131633
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ], !noalias !131633
  %i.gg = sub nuw nsw i64 -16, %i.ga
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.gg
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gh, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !131634
  br label %.thread.i.i.i

bb.ba:                                            ; preds = %bb.ay, %.noexc7.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ay ], [ 0, %.noexc7.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ft) #61
          to label %bb.bb unwind label %bb.az, !noalias !131634

bb.bb:                                            ; preds = %bb.ba
  unreachable

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i: ; preds = %bb.ay
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !noalias !131627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !131630
  store i64 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.q, align 8, !alias.scope !131629, !noalias !131627
  %.sroa.4.0..sroa_idx.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.fu, ptr %.sroa.4.0..sroa_idx.i6.i.i.i, align 8, !alias.scope !131629, !noalias !131627
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !131629, !noalias !131627
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !alias.scope !131629, !noalias !131627
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !131629, !noalias !131627
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i, %bb.aw
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %i.fp, ptr %i.gj, align 8, !alias.scope !131629, !noalias !131627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !131627
  store ptr %.sroa.9136.0.i.i, ptr %i.p, align 8, !noalias !131627
  %.sroa.9136.0..sroa_idx137.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.9136.0.i.i, ptr %.sroa.9136.0..sroa_idx137.i.i, align 8, !noalias !131627
  %.sroa.10139.0..sroa_idx140.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 %.sroa.10139.0.i.i, ptr %.sroa.10139.0..sroa_idx140.i.i, align 8, !noalias !131627
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i40.i.i.i = icmp eq ptr %.sroa.9136.0.i.i, null
  br i1 %.not.i40.i.i.i, label %.thread18.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.bc

.thread18.i.i.i:                                  ; preds = %bb.bh, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.bi

bb.bc:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.gk = phi ptr [ %.sroa.9136.0.i.i, %.lr.ph.i.i.i ], [ %i.go, %bb.bh ] ; 4 uses
  %i.gl = phi ptr [ %.sroa.9136.0.i.i, %.lr.ph.i.i.i ], [ %i.gr, %bb.bh ]
  %i.gm = phi i64 [ %.sroa.10139.0.i.i, %.lr.ph.i.i.i ], [ %i.gs, %bb.bh ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !131635, !noundef !67 ; 8 uses
  %.not3.i.i.i.i = icmp eq ptr %i.go, null        ; 3 uses
  br i1 %.not3.i.i.i.i, label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  store ptr null, ptr %i.gp, align 8, !noalias !131635
  br label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i

bb.be:                                            ; preds = %bb.bf
  %i.gq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.go, ptr %i.p, align 8, !noalias !131627
  store ptr %i.gr, ptr %.sroa.9136.0..sroa_idx137.i.i, align 8, !noalias !131627
  store i64 %i.gs, ptr %.sroa.10139.0..sroa_idx140.i.i, align 8, !noalias !131627
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #63, !noalias !131628
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.q), !noalias !131628
  br label %.body87.i.i

_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i: ; preds = %bb.bd, %bb.bc
  %i.gr = phi ptr [ %i.gl, %bb.bd ], [ null, %bb.bc ] ; 3 uses
  %i.gs = add i64 %i.gm, -1                       ; 3 uses
  %.sroa.08.0.copyload9.i.i.i = load i64, ptr %i.gk, align 8, !noalias !131636 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i.i, i64 16, i1 false), !noalias !131636
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.gk, i64 noundef 40, i64 noundef 8) #59, !noalias !131637
  %.not.i.i.i38 = icmp eq i64 %.sroa.08.0.copyload9.i.i.i, -1
  br i1 %.not.i.i.i38, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !131627
  store i64 %.sroa.08.0.copyload9.i.i.i, ptr %i.o, align 8, !noalias !131627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !131627
  invoke fastcc void @_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtCs87CvPiUlf0m_5alloc3vec3VecB3n_EEBT_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bh unwind label %bb.be, !noalias !131628

bb.bg:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  store ptr %i.go, ptr %i.p, align 8, !noalias !131627
  store ptr %i.gr, ptr %.sroa.9136.0..sroa_idx137.i.i, align 8, !noalias !131627
  store i64 %i.gs, ptr %.sroa.10139.0..sroa_idx140.i.i, align 8, !noalias !131627
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %bb.bi, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bg
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !131638, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not3.i2.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.lcssa1.i.i.i.i.i = phi ptr [ %i.go, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.gv, %.lr.ph.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i.i.i), !noalias !131638
  br label %bb.bi

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.gv = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i ], [ %i.gu, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.gw = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %i.go, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store ptr null, ptr %i.gx, align 8, !noalias !131638
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.gw), !noalias !131638
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !131638, !noundef !67 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not3.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !131627
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %.thread18.i.i.i, label %bb.bc

.thread.i.i.i:                                    ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.az, %bb.au
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fo, %bb.au ], [ %i.fw, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ %i.fw, %bb.az ] ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.sroa.9136.0.i.i, null
  br i1 %.not12.i.i.i.i, label %.body87.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.thread.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9136.0.i.i, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !131639, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not3.i2.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i101.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i101.i.i, %.lr.ph.preheader.i.i.i.i
  %.lcssa1.i.i.i = phi ptr [ %.sroa.9136.0.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.hc, %.lr.ph.i.i101.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i), !noalias !131639
  br label %.body87.i.i

.lr.ph.i.i101.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i101.i.i
  %i.hc = phi ptr [ %i.hg, %.lr.ph.i.i101.i.i ], [ %i.hb, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.hd = phi ptr [ %i.hc, %.lr.ph.i.i101.i.i ], [ %.sroa.9136.0.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr null, ptr %i.he, align 8, !noalias !131639
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.hd), !noalias !131639
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !131639, !noundef !67 ; 2 uses
  %.not3.i.i102.i.i = icmp eq ptr %i.hg, null
  br i1 %.not3.i.i102.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i101.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i, %bb.bg, %.thread18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !131627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false), !noalias !131640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !131627
  %i.hh = load atomic i32, ptr %i.y monotonic, align 8, !noalias !131584 ; 3 uses
  %or.cond3.i.i.i = icmp ult i32 %i.hh, 1073741822
  br i1 %or.cond3.i.i.i, label %bb.bk, label %bb.bj, !prof !181

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.y)
          to label %bb.bm unwind label %bb.bl, !noalias !131586

bb.bk:                                            ; preds = %bb.bi
  %i.hi = add nuw nsw i32 %i.hh, 1
  %i.hj = cmpxchg weak ptr %i.y, i32 %i.hh, i32 %i.hi acquire monotonic, align 4, !noalias !131584
  %i.hk = extractvalue { i32, i1 } %i.hj, 1
  br i1 %i.hk, label %bb.bm, label %bb.bj, !prof !77

bb.bl:                                            ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bj
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bp, %bb.bo, %bb.bl
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.hl, %bb.bl ], [ %i.ho, %bb.bo ], [ %i.ho, %bb.bp ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.v), !noalias !131586
  br label %.body87.i.i

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.hm = load atomic i8, ptr %i.dp monotonic, align 8, !noalias !131641
  %.not.i90.not.i.i = icmp eq i8 %i.hm, 0
  br i1 %.not.i90.not.i.i, label %bb.bs, label %bb.bn, !prof !77

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !131642
  store ptr %i.dq, ptr %i.u, align 8, !noalias !131642
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.hn, align 8, !noalias !131642
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1062) #61
          to label %bb.bq unwind label %bb.bo, !noalias !131643

bb.bo:                                            ; preds = %bb.bn
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131644)
  %.val.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !131644, !noalias !131645, !nonnull !67, !align !101, !noundef !67 ; 2 uses
  %i.hp = atomicrmw sub ptr %.val.i.i.i, i32 1 release, align 4, !noalias !131646
  %i.hq = add i32 %i.hp, -1                       ; 2 uses
  %i.hr = and i32 %i.hq, -1073741825
  %or.cond.i.i.i.i.i = icmp eq i32 %i.hr, -2147483648
  br i1 %or.cond.i.i.i.i.i, label %bb.bp, label %.body.i.i, !prof !79

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val.i.i.i, i32 noundef %i.hq)
          to label %.body.i.i unwind label %bb.br, !noalias !131586

bb.bq:                                            ; preds = %bb.bn
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !131643
  unreachable

bb.bs:                                            ; preds = %bb.bm
  %i.ht = load i8, ptr %i.dq, align 1, !range !69, !noalias !131584, !noundef !67
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = atomicrmw sub ptr %i.y, i32 1 release, align 4, !noalias !131584
  %i.hw = add i32 %i.hv, -1                       ; 3 uses
  %i.hx = and i32 %i.hw, -1073741825
  %or.cond.i.i93.i.i = icmp eq i32 %i.hx, -2147483648 ; 2 uses
  br i1 %i.hu, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %or.cond.i.i93.i.i, label %bb.bu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !79

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.y, i32 noundef %i.hw)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.bl, !noalias !131586

bb.bv:                                            ; preds = %bb.bs
  br i1 %or.cond.i.i93.i.i, label %bb.bw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i, !prof !79

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.y, i32 noundef %i.hw)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i unwind label %bb.bl, !noalias !131586

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bu, %bb.bt
  %.sroa.8.8.copyload48 = load i64, ptr %i.v, align 8, !noalias !131585 ; 3 uses
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %.sroa.8.8.copyload48 to i32
  %.sroa.8.sroa.10.0.extract.shift = lshr i64 %.sroa.8.8.copyload48, 32
  %.sroa.8.sroa.10.0.extract.trunc = trunc i64 %.sroa.8.sroa.10.0.extract.shift to i8
  %.sroa.8.sroa.11.0.extract.shift = lshr i64 %.sroa.8.8.copyload48, 40
  %.sroa.8.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.8.sroa.11.0.extract.shift to i24
  %.sroa.16.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hy = load <2 x i64>, ptr %.sroa.16.8..sroa_idx53, align 8, !noalias !131585
  %.sroa.20.8..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.hz = load <2 x ptr>, ptr %.sroa.20.8..sroa_idx67, align 8, !noalias !131585
  %.sroa.23.8..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.23.8.copyload82 = load ptr, ptr %.sroa.23.8..sroa_idx81, align 8, !noalias !131585
  %.sroa.24.8..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.24.8.copyload89 = load i64, ptr %.sroa.24.8..sroa_idx88, align 8, !noalias !131585
  %.sroa.2493.8..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.2493.8.copyload97 = load i64, ptr %.sroa.2493.8..sroa_idx96, align 8, !noalias !131585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !131584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !131584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !131584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !131584
  %.val59.i.i = load i64, ptr %i.ab, align 8, !noalias !131584 ; 2 uses
  %i.ia = icmp eq i64 %.val59.i.i, 0
  br i1 %i.ia, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit97.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val60.i.i = load ptr, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx152, align 8, !noalias !131584, !nonnull !67, !noundef !67
  %i.ib = shl nuw i64 %.val59.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i.i, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131586
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit97.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit97.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !131584
  br label %bb.cc

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i: ; preds = %bb.bw, %bb.bv
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !131586
  %i.ic = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131586 ; 4 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.bx, label %bb.by, !prof !104

bb.bx:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc98.i.i unwind label %bb.bl, !noalias !131586

.noexc98.i.i:                                     ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i
  store ptr @1063, ptr %i.ic, align 8, !noalias !131586
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 66, ptr %i.ie, align 8, !noalias !131586
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.v), !noalias !131586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !131584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !131584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !131584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !131584
  %.val57.i.i = load i64, ptr %i.ab, align 8, !noalias !131584 ; 2 uses
  %i.if = icmp eq i64 %.val57.i.i, 0
  %i.ig = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.ic, i64 1 ; 2 uses
  br i1 %i.if, label %bb.cb, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i99.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i99.i.i: ; preds = %bb.by
  %.val58.i.i = load ptr, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx152, align 8, !noalias !131584, !nonnull !67, !noundef !67
  %i.ih = shl nuw i64 %.val57.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i.i, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !131586
  br label %bb.cb

bb.bz:                                            ; preds = %bb.ca, %bb.u
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !131586
  unreachable

bb.ca:                                            ; preds = %.thread146.i.i, %.thread151.i.i
  %eh.lpad-body75149.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.thread146.i.i ], [ %lpad.thr_comm.i.i, %.thread151.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %i.bd) #63
          to label %.body.thread unwind label %bb.bz, !noalias !131586
end_hunk_9
begin_hunk_10_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path56___pyfunction_digraph_all_pairs_bellman_ford_path_lengths:bb.a

.body.i.i.i.i.i:                                  ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i, %bb.aq, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.ap, %bb.ao, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ew, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i ], [ %i.ez, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i20.i.i.i.i.i.i ], [ %i.ez, %bb.aq ], [ %i.ev, %bb.ao ], [ %i.ek, %.body.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ek, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ew, %bb.ap ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #63, !noalias !132051
  br label %.body87.i.i

bb.ar:                                            ; preds = %bb.al
  %i.fc = add nuw nsw i64 %i.ec, %.sroa.5126.0.copyload.i.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !132033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !132033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !132031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !132031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !132052
  %i.fd = icmp samesign ult i64 %i.fc, 128102389400760776
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.fc, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !132052
  br i1 %i.fe, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !132053
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false), !noalias !132053
  store i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, ptr %i.d, align 8, !noalias !132054
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !132054
  %.sroa.516.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.fc, ptr %.sroa.516.0..sroa_idx.i.i.i.i, align 8, !noalias !132054
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !132055
  %i.fg = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !132055 ; 5 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.at, label %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, !prof !71

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #61
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !132056

.noexc.i.i.i.i.i.i:                               ; preds = %bb.at
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.at
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1T_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.d) #63, !noalias !132057
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63, !noalias !132058
  br label %.body87.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !132052
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.sroa.5.0.copyload12.i.i.i.i) ]
  %i.fj = icmp eq i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 0
  br i1 %i.fj, label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %i.fk = mul nuw i64 %.sroa.4.sroa.0.0.copyload10.i.i.i.i, 72
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.sroa.5.0.copyload12.i.i.i.i, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !132059
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i: ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 24, i1 false), !noalias !132060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !132053
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false), !noalias !132058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !132052
  %i.fm = getelementptr i8, ptr %i.fg, i64 16
  %.val.i.i.i.i37 = load i64, ptr %i.fm, align 8, !noalias !132061, !noundef !67 ; 2 uses
  %i.fn = icmp ult i64 %.val.i.i.i.i37, 128102389400760776
  call void @llvm.assume(i1 %i.fn)
  br label %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i

bb.au:                                            ; preds = %bb.ax, %bb.av, %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i: ; preds = %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i
  %.sroa.9136.0.i.i = phi ptr [ %i.fg, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ null, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.10139.0.i.i = phi i64 [ 1, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.val.i.i.i.i37, %_RNvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3map3MapINtNtB9_3vec8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path22all_pairs_bellman_ford35all_pairs_bellman_ford_path_lengthsNtB15_8DirectedEs0_0ENtB7_16ParallelIterator16collect_vec_listB1Y_.exit.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i ], [ 0, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !132062
  %i.fp = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc4.i.i.i unwind label %bb.au, !noalias !132063

.noexc4.i.i.i:                                    ; preds = %_RINvYINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1l_.exit.i.i.i
  %i.fq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !132062
  %i.fr = icmp eq i8 %i.fq, 2
  br i1 %i.fr, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i, label %bb.av, !prof !77

bb.av:                                            ; preds = %.noexc4.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i unwind label %bb.au, !noalias !132063

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i: ; preds = %bb.av, %.noexc4.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !132064)
  %i.fs = icmp eq i64 %.sroa.0.0.lcssa.i.i.i.i, 0
  br i1 %i.fs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i
  store i64 0, ptr %i.q, align 8, !alias.scope !132064, !noalias !132062
  %.sroa.42.0..sroa_idx.i.i84.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i84.i.i, align 8, !alias.scope !132064, !noalias !132062
  %.sroa.53.0..sroa_idx.i.i85.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i85.i.i, align 8, !alias.scope !132064, !noalias !132062
  %.sroa.6.0..sroa_idx.i.i86.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i86.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !132062
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

bb.ax:                                            ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i83.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !132065
  invoke fastcc void @_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, i64 noundef range(i64 1, 0) %.sroa.0.0.lcssa.i.i.i.i)
          to label %.noexc7.i.i.i unwind label %bb.au, !noalias !132063

.noexc7.i.i.i:                                    ; preds = %bb.ax
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !132066 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i, align 8, !noalias !132066 ; 5 uses
  %i.ft = mul nuw i64 %.sroa.0.0.lcssa.i.i.i.i, 80 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.lcssa.i.i.i.i, 115292150460684697
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ba, label %bb.ay, !prof !73

bb.ay:                                            ; preds = %.noexc7.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !132067
  %i.fu = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ft, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !132067 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.ba, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ba
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.fx, label %.thread.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.az
  %i.fy = shl i64 %.sroa.5.0.copyload.i.i.i.i.i, 3
  %i.fz = icmp slt i64 %.sroa.5.0.copyload.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.fz), !noalias !132068
  %i.ga = and i64 %i.fy, -16                      ; 2 uses
  %i.gb = add i64 %i.ga, 16                       ; 2 uses
  %i.gc = add nsw i64 %.sroa.5.0.copyload.i.i.i.i.i, 17
  %i.gd = add i64 %i.gc, %i.gb                    ; 3 uses
  %i.ge = icmp uge i64 %i.gd, %i.gb
  call void @llvm.assume(i1 %i.ge), !noalias !132068
  %i.gf = icmp ult i64 %i.gd, 9223372036854775793
  call void @llvm.assume(i1 %i.gf), !noalias !132068
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ], !noalias !132068
  %i.gg = sub nuw nsw i64 -16, %i.ga
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.gg
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gh, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !132069
  br label %.thread.i.i.i

bb.ba:                                            ; preds = %bb.ay, %.noexc7.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ay ], [ 0, %.noexc7.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ft) #61
          to label %bb.bb unwind label %bb.az, !noalias !132069

bb.bb:                                            ; preds = %bb.ba
  unreachable

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i: ; preds = %bb.ay
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !noalias !132062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !132065
  store i64 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.q, align 8, !alias.scope !132064, !noalias !132062
  %.sroa.4.0..sroa_idx.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.fu, ptr %.sroa.4.0..sroa_idx.i6.i.i.i, align 8, !alias.scope !132064, !noalias !132062
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !132064, !noalias !132062
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !alias.scope !132064, !noalias !132062
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !132064, !noalias !132062
  br label %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingE13with_capacityBP_.exit.i.i.i.i, %bb.aw
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %i.fp, ptr %i.gj, align 8, !alias.scope !132064, !noalias !132062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !132062
  store ptr %.sroa.9136.0.i.i, ptr %i.p, align 8, !noalias !132062
  %.sroa.9136.0..sroa_idx137.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.9136.0.i.i, ptr %.sroa.9136.0..sroa_idx137.i.i, align 8, !noalias !132062
  %.sroa.10139.0..sroa_idx140.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 %.sroa.10139.0.i.i, ptr %.sroa.10139.0..sroa_idx140.i.i, align 8, !noalias !132062
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i40.i.i.i = icmp eq ptr %.sroa.9136.0.i.i, null
  br i1 %.not.i40.i.i.i, label %.thread18.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.bc

.thread18.i.i.i:                                  ; preds = %bb.bh, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherBS_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.bi

bb.bc:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.gk = phi ptr [ %.sroa.9136.0.i.i, %.lr.ph.i.i.i ], [ %i.go, %bb.bh ] ; 4 uses
  %i.gl = phi ptr [ %.sroa.9136.0.i.i, %.lr.ph.i.i.i ], [ %i.gr, %bb.bh ]
  %i.gm = phi i64 [ %.sroa.10139.0.i.i, %.lr.ph.i.i.i ], [ %i.gs, %bb.bh ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !132070, !noundef !67 ; 8 uses
  %.not3.i.i.i.i = icmp eq ptr %i.go, null        ; 3 uses
  br i1 %.not3.i.i.i.i, label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  store ptr null, ptr %i.gp, align 8, !noalias !132070
  br label %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i

bb.be:                                            ; preds = %bb.bf
  %i.gq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.go, ptr %i.p, align 8, !noalias !132062
  store ptr %i.gr, ptr %.sroa.9136.0..sroa_idx137.i.i, align 8, !noalias !132062
  store i64 %i.gs, ptr %.sroa.10139.0..sroa_idx140.i.i, align 8, !noalias !132062
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #63, !noalias !132063
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.q), !noalias !132063
  br label %.body87.i.i

_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i: ; preds = %bb.bd, %bb.bc
  %i.gr = phi ptr [ %i.gl, %bb.bd ], [ null, %bb.bc ] ; 3 uses
  %i.gs = add i64 %i.gm, -1                       ; 3 uses
  %.sroa.08.0.copyload9.i.i.i = load i64, ptr %i.gk, align 8, !noalias !132071 ; 2 uses
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i.i, i64 16, i1 false), !noalias !132071
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.gk, i64 noundef 40, i64 noundef 8) #59, !noalias !132072
  %.not.i.i.i38 = icmp eq i64 %.sroa.08.0.copyload9.i.i.i, -1
  br i1 %.not.i.i.i38, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !132062
  store i64 %.sroa.08.0.copyload9.i.i.i, ptr %i.o, align 8, !noalias !132062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !132062
  invoke fastcc void @_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtCs87CvPiUlf0m_5alloc3vec3VecB3n_EEBT_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bh unwind label %bb.be, !noalias !132063

bb.bg:                                            ; preds = %_RNvMs6_NtNtCs87CvPiUlf0m_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEE9pop_frontB1x_.exit.i.i.i
  store ptr %i.go, ptr %i.p, align 8, !noalias !132062
  store ptr %i.gr, ptr %.sroa.9136.0..sroa_idx137.i.i, align 8, !noalias !132062
  store i64 %i.gs, ptr %.sroa.10139.0..sroa_idx140.i.i, align 8, !noalias !132062
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %bb.bi, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bg
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !132073, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not3.i2.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.lcssa1.i.i.i.i.i = phi ptr [ %i.go, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.gv, %.lr.ph.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i.i.i), !noalias !132073
  br label %bb.bi

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.gv = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i ], [ %i.gu, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.gw = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %i.go, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store ptr null, ptr %i.gx, align 8, !noalias !132073
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.gw), !noalias !132073
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !132073, !noundef !67 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not3.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !132062
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  br i1 %.not3.i.i.i.i, label %.thread18.i.i.i, label %bb.bc

.thread.i.i.i:                                    ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.az, %bb.au
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.fo, %bb.au ], [ %i.fw, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ %i.fw, %bb.az ] ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.sroa.9136.0.i.i, null
  br i1 %.not12.i.i.i.i, label %.body87.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.thread.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9136.0.i.i, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !132074, !noundef !67 ; 2 uses
  %.not3.i2.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not3.i2.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i101.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i101.i.i, %.lr.ph.preheader.i.i.i.i
  %.lcssa1.i.i.i = phi ptr [ %.sroa.9136.0.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.hc, %.lr.ph.i.i101.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %.lcssa1.i.i.i), !noalias !132074
  br label %.body87.i.i

.lr.ph.i.i101.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i101.i.i
  %i.hc = phi ptr [ %i.hg, %.lr.ph.i.i101.i.i ], [ %i.hb, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.hd = phi ptr [ %i.hc, %.lr.ph.i.i101.i.i ], [ %.sroa.9136.0.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr null, ptr %i.he, align 8, !noalias !132074
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEERNtNtB12_5alloc6GlobalEEEB2z_(ptr nonnull %i.hd), !noalias !132074
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !132074, !noundef !67 ; 2 uses
  %.not3.i.i102.i.i = icmp eq ptr %i.hg, null
  br i1 %.not3.i.i102.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i101.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i, %bb.bg, %.thread18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !132062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false), !noalias !132075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !132062
  %i.hh = load atomic i32, ptr %i.y monotonic, align 8, !noalias !132019 ; 3 uses
  %or.cond3.i.i.i = icmp ult i32 %i.hh, 1073741822
  br i1 %or.cond3.i.i.i, label %bb.bk, label %bb.bj, !prof !181

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.y)
          to label %bb.bm unwind label %bb.bl, !noalias !132021

bb.bk:                                            ; preds = %bb.bi
  %i.hi = add nuw nsw i32 %i.hh, 1
  %i.hj = cmpxchg weak ptr %i.y, i32 %i.hh, i32 %i.hi acquire monotonic, align 4, !noalias !132019
  %i.hk = extractvalue { i32, i1 } %i.hj, 1
  br i1 %i.hk, label %bb.bm, label %bb.bj, !prof !77

bb.bl:                                            ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bj
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bp, %bb.bo, %bb.bl
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.hl, %bb.bl ], [ %i.ho, %bb.bo ], [ %i.ho, %bb.bp ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.v), !noalias !132021
  br label %.body87.i.i

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.hm = load atomic i8, ptr %i.dp monotonic, align 8, !noalias !132076
  %.not.i90.not.i.i = icmp eq i8 %i.hm, 0
  br i1 %.not.i90.not.i.i, label %bb.bs, label %bb.bn, !prof !77

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !132077
  store ptr %i.dq, ptr %i.u, align 8, !noalias !132077
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.hn, align 8, !noalias !132077
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1548, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1062) #61
          to label %bb.bq unwind label %bb.bo, !noalias !132078

bb.bo:                                            ; preds = %bb.bn
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !132079)
  %.val.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !132079, !noalias !132080, !nonnull !67, !align !101, !noundef !67 ; 2 uses
  %i.hp = atomicrmw sub ptr %.val.i.i.i, i32 1 release, align 4, !noalias !132081
  %i.hq = add i32 %i.hp, -1                       ; 2 uses
  %i.hr = and i32 %i.hq, -1073741825
  %or.cond.i.i.i.i.i = icmp eq i32 %i.hr, -2147483648
  br i1 %or.cond.i.i.i.i.i, label %bb.bp, label %.body.i.i, !prof !79

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val.i.i.i, i32 noundef %i.hq)
          to label %.body.i.i unwind label %bb.br, !noalias !132021

bb.bq:                                            ; preds = %bb.bn
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !132078
  unreachable

bb.bs:                                            ; preds = %bb.bm
  %i.ht = load i8, ptr %i.dq, align 1, !range !69, !noalias !132019, !noundef !67
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = atomicrmw sub ptr %i.y, i32 1 release, align 4, !noalias !132019
  %i.hw = add i32 %i.hv, -1                       ; 3 uses
  %i.hx = and i32 %i.hw, -1073741825
  %or.cond.i.i93.i.i = icmp eq i32 %i.hx, -2147483648 ; 2 uses
  br i1 %i.hu, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %or.cond.i.i93.i.i, label %bb.bu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !79

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.y, i32 noundef %i.hw)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.bl, !noalias !132021

bb.bv:                                            ; preds = %bb.bs
  br i1 %or.cond.i.i93.i.i, label %bb.bw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i, !prof !79

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.y, i32 noundef %i.hw)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i unwind label %bb.bl, !noalias !132021

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.bu, %bb.bt
  %.sroa.8.8.copyload48 = load i64, ptr %i.v, align 8, !noalias !132020 ; 3 uses
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %.sroa.8.8.copyload48 to i32
  %.sroa.8.sroa.10.0.extract.shift = lshr i64 %.sroa.8.8.copyload48, 32
  %.sroa.8.sroa.10.0.extract.trunc = trunc i64 %.sroa.8.sroa.10.0.extract.shift to i8
  %.sroa.8.sroa.11.0.extract.shift = lshr i64 %.sroa.8.8.copyload48, 40
  %.sroa.8.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.8.sroa.11.0.extract.shift to i24
  %.sroa.16.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hy = load <2 x i64>, ptr %.sroa.16.8..sroa_idx53, align 8, !noalias !132020
  %.sroa.20.8..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.hz = load <2 x ptr>, ptr %.sroa.20.8..sroa_idx67, align 8, !noalias !132020
  %.sroa.23.8..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.23.8.copyload82 = load ptr, ptr %.sroa.23.8..sroa_idx81, align 8, !noalias !132020
  %.sroa.24.8..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.24.8.copyload89 = load i64, ptr %.sroa.24.8..sroa_idx88, align 8, !noalias !132020
  %.sroa.2493.8..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.2493.8.copyload97 = load i64, ptr %.sroa.2493.8..sroa_idx96, align 8, !noalias !132020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !132019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !132019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !132019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !132019
  %.val59.i.i = load i64, ptr %i.ab, align 8, !noalias !132019 ; 2 uses
  %i.ia = icmp eq i64 %.val59.i.i, 0
  br i1 %i.ia, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit97.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val60.i.i = load ptr, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx152, align 8, !noalias !132019, !nonnull !67, !noundef !67
  %i.ib = shl nuw i64 %.val59.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i.i, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !132021
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit97.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit97.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !132019
  br label %bb.cc

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i: ; preds = %bb.bw, %bb.bv
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !132021
  %i.ic = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !132021 ; 4 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.bx, label %bb.by, !prof !104

bb.bx:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc98.i.i unwind label %bb.bl, !noalias !132021

.noexc98.i.i:                                     ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCscQOBX8uaZYv_3std4sync6poison6rwlock15RwLockReadGuardbEECskcxRuJ53GpR_9rustworkx.exit95.i.i
  store ptr @1063, ptr %i.ic, align 8, !noalias !132021
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 66, ptr %i.ie, align 8, !noalias !132021
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.v), !noalias !132021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !132019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !132019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !132019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !132019
  %.val57.i.i = load i64, ptr %i.ab, align 8, !noalias !132019 ; 2 uses
  %i.if = icmp eq i64 %.val57.i.i, 0
  %i.ig = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.ic, i64 1 ; 2 uses
  br i1 %i.if, label %bb.cb, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i99.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i99.i.i: ; preds = %bb.by
  %.val58.i.i = load ptr, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx152, align 8, !noalias !132019, !nonnull !67, !noundef !67
  %i.ih = shl nuw i64 %.val57.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i.i, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !132021
  br label %bb.cb

bb.bz:                                            ; preds = %bb.ca, %bb.u
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !132021
  unreachable

bb.ca:                                            ; preds = %.thread146.i.i, %.thread151.i.i
  %eh.lpad-body75149.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.thread146.i.i ], [ %lpad.thr_comm.i.i, %.thread151.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %i.bd) #63
          to label %.body.thread unwind label %bb.bz, !noalias !132021
end_hunk_10
begin_hunk_11_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spring_layout:bb.a
  store <2 x double> %i.my, ptr %.sroa.0.01.i.i.i, align 8, !alias.scope !136947, !noalias !136926
  %i.mz = icmp eq ptr %i.mw, %i.mk
  br i1 %i.mz, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !136738

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ax, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i
  %i.na = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.na, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.nb = shl i64 %.sroa.9.0.i, 3
  %i.nc = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.nc)
  %i.nd = and i64 %i.nb, -16                      ; 2 uses
  %i.ne = add i64 %i.nd, 16                       ; 2 uses
  %i.nf = add nsw i64 %.sroa.9.0.i, 17
  %i.ng = add i64 %i.nf, %i.ne                    ; 4 uses
  %i.nh = icmp uge i64 %i.ng, %i.ne
  %i.ni = icmp ult i64 %i.ng, 9223372036854775793
  call void @llvm.assume(i1 %i.nh)
  call void @llvm.assume(i1 %i.ni)
  %i.nj = icmp eq i64 %i.ng, 0
  br i1 %i.nj, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %select.unfold.loopexit138.split.us.i.i
  %.in.i.i = phi i64 [ %i.iu, %select.unfold.loopexit138.split.us.i.i ], [ %i.jb, %._crit_edge.i.i.i.i ]
  %i.nk = phi i64 [ %i.iz, %select.unfold.loopexit138.split.us.i.i ], [ %i.jg, %._crit_edge.i.i.i.i ] ; 8 uses
  %.lcssa149151.i.i = phi ptr [ %i.ix, %select.unfold.loopexit138.split.us.i.i ], [ %i.je, %._crit_edge.i.i.i.i ]
  %.lcssa146148.i.i = phi i64 [ %i.iy, %select.unfold.loopexit138.split.us.i.i ], [ %i.jf, %._crit_edge.i.i.i.i ]
  %i.nl = trunc i64 %.in.i.i to i32               ; 2 uses
  %i.nm = icmp ugt i64 %.val200.i, %i.nk
  br i1 %i.nm, label %bb.bl, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bl:                                            ; preds = %select.unfold.i.i
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %.val199.i, i64 %i.nk ; 3 uses
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !136948, !noundef !67
  %.not.i.i.i253.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i253.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.bl
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.np, align 8, !noalias !136948
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !136948
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.bl, %select.unfold.i.i
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %select.unfold.i.i ], [ -1, %bb.bl ] ; 2 uses
  %.sroa.0.0.i70.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %select.unfold.i.i ], [ -1, %bb.bl ] ; 2 uses
  %i.nq = icmp ult i64 %i.nk, %.sroa.49.0.i.i940.i
  br i1 %i.nq, label %bb.bm, label %bb.bw

bb.bm:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.nk ; 2 uses
  %i.ns = load <2 x double>, ptr %i.nr, align 8, !noalias !136926 ; 3 uses
  %i.nt = xor i64 %i.nk, %.sroa.10523.0.copyload.i
  %i.nu = zext i64 %i.nt to i128
  br i1 %i.hj, label %.split202.us.i.i, label %.split202.i.i

.split202.us.i.i:                                 ; preds = %bb.bm
  %i.nv = zext i32 %.sroa.0.0.i70.i.i to i64      ; 2 uses
  %i.nw = icmp ugt i64 %i.gt, %i.nv
  br i1 %i.nw, label %bb.bo, label %.preheader.i.i.i.us.i.i

.preheader.i.i.i.us.i.i:                          ; preds = %.split202.us.i.i, %bb.bn
  %i.nx = phi i32 [ %i.oc, %bb.bn ], [ %.sroa.5.0.i.i.i, %.split202.us.i.i ]
  %i.ny = zext i32 %i.nx to i64                   ; 2 uses
  %i.nz = icmp ugt i64 %i.gt, %i.ny
  br i1 %i.nz, label %bb.bn, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i

bb.bn:                                            ; preds = %.preheader.i.i.i.us.i.i
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.ny ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  %i.oc = load i32, ptr %i.ob, align 4, !noalias !136949, !noundef !67
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %.val.i.i.i76.us.i.i = load i32, ptr %i.od, align 4, !noalias !136949, !noundef !67 ; 2 uses
  %i.oe = icmp eq i32 %.val.i.i.i76.us.i.i, %i.nl
  br i1 %i.oe, label %.preheader.i.i.i.us.i.i, label %.loopexit.i.i.us.i.i

bb.bo:                                            ; preds = %.split202.us.i.i
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.nv
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  %i.oh = load i32, ptr %i.og, align 4, !noalias !136949, !noundef !67
  br label %.loopexit.i.i.us.i.i

.loopexit.i.i.us.i.i:                             ; preds = %bb.bn, %bb.bo
  %.sroa.4.0.i.ph.i.i.us.i.i = phi i32 [ %i.oh, %bb.bo ], [ %.val.i.i.i76.us.i.i, %bb.bn ]
  %i.oi = zext i32 %.sroa.4.0.i.ph.i.i.us.i.i to i64 ; 2 uses
  %i.oj = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.oi
  br i1 %i.oj, label %select.unfold.i.i.i.i.i, label %.invoke.i.i

.split202.i.i:                                    ; preds = %bb.bm, %bb.bv
  %.sroa.7.0.i.i.i = phi i32 [ %.sroa.7.2.i.i.i, %bb.bv ], [ %.sroa.5.0.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.5.0.i75.i.i = phi i32 [ %.sroa.5.1.i.i.i, %bb.bv ], [ %.sroa.0.0.i70.i.i, %bb.bm ] ; 2 uses
  %i.ok = phi <2 x double> [ %i.qw, %bb.bv ], [ zeroinitializer, %bb.bm ] ; 2 uses
  %i.ol = zext i32 %.sroa.5.0.i75.i.i to i64      ; 2 uses
  %i.om = icmp ugt i64 %i.gt, %i.ol
  br i1 %i.om, label %bb.bp, label %.preheader.i.i.i.i.i

bb.bp:                                            ; preds = %.split202.i.i
  %i.on = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.ol ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load i32, ptr %i.oo, align 8, !noalias !136949, !noundef !67
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 20
  %i.or = load i32, ptr %i.oq, align 4, !noalias !136949, !noundef !67
  br label %.loopexit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.split202.i.i, %bb.bq
  %i.os = phi i32 [ %i.ox, %bb.bq ], [ %.sroa.7.0.i.i.i, %.split202.i.i ]
  %i.ot = zext i32 %i.os to i64                   ; 2 uses
  %i.ou = icmp ugt i64 %i.gt, %i.ot
  br i1 %i.ou, label %bb.bq, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i

bb.bq:                                            ; preds = %.preheader.i.i.i.i.i
  %i.ov = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.ot ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  %i.ox = load i32, ptr %i.ow, align 4, !noalias !136949, !noundef !67 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %.val.i.i.i76.i.i = load i32, ptr %i.oy, align 4, !noalias !136949, !noundef !67 ; 2 uses
  %i.oz = icmp eq i32 %.val.i.i.i76.i.i, %i.nl
  br i1 %i.oz, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bq, %bb.bp
  %.sroa.7.2.i.i.i = phi i32 [ %.sroa.7.0.i.i.i, %bb.bp ], [ %i.ox, %bb.bq ]
  %.sroa.5.1.i.i.i = phi i32 [ %i.op, %bb.bp ], [ %.sroa.5.0.i75.i.i, %bb.bq ]
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.or, %bb.bp ], [ %.val.i.i.i76.i.i, %bb.bq ]
  %i.pa = zext i32 %.sroa.4.0.i.ph.i.i.i.i to i64 ; 5 uses
  %i.pb = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.pa
  br i1 %i.pb, label %bb.br, label %.invoke.i.i

bb.br:                                            ; preds = %.loopexit.i.i.i.i
  %i.pc = xor i64 %i.is, %i.pa
  %i.pd = zext i64 %i.pc to i128
  %i.pe = mul nuw i128 %i.pd, %i.nu               ; 2 uses
  %i.pf = lshr i128 %i.pe, 64
  %i.pg = xor i128 %i.pf, %i.pe
  %i.ph = trunc i128 %i.pg to i64                 ; 2 uses
  %i.pi = lshr i64 %i.ph, 57
  %i.pj = trunc nuw nsw i64 %i.pi to i8
  %i.pk = insertelement <16 x i8> poison, i8 %i.pj, i64 0
  %i.pl = shufflevector <16 x i8> %i.pk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.br ], [ %i.qe, %bb.bu ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ph, %bb.br ], [ %i.qf, %bb.bu ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %.sroa.6520.0.copyload.i ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0519.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.pm, align 1, !noalias !136950 ; 2 uses
  %i.pn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, %i.pl
  %i.po = bitcast <16 x i1> %i.pn to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i = icmp eq i16 %i.po, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bs, %bb.bt
  %.sroa.05.0.i31.i.i.i.i.i.i.i = phi i16 [ %i.qd, %bb.bt ], [ %i.po, %bb.bs ] ; 3 uses
  %i.pp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, i1 true)
  %i.pq = zext nneg i16 %i.pp to i64
  %i.pr = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.pq
  %i.ps = and i64 %i.pr, %.sroa.6520.0.copyload.i
  %i.pt = sub nsw i64 0, %i.ps
  %i.pu = getelementptr inbounds [24 x i8], ptr %.sroa.0519.0.copyload.i, i64 %i.pt ; 3 uses
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -24
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.pv, align 8, !noalias !136951, !noundef !67
  %i.pw = getelementptr i8, ptr %i.pu, i64 -16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.pw, align 8, !noalias !136951
  %i.px = icmp eq i64 %i.nk, %.val2.i.i.i.i.i.i.i.i
  %i.py = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, %i.pa
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.px, i1 %i.py, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.bt, !prof !77

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bt, %bb.bs
  %i.pz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, splat (i8 -1)
  %i.qa = bitcast <16 x i1> %i.pz to i16
  %i.qb = icmp eq i16 %i.qa, 0
  br i1 %i.qb, label %bb.bu, label %select.unfold.i.i.i.i.i, !prof !71

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.qc = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, -1
  %i.qd = and i16 %i.qc, %.sroa.05.0.i31.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i77.i.i = icmp eq i16 %i.qd, 0
  br i1 %.not.i.not.i.i.i.i.i77.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.qe = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.qf = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.qe
  br label %bb.bs

select.unfold.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i.i, %.loopexit.i.i.us.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1284) #60
          to label %.noexc79.i.i unwind label %bb.ak, !noalias !136926

.noexc79.i.i:                                     ; preds = %select.unfold.i.i.i.i.i
  unreachable

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.pa
  %i.qh = getelementptr inbounds i8, ptr %i.pu, i64 -8
  %i.qi = load double, ptr %i.qh, align 8, !noalias !136952, !noundef !67
  %i.qj = load <2 x double>, ptr %i.qg, align 8, !noalias !136953
  %i.qk = fsub <2 x double> %i.qj, %i.ns          ; 3 uses
  %i.ql = fmul <2 x double> %i.qk, %i.qk          ; 2 uses
  %shift = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ql, %shift
  %16 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.qm = call double @llvm.sqrt.f64(double %16)
  %i.qn = call nsz double @llvm.maximumnum.f64(double %i.qm, double 1.000000e-08)
  %i.qo = fdiv double %16, %.sroa.046.0.i
  %i.qp = fmul double %i.qi, %i.qo
  %i.qq = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.qr = shufflevector <2 x double> %i.qq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qs = fmul <2 x double> %i.qk, %i.qr
  %i.qt = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qu = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qv = fdiv <2 x double> %i.qs, %i.qu
  %i.qw = fadd <2 x double> %i.ok, %i.qv
  br label %.split202.i.i

bb.bw:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.nk, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1090) #61
          to label %bb.bx unwind label %bb.ak, !noalias !136926

bb.bx:                                            ; preds = %bb.bw
  unreachable

_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i: ; preds = %.preheader.i.i.i.us.i.i, %.preheader.i.i.i.i.i
  %i.qx = phi <2 x double> [ %i.ok, %.preheader.i.i.i.i.i ], [ zeroinitializer, %.preheader.i.i.i.us.i.i ]
  br label %bb.by

bb.by:                                            ; preds = %bb.cd, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i
  %.sroa.6.0.i.i.i = phi i64 [ 0, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i ], [ %i.rc, %bb.cd ]
  %.sroa.0.0.i85.i.i = phi ptr [ %.val199.i, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i ], [ %i.rb, %bb.cd ]
  %i.qy = phi <2 x double> [ zeroinitializer, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i ], [ %i.rv, %bb.cd ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.backedge660, %bb.by
  %i.qz = phi i64 [ %.sroa.6.0.i.i.i, %bb.by ], [ %i.rc, %.backedge660 ] ; 2 uses
  %i.ra = phi ptr [ %.sroa.0.0.i85.i.i, %bb.by ], [ %i.rb, %.backedge660 ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.ra, %i.df
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i.i, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16 ; 2 uses
  %i.rc = add i64 %i.qz, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i86.i.i = load ptr, ptr %i.ra, align 8, !noalias !136954, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i87.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i86.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i87.i.i, label %.backedge660, label %bb.cb

.backedge660:                                     ; preds = %bb.ca, %bb.cb
  br label %bb.bz

bb.cb:                                            ; preds = %bb.ca
  %i.rd = and i64 %i.qz, 4294967295               ; 4 uses
  %.not.i.not.i.i.i.i.i88.i.i = icmp eq i64 %i.nk, %i.rd
  br i1 %.not.i.not.i.i.i.i.i88.i.i, label %.backedge660, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.re = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.rd
  br i1 %i.re, label %bb.cd, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %.loopexit.i.i.i.i, %bb.cc, %.loopexit.i.i.us.i.i
  %i.rf = phi i64 [ %i.rd, %bb.cc ], [ %i.oi, %.loopexit.i.i.us.i.i ], [ %i.pa, %.loopexit.i.i.i.i ]
  %i.rg = phi ptr [ @1285, %bb.cc ], [ @1283, %.loopexit.i.i.us.i.i ], [ @1283, %.loopexit.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.rf, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rg) #60
          to label %.cont.i.i unwind label %bb.ak, !noalias !136926

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.rd
  %i.ri = load <2 x double>, ptr %i.rh, align 8, !noalias !136955
  %i.rj = fsub <2 x double> %i.ri, %i.ns          ; 3 uses
  %i.rk = fmul <2 x double> %i.rj, %i.rj          ; 2 uses
  %shift627 = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop628 = fadd <2 x double> %i.rk, %shift627
  %17 = extractelement <2 x double> %foldExtExtBinop628, i64 0
  %i.rl = call double @llvm.sqrt.f64(double %17)
  %i.rm = call nsz double @llvm.maximumnum.f64(double %i.rl, double 1.000000e-08) ; 2 uses
  %i.rn = call double @llvm.powi.f64.i32(double %i.rm, i32 %6)
  %i.ro = fdiv double %i.hm, %i.rn
  %i.rp = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rq = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rr = fmul <2 x double> %i.rj, %i.rq
  %i.rs = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.rt = shufflevector <2 x double> %i.rs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ru = fdiv <2 x double> %i.rr, %i.rt
  %i.rv = fadd <2 x double> %i.qy, %i.ru
  br label %bb.by

bb.ce:                                            ; preds = %bb.bz
  %i.rw = fadd <2 x double> %i.qx, %i.qy          ; 3 uses
  %i.rx = fmul <2 x double> %i.rw, %i.rw          ; 2 uses
  %shift630 = shufflevector <2 x double> %i.rx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop631 = fadd <2 x double> %i.rx, %shift630
  %i.ry = extractelement <2 x double> %foldExtExtBinop631, i64 0 ; 2 uses
  %i.rz = fadd double %.sroa.03.0.ph.i.i, %i.ry
  %i.sa = call double @llvm.sqrt.f64(double %i.ry)
  %i.sb = call nsz double @llvm.maximumnum.f64(double %i.sa, double 1.000000e-08)
  %i.sc = fmul <2 x double> %i.ir, %i.rw
  %i.sd = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sf = fdiv <2 x double> %i.sc, %i.se          ; 3 uses
  %i.sg = fadd <2 x double> %i.ns, %i.sf
  store <2 x double> %i.sg, ptr %i.nr, align 8, !noalias !136926
  %i.sh = fmul <2 x double> %i.sf, %i.sf          ; 2 uses
  %shift633 = shufflevector <2 x double> %i.sh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop634 = fadd <2 x double> %i.sh, %shift633
  %18 = extractelement <2 x double> %foldExtExtBinop634, i64 0
  %i.si = fcmp ule double %18, %9
  %spec.select.i.i = select i1 %i.si, i1 %.sroa.05.0.ph.i.i, i1 false
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i
  %i.sj = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.sj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136926
  br label %.thread.i

bb.cf:                                            ; preds = %bb.ai
  %i.sk = add i64 %8, 1
  %i.sl = uitofp i64 %i.sk to double
  %i.sm = fdiv double 1.000000e-01, %i.sl
  %.sroa.0496.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !136900 ; 6 uses
  %.sroa.6497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6497.0.copyload.i = load i64, ptr %.sroa.6497.0..sroa_idx.i, align 8, !noalias !136900 ; 10 uses
  %.sroa.9499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.9499.0.copyload.i = load i64, ptr %.sroa.9499.0..sroa_idx.i, align 8, !noalias !136900
  %.sroa.10500.0.copyload.i = load i64, ptr %i.gp, align 8, !noalias !136900
  call void @llvm.experimental.noalias.scope.decl(metadata !136956)
  %.old1.not.i258.i = icmp eq i64 %8, 0
  br i1 %.old1.not.i258.i, label %.loopexit.i346.i, label %.preheader.i259.i

.preheader.i259.i:                                ; preds = %bb.cf
  %i.sn = icmp eq i64 %.fr219.i.i, 0
  %.fr.i261.i = freeze i64 %.sroa.9499.0.copyload.i
  %i.so = icmp eq i64 %.fr.i261.i, 0
  %i.sp = add i32 %6, 1
  %i.sq = call double @llvm.powi.f64.i32(double %.sroa.046.0.i, i32 %i.sp)
  %i.sr = fmul double %i.sq, -2.000000e-01
  br label %bb.cj

bb.cg:                                            ; preds = %.invoke.i313.i, %bb.dp, %select.unfold.i.i.i.i333.i, %bb.db, %bb.cu
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %.body.i290.i

.body.i290.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i364.i, %bb.da, %bb.cg
  %eh.lpad-body.i291.i = phi { ptr, i32 } [ %i.ss, %bb.cg ], [ %i.xb, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i364.i ], [ %i.xb, %bb.da ] ; 2 uses
  %i.st = icmp eq i64 %.sroa.6497.0.copyload.i, 0
  br i1 %i.st, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i: ; preds = %.body.i290.i
  %i.su = mul i64 %.sroa.6497.0.copyload.i, 24
  %i.sv = icmp slt i64 %.sroa.6497.0.copyload.i, 768614336404564650
  call void @llvm.assume(i1 %i.sv), !noalias !136957
  %i.sw = and i64 %i.su, -16                      ; 2 uses
  %i.sx = add i64 %i.sw, 32                       ; 2 uses
  %i.sy = add nsw i64 %.sroa.6497.0.copyload.i, 17
  %i.sz = add i64 %i.sy, %i.sx                    ; 4 uses
  %i.ta = icmp uge i64 %i.sz, %i.sx
  %i.tb = icmp ult i64 %i.sz, 9223372036854775793
  call void @llvm.assume(i1 %i.ta), !noalias !136957
  call void @llvm.assume(i1 %i.tb), !noalias !136957
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0496.0.copyload.i) ], !noalias !136957
  %i.tc = icmp eq i64 %i.sz, 0
  br i1 %i.tc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i, label %bb.ch

bb.ch:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i
  %i.td = sub i64 -32, %i.sw
  %i.te = getelementptr inbounds i8, ptr %.sroa.0496.0.copyload.i, i64 %i.td
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.te, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !136958
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i: ; preds = %bb.ch, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i, %.body.i290.i
  %i.tf = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.tf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i
  %i.tg = shl i64 %.sroa.9.0.i, 3
  %i.th = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.th), !noalias !136957
  %i.ti = and i64 %i.tg, -16                      ; 2 uses
  %i.tj = add i64 %i.ti, 16                       ; 2 uses
  %i.tk = add nsw i64 %.sroa.9.0.i, 17
  %i.tl = add i64 %i.tk, %i.tj                    ; 4 uses
  %i.tm = icmp uge i64 %i.tl, %i.tj
  %i.tn = icmp ult i64 %i.tl, 9223372036854775793
  call void @llvm.assume(i1 %i.tm), !noalias !136957
  call void @llvm.assume(i1 %i.tn), !noalias !136957
  %i.to = icmp eq i64 %i.tl, 0
  br i1 %i.to, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, label %bb.ci

bb.ci:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i
  %i.tp = sub nuw nsw i64 -16, %i.ti
  %i.tq = getelementptr inbounds i8, ptr %.sroa.0451.0.i, i64 %i.tp
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tq, i64 noundef %i.tl, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !136958
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i: ; preds = %bb.ci, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i
  %i.tr = icmp eq i64 %.sroa.49.0.i.i940.i, 0
  br i1 %i.tr, label %.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i

bb.cj:                                            ; preds = %.split.us.i344.i, %.preheader.i259.i
  %.pn.i = phi double [ %i.ts, %.split.us.i344.i ], [ 1.000000e-01, %.preheader.i259.i ]
  %.sroa.033.0.i263.i = phi i64 [ %i.tt, %.split.us.i344.i ], [ 0, %.preheader.i259.i ]
  %i.ts = fsub double %.pn.i, %i.sm               ; 2 uses
  %i.tt = add nuw i64 %.sroa.033.0.i263.i, 1      ; 2 uses
  %i.tu = insertelement <2 x double> poison, double %i.ts, i64 0
  %i.tv = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i: ; preds = %bb.dx, %bb.cj
  %.sroa.7.0.ph.i265.i = phi i64 [ %.lcssa146148.i286.i, %bb.dx ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.090.0.ph.i266.i = phi ptr [ %.lcssa149151.i285.i, %bb.dx ], [ %.val199.i, %bb.cj ] ; 2 uses
  %.sroa.05.0.ph.i267.i = phi i1 [ %spec.select.i315.i, %bb.dx ], [ true, %bb.cj ] ; 2 uses
  %i.tw = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !136958 ; 2 uses
  %i.tx = zext i64 %i.tw to i128
  br i1 %i.sn, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i, %bb.ck
  %i.ty = phi i64 [ %i.uc, %bb.ck ], [ %.sroa.7.0.ph.i265.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.tz = phi ptr [ %i.ub, %bb.ck ], [ %.sroa.090.0.ph.i266.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.ua = icmp eq ptr %i.tz, %i.df
  br i1 %i.ua, label %.split.us.i344.i, label %bb.ck

bb.ck:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 16 ; 2 uses
  %i.uc = add i64 %i.ty, 1                        ; 2 uses
  %.val.i.us.i376.i = load ptr, ptr %i.tz, align 8, !noalias !136959, !noundef !67
  %.not.i.not.i.us.i377.i = icmp eq ptr %.val.i.us.i376.i, null
  br i1 %.not.i.not.i.us.i377.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i, label %select.unfold.loopexit138.split.us.i378.i

select.unfold.loopexit138.split.us.i378.i:        ; preds = %bb.ck
  %i.ud = and i64 %i.ty, 4294967295
  br label %select.unfold.i283.i

.loopexit.i346.i:                                 ; preds = %.split.us.i344.i, %bb.cf
  %i.ue = icmp eq i64 %.fr219.i.i, 0
  br i1 %i.ue, label %bb.cr, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i347.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge
  %i.uf = phi i64 [ %i.uj, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge ], [ %.sroa.7.0.ph.i265.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.ug = phi ptr [ %i.ui, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge ], [ %.sroa.090.0.ph.i266.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.uh = icmp eq ptr %i.ug, %i.df
  br i1 %i.uh, label %.split.us.i344.i, label %bb.cl

bb.cl:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 16 ; 2 uses
  %i.uj = add i64 %i.uf, 1                        ; 2 uses
  %.val.i.i271.i = load ptr, ptr %i.ug, align 8, !noalias !136959, !noundef !67
  %.not.i.not.i.i272.i = icmp eq ptr %.val.i.i271.i, null
  br i1 %.not.i.not.i.i272.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge, label %bb.cm

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge: ; preds = %.lr.ph.i.i.i278.i, %bb.cl
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i

bb.cm:                                            ; preds = %bb.cl
  %i.uk = and i64 %i.uf, 4294967295               ; 3 uses
  %i.ul = xor i64 %i.uk, %.sroa.12458.sroa.8.0.i
  %i.um = zext i64 %i.ul to i128
  %i.un = mul nuw i128 %i.um, %i.tx               ; 2 uses
  %i.uo = lshr i128 %i.un, 64
  %i.up = xor i128 %i.uo, %i.un
  %i.uq = trunc i128 %i.up to i64                 ; 2 uses
  %i.ur = lshr i64 %i.uq, 57
  %i.us = trunc nuw nsw i64 %i.ur to i8
  %i.ut = insertelement <16 x i8> poison, i8 %i.us, i64 0
  %i.uu = shufflevector <16 x i8> %i.ut, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %bb.cm
  %.sroa.011.0.i.i.i.i273.i = phi i64 [ 0, %bb.cm ], [ %i.vl, %bb.cp ]
  %.pn.i.i.i274.i = phi i64 [ %i.uq, %bb.cm ], [ %i.vm, %bb.cp ]
  %.sroa.01.0.i.i.i.i275.i = and i64 %.pn.i.i.i274.i, %.sroa.9.0.i ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0451.0.i, i64 %.sroa.01.0.i.i.i.i275.i
  %.sroa.0.0.copyload.i24.i.i.i276.i = load <16 x i8>, ptr %i.uv, align 1, !noalias !136960 ; 2 uses
  %i.uw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i276.i, %i.uu
  %i.ux = bitcast <16 x i1> %i.uw to i16          ; 2 uses
  %.not.i.not30.i.i.i277.i = icmp eq i16 %i.ux, 0
  br i1 %.not.i.not30.i.i.i277.i, label %._crit_edge.i.i.i282.i, label %.lr.ph.i.i.i278.i

.lr.ph.i.i.i278.i:                                ; preds = %bb.cn, %bb.co
  %.sroa.05.0.i31.i.i.i279.i = phi i16 [ %i.vk, %bb.co ], [ %i.ux, %bb.cn ] ; 3 uses
  %i.uy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i279.i, i1 true)
  %i.uz = zext nneg i16 %i.uy to i64
  %i.va = add i64 %.sroa.01.0.i.i.i.i275.i, %i.uz
  %i.vb = and i64 %i.va, %.sroa.9.0.i
  %i.vc = sub nsw i64 0, %i.vb
  %i.vd = getelementptr inbounds [8 x i8], ptr %.sroa.0451.0.i, i64 %i.vc
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -8
  %.val2.i.i.i.i280.i = load i64, ptr %i.ve, align 8, !noalias !136961, !noundef !67
  %i.vf = icmp eq i64 %i.uk, %.val2.i.i.i.i280.i
  br i1 %i.vf, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge, label %bb.co, !prof !77

._crit_edge.i.i.i282.i:                           ; preds = %bb.co, %bb.cn
  %i.vg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i276.i, splat (i8 -1)
  %i.vh = bitcast <16 x i1> %i.vg to i16
  %i.vi = icmp eq i16 %i.vh, 0
  br i1 %i.vi, label %bb.cp, label %select.unfold.i283.i, !prof !71

bb.co:                                            ; preds = %.lr.ph.i.i.i278.i
  %i.vj = add i16 %.sroa.05.0.i31.i.i.i279.i, -1
  %i.vk = and i16 %i.vj, %.sroa.05.0.i31.i.i.i279.i ; 2 uses
  %.not.i.not.i.i.i281.i = icmp eq i16 %i.vk, 0
  br i1 %.not.i.not.i.i.i281.i, label %._crit_edge.i.i.i282.i, label %.lr.ph.i.i.i278.i

bb.cp:                                            ; preds = %._crit_edge.i.i.i282.i
  %i.vl = add i64 %.sroa.011.0.i.i.i.i273.i, 16   ; 2 uses
  %i.vm = add i64 %.sroa.01.0.i.i.i.i275.i, %i.vl
end_hunk_11
begin_hunk_12_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spring_layout:bb.a
  store <2 x double> %i.xw, ptr %.sroa.0.01.i.i373.i, align 8, !alias.scope !136979, !noalias !136958
  %i.xx = icmp eq ptr %i.xu, %i.xi
  br i1 %i.xx, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i347.i, label %.lr.ph.i.i372.i, !llvm.loop !136831

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i351.i: ; preds = %bb.cq, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i350.i, %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i347.i
  %i.xy = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.xy, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i351.i
  %i.xz = shl i64 %.sroa.9.0.i, 3
  %i.ya = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ya)
  %i.yb = and i64 %i.xz, -16                      ; 2 uses
  %i.yc = add i64 %i.yb, 16                       ; 2 uses
  %i.yd = add nsw i64 %.sroa.9.0.i, 17
  %i.ye = add i64 %i.yd, %i.yc                    ; 4 uses
  %i.yf = icmp uge i64 %i.ye, %i.yc
  %i.yg = icmp ult i64 %i.ye, 9223372036854775793
  call void @llvm.assume(i1 %i.yf)
  call void @llvm.assume(i1 %i.yg)
  %i.yh = icmp eq i64 %i.ye, 0
  br i1 %i.yh, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i

select.unfold.i283.i:                             ; preds = %._crit_edge.i.i.i282.i, %select.unfold.loopexit138.split.us.i378.i
  %.in.i284.i = phi i64 [ %i.ty, %select.unfold.loopexit138.split.us.i378.i ], [ %i.uf, %._crit_edge.i.i.i282.i ]
  %i.yi = phi i64 [ %i.ud, %select.unfold.loopexit138.split.us.i378.i ], [ %i.uk, %._crit_edge.i.i.i282.i ] ; 8 uses
  %.lcssa149151.i285.i = phi ptr [ %i.ub, %select.unfold.loopexit138.split.us.i378.i ], [ %i.ui, %._crit_edge.i.i.i282.i ]
  %.lcssa146148.i286.i = phi i64 [ %i.uc, %select.unfold.loopexit138.split.us.i378.i ], [ %i.uj, %._crit_edge.i.i.i282.i ]
  %i.yj = trunc i64 %.in.i284.i to i32            ; 2 uses
  %i.yk = icmp ugt i64 %.val200.i, %i.yi
  br i1 %i.yk, label %bb.de, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i

bb.de:                                            ; preds = %select.unfold.i283.i
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %.val199.i, i64 %i.yi ; 3 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !136980, !noundef !67
  %.not.i.i.i339.i = icmp eq ptr %i.ym, null
  br i1 %.not.i.i.i339.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i: ; preds = %bb.de
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %.sroa.0.0.copyload.i.i341.i = load i32, ptr %i.yn, align 8, !noalias !136980
  %.sroa.5.0..sroa_idx.i.i342.i = getelementptr inbounds nuw i8, ptr %i.yl, i64 12
  %.sroa.5.0.copyload.i.i343.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i342.i, align 4, !noalias !136980
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i, %bb.de, %select.unfold.i283.i
  %.sroa.5.0.i.i288.i = phi i32 [ %.sroa.5.0.copyload.i.i343.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i ], [ -1, %select.unfold.i283.i ], [ -1, %bb.de ] ; 2 uses
  %.sroa.0.0.i70.i289.i = phi i32 [ %.sroa.0.0.copyload.i.i341.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i ], [ -1, %select.unfold.i283.i ], [ -1, %bb.de ] ; 2 uses
  %i.yo = icmp ult i64 %i.yi, %.sroa.49.0.i.i940.i
  br i1 %i.yo, label %bb.df, label %bb.dp

bb.df:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.yi ; 2 uses
  %i.yq = load <2 x double>, ptr %i.yp, align 8, !noalias !136958 ; 3 uses
  %i.yr = xor i64 %i.yi, %.sroa.10500.0.copyload.i
  %i.ys = zext i64 %i.yr to i128
  br i1 %i.so, label %.split196.us.i.i, label %.split196.i.i

.split196.us.i.i:                                 ; preds = %bb.df
  %i.yt = zext i32 %.sroa.0.0.i70.i289.i to i64   ; 2 uses
  %i.yu = icmp ugt i64 %i.gt, %i.yt
  br i1 %i.yu, label %bb.dh, label %.preheader.i.i.i.us.i335.i

.preheader.i.i.i.us.i335.i:                       ; preds = %.split196.us.i.i, %bb.dg
  %i.yv = phi i32 [ %i.za, %bb.dg ], [ %.sroa.5.0.i.i288.i, %.split196.us.i.i ]
  %i.yw = zext i32 %i.yv to i64                   ; 2 uses
  %i.yx = icmp ugt i64 %i.gt, %i.yw
  br i1 %i.yx, label %bb.dg, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i

bb.dg:                                            ; preds = %.preheader.i.i.i.us.i335.i
  %i.yy = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.yw ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  %i.za = load i32, ptr %i.yz, align 4, !noalias !136981, !noundef !67
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %.val.i.i.i76.us.i336.i = load i32, ptr %i.zb, align 4, !noalias !136981, !noundef !67 ; 2 uses
  %i.zc = icmp eq i32 %.val.i.i.i76.us.i336.i, %i.yj
  br i1 %i.zc, label %.preheader.i.i.i.us.i335.i, label %.loopexit.i.i.us.i337.i

bb.dh:                                            ; preds = %.split196.us.i.i
  %i.zd = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.yt
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 20
  %i.zf = load i32, ptr %i.ze, align 4, !noalias !136981, !noundef !67
  br label %.loopexit.i.i.us.i337.i

.loopexit.i.i.us.i337.i:                          ; preds = %bb.dg, %bb.dh
  %.sroa.4.0.i.ph.i.i.us.i338.i = phi i32 [ %i.zf, %bb.dh ], [ %.val.i.i.i76.us.i336.i, %bb.dg ]
  %i.zg = zext i32 %.sroa.4.0.i.ph.i.i.us.i338.i to i64 ; 2 uses
  %i.zh = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.zg
  br i1 %i.zh, label %select.unfold.i.i.i.i333.i, label %.invoke.i313.i

.split196.i.i:                                    ; preds = %bb.df, %bb.do
  %.sroa.7.0.i.i302.i = phi i32 [ %.sroa.7.2.i.i318.i, %bb.do ], [ %.sroa.5.0.i.i288.i, %bb.df ] ; 2 uses
  %.sroa.5.0.i75.i303.i = phi i32 [ %.sroa.5.1.i.i319.i, %bb.do ], [ %.sroa.0.0.i70.i289.i, %bb.df ] ; 2 uses
  %i.zi = phi <2 x double> [ %i.abu, %bb.do ], [ zeroinitializer, %bb.df ] ; 2 uses
  %i.zj = zext i32 %.sroa.5.0.i75.i303.i to i64   ; 2 uses
  %i.zk = icmp ugt i64 %i.gt, %i.zj
  br i1 %i.zk, label %bb.di, label %.preheader.i.i.i.i304.i

bb.di:                                            ; preds = %.split196.i.i
  %i.zl = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.zj ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load i32, ptr %i.zm, align 8, !noalias !136981, !noundef !67
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 20
  %i.zp = load i32, ptr %i.zo, align 4, !noalias !136981, !noundef !67
  br label %.loopexit.i.i.i317.i

.preheader.i.i.i.i304.i:                          ; preds = %.split196.i.i, %bb.dj
  %i.zq = phi i32 [ %i.zv, %bb.dj ], [ %.sroa.7.0.i.i302.i, %.split196.i.i ]
  %i.zr = zext i32 %i.zq to i64                   ; 2 uses
  %i.zs = icmp ugt i64 %i.gt, %i.zr
  br i1 %i.zs, label %bb.dj, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i

bb.dj:                                            ; preds = %.preheader.i.i.i.i304.i
  %i.zt = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.zr ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 12
  %i.zv = load i32, ptr %i.zu, align 4, !noalias !136981, !noundef !67 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %.val.i.i.i76.i316.i = load i32, ptr %i.zw, align 4, !noalias !136981, !noundef !67 ; 2 uses
  %i.zx = icmp eq i32 %.val.i.i.i76.i316.i, %i.yj
  br i1 %i.zx, label %.preheader.i.i.i.i304.i, label %.loopexit.i.i.i317.i

.loopexit.i.i.i317.i:                             ; preds = %bb.dj, %bb.di
  %.sroa.7.2.i.i318.i = phi i32 [ %.sroa.7.0.i.i302.i, %bb.di ], [ %i.zv, %bb.dj ]
  %.sroa.5.1.i.i319.i = phi i32 [ %i.zn, %bb.di ], [ %.sroa.5.0.i75.i303.i, %bb.dj ]
  %.sroa.4.0.i.ph.i.i.i320.i = phi i32 [ %i.zp, %bb.di ], [ %.val.i.i.i76.i316.i, %bb.dj ]
  %i.zy = zext i32 %.sroa.4.0.i.ph.i.i.i320.i to i64 ; 5 uses
  %i.zz = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.zy
  br i1 %i.zz, label %bb.dk, label %.invoke.i313.i

bb.dk:                                            ; preds = %.loopexit.i.i.i317.i
  %i.aaa = xor i64 %i.tw, %i.zy
  %i.aab = zext i64 %i.aaa to i128
  %i.aac = mul nuw i128 %i.aab, %i.ys             ; 2 uses
  %i.aad = lshr i128 %i.aac, 64
  %i.aae = xor i128 %i.aad, %i.aac
  %i.aaf = trunc i128 %i.aae to i64               ; 2 uses
  %i.aag = lshr i64 %i.aaf, 57
  %i.aah = trunc nuw nsw i64 %i.aag to i8
  %i.aai = insertelement <16 x i8> poison, i8 %i.aah, i64 0
  %i.aaj = shufflevector <16 x i8> %i.aai, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %bb.dk
  %.sroa.011.0.i.i.i.i.i.i.i321.i = phi i64 [ 0, %bb.dk ], [ %i.abc, %bb.dn ]
  %.pn.i.i.i.i.i.i322.i = phi i64 [ %i.aaf, %bb.dk ], [ %i.abd, %bb.dn ]
  %.sroa.01.0.i.i.i.i.i.i.i323.i = and i64 %.pn.i.i.i.i.i.i322.i, %.sroa.6497.0.copyload.i ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.0496.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i323.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i324.i = load <16 x i8>, ptr %i.aak, align 1, !noalias !136982 ; 2 uses
  %i.aal = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i324.i, %i.aaj
  %i.aam = bitcast <16 x i1> %i.aal to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i325.i = icmp eq i16 %i.aam, 0
  br i1 %.not.i.not30.i.i.i.i.i.i325.i, label %._crit_edge.i.i.i.i.i.i332.i, label %.lr.ph.i.i.i.i.i.i326.i

.lr.ph.i.i.i.i.i.i326.i:                          ; preds = %bb.dl, %bb.dm
  %.sroa.05.0.i31.i.i.i.i.i.i327.i = phi i16 [ %i.abb, %bb.dm ], [ %i.aam, %bb.dl ] ; 3 uses
  %i.aan = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i327.i, i1 true)
  %i.aao = zext nneg i16 %i.aan to i64
  %i.aap = add i64 %.sroa.01.0.i.i.i.i.i.i.i323.i, %i.aao
  %i.aaq = and i64 %i.aap, %.sroa.6497.0.copyload.i
  %i.aar = sub nsw i64 0, %i.aaq
  %i.aas = getelementptr inbounds [24 x i8], ptr %.sroa.0496.0.copyload.i, i64 %i.aar ; 3 uses
  %i.aat = getelementptr inbounds i8, ptr %i.aas, i64 -24
  %.val2.i.i.i.i.i.i.i328.i = load i64, ptr %i.aat, align 8, !noalias !136983, !noundef !67
  %i.aau = getelementptr i8, ptr %i.aas, i64 -16
  %.val3.i.i.i.i.i.i.i329.i = load i64, ptr %i.aau, align 8, !noalias !136983
  %i.aav = icmp eq i64 %i.yi, %.val2.i.i.i.i.i.i.i328.i
  %i.aaw = icmp eq i64 %.val3.i.i.i.i.i.i.i329.i, %i.zy
  %spec.select.i.i.i.i.i.i.i.i.i.i330.i = select i1 %i.aav, i1 %i.aaw, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i330.i, label %bb.do, label %bb.dm, !prof !77

._crit_edge.i.i.i.i.i.i332.i:                     ; preds = %bb.dm, %bb.dl
  %i.aax = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i324.i, splat (i8 -1)
  %i.aay = bitcast <16 x i1> %i.aax to i16
  %i.aaz = icmp eq i16 %i.aay, 0
  br i1 %i.aaz, label %bb.dn, label %select.unfold.i.i.i.i333.i, !prof !71

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i.i326.i
  %i.aba = add i16 %.sroa.05.0.i31.i.i.i.i.i.i327.i, -1
  %i.abb = and i16 %i.aba, %.sroa.05.0.i31.i.i.i.i.i.i327.i ; 2 uses
  %.not.i.not.i.i.i.i.i77.i331.i = icmp eq i16 %i.abb, 0
  br i1 %.not.i.not.i.i.i.i.i77.i331.i, label %._crit_edge.i.i.i.i.i.i332.i, label %.lr.ph.i.i.i.i.i.i326.i

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i.i.i332.i
  %i.abc = add i64 %.sroa.011.0.i.i.i.i.i.i.i321.i, 16 ; 2 uses
  %i.abd = add i64 %.sroa.01.0.i.i.i.i.i.i.i323.i, %i.abc
  br label %bb.dl

select.unfold.i.i.i.i333.i:                       ; preds = %._crit_edge.i.i.i.i.i.i332.i, %.loopexit.i.i.us.i337.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1284) #60
          to label %.noexc79.i334.i unwind label %bb.cg, !noalias !136958

.noexc79.i334.i:                                  ; preds = %select.unfold.i.i.i.i333.i
  unreachable

bb.do:                                            ; preds = %.lr.ph.i.i.i.i.i.i326.i
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.zy
  %i.abf = getelementptr inbounds i8, ptr %i.aas, i64 -8
  %i.abg = load double, ptr %i.abf, align 8, !noalias !136984, !noundef !67
  %i.abh = load <2 x double>, ptr %i.abe, align 8, !noalias !136985
  %i.abi = fsub <2 x double> %i.abh, %i.yq        ; 3 uses
  %i.abj = fmul <2 x double> %i.abi, %i.abi       ; 2 uses
  %shift636 = shufflevector <2 x double> %i.abj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop637 = fadd <2 x double> %i.abj, %shift636
  %19 = extractelement <2 x double> %foldExtExtBinop637, i64 0 ; 2 uses
  %i.abk = call double @llvm.sqrt.f64(double %19)
  %i.abl = call nsz double @llvm.maximumnum.f64(double %i.abk, double 1.000000e-08)
  %i.abm = fdiv double %19, %.sroa.046.0.i
  %i.abn = fmul double %i.abg, %i.abm
  %i.abo = insertelement <2 x double> poison, double %i.abn, i64 0
  %i.abp = shufflevector <2 x double> %i.abo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abq = fmul <2 x double> %i.abi, %i.abp
  %i.abr = insertelement <2 x double> poison, double %i.abl, i64 0
  %i.abs = shufflevector <2 x double> %i.abr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abt = fdiv <2 x double> %i.abq, %i.abs
  %i.abu = fadd <2 x double> %i.zi, %i.abt
  br label %.split196.i.i

bb.dp:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.yi, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1090) #61
          to label %bb.dq unwind label %bb.cg, !noalias !136958

bb.dq:                                            ; preds = %bb.dp
  unreachable

_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i: ; preds = %.preheader.i.i.i.us.i335.i, %.preheader.i.i.i.i304.i
  %i.abv = phi <2 x double> [ %i.zi, %.preheader.i.i.i.i304.i ], [ zeroinitializer, %.preheader.i.i.i.us.i335.i ]
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dw, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i
  %.sroa.6.0.i.i307.i = phi i64 [ 0, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i ], [ %i.aca, %bb.dw ]
  %.sroa.0.0.i85.i308.i = phi ptr [ %.val199.i, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i ], [ %i.abz, %bb.dw ]
  %i.abw = phi <2 x double> [ zeroinitializer, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_10UndirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i ], [ %i.act, %bb.dw ] ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %.backedge721, %bb.dr
  %i.abx = phi i64 [ %.sroa.6.0.i.i307.i, %bb.dr ], [ %i.aca, %.backedge721 ] ; 2 uses
  %i.aby = phi ptr [ %.sroa.0.0.i85.i308.i, %bb.dr ], [ %i.abz, %.backedge721 ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.i.i309.i = icmp eq ptr %i.aby, %i.df
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i309.i, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16 ; 2 uses
  %i.aca = add i64 %i.abx, 1                      ; 2 uses
  %.val.i.i.i.i.i.i.i86.i310.i = load ptr, ptr %i.aby, align 8, !noalias !136986, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i87.i311.i = icmp eq ptr %.val.i.i.i.i.i.i.i86.i310.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i87.i311.i, label %.backedge721, label %bb.du

.backedge721:                                     ; preds = %bb.dt, %bb.du
  br label %bb.ds

bb.du:                                            ; preds = %bb.dt
  %i.acb = and i64 %i.abx, 4294967295             ; 4 uses
  %.not.i.not.i.i.i.i.i88.i312.i = icmp eq i64 %i.yi, %i.acb
  br i1 %.not.i.not.i.i.i.i.i88.i312.i, label %.backedge721, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.acc = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.acb
  br i1 %i.acc, label %bb.dw, label %.invoke.i313.i

.invoke.i313.i:                                   ; preds = %.loopexit.i.i.i317.i, %bb.dv, %.loopexit.i.i.us.i337.i
  %i.acd = phi i64 [ %i.acb, %bb.dv ], [ %i.zg, %.loopexit.i.i.us.i337.i ], [ %i.zy, %.loopexit.i.i.i317.i ]
  %i.ace = phi ptr [ @1285, %bb.dv ], [ @1283, %.loopexit.i.i.us.i337.i ], [ @1283, %.loopexit.i.i.i317.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.acd, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ace) #60
          to label %.cont.i314.i unwind label %bb.cg, !noalias !136958

.cont.i314.i:                                     ; preds = %.invoke.i313.i
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.acf = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.acb
  %i.acg = load <2 x double>, ptr %i.acf, align 8, !noalias !136987
  %i.ach = fsub <2 x double> %i.acg, %i.yq        ; 3 uses
  %i.aci = fmul <2 x double> %i.ach, %i.ach       ; 2 uses
  %shift639 = shufflevector <2 x double> %i.aci, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop640 = fadd <2 x double> %i.aci, %shift639
  %20 = extractelement <2 x double> %foldExtExtBinop640, i64 0
  %i.acj = call double @llvm.sqrt.f64(double %20)
  %i.ack = call nsz double @llvm.maximumnum.f64(double %i.acj, double 1.000000e-08) ; 2 uses
  %i.acl = call double @llvm.powi.f64.i32(double %i.ack, i32 %6)
  %i.acm = fdiv double %i.sr, %i.acl
  %i.acn = insertelement <2 x double> poison, double %i.acm, i64 0
  %i.aco = shufflevector <2 x double> %i.acn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acp = fmul <2 x double> %i.ach, %i.aco
  %i.acq = insertelement <2 x double> poison, double %i.ack, i64 0
  %i.acr = shufflevector <2 x double> %i.acq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acs = fdiv <2 x double> %i.acp, %i.acr
  %i.act = fadd <2 x double> %i.abw, %i.acs
  br label %bb.dr

bb.dx:                                            ; preds = %bb.ds
  %i.acu = fadd <2 x double> %i.abv, %i.abw       ; 3 uses
  %i.acv = fmul <2 x double> %i.acu, %i.acu       ; 2 uses
  %shift642 = shufflevector <2 x double> %i.acv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop643 = fadd <2 x double> %i.acv, %shift642
  %21 = extractelement <2 x double> %foldExtExtBinop643, i64 0
  %i.acw = call double @llvm.sqrt.f64(double %21)
  %i.acx = call nsz double @llvm.maximumnum.f64(double %i.acw, double 1.000000e-08)
  %i.acy = fmul <2 x double> %i.tv, %i.acu
  %i.acz = insertelement <2 x double> poison, double %i.acx, i64 0
  %i.ada = shufflevector <2 x double> %i.acz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adb = fdiv <2 x double> %i.acy, %i.ada       ; 3 uses
  %i.adc = fadd <2 x double> %i.yq, %i.adb
  store <2 x double> %i.adc, ptr %i.yp, align 8, !noalias !136958
  %i.add = fmul <2 x double> %i.adb, %i.adb       ; 2 uses
  %shift645 = shufflevector <2 x double> %i.add, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop646 = fadd <2 x double> %i.add, %shift645
  %22 = extractelement <2 x double> %foldExtExtBinop646, i64 0
  %i.ade = fcmp ule double %22, %9
  %spec.select.i315.i = select i1 %i.ade, i1 %.sroa.05.0.ph.i267.i, i1 false
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i
  %i.adf = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.adf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136958
  br label %.thread.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %.sink.i = phi i64 [ %i.nd, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %i.yb, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i ]
  %.sink1079.i = phi i64 [ %i.ng, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %i.ye, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i ]
  %i.adg = sub nuw nsw i64 -16, %.sink.i
  %i.adh = getelementptr inbounds i8, ptr %.sroa.0451.0.i, i64 %i.adg
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adh, i64 noundef %.sink1079.i, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !136900
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i: ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i351.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !136988
  %i.adi = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc388.i unwind label %bb.ee, !noalias !136900

.noexc388.i:                                      ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i
  %i.adj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !136988
  %i.adk = icmp eq i8 %i.adj, 2
  br i1 %i.adk, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i, label %bb.dy, !prof !77

bb.dy:                                            ; preds = %.noexc388.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i unwind label %bb.ee, !noalias !136900

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i: ; preds = %bb.dy, %.noexc388.i
  store i64 0, ptr %i.c, align 8, !alias.scope !136989, !noalias !136988
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !136989, !noalias !136988
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !136989, !noalias !136988
  %.sroa.6.0..sroa_idx.i.i385.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i385.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !136988
  %i.adl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.adi, ptr %i.adl, align 8, !alias.scope !136989, !noalias !136988
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %.noexc.i386.i unwind label %.loopexit.split-lp.i.i, !noalias !136988

.noexc.i386.i:                                    ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.dz

bb.dz:                                            ; preds = %.backedge, %.noexc.i386.i
  %i.adm = phi i64 [ 0, %.noexc.i386.i ], [ %i.adq, %.backedge ] ; 2 uses
  %i.adn = phi ptr [ %.val199.i, %.noexc.i386.i ], [ %i.adp, %.backedge ] ; 3 uses
  %i.ado = icmp eq ptr %i.adn, %i.df
  br i1 %i.ado, label %bb.ef, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adq = add i64 %i.adm, 1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.adn, align 8, !noalias !136990, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %.backedge, label %bb.eb

.backedge:                                        ; preds = %bb.ea, %.noexc4.i.i
  br label %bb.dz

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136991
  %i.adr = and i64 %i.adm, 4294967295             ; 5 uses
  %i.ads = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.adr
  br i1 %i.ads, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_10UndirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4i_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3n_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.adr, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1282) #60
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i, !noalias !136988

.noexc3.i.i:                                      ; preds = %bb.ec
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_10UndirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4i_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3n_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i: ; preds = %bb.eb
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.adr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.adt, i64 16, i1 false), !noalias !136992
  store i64 %i.adr, ptr %i.b, align 8, !noalias !136991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136993
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.adr, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit.i387.i, !noalias !136988

.noexc4.i.i:                                      ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_10UndirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4i_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3n_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136991
  br label %.backedge

.loopexit.i387.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_10UndirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4i_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3n_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp.i.i:                           ; preds = %bb.ec, %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i387.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i387.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !136988
  br label %.body390.i

bb.ee:                                            ; preds = %bb.dy, %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph10UndirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %.body390.i

.body390.i:                                       ; preds = %bb.ee, %bb.ed
  %eh.lpad-body391.i = phi { ptr, i32 } [ %i.adu, %bb.ee ], [ %lpad.phi.i.i, %bb.ed ] ; 2 uses
  %i.adv = icmp eq i64 %.sroa.49.0.i.i940.i, 0
  br i1 %i.adv, label %.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.body390.i
  %i.adw = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.adw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136900
  br label %.thread.i

bb.ef:                                            ; preds = %bb.dz
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.adx, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !136994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136988
  store i64 0, ptr %0, align 8, !alias.scope !136893, !noalias !136994
  %i.ady = icmp eq i64 %.sroa.49.0.i.i940.i, 0
  br i1 %i.ady, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i392.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i392.i: ; preds = %bb.ef
  %i.adz = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.adz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136900
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i392.i, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !136900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !136900
  br i1 %.not.i249.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit, label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i
  %i.aea = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i394.i = load i64, ptr %i.aea, align 8, !noalias !136900, !noundef !67
  %i.aeb = icmp sgt i64 %.val.i.i.i.i.i394.i, 0
  br i1 %i.aeb, label %bb.eh, label %.invoke.i, !prof !125

bb.eh:                                            ; preds = %bb.eg
  call void @_Py_DecRef(ptr noundef nonnull %10) #59, !noalias !136900
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEB6_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %.thread.i, %bb.h, %bb.ei
  %.sroa.063.2.i = phi i8 [ %.sroa.061.6.i, %bb.ei ], [ %.sroa.063.0.i, %bb.h ], [ %.sroa.063.0.i, %.thread.i ], [ %.sroa.063.0.i, %bb.i ]
  %.sroa.061.5.i = phi i8 [ %.sroa.061.6.i, %bb.ei ], [ %.sroa.061.0.i, %bb.h ], [ %.sroa.061.0.i, %.thread.i ], [ %.sroa.061.0.i, %bb.i ]
  %.pn188.i = phi { ptr, i32 } [ %i.aed, %bb.ei ], [ %.pn186.i, %bb.h ], [ %.pn186.i, %.thread.i ], [ %.pn186.i, %bb.i ]
  %i.aec = trunc nuw i8 %.sroa.061.5.i to i1
  br i1 %i.aec, label %bb.fc, label %bb.fb

bb.ei:                                            ; preds = %bb.ez, %.invoke.i
  %.sroa.061.6.i = phi i8 [ 1, %bb.ez ], [ 0, %.invoke.i ] ; 2 uses
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.ej:                                            ; preds = %bb.h
  %i.aee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !136900
  unreachable

_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.i: ; preds = %bb.ah
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.06.0.copyload.i.i) #59, !noalias !136923
  %.pre.i = load i64, ptr %i.k, align 8, !range !68, !noalias !136900
  %i.aef = trunc nuw i64 %.pre.i to i1
  %.pre = load double, ptr %i.gw, align 8, !noalias !136900 ; 2 uses
  br i1 %i.aef, label %.loopexit953.i, label %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread946.i

.loopexit953.i:                                   ; preds = %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.i, %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread.i
  %.sroa.0162.0.copyload.i = phi double [ %i.hg, %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread.i ], [ %.pre, %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.i ]
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4165.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.0..sroa_idx.i.i, i64 56, i1 false), !noalias !136994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !136900
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.0162.0.copyload.i, ptr %i.aeg, align 8, !alias.scope !136893, !noalias !136994
  store i64 1, ptr %0, align 8, !alias.scope !136893, !noalias !136994
  %.val219.i = load ptr, ptr %i.l, align 8, !noalias !136900 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val220.i = load i64, ptr %i.aeh, align 8, !noalias !136900, !noundef !67 ; 4 uses
  %i.aei = icmp eq i64 %.val220.i, 0
  br i1 %i.aei, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %.loopexit953.i
  %i.aej = mul i64 %.val220.i, 24
  %i.aek = icmp slt i64 %.val220.i, 768614336404564650
  call void @llvm.assume(i1 %i.aek)
  %i.ael = and i64 %i.aej, -16                    ; 2 uses
  %i.aem = add i64 %i.ael, 32                     ; 2 uses
  %i.aen = add nsw i64 %.val220.i, 17
  %i.aeo = add i64 %i.aen, %i.aem                 ; 4 uses
  %i.aep = icmp uge i64 %i.aeo, %i.aem
  %i.aeq = icmp ult i64 %i.aeo, 9223372036854775793
  call void @llvm.assume(i1 %i.aep)
  call void @llvm.assume(i1 %i.aeq)
end_hunk_12
begin_hunk_13_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spring_layout:bb.a
  store <2 x double> %i.mz, ptr %.sroa.0.01.i.i.i, align 8, !alias.scope !137552, !noalias !137531
  %i.na = icmp eq ptr %i.mx, %i.ml
  br i1 %i.na, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !137343

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ax, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i.i
  %i.nb = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.nb, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.nc = shl i64 %.sroa.9.0.i, 3
  %i.nd = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.nd)
  %i.ne = and i64 %i.nc, -16                      ; 2 uses
  %i.nf = add i64 %i.ne, 16                       ; 2 uses
  %i.ng = add nsw i64 %.sroa.9.0.i, 17
  %i.nh = add i64 %i.ng, %i.nf                    ; 4 uses
  %i.ni = icmp uge i64 %i.nh, %i.nf
  %i.nj = icmp ult i64 %i.nh, 9223372036854775793
  call void @llvm.assume(i1 %i.ni)
  call void @llvm.assume(i1 %i.nj)
  %i.nk = icmp eq i64 %i.nh, 0
  br i1 %i.nk, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %select.unfold.loopexit138.split.us.i.i
  %.in.i.i = phi i64 [ %i.iv, %select.unfold.loopexit138.split.us.i.i ], [ %i.jc, %._crit_edge.i.i.i.i ]
  %i.nl = phi i64 [ %i.ja, %select.unfold.loopexit138.split.us.i.i ], [ %i.jh, %._crit_edge.i.i.i.i ] ; 8 uses
  %.lcssa149151.i.i = phi ptr [ %i.iy, %select.unfold.loopexit138.split.us.i.i ], [ %i.jf, %._crit_edge.i.i.i.i ]
  %.lcssa146148.i.i = phi i64 [ %i.iz, %select.unfold.loopexit138.split.us.i.i ], [ %i.jg, %._crit_edge.i.i.i.i ]
  %i.nm = trunc i64 %.in.i.i to i32               ; 2 uses
  %i.nn = icmp ugt i64 %.val200.i, %i.nl
  br i1 %i.nn, label %bb.bl, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bl:                                            ; preds = %select.unfold.i.i
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %.val199.i, i64 %i.nl ; 3 uses
  %i.np = load ptr, ptr %i.no, align 8, !noalias !137553, !noundef !67
  %.not.i.i.i253.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i253.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.bl
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.nq, align 8, !noalias !137553
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !137553
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.bl, %select.unfold.i.i
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %select.unfold.i.i ], [ -1, %bb.bl ] ; 2 uses
  %.sroa.0.0.i70.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %select.unfold.i.i ], [ -1, %bb.bl ] ; 2 uses
  %i.nr = icmp ult i64 %i.nl, %.sroa.49.0.i.i940.i
  br i1 %i.nr, label %bb.bm, label %bb.bw

bb.bm:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.nl ; 2 uses
  %i.nt = load <2 x double>, ptr %i.ns, align 8, !noalias !137531 ; 3 uses
  %i.nu = xor i64 %i.nl, %.sroa.10523.0.copyload.i
  %i.nv = zext i64 %i.nu to i128
  br i1 %i.hk, label %.split202.us.i.i, label %.split202.i.i

.split202.us.i.i:                                 ; preds = %bb.bm
  %i.nw = zext i32 %.sroa.0.0.i70.i.i to i64      ; 2 uses
  %i.nx = icmp ugt i64 %i.gu, %i.nw
  br i1 %i.nx, label %bb.bo, label %.preheader.i.i.i.us.i.i

.preheader.i.i.i.us.i.i:                          ; preds = %.split202.us.i.i, %bb.bn
  %i.ny = phi i32 [ %i.od, %bb.bn ], [ %.sroa.5.0.i.i.i, %.split202.us.i.i ]
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %i.oa = icmp ugt i64 %i.gu, %i.nz
  br i1 %i.oa, label %bb.bn, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i

bb.bn:                                            ; preds = %.preheader.i.i.i.us.i.i
  %i.ob = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.nz ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %i.od = load i32, ptr %i.oc, align 4, !noalias !137554, !noundef !67
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %.val.i.i.i76.us.i.i = load i32, ptr %i.oe, align 4, !noalias !137554, !noundef !67 ; 2 uses
  %i.of = icmp eq i32 %.val.i.i.i76.us.i.i, %i.nm
  br i1 %i.of, label %.preheader.i.i.i.us.i.i, label %.loopexit.i.i.us.i.i

bb.bo:                                            ; preds = %.split202.us.i.i
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.nw
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 20
  %i.oi = load i32, ptr %i.oh, align 4, !noalias !137554, !noundef !67
  br label %.loopexit.i.i.us.i.i

.loopexit.i.i.us.i.i:                             ; preds = %bb.bn, %bb.bo
  %.sroa.4.0.i.ph.i.i.us.i.i = phi i32 [ %i.oi, %bb.bo ], [ %.val.i.i.i76.us.i.i, %bb.bn ]
  %i.oj = zext i32 %.sroa.4.0.i.ph.i.i.us.i.i to i64 ; 2 uses
  %i.ok = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.oj
  br i1 %i.ok, label %select.unfold.i.i.i.i.i, label %.invoke.i.i

.split202.i.i:                                    ; preds = %bb.bm, %bb.bv
  %.sroa.7.0.i.i.i = phi i32 [ %.sroa.7.2.i.i.i, %bb.bv ], [ %.sroa.5.0.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.5.0.i75.i.i = phi i32 [ %.sroa.5.1.i.i.i, %bb.bv ], [ %.sroa.0.0.i70.i.i, %bb.bm ] ; 2 uses
  %i.ol = phi <2 x double> [ %i.qx, %bb.bv ], [ zeroinitializer, %bb.bm ] ; 2 uses
  %i.om = zext i32 %.sroa.5.0.i75.i.i to i64      ; 2 uses
  %i.on = icmp ugt i64 %i.gu, %i.om
  br i1 %i.on, label %bb.bp, label %.preheader.i.i.i.i.i

bb.bp:                                            ; preds = %.split202.i.i
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.om ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i32, ptr %i.op, align 8, !noalias !137554, !noundef !67
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 20
  %i.os = load i32, ptr %i.or, align 4, !noalias !137554, !noundef !67
  br label %.loopexit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.split202.i.i, %bb.bq
  %i.ot = phi i32 [ %i.oy, %bb.bq ], [ %.sroa.7.0.i.i.i, %.split202.i.i ]
  %i.ou = zext i32 %i.ot to i64                   ; 2 uses
  %i.ov = icmp ugt i64 %i.gu, %i.ou
  br i1 %i.ov, label %bb.bq, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i

bb.bq:                                            ; preds = %.preheader.i.i.i.i.i
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.ou ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 12
  %i.oy = load i32, ptr %i.ox, align 4, !noalias !137554, !noundef !67 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %.val.i.i.i76.i.i = load i32, ptr %i.oz, align 4, !noalias !137554, !noundef !67 ; 2 uses
  %i.pa = icmp eq i32 %.val.i.i.i76.i.i, %i.nm
  br i1 %i.pa, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bq, %bb.bp
  %.sroa.7.2.i.i.i = phi i32 [ %.sroa.7.0.i.i.i, %bb.bp ], [ %i.oy, %bb.bq ]
  %.sroa.5.1.i.i.i = phi i32 [ %i.oq, %bb.bp ], [ %.sroa.5.0.i75.i.i, %bb.bq ]
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.os, %bb.bp ], [ %.val.i.i.i76.i.i, %bb.bq ]
  %i.pb = zext i32 %.sroa.4.0.i.ph.i.i.i.i to i64 ; 5 uses
  %i.pc = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.pb
  br i1 %i.pc, label %bb.br, label %.invoke.i.i

bb.br:                                            ; preds = %.loopexit.i.i.i.i
  %i.pd = xor i64 %i.it, %i.pb
  %i.pe = zext i64 %i.pd to i128
  %i.pf = mul nuw i128 %i.pe, %i.nv               ; 2 uses
  %i.pg = lshr i128 %i.pf, 64
  %i.ph = xor i128 %i.pg, %i.pf
  %i.pi = trunc i128 %i.ph to i64                 ; 2 uses
  %i.pj = lshr i64 %i.pi, 57
  %i.pk = trunc nuw nsw i64 %i.pj to i8
  %i.pl = insertelement <16 x i8> poison, i8 %i.pk, i64 0
  %i.pm = shufflevector <16 x i8> %i.pl, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.sroa.011.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.br ], [ %i.qf, %bb.bu ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.pi, %bb.br ], [ %i.qg, %bb.bu ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %.sroa.6520.0.copyload.i ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0519.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.pn, align 1, !noalias !137555 ; 2 uses
  %i.po = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, %i.pm
  %i.pp = bitcast <16 x i1> %i.po to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i = icmp eq i16 %i.pp, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bs, %bb.bt
  %.sroa.05.0.i31.i.i.i.i.i.i.i = phi i16 [ %i.qe, %bb.bt ], [ %i.pp, %bb.bs ] ; 3 uses
  %i.pq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, i1 true)
  %i.pr = zext nneg i16 %i.pq to i64
  %i.ps = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.pr
  %i.pt = and i64 %i.ps, %.sroa.6520.0.copyload.i
  %i.pu = sub nsw i64 0, %i.pt
  %i.pv = getelementptr inbounds [24 x i8], ptr %.sroa.0519.0.copyload.i, i64 %i.pu ; 3 uses
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 -24
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.pw, align 8, !noalias !137556, !noundef !67
  %i.px = getelementptr i8, ptr %i.pv, i64 -16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.px, align 8, !noalias !137556
  %i.py = icmp eq i64 %i.nl, %.val2.i.i.i.i.i.i.i.i
  %i.pz = icmp eq i64 %.val3.i.i.i.i.i.i.i.i, %i.pb
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.py, i1 %i.pz, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.bt, !prof !77

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.bt, %bb.bs
  %i.qa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, splat (i8 -1)
  %i.qb = bitcast <16 x i1> %i.qa to i16
  %i.qc = icmp eq i16 %i.qb, 0
  br i1 %i.qc, label %bb.bu, label %select.unfold.i.i.i.i.i, !prof !71

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.qd = add i16 %.sroa.05.0.i31.i.i.i.i.i.i.i, -1
  %i.qe = and i16 %i.qd, %.sroa.05.0.i31.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i77.i.i = icmp eq i16 %i.qe, 0
  br i1 %.not.i.not.i.i.i.i.i77.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.qf = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.qg = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, %i.qf
  br label %bb.bs

select.unfold.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i.i, %.loopexit.i.i.us.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1284) #60
          to label %.noexc79.i.i unwind label %bb.ak, !noalias !137531

.noexc79.i.i:                                     ; preds = %select.unfold.i.i.i.i.i
  unreachable

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.pb
  %i.qi = getelementptr inbounds i8, ptr %i.pv, i64 -8
  %i.qj = load double, ptr %i.qi, align 8, !noalias !137557, !noundef !67
  %i.qk = load <2 x double>, ptr %i.qh, align 8, !noalias !137558
  %i.ql = fsub <2 x double> %i.qk, %i.nt          ; 3 uses
  %i.qm = fmul <2 x double> %i.ql, %i.ql          ; 2 uses
  %shift = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.qm, %shift
  %17 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.qn = call double @llvm.sqrt.f64(double %17)
  %i.qo = call nsz double @llvm.maximumnum.f64(double %i.qn, double 1.000000e-08)
  %i.qp = fdiv double %17, %.sroa.046.0.i
  %i.qq = fmul double %i.qj, %i.qp
  %i.qr = insertelement <2 x double> poison, double %i.qq, i64 0
  %i.qs = shufflevector <2 x double> %i.qr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qt = fmul <2 x double> %i.ql, %i.qs
  %i.qu = insertelement <2 x double> poison, double %i.qo, i64 0
  %i.qv = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = fdiv <2 x double> %i.qt, %i.qv
  %i.qx = fadd <2 x double> %i.ol, %i.qw
  br label %.split202.i.i

bb.bw:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.nl, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1090) #61
          to label %bb.bx unwind label %bb.ak, !noalias !137531

bb.bx:                                            ; preds = %bb.bw
  unreachable

_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i: ; preds = %.preheader.i.i.i.us.i.i, %.preheader.i.i.i.i.i
  %i.qy = phi <2 x double> [ %i.ol, %.preheader.i.i.i.i.i ], [ zeroinitializer, %.preheader.i.i.i.us.i.i ]
  br label %bb.by

bb.by:                                            ; preds = %bb.cd, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i
  %.sroa.6.0.i.i.i = phi i64 [ 0, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i ], [ %i.rd, %bb.cd ]
  %.sroa.0.0.i85.i.i = phi ptr [ %.val199.i, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i ], [ %i.rc, %bb.cd ]
  %i.qz = phi <2 x double> [ zeroinitializer, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_21AdaptiveCoolingSchemeE0EEB9_.exit.i.i ], [ %i.rw, %bb.cd ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.backedge660, %bb.by
  %i.ra = phi i64 [ %.sroa.6.0.i.i.i, %bb.by ], [ %i.rd, %.backedge660 ] ; 2 uses
  %i.rb = phi ptr [ %.sroa.0.0.i85.i.i, %bb.by ], [ %i.rc, %.backedge660 ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.rb, %i.df
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i.i, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16 ; 2 uses
  %i.rd = add i64 %i.ra, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i86.i.i = load ptr, ptr %i.rb, align 8, !noalias !137559, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i87.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i86.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i87.i.i, label %.backedge660, label %bb.cb

.backedge660:                                     ; preds = %bb.ca, %bb.cb
  br label %bb.bz

bb.cb:                                            ; preds = %bb.ca
  %i.re = and i64 %i.ra, 4294967295               ; 4 uses
  %.not.i.not.i.i.i.i.i88.i.i = icmp eq i64 %i.nl, %i.re
  br i1 %.not.i.not.i.i.i.i.i88.i.i, label %.backedge660, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rf = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.re
  br i1 %i.rf, label %bb.cd, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %.loopexit.i.i.i.i, %bb.cc, %.loopexit.i.i.us.i.i
  %i.rg = phi i64 [ %i.re, %bb.cc ], [ %i.oj, %.loopexit.i.i.us.i.i ], [ %i.pb, %.loopexit.i.i.i.i ]
  %i.rh = phi ptr [ @1285, %bb.cc ], [ @1283, %.loopexit.i.i.us.i.i ], [ @1283, %.loopexit.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.rg, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rh) #60
          to label %.cont.i.i unwind label %bb.ak, !noalias !137531

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.re
  %i.rj = load <2 x double>, ptr %i.ri, align 8, !noalias !137560
  %i.rk = fsub <2 x double> %i.rj, %i.nt          ; 3 uses
  %i.rl = fmul <2 x double> %i.rk, %i.rk          ; 2 uses
  %shift627 = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop628 = fadd <2 x double> %i.rl, %shift627
  %18 = extractelement <2 x double> %foldExtExtBinop628, i64 0
  %i.rm = call double @llvm.sqrt.f64(double %18)
  %i.rn = call nsz double @llvm.maximumnum.f64(double %i.rm, double 1.000000e-08) ; 2 uses
  %i.ro = call double @llvm.powi.f64.i32(double %i.rn, i32 %6)
  %i.rp = fdiv double %i.hn, %i.ro
  %i.rq = insertelement <2 x double> poison, double %i.rp, i64 0
  %i.rr = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rs = fmul <2 x double> %i.rk, %i.rr
  %i.rt = insertelement <2 x double> poison, double %i.rn, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = fdiv <2 x double> %i.rs, %i.ru
  %i.rw = fadd <2 x double> %i.qz, %i.rv
  br label %bb.by

bb.ce:                                            ; preds = %bb.bz
  %i.rx = fadd <2 x double> %i.qy, %i.qz          ; 3 uses
  %i.ry = fmul <2 x double> %i.rx, %i.rx          ; 2 uses
  %shift630 = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop631 = fadd <2 x double> %i.ry, %shift630
  %i.rz = extractelement <2 x double> %foldExtExtBinop631, i64 0 ; 2 uses
  %i.sa = fadd double %.sroa.03.0.ph.i.i, %i.rz
  %i.sb = call double @llvm.sqrt.f64(double %i.rz)
  %i.sc = call nsz double @llvm.maximumnum.f64(double %i.sb, double 1.000000e-08)
  %i.sd = fmul <2 x double> %i.is, %i.rx
  %i.se = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.sf = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sg = fdiv <2 x double> %i.sd, %i.sf          ; 3 uses
  %i.sh = fadd <2 x double> %i.nt, %i.sg
  store <2 x double> %i.sh, ptr %i.ns, align 8, !noalias !137531
  %i.si = fmul <2 x double> %i.sg, %i.sg          ; 2 uses
  %shift633 = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop634 = fadd <2 x double> %i.si, %shift633
  %19 = extractelement <2 x double> %foldExtExtBinop634, i64 0
  %i.sj = fcmp ule double %19, %.sroa.052.0.i
  %spec.select.i.i = select i1 %i.sj, i1 %.sroa.05.0.ph.i.i, i1 false
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i
  %i.sk = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.sk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137531
  br label %.thread.i

bb.cf:                                            ; preds = %bb.ai
  %i.sl = add i64 %8, 1
  %i.sm = uitofp i64 %i.sl to double
  %i.sn = fdiv double 1.000000e-01, %i.sm
  %.sroa.0496.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !137505 ; 6 uses
  %.sroa.6497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6497.0.copyload.i = load i64, ptr %.sroa.6497.0..sroa_idx.i, align 8, !noalias !137505 ; 10 uses
  %.sroa.9499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.9499.0.copyload.i = load i64, ptr %.sroa.9499.0..sroa_idx.i, align 8, !noalias !137505
  %.sroa.10500.0.copyload.i = load i64, ptr %i.gq, align 8, !noalias !137505
  call void @llvm.experimental.noalias.scope.decl(metadata !137561)
  %.old1.not.i258.i = icmp eq i64 %8, 0
  br i1 %.old1.not.i258.i, label %.loopexit.i346.i, label %.preheader.i259.i

.preheader.i259.i:                                ; preds = %bb.cf
  %i.so = icmp eq i64 %.fr219.i.i, 0
  %.fr.i261.i = freeze i64 %.sroa.9499.0.copyload.i
  %i.sp = icmp eq i64 %.fr.i261.i, 0
  %i.sq = add i32 %6, 1
  %i.sr = call double @llvm.powi.f64.i32(double %.sroa.046.0.i, i32 %i.sq)
  %i.ss = fmul double %i.sr, -2.000000e-01
  br label %bb.cj

bb.cg:                                            ; preds = %.invoke.i313.i, %bb.dp, %select.unfold.i.i.i.i333.i, %bb.db, %bb.cu
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %.body.i290.i

.body.i290.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i364.i, %bb.da, %bb.cg
  %eh.lpad-body.i291.i = phi { ptr, i32 } [ %i.st, %bb.cg ], [ %i.xc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i364.i ], [ %i.xc, %bb.da ] ; 2 uses
  %i.su = icmp eq i64 %.sroa.6497.0.copyload.i, 0
  br i1 %i.su, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i: ; preds = %.body.i290.i
  %i.sv = mul i64 %.sroa.6497.0.copyload.i, 24
  %i.sw = icmp slt i64 %.sroa.6497.0.copyload.i, 768614336404564650
  call void @llvm.assume(i1 %i.sw), !noalias !137562
  %i.sx = and i64 %i.sv, -16                      ; 2 uses
  %i.sy = add i64 %i.sx, 32                       ; 2 uses
  %i.sz = add nsw i64 %.sroa.6497.0.copyload.i, 17
  %i.ta = add i64 %i.sz, %i.sy                    ; 4 uses
  %i.tb = icmp uge i64 %i.ta, %i.sy
  %i.tc = icmp ult i64 %i.ta, 9223372036854775793
  call void @llvm.assume(i1 %i.tb), !noalias !137562
  call void @llvm.assume(i1 %i.tc), !noalias !137562
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0496.0.copyload.i) ], !noalias !137562
  %i.td = icmp eq i64 %i.ta, 0
  br i1 %i.td, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i, label %bb.ch

bb.ch:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i
  %i.te = sub i64 -32, %i.sx
  %i.tf = getelementptr inbounds i8, ptr %.sroa.0496.0.copyload.i, i64 %i.te
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tf, i64 noundef %i.ta, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !137563
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i: ; preds = %bb.ch, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i416.i, %.body.i290.i
  %i.tg = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.tg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i
  %i.th = shl i64 %.sroa.9.0.i, 3
  %i.ti = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ti), !noalias !137562
  %i.tj = and i64 %i.th, -16                      ; 2 uses
  %i.tk = add i64 %i.tj, 16                       ; 2 uses
  %i.tl = add nsw i64 %.sroa.9.0.i, 17
  %i.tm = add i64 %i.tl, %i.tk                    ; 4 uses
  %i.tn = icmp uge i64 %i.tm, %i.tk
  %i.to = icmp ult i64 %i.tm, 9223372036854775793
  call void @llvm.assume(i1 %i.tn), !noalias !137562
  call void @llvm.assume(i1 %i.to), !noalias !137562
  %i.tp = icmp eq i64 %i.tm, 0
  br i1 %i.tp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, label %bb.ci

bb.ci:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i
  %i.tq = sub nuw nsw i64 -16, %i.tj
  %i.tr = getelementptr inbounds i8, ptr %.sroa.0451.0.i, i64 %i.tq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tr, i64 noundef %i.tm, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !137563
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i: ; preds = %bb.ci, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i414.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit417.i
  %i.ts = icmp eq i64 %.sroa.49.0.i.i940.i, 0
  br i1 %i.ts, label %.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i

bb.cj:                                            ; preds = %.split.us.i344.i, %.preheader.i259.i
  %.pn.i = phi double [ %i.tt, %.split.us.i344.i ], [ 1.000000e-01, %.preheader.i259.i ]
  %.sroa.033.0.i263.i = phi i64 [ %i.tu, %.split.us.i344.i ], [ 0, %.preheader.i259.i ]
  %i.tt = fsub double %.pn.i, %i.sn               ; 2 uses
  %i.tu = add nuw i64 %.sroa.033.0.i263.i, 1      ; 2 uses
  %i.tv = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.tw = shufflevector <2 x double> %i.tv, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i: ; preds = %bb.dx, %bb.cj
  %.sroa.7.0.ph.i265.i = phi i64 [ %.lcssa146148.i286.i, %bb.dx ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.090.0.ph.i266.i = phi ptr [ %.lcssa149151.i285.i, %bb.dx ], [ %.val199.i, %bb.cj ] ; 2 uses
  %.sroa.05.0.ph.i267.i = phi i1 [ %spec.select.i315.i, %bb.dx ], [ true, %bb.cj ] ; 2 uses
  %i.tx = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !137563 ; 2 uses
  %i.ty = zext i64 %i.tx to i128
  br i1 %i.so, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i, %bb.ck
  %i.tz = phi i64 [ %i.ud, %bb.ck ], [ %.sroa.7.0.ph.i265.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.ua = phi ptr [ %i.uc, %bb.ck ], [ %.sroa.090.0.ph.i266.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.ub = icmp eq ptr %i.ua, %i.df
  br i1 %i.ub, label %.split.us.i344.i, label %bb.ck

bb.ck:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 2 uses
  %i.ud = add i64 %i.tz, 1                        ; 2 uses
  %.val.i.us.i376.i = load ptr, ptr %i.ua, align 8, !noalias !137564, !noundef !67
  %.not.i.not.i.us.i377.i = icmp eq ptr %.val.i.us.i376.i, null
  br i1 %.not.i.not.i.us.i377.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.split.us.i375.i, label %select.unfold.loopexit138.split.us.i378.i

select.unfold.loopexit138.split.us.i378.i:        ; preds = %bb.ck
  %i.ue = and i64 %i.tz, 4294967295
  br label %select.unfold.i283.i

.loopexit.i346.i:                                 ; preds = %.split.us.i344.i, %bb.cf
  %i.uf = icmp eq i64 %.fr219.i.i, 0
  br i1 %i.uf, label %bb.cr, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i347.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge
  %i.ug = phi i64 [ %i.uk, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge ], [ %.sroa.7.0.ph.i265.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.uh = phi ptr [ %i.uj, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge ], [ %.sroa.090.0.ph.i266.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i ] ; 3 uses
  %i.ui = icmp eq ptr %i.uh, %i.df
  br i1 %i.ui, label %.split.us.i344.i, label %bb.cl

bb.cl:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 16 ; 2 uses
  %i.uk = add i64 %i.ug, 1                        ; 2 uses
  %.val.i.i271.i = load ptr, ptr %i.uh, align 8, !noalias !137564, !noundef !67
  %.not.i.not.i.i272.i = icmp eq ptr %.val.i.i271.i, null
  br i1 %.not.i.not.i.i272.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge, label %bb.cm

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge: ; preds = %.lr.ph.i.i.i278.i, %bb.cl
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i

bb.cm:                                            ; preds = %bb.cl
  %i.ul = and i64 %i.ug, 4294967295               ; 3 uses
  %i.um = xor i64 %i.ul, %.sroa.12458.sroa.8.0.i
  %i.un = zext i64 %i.um to i128
  %i.uo = mul nuw i128 %i.un, %i.ty               ; 2 uses
  %i.up = lshr i128 %i.uo, 64
  %i.uq = xor i128 %i.up, %i.uo
  %i.ur = trunc i128 %i.uq to i64                 ; 2 uses
  %i.us = lshr i64 %i.ur, 57
  %i.ut = trunc nuw nsw i64 %i.us to i8
  %i.uu = insertelement <16 x i8> poison, i8 %i.ut, i64 0
  %i.uv = shufflevector <16 x i8> %i.uu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %bb.cm
  %.sroa.011.0.i.i.i.i273.i = phi i64 [ 0, %bb.cm ], [ %i.vm, %bb.cp ]
  %.pn.i.i.i274.i = phi i64 [ %i.ur, %bb.cm ], [ %i.vn, %bb.cp ]
  %.sroa.01.0.i.i.i.i275.i = and i64 %.pn.i.i.i274.i, %.sroa.9.0.i ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0451.0.i, i64 %.sroa.01.0.i.i.i.i275.i
  %.sroa.0.0.copyload.i24.i.i.i276.i = load <16 x i8>, ptr %i.uw, align 1, !noalias !137565 ; 2 uses
  %i.ux = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i276.i, %i.uv
  %i.uy = bitcast <16 x i1> %i.ux to i16          ; 2 uses
  %.not.i.not30.i.i.i277.i = icmp eq i16 %i.uy, 0
  br i1 %.not.i.not30.i.i.i277.i, label %._crit_edge.i.i.i282.i, label %.lr.ph.i.i.i278.i

.lr.ph.i.i.i278.i:                                ; preds = %bb.cn, %bb.co
  %.sroa.05.0.i31.i.i.i279.i = phi i16 [ %i.vl, %bb.co ], [ %i.uy, %bb.cn ] ; 3 uses
  %i.uz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i279.i, i1 true)
  %i.va = zext nneg i16 %i.uz to i64
  %i.vb = add i64 %.sroa.01.0.i.i.i.i275.i, %i.va
  %i.vc = and i64 %i.vb, %.sroa.9.0.i
  %i.vd = sub nsw i64 0, %i.vc
  %i.ve = getelementptr inbounds [8 x i8], ptr %.sroa.0451.0.i, i64 %i.vd
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 -8
  %.val2.i.i.i.i280.i = load i64, ptr %i.vf, align 8, !noalias !137566, !noundef !67
  %i.vg = icmp eq i64 %i.ul, %.val2.i.i.i.i280.i
  br i1 %i.vg, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i268.i.backedge, label %bb.co, !prof !77

._crit_edge.i.i.i282.i:                           ; preds = %bb.co, %bb.cn
  %i.vh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i276.i, splat (i8 -1)
  %i.vi = bitcast <16 x i1> %i.vh to i16
  %i.vj = icmp eq i16 %i.vi, 0
  br i1 %i.vj, label %bb.cp, label %select.unfold.i283.i, !prof !71

bb.co:                                            ; preds = %.lr.ph.i.i.i278.i
  %i.vk = add i16 %.sroa.05.0.i31.i.i.i279.i, -1
  %i.vl = and i16 %i.vk, %.sroa.05.0.i31.i.i.i279.i ; 2 uses
  %.not.i.not.i.i.i281.i = icmp eq i16 %i.vl, 0
  br i1 %.not.i.not.i.i.i281.i, label %._crit_edge.i.i.i282.i, label %.lr.ph.i.i.i278.i

bb.cp:                                            ; preds = %._crit_edge.i.i.i282.i
  %i.vm = add i64 %.sroa.011.0.i.i.i.i273.i, 16   ; 2 uses
  %i.vn = add i64 %.sroa.01.0.i.i.i.i275.i, %i.vm
end_hunk_13
begin_hunk_14_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spring_layout:bb.a
  store <2 x double> %i.xx, ptr %.sroa.0.01.i.i373.i, align 8, !alias.scope !137584, !noalias !137563
  %i.xy = icmp eq ptr %i.xv, %i.xj
  br i1 %i.xy, label %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i347.i, label %.lr.ph.i.i372.i, !llvm.loop !137436

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i351.i: ; preds = %bb.cq, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i350.i, %_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring8recenter.exit.i347.i
  %i.xz = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.xz, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i351.i
  %i.ya = shl i64 %.sroa.9.0.i, 3
  %i.yb = icmp slt i64 %.sroa.9.0.i, 2305843009213693950
  call void @llvm.assume(i1 %i.yb)
  %i.yc = and i64 %i.ya, -16                      ; 2 uses
  %i.yd = add i64 %i.yc, 16                       ; 2 uses
  %i.ye = add nsw i64 %.sroa.9.0.i, 17
  %i.yf = add i64 %i.ye, %i.yd                    ; 4 uses
  %i.yg = icmp uge i64 %i.yf, %i.yd
  %i.yh = icmp ult i64 %i.yf, 9223372036854775793
  call void @llvm.assume(i1 %i.yg)
  call void @llvm.assume(i1 %i.yh)
  %i.yi = icmp eq i64 %i.yf, 0
  br i1 %i.yi, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i

select.unfold.i283.i:                             ; preds = %._crit_edge.i.i.i282.i, %select.unfold.loopexit138.split.us.i378.i
  %.in.i284.i = phi i64 [ %i.tz, %select.unfold.loopexit138.split.us.i378.i ], [ %i.ug, %._crit_edge.i.i.i282.i ]
  %i.yj = phi i64 [ %i.ue, %select.unfold.loopexit138.split.us.i378.i ], [ %i.ul, %._crit_edge.i.i.i282.i ] ; 8 uses
  %.lcssa149151.i285.i = phi ptr [ %i.uc, %select.unfold.loopexit138.split.us.i378.i ], [ %i.uj, %._crit_edge.i.i.i282.i ]
  %.lcssa146148.i286.i = phi i64 [ %i.ud, %select.unfold.loopexit138.split.us.i378.i ], [ %i.uk, %._crit_edge.i.i.i282.i ]
  %i.yk = trunc i64 %.in.i284.i to i32            ; 2 uses
  %i.yl = icmp ugt i64 %.val200.i, %i.yj
  br i1 %i.yl, label %bb.de, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i

bb.de:                                            ; preds = %select.unfold.i283.i
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %.val199.i, i64 %i.yj ; 3 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !noalias !137585, !noundef !67
  %.not.i.i.i339.i = icmp eq ptr %i.yn, null
  br i1 %.not.i.i.i339.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i: ; preds = %bb.de
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %.sroa.0.0.copyload.i.i341.i = load i32, ptr %i.yo, align 8, !noalias !137585
  %.sroa.5.0..sroa_idx.i.i342.i = getelementptr inbounds nuw i8, ptr %i.ym, i64 12
  %.sroa.5.0.copyload.i.i343.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i342.i, align 4, !noalias !137585
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i, %bb.de, %select.unfold.i283.i
  %.sroa.5.0.i.i288.i = phi i32 [ %.sroa.5.0.copyload.i.i343.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i ], [ -1, %select.unfold.i283.i ], [ -1, %bb.de ] ; 2 uses
  %.sroa.0.0.i70.i289.i = phi i32 [ %.sroa.0.0.copyload.i.i341.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i340.i ], [ -1, %select.unfold.i283.i ], [ -1, %bb.de ] ; 2 uses
  %i.yp = icmp ult i64 %i.yj, %.sroa.49.0.i.i940.i
  br i1 %i.yp, label %bb.df, label %bb.dp

bb.df:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i
  %i.yq = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.yj ; 2 uses
  %i.yr = load <2 x double>, ptr %i.yq, align 8, !noalias !137563 ; 3 uses
  %i.ys = xor i64 %i.yj, %.sroa.10500.0.copyload.i
  %i.yt = zext i64 %i.ys to i128
  br i1 %i.sp, label %.split196.us.i.i, label %.split196.i.i

.split196.us.i.i:                                 ; preds = %bb.df
  %i.yu = zext i32 %.sroa.0.0.i70.i289.i to i64   ; 2 uses
  %i.yv = icmp ugt i64 %i.gu, %i.yu
  br i1 %i.yv, label %bb.dh, label %.preheader.i.i.i.us.i335.i

.preheader.i.i.i.us.i335.i:                       ; preds = %.split196.us.i.i, %bb.dg
  %i.yw = phi i32 [ %i.zb, %bb.dg ], [ %.sroa.5.0.i.i288.i, %.split196.us.i.i ]
  %i.yx = zext i32 %i.yw to i64                   ; 2 uses
  %i.yy = icmp ugt i64 %i.gu, %i.yx
  br i1 %i.yy, label %bb.dg, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i

bb.dg:                                            ; preds = %.preheader.i.i.i.us.i335.i
  %i.yz = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.yx ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 12
  %i.zb = load i32, ptr %i.za, align 4, !noalias !137586, !noundef !67
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %.val.i.i.i76.us.i336.i = load i32, ptr %i.zc, align 4, !noalias !137586, !noundef !67 ; 2 uses
  %i.zd = icmp eq i32 %.val.i.i.i76.us.i336.i, %i.yk
  br i1 %i.zd, label %.preheader.i.i.i.us.i335.i, label %.loopexit.i.i.us.i337.i

bb.dh:                                            ; preds = %.split196.us.i.i
  %i.ze = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.yu
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 20
  %i.zg = load i32, ptr %i.zf, align 4, !noalias !137586, !noundef !67
  br label %.loopexit.i.i.us.i337.i

.loopexit.i.i.us.i337.i:                          ; preds = %bb.dg, %bb.dh
  %.sroa.4.0.i.ph.i.i.us.i338.i = phi i32 [ %i.zg, %bb.dh ], [ %.val.i.i.i76.us.i336.i, %bb.dg ]
  %i.zh = zext i32 %.sroa.4.0.i.ph.i.i.us.i338.i to i64 ; 2 uses
  %i.zi = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.zh
  br i1 %i.zi, label %select.unfold.i.i.i.i333.i, label %.invoke.i313.i

.split196.i.i:                                    ; preds = %bb.df, %bb.do
  %.sroa.7.0.i.i302.i = phi i32 [ %.sroa.7.2.i.i318.i, %bb.do ], [ %.sroa.5.0.i.i288.i, %bb.df ] ; 2 uses
  %.sroa.5.0.i75.i303.i = phi i32 [ %.sroa.5.1.i.i319.i, %bb.do ], [ %.sroa.0.0.i70.i289.i, %bb.df ] ; 2 uses
  %i.zj = phi <2 x double> [ %i.abv, %bb.do ], [ zeroinitializer, %bb.df ] ; 2 uses
  %i.zk = zext i32 %.sroa.5.0.i75.i303.i to i64   ; 2 uses
  %i.zl = icmp ugt i64 %i.gu, %i.zk
  br i1 %i.zl, label %bb.di, label %.preheader.i.i.i.i304.i

bb.di:                                            ; preds = %.split196.i.i
  %i.zm = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.zk ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zo = load i32, ptr %i.zn, align 8, !noalias !137586, !noundef !67
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 20
  %i.zq = load i32, ptr %i.zp, align 4, !noalias !137586, !noundef !67
  br label %.loopexit.i.i.i317.i

.preheader.i.i.i.i304.i:                          ; preds = %.split196.i.i, %bb.dj
  %i.zr = phi i32 [ %i.zw, %bb.dj ], [ %.sroa.7.0.i.i302.i, %.split196.i.i ]
  %i.zs = zext i32 %i.zr to i64                   ; 2 uses
  %i.zt = icmp ugt i64 %i.gu, %i.zs
  br i1 %i.zt, label %bb.dj, label %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i

bb.dj:                                            ; preds = %.preheader.i.i.i.i304.i
  %i.zu = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.zs ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 12
  %i.zw = load i32, ptr %i.zv, align 4, !noalias !137586, !noundef !67 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %.val.i.i.i76.i316.i = load i32, ptr %i.zx, align 4, !noalias !137586, !noundef !67 ; 2 uses
  %i.zy = icmp eq i32 %.val.i.i.i76.i316.i, %i.yk
  br i1 %i.zy, label %.preheader.i.i.i.i304.i, label %.loopexit.i.i.i317.i

.loopexit.i.i.i317.i:                             ; preds = %bb.dj, %bb.di
  %.sroa.7.2.i.i318.i = phi i32 [ %.sroa.7.0.i.i302.i, %bb.di ], [ %i.zw, %bb.dj ]
  %.sroa.5.1.i.i319.i = phi i32 [ %i.zo, %bb.di ], [ %.sroa.5.0.i75.i303.i, %bb.dj ]
  %.sroa.4.0.i.ph.i.i.i320.i = phi i32 [ %i.zq, %bb.di ], [ %.val.i.i.i76.i316.i, %bb.dj ]
  %i.zz = zext i32 %.sroa.4.0.i.ph.i.i.i320.i to i64 ; 5 uses
  %i.aaa = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.zz
  br i1 %i.aaa, label %bb.dk, label %.invoke.i313.i

bb.dk:                                            ; preds = %.loopexit.i.i.i317.i
  %i.aab = xor i64 %i.tx, %i.zz
  %i.aac = zext i64 %i.aab to i128
  %i.aad = mul nuw i128 %i.aac, %i.yt             ; 2 uses
  %i.aae = lshr i128 %i.aad, 64
  %i.aaf = xor i128 %i.aae, %i.aad
  %i.aag = trunc i128 %i.aaf to i64               ; 2 uses
  %i.aah = lshr i64 %i.aag, 57
  %i.aai = trunc nuw nsw i64 %i.aah to i8
  %i.aaj = insertelement <16 x i8> poison, i8 %i.aai, i64 0
  %i.aak = shufflevector <16 x i8> %i.aaj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %bb.dk
  %.sroa.011.0.i.i.i.i.i.i.i321.i = phi i64 [ 0, %bb.dk ], [ %i.abd, %bb.dn ]
  %.pn.i.i.i.i.i.i322.i = phi i64 [ %i.aag, %bb.dk ], [ %i.abe, %bb.dn ]
  %.sroa.01.0.i.i.i.i.i.i.i323.i = and i64 %.pn.i.i.i.i.i.i322.i, %.sroa.6497.0.copyload.i ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.0496.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i.i.i323.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i324.i = load <16 x i8>, ptr %i.aal, align 1, !noalias !137587 ; 2 uses
  %i.aam = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i324.i, %i.aak
  %i.aan = bitcast <16 x i1> %i.aam to i16        ; 2 uses
  %.not.i.not30.i.i.i.i.i.i325.i = icmp eq i16 %i.aan, 0
  br i1 %.not.i.not30.i.i.i.i.i.i325.i, label %._crit_edge.i.i.i.i.i.i332.i, label %.lr.ph.i.i.i.i.i.i326.i

.lr.ph.i.i.i.i.i.i326.i:                          ; preds = %bb.dl, %bb.dm
  %.sroa.05.0.i31.i.i.i.i.i.i327.i = phi i16 [ %i.abc, %bb.dm ], [ %i.aan, %bb.dl ] ; 3 uses
  %i.aao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i.i.i327.i, i1 true)
  %i.aap = zext nneg i16 %i.aao to i64
  %i.aaq = add i64 %.sroa.01.0.i.i.i.i.i.i.i323.i, %i.aap
  %i.aar = and i64 %i.aaq, %.sroa.6497.0.copyload.i
  %i.aas = sub nsw i64 0, %i.aar
  %i.aat = getelementptr inbounds [24 x i8], ptr %.sroa.0496.0.copyload.i, i64 %i.aas ; 3 uses
  %i.aau = getelementptr inbounds i8, ptr %i.aat, i64 -24
  %.val2.i.i.i.i.i.i.i328.i = load i64, ptr %i.aau, align 8, !noalias !137588, !noundef !67
  %i.aav = getelementptr i8, ptr %i.aat, i64 -16
  %.val3.i.i.i.i.i.i.i329.i = load i64, ptr %i.aav, align 8, !noalias !137588
  %i.aaw = icmp eq i64 %i.yj, %.val2.i.i.i.i.i.i.i328.i
  %i.aax = icmp eq i64 %.val3.i.i.i.i.i.i.i329.i, %i.zz
  %spec.select.i.i.i.i.i.i.i.i.i.i330.i = select i1 %i.aaw, i1 %i.aax, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i330.i, label %bb.do, label %bb.dm, !prof !77

._crit_edge.i.i.i.i.i.i332.i:                     ; preds = %bb.dm, %bb.dl
  %i.aay = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i324.i, splat (i8 -1)
  %i.aaz = bitcast <16 x i1> %i.aay to i16
  %i.aba = icmp eq i16 %i.aaz, 0
  br i1 %i.aba, label %bb.dn, label %select.unfold.i.i.i.i333.i, !prof !71

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i.i326.i
  %i.abb = add i16 %.sroa.05.0.i31.i.i.i.i.i.i327.i, -1
  %i.abc = and i16 %i.abb, %.sroa.05.0.i31.i.i.i.i.i.i327.i ; 2 uses
  %.not.i.not.i.i.i.i.i77.i331.i = icmp eq i16 %i.abc, 0
  br i1 %.not.i.not.i.i.i.i.i77.i331.i, label %._crit_edge.i.i.i.i.i.i332.i, label %.lr.ph.i.i.i.i.i.i326.i

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i.i.i332.i
  %i.abd = add i64 %.sroa.011.0.i.i.i.i.i.i.i321.i, 16 ; 2 uses
  %i.abe = add i64 %.sroa.01.0.i.i.i.i.i.i.i323.i, %i.abd
  br label %bb.dl

select.unfold.i.i.i.i333.i:                       ; preds = %._crit_edge.i.i.i.i.i.i332.i, %.loopexit.i.i.us.i337.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1284) #60
          to label %.noexc79.i334.i unwind label %bb.cg, !noalias !137563

.noexc79.i334.i:                                  ; preds = %select.unfold.i.i.i.i333.i
  unreachable

bb.do:                                            ; preds = %.lr.ph.i.i.i.i.i.i326.i
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.zz
  %i.abg = getelementptr inbounds i8, ptr %i.aat, i64 -8
  %i.abh = load double, ptr %i.abg, align 8, !noalias !137589, !noundef !67
  %i.abi = load <2 x double>, ptr %i.abf, align 8, !noalias !137590
  %i.abj = fsub <2 x double> %i.abi, %i.yr        ; 3 uses
  %i.abk = fmul <2 x double> %i.abj, %i.abj       ; 2 uses
  %shift636 = shufflevector <2 x double> %i.abk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop637 = fadd <2 x double> %i.abk, %shift636
  %20 = extractelement <2 x double> %foldExtExtBinop637, i64 0 ; 2 uses
  %i.abl = call double @llvm.sqrt.f64(double %20)
  %i.abm = call nsz double @llvm.maximumnum.f64(double %i.abl, double 1.000000e-08)
  %i.abn = fdiv double %20, %.sroa.046.0.i
  %i.abo = fmul double %i.abh, %i.abn
  %i.abp = insertelement <2 x double> poison, double %i.abo, i64 0
  %i.abq = shufflevector <2 x double> %i.abp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abr = fmul <2 x double> %i.abj, %i.abq
  %i.abs = insertelement <2 x double> poison, double %i.abm, i64 0
  %i.abt = shufflevector <2 x double> %i.abs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abu = fdiv <2 x double> %i.abr, %i.abt
  %i.abv = fadd <2 x double> %i.zj, %i.abu
  br label %.split196.i.i

bb.dp:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx.exit.i287.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.yj, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1090) #61
          to label %bb.dq unwind label %bb.cg, !noalias !137563

bb.dq:                                            ; preds = %bb.dp
  unreachable

_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i: ; preds = %.preheader.i.i.i.us.i335.i, %.preheader.i.i.i.i304.i
  %i.abw = phi <2 x double> [ %i.zj, %.preheader.i.i.i.i304.i ], [ zeroinitializer, %.preheader.i.i.i.us.i335.i ]
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dw, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i
  %.sroa.6.0.i.i307.i = phi i64 [ 0, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i ], [ %i.acb, %bb.dw ]
  %.sroa.0.0.i85.i308.i = phi ptr [ %.val199.i, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i ], [ %i.aca, %bb.dw ]
  %i.abx = phi <2 x double> [ zeroinitializer, %_RINvYNtNtNtCskcxRuJ53GpR_9rustworkx6layout6spring15AttractiveForceNtB5_5Force5totalINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3g_5types3any5PyAnyEENCINvB5_6evolveNtB2e_8DirectedB3_NtB5_14RepulsiveForceNtB5_19LinearCoolingSchemeE0EEB9_.exit.i.i ], [ %i.acu, %bb.dw ] ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %.backedge721, %bb.dr
  %i.aby = phi i64 [ %.sroa.6.0.i.i307.i, %bb.dr ], [ %i.acb, %.backedge721 ] ; 2 uses
  %i.abz = phi ptr [ %.sroa.0.0.i85.i308.i, %bb.dr ], [ %i.aca, %.backedge721 ] ; 3 uses
  %.not.not.not.not.i.not.not.not.i.not.i.i.i309.i = icmp eq ptr %i.abz, %i.df
  br i1 %.not.not.not.not.i.not.not.not.i.not.i.i.i309.i, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 16 ; 2 uses
  %i.acb = add i64 %i.aby, 1                      ; 2 uses
  %.val.i.i.i.i.i.i.i86.i310.i = load ptr, ptr %i.abz, align 8, !noalias !137591, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i87.i311.i = icmp eq ptr %.val.i.i.i.i.i.i.i86.i310.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i87.i311.i, label %.backedge721, label %bb.du

.backedge721:                                     ; preds = %bb.dt, %bb.du
  br label %bb.ds

bb.du:                                            ; preds = %bb.dt
  %i.acc = and i64 %i.aby, 4294967295             ; 4 uses
  %.not.i.not.i.i.i.i.i88.i312.i = icmp eq i64 %i.yj, %i.acc
  br i1 %.not.i.not.i.i.i.i.i88.i312.i, label %.backedge721, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.acd = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.acc
  br i1 %i.acd, label %bb.dw, label %.invoke.i313.i

.invoke.i313.i:                                   ; preds = %.loopexit.i.i.i317.i, %bb.dv, %.loopexit.i.i.us.i337.i
  %i.ace = phi i64 [ %i.acc, %bb.dv ], [ %i.zh, %.loopexit.i.i.us.i337.i ], [ %i.zz, %.loopexit.i.i.i317.i ]
  %i.acf = phi ptr [ @1285, %bb.dv ], [ @1283, %.loopexit.i.i.us.i337.i ], [ @1283, %.loopexit.i.i.i317.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ace, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acf) #60
          to label %.cont.i314.i unwind label %bb.cg, !noalias !137563

.cont.i314.i:                                     ; preds = %.invoke.i313.i
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.acg = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.acc
  %i.ach = load <2 x double>, ptr %i.acg, align 8, !noalias !137592
  %i.aci = fsub <2 x double> %i.ach, %i.yr        ; 3 uses
  %i.acj = fmul <2 x double> %i.aci, %i.aci       ; 2 uses
  %shift639 = shufflevector <2 x double> %i.acj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop640 = fadd <2 x double> %i.acj, %shift639
  %21 = extractelement <2 x double> %foldExtExtBinop640, i64 0
  %i.ack = call double @llvm.sqrt.f64(double %21)
  %i.acl = call nsz double @llvm.maximumnum.f64(double %i.ack, double 1.000000e-08) ; 2 uses
  %i.acm = call double @llvm.powi.f64.i32(double %i.acl, i32 %6)
  %i.acn = fdiv double %i.ss, %i.acm
  %i.aco = insertelement <2 x double> poison, double %i.acn, i64 0
  %i.acp = shufflevector <2 x double> %i.aco, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acq = fmul <2 x double> %i.aci, %i.acp
  %i.acr = insertelement <2 x double> poison, double %i.acl, i64 0
  %i.acs = shufflevector <2 x double> %i.acr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.act = fdiv <2 x double> %i.acq, %i.acs
  %i.acu = fadd <2 x double> %i.abx, %i.act
  br label %bb.dr

bb.dx:                                            ; preds = %bb.ds
  %i.acv = fadd <2 x double> %i.abw, %i.abx       ; 3 uses
  %i.acw = fmul <2 x double> %i.acv, %i.acv       ; 2 uses
  %shift642 = shufflevector <2 x double> %i.acw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop643 = fadd <2 x double> %i.acw, %shift642
  %22 = extractelement <2 x double> %foldExtExtBinop643, i64 0
  %i.acx = call double @llvm.sqrt.f64(double %22)
  %i.acy = call nsz double @llvm.maximumnum.f64(double %i.acx, double 1.000000e-08)
  %i.acz = fmul <2 x double> %i.tw, %i.acv
  %i.ada = insertelement <2 x double> poison, double %i.acy, i64 0
  %i.adb = shufflevector <2 x double> %i.ada, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adc = fdiv <2 x double> %i.acz, %i.adb       ; 3 uses
  %i.add = fadd <2 x double> %i.yr, %i.adc
  store <2 x double> %i.add, ptr %i.yq, align 8, !noalias !137563
  %i.ade = fmul <2 x double> %i.adc, %i.adc       ; 2 uses
  %shift645 = shufflevector <2 x double> %i.ade, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop646 = fadd <2 x double> %i.ade, %shift645
  %23 = extractelement <2 x double> %foldExtExtBinop646, i64 0
  %i.adf = fcmp ule double %23, %.sroa.052.0.i
  %spec.select.i315.i = select i1 %i.adf, i1 %.sroa.05.0.ph.i267.i, i1 false
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjuE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.outer.i264.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i
  %i.adg = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.adg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137563
  br label %.thread.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %.sink.i = phi i64 [ %i.ne, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %i.yc, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i ]
  %.sink1079.i = phi i64 [ %i.nh, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i ], [ %i.yf, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i ]
  %i.adh = sub nuw nsw i64 -16, %.sink.i
  %i.adi = getelementptr inbounds i8, ptr %.sroa.0451.0.i, i64 %i.adh
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adi, i64 noundef %.sink1079.i, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !137505
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i

_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i: ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.sink.split.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i354.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i351.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !137593
  %i.adj = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc388.i unwind label %bb.ee, !noalias !137505

.noexc388.i:                                      ; preds = %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i
  %i.adk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !137593
  %i.adl = icmp eq i8 %i.adk, 2
  br i1 %i.adl, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i, label %bb.dy, !prof !77

bb.dy:                                            ; preds = %.noexc388.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i unwind label %bb.ee, !noalias !137505

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i: ; preds = %bb.dy, %.noexc388.i
  store i64 0, ptr %i.c, align 8, !alias.scope !137594, !noalias !137593
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !137594, !noalias !137593
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !137594, !noalias !137593
  %.sroa.6.0..sroa_idx.i.i385.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i385.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !137593
  %i.adm = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.adj, ptr %i.adm, align 8, !alias.scope !137594, !noalias !137593
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 0)
          to label %.noexc.i386.i unwind label %.loopexit.split-lp.i.i, !noalias !137593

.noexc.i386.i:                                    ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.dz

bb.dz:                                            ; preds = %.backedge, %.noexc.i386.i
  %i.adn = phi i64 [ 0, %.noexc.i386.i ], [ %i.adr, %.backedge ] ; 2 uses
  %i.ado = phi ptr [ %.val199.i, %.noexc.i386.i ], [ %i.adq, %.backedge ] ; 3 uses
  %i.adp = icmp eq ptr %i.ado, %i.df
  br i1 %i.adp, label %bb.ef, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.adr = add i64 %i.adn, 1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ado, align 8, !noalias !137595, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %.backedge, label %bb.eb

.backedge:                                        ; preds = %bb.ea, %.noexc4.i.i
  br label %bb.dz

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137596
  %i.ads = and i64 %i.adn, 4294967295             ; 5 uses
  %i.adt = icmp ugt i64 %.sroa.49.0.i.i940.i, %i.ads
  br i1 %i.adt, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_8DirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ads, i64 noundef %.sroa.49.0.i.i940.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1282) #60
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i, !noalias !137593

.noexc3.i.i:                                      ; preds = %bb.ec
  unreachable

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_8DirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i: ; preds = %bb.eb
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.ads
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.adu, i64 16, i1 false), !noalias !137597
  store i64 %i.ads, ptr %i.b, align 8, !noalias !137596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137598
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.ads, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit.i387.i, !noalias !137593

.noexc4.i.i:                                      ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_8DirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137596
  br label %.backedge

.loopexit.i387.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtBY_8DirectedEs0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp.i.i:                           ; preds = %bb.ec, %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i387.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i387.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #63, !noalias !137593
  br label %.body390.i

bb.ee:                                            ; preds = %bb.dy, %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring6evolveNtCs68Jln09rRqb_8petgraph8DirectedNtB2_15AttractiveForceNtB2_14RepulsiveForceNtB2_19LinearCoolingSchemeEB6_.exit.i
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %.body390.i

.body390.i:                                       ; preds = %bb.ee, %bb.ed
  %eh.lpad-body391.i = phi { ptr, i32 } [ %i.adv, %bb.ee ], [ %lpad.phi.i.i, %bb.ed ] ; 2 uses
  %i.adw = icmp eq i64 %.sroa.49.0.i.i940.i, 0
  br i1 %i.adw, label %.thread.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.body390.i
  %i.adx = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.adx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137505
  br label %.thread.i

bb.ef:                                            ; preds = %bb.dz
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ady, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !137599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !137593
  store i64 0, ptr %0, align 8, !alias.scope !137498, !noalias !137599
  %i.adz = icmp eq i64 %.sroa.49.0.i.i940.i, 0
  br i1 %i.adz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i392.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i392.i: ; preds = %bb.ef
  %i.aea = shl nuw nsw i64 %.sroa.49.0.i.i940.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.aea, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137505
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i392.i, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !137505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !137505
  br i1 %.not.i249.i, label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit, label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecAdj2_EECskcxRuJ53GpR_9rustworkx.exit393.i
  %i.aeb = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i394.i = load i64, ptr %i.aeb, align 8, !noalias !137505, !noundef !67
  %i.aec = icmp sgt i64 %.val.i.i.i.i.i394.i, 0
  br i1 %i.aec, label %bb.eh, label %.invoke.i, !prof !125

bb.eh:                                            ; preds = %bb.eg
  call void @_Py_DecRef(ptr noundef nonnull %11) #59, !noalias !137505
  br label %_RINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEB6_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %.thread.i, %bb.h, %bb.ei
  %.sroa.063.2.i = phi i8 [ %.sroa.061.6.i, %bb.ei ], [ %.sroa.063.0.i, %bb.h ], [ %.sroa.063.0.i, %.thread.i ], [ %.sroa.063.0.i, %bb.i ]
  %.sroa.061.5.i = phi i8 [ %.sroa.061.6.i, %bb.ei ], [ %.sroa.061.0.i, %bb.h ], [ %.sroa.061.0.i, %.thread.i ], [ %.sroa.061.0.i, %bb.i ]
  %.pn188.i = phi { ptr, i32 } [ %i.aee, %bb.ei ], [ %.pn186.i, %bb.h ], [ %.pn186.i, %.thread.i ], [ %.pn186.i, %bb.i ]
  %i.aed = trunc nuw i8 %.sroa.061.5.i to i1
  br i1 %i.aed, label %bb.fc, label %bb.fb

bb.ei:                                            ; preds = %bb.ez, %.invoke.i
  %.sroa.061.6.i = phi i8 [ 1, %bb.ez ], [ 0, %.invoke.i ] ; 2 uses
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.ej:                                            ; preds = %bb.h
  %i.aef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !137505
  unreachable

_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.i: ; preds = %bb.ah
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.06.0.copyload.i.i) #59, !noalias !137528
  %.pre.i = load i64, ptr %i.k, align 8, !range !68, !noalias !137505
  %i.aeg = trunc nuw i64 %.pre.i to i1
  %.pre = load double, ptr %i.gx, align 8, !noalias !137505 ; 2 uses
  br i1 %i.aeg, label %.loopexit953.i, label %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread946.i

.loopexit953.i:                                   ; preds = %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.i, %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread.i
  %.sroa.0162.0.copyload.i = phi double [ %i.hh, %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread.i ], [ %.pre, %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.i ]
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4165.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.0..sroa_idx.i.i, i64 56, i1 false), !noalias !137599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !137505
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.0162.0.copyload.i, ptr %i.aeh, align 8, !alias.scope !137498, !noalias !137599
  store i64 1, ptr %0, align 8, !alias.scope !137498, !noalias !137599
  %.val219.i = load ptr, ptr %i.l, align 8, !noalias !137505 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val220.i = load i64, ptr %i.aei, align 8, !noalias !137505, !noundef !67 ; 4 uses
  %i.aej = icmp eq i64 %.val220.i, 0
  br i1 %i.aej, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapTjjEdEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %.loopexit953.i
  %i.aek = mul i64 %.val220.i, 24
  %i.ael = icmp slt i64 %.val220.i, 768614336404564650
  call void @llvm.assume(i1 %i.ael)
  %i.aem = and i64 %i.aek, -16                    ; 2 uses
  %i.aen = add i64 %i.aem, 32                     ; 2 uses
  %i.aeo = add nsw i64 %.val220.i, 17
  %i.aep = add i64 %i.aeo, %i.aen                 ; 4 uses
  %i.aeq = icmp uge i64 %i.aep, %i.aen
  %i.aer = icmp ult i64 %i.aep, 9223372036854775793
  call void @llvm.assume(i1 %i.aeq)
  call void @llvm.assume(i1 %i.aer)
end_hunk_14
begin_hunk_15_@_RNvNtCskcxRuJ53GpR_9rustworkx8dag_algo33___pyfunction_transitive_reduction:bb.a
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1304, %vector.body1294 ] ; 3 uses
  %i.xq = xor i64 %index1295, -1
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %index1295 ; 3 uses
  %i.xs = getelementptr [4 x i8], ptr %i.xp, i64 %i.xq ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 16 ; 2 uses
  %wide.load1296 = load <4 x i32>, ptr %i.xr, align 4, !alias.scope !148001, !noalias !148003
  %wide.load1297 = load <4 x i32>, ptr %i.xt, align 4, !alias.scope !148001, !noalias !148003
  %i.xu = getelementptr i8, ptr %i.xs, i64 -12    ; 2 uses
  %i.xv = getelementptr i8, ptr %i.xs, i64 -28    ; 2 uses
  %wide.load1298 = load <4 x i32>, ptr %i.xu, align 4, !alias.scope !148002, !noalias !148004
  %wide.load1299 = load <4 x i32>, ptr %i.xv, align 4, !alias.scope !148002, !noalias !148004
  %reverse1300 = shufflevector <4 x i32> %wide.load1298, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1301 = shufflevector <4 x i32> %wide.load1299, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1300, ptr %i.xr, align 4, !alias.scope !148001, !noalias !148003
  store <4 x i32> %reverse1301, ptr %i.xt, align 4, !alias.scope !148001, !noalias !148003
  %reverse1302 = shufflevector <4 x i32> %wide.load1296, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1303 = shufflevector <4 x i32> %wide.load1297, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse1302, ptr %i.xu, align 4, !alias.scope !148002, !noalias !148004
  store <4 x i32> %reverse1303, ptr %i.xv, align 4, !alias.scope !148002, !noalias !148004
  %index.next1304 = add nuw i64 %index1295, 8     ; 2 uses
  %i.xw = icmp eq i64 %index.next1304, %n.vec1293
  br i1 %i.xw, label %middle.block1305, label %vector.body1294, !llvm.loop !147463

middle.block1305:                                 ; preds = %vector.body1294
  %cmp.n1306 = icmp eq i64 %i.xo, %n.vec1293
  br i1 %cmp.n1306, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i.i, %middle.block1305
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i.i.i ], [ %n.vec1293, %middle.block1305 ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.yc, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i.preheader ] ; 3 uses
  %i.xx = xor i64 %.sroa.0.016.i.i.i, -1
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.xz = getelementptr [4 x i8], ptr %i.xp, i64 %i.xx ; 2 uses
  %i.ya = load i32, ptr %i.xy, align 4, !alias.scope !148001, !noalias !148003, !noundef !67
  %i.yb = load i32, ptr %i.xz, align 4, !alias.scope !148002, !noalias !148004
  store i32 %i.yb, ptr %i.xy, align 4, !alias.scope !148001, !noalias !148003
  store i32 %i.ya, ptr %i.xz, align 4, !alias.scope !148002, !noalias !148004
  %i.yc = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.yc, %i.xo
  br i1 %exitcond.not.i.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i, !llvm.loop !147464

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.i, %middle.block1305, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !147975
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !147975
  %i.yd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !147975 ; 6 uses
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %bb.da, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit76.i.i, !prof !104

bb.da:                                            ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #61
          to label %.noexc75.i.i unwind label %bb.dx, !noalias !147975

.noexc75.i.i:                                     ; preds = %bb.da
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit76.i.i: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !147975
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  store i32 %i.ux, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !147975
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 32
  store i64 0, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !147975
  store i64 1, ptr %i.f, align 8, !noalias !147975
  store ptr %i.yd, ptr %i.fr, align 8, !noalias !147975
  store i64 1, ptr %i.fs, align 8, !noalias !147975
  br label %bb.db

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !148005)
  %.val2.i.i272.i = load i64, ptr %i.f, align 8, !alias.scope !148005, !noalias !147975 ; 2 uses
  %i.yf = icmp eq i64 %.val2.i.i272.i, 0
  br i1 %i.yf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.yg = mul nuw i64 %.val2.i.i272.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i77.i.i, i64 noundef %i.yg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !148006
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.db:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit76.i.i
  %i.yh = phi ptr [ %i.yd, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit76.i.i ], [ %.val.i77.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 4 uses
  %i.yi = phi i64 [ 1, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit76.i.i ], [ %.pr.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 3 uses
  %i.yj = getelementptr [40 x i8], ptr %i.yh, i64 %i.yi ; 4 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 -8     ; 2 uses
  %i.yl = getelementptr i8, ptr %i.yj, i64 -24
  %i.ym = load i64, ptr %i.yk, align 8, !noalias !147975, !noundef !67 ; 2 uses
  %i.yn = load i64, ptr %i.yl, align 8, !noalias !147975, !noundef !67 ; 3 uses
  %i.yo = icmp ult i64 %i.yn, 2305843009213693952
  call void @llvm.assume(i1 %i.yo)
  %i.yp = icmp ult i64 %i.ym, %i.yn
  br i1 %i.yp, label %.lr.ph.i.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.db
  %i.yq = getelementptr i8, ptr %i.yj, i64 -32
  %.pre.i274.i = load ptr, ptr %i.yq, align 8, !noalias !147975
  br label %bb.dc

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !147975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !147975
  br label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.backedge.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit.backedge.i.i: ; preds = %.lr.ph.i.i.i266.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBC_B19_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.us, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !148007
  %.sroa.0461.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !148008 ; 6 uses
  %.sroa.4462.0.copyload.i = load ptr, ptr %i.fg, align 8, !noalias !148008 ; 4 uses
  %.sroa.5463.0.copyload.i = load i64, ptr %i.fh, align 8, !noalias !148008 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !147975
  %.val.i273.i = load ptr, ptr %i.j, align 8, !noalias !147975 ; 2 uses
  %.val37.i.i = load i64, ptr %i.fk, align 8, !noalias !147975, !noundef !67 ; 4 uses
  %i.yr = icmp eq i64 %.val37.i.i, 0
  br i1 %i.yr, label %bb.dy, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94.loopexit.i.i: ; preds = %.lr.ph.i.i85.i.i
  %exitcond.not.i = icmp eq i64 %i.zk, %i.yn
  br i1 %exitcond.not.i, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94._crit_edge.i.i, label %bb.dc

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.dw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94._crit_edge.i.i
  %.pr.i.i = phi i64 [ %i.ys, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94._crit_edge.i.i ], [ %i.ys, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %i.agf, %bb.dw ] ; 2 uses
  %.val.i77.i.i = phi ptr [ %i.yh, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94._crit_edge.i.i ], [ %i.yh, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i ], [ %i.agd, %bb.dw ] ; 2 uses
  %.not29.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not29.i.i, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.db

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94._crit_edge.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94.loopexit.i.i, %bb.db
  %i.ys = add nsw i64 %i.yi, -1                   ; 5 uses
  store i64 %i.ys, ptr %i.fs, align 8, !noalias !147975
  %i.yt = load i64, ptr %i.f, align 8, !range !70, !noalias !147975, !noundef !67
  %i.yu = icmp ult i64 %i.ys, %i.yt
  call void @llvm.assume(i1 %i.yu)
  %i.yv = icmp ult i64 %i.yi, 230584300921369397
  call void @llvm.assume(i1 %i.yv)
  %i.yw = getelementptr inbounds nuw [40 x i8], ptr %i.yh, i64 %i.ys ; 2 uses
  %.sroa.0168.0.copyload.i.i = load i64, ptr %i.yw, align 8, !noalias !147975 ; 2 uses
  %.0.val.off.i.i.i = add i64 %.sroa.0168.0.copyload.i.i, -1
  %switch.i.i.i = icmp ult i64 %.0.val.off.i.i.i, -2
  br i1 %switch.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94._crit_edge.i.i
  %.sroa.4169.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.sroa.4169.0.copyload.i.i = load ptr, ptr %.sroa.4169.0..sroa_idx.i.i, align 8, !noalias !147975, !nonnull !67, !noundef !67
  %i.yx = shl nuw i64 %.sroa.0168.0.copyload.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4169.0.copyload.i.i, i64 noundef %i.yx, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !147975
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBY_EjEEECskcxRuJ53GpR_9rustworkx.exit.i.i

.body.i.i:                                        ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i122.i.i, %bb.dv, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i113.i.i, %.loopexit.split-lp.i278.i, %.loopexit225.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.aga, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i122.i.i ], [ %i.aff, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i113.i.i ], [ %i.aga, %bb.dv ], [ %lpad.loopexit.i280.i, %.loopexit225.i.i ], [ %lpad.loopexit.split-lp.i279.i, %.loopexit.split-lp.i278.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148009)
  %.val.i379.i = load ptr, ptr %i.fr, align 8, !alias.scope !148009, !noalias !147975, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i.i = load i64, ptr %i.fs, align 8, !alias.scope !148009, !noalias !147975, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148010), !noalias !147981
  %i.yy = icmp eq i64 %.val1.i.i, 0
  br i1 %i.yy, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i380.i

.lr.ph.i.i.i380.i:                                ; preds = %.body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.za, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %.body.i.i ] ; 2 uses
  %i.yz = getelementptr inbounds nuw [40 x i8], ptr %.val.i379.i, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.za = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.yz, align 8, !alias.scope !148010, !noalias !148011 ; 2 uses
  %i.zb = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.zb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i380.i
  %i.zc = getelementptr i8, ptr %i.yz, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.zc, align 8, !alias.scope !148010, !noalias !148011, !nonnull !67, !noundef !67
  %i.zd = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.zd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !148012
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i380.i
  %i.ze = icmp eq i64 %i.za, %.val1.i.i
  br i1 %i.ze, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i380.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBC_EjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %.body.i.i
  %.val2.i381.i = load i64, ptr %i.f, align 8, !alias.scope !148009, !noalias !147975 ; 2 uses
  %i.zf = icmp eq i64 %.val2.i381.i, 0
  br i1 %i.zf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_BG_EjEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.zg = mul nuw i64 %.val2.i381.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i379.i, i64 noundef %i.zg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !148011
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i

.loopexit225.i.i:                                 ; preds = %bb.dj, %bb.dh
  %lpad.loopexit.i280.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i278.i:                        ; preds = %bb.ds
  %lpad.loopexit.split-lp.i279.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.dc:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94.loopexit.i.i, %.lr.ph.i.i
  %i.zh = phi i64 [ %i.ym, %.lr.ph.i.i ], [ %i.zk, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94.loopexit.i.i ] ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i274.i, i64 %i.zh
  %i.zj = load i32, ptr %i.zi, align 4, !noalias !147975, !noundef !67 ; 6 uses
  %i.zk = add nsw i64 %i.zh, 1                    ; 3 uses
  store i64 %i.zk, ptr %i.yk, align 8, !noalias !147975
  call void @llvm.experimental.noalias.scope.decl(metadata !148013)
  %i.zl = load i64, ptr %i.fi, align 8, !alias.scope !148013, !noalias !147975, !noundef !67
  %i.zm = icmp eq i64 %i.zl, 0
  br i1 %i.zm, label %select.unfold206.loopexit248.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.val.i79.i.i = load i64, ptr %i.fj, align 8, !alias.scope !148014, !noalias !148015, !noundef !67
  %i.zn = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !148016, !noundef !67
  %i.zo = zext i32 %i.zj to i64                   ; 2 uses
  %i.zp = xor i64 %.val.i79.i.i, %i.zo
  %i.zq = zext i64 %i.zp to i128
  %i.zr = zext i64 %i.zn to i128
  %i.zs = mul nuw i128 %i.zr, %i.zq               ; 2 uses
  %i.zt = lshr i128 %i.zs, 64
  %i.zu = xor i128 %i.zt, %i.zs
  %i.zv = trunc i128 %i.zu to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148017)
  call void @llvm.experimental.noalias.scope.decl(metadata !148018)
  %i.zw = lshr i64 %i.zv, 57
  %i.zx = trunc nuw nsw i64 %i.zw to i8
  %i.zy = load i64, ptr %i.fk, align 8, !alias.scope !148019, !noalias !148020, !noundef !67 ; 2 uses
  %i.zz = load ptr, ptr %i.j, align 8, !alias.scope !148019, !noalias !148020, !nonnull !67, !noundef !67 ; 2 uses
  %i.aaa = insertelement <16 x i8> poison, i8 %i.zx, i64 0
  %i.aab = shufflevector <16 x i8> %i.aaa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %bb.dd
  %.sroa.011.0.i.i.i80.i.i = phi i64 [ 0, %bb.dd ], [ %i.aas, %bb.dg ]
  %.pn.i.i81.i.i = phi i64 [ %i.zv, %bb.dd ], [ %i.aat, %bb.dg ]
  %.sroa.01.0.i.i.i82.i.i = and i64 %.pn.i.i81.i.i, %i.zy ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 %.sroa.01.0.i.i.i82.i.i
  %.sroa.0.0.copyload.i24.i.i83.i.i = load <16 x i8>, ptr %i.aac, align 1, !noalias !148021 ; 2 uses
  %i.aad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i83.i.i, %i.aab
  %i.aae = bitcast <16 x i1> %i.aad to i16        ; 2 uses
  %.not.i.not30.i.i84.i.i = icmp eq i16 %i.aae, 0
  br i1 %.not.i.not30.i.i84.i.i, label %._crit_edge.i.i89.i.i, label %.lr.ph.i.i85.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %bb.de, %bb.df
  %.sroa.05.0.i31.i.i86.i.i = phi i16 [ %i.aar, %bb.df ], [ %i.aae, %bb.de ] ; 3 uses
  %i.aaf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i86.i.i, i1 true)
  %i.aag = zext nneg i16 %i.aaf to i64
  %i.aah = add i64 %.sroa.01.0.i.i.i82.i.i, %i.aag
  %i.aai = and i64 %i.aah, %i.zy
  %i.aaj = sub nsw i64 0, %i.aai
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aaj
  %i.aal = getelementptr inbounds i8, ptr %i.aak, i64 -4
  %.val2.i.i.i87.i.i = load i32, ptr %i.aal, align 4, !noalias !148022, !noundef !67
  %i.aam = icmp eq i32 %i.zj, %.val2.i.i.i87.i.i
  br i1 %i.aam, label %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE9get_innerBO_ECskcxRuJ53GpR_9rustworkx.exit94.loopexit.i.i, label %bb.df, !prof !77

._crit_edge.i.i89.i.i:                            ; preds = %bb.df, %bb.de
  %i.aan = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i83.i.i, splat (i8 -1)
  %i.aao = bitcast <16 x i1> %i.aan to i16
  %i.aap = icmp eq i16 %i.aao, 0
  br i1 %i.aap, label %bb.dg, label %select.unfold206.i.i, !prof !71

bb.df:                                            ; preds = %.lr.ph.i.i85.i.i
  %i.aaq = add i16 %.sroa.05.0.i31.i.i86.i.i, -1
  %i.aar = and i16 %i.aaq, %.sroa.05.0.i31.i.i86.i.i ; 2 uses
  %.not.i.not.i.i88.i.i = icmp eq i16 %i.aar, 0
  br i1 %.not.i.not.i.i88.i.i, label %._crit_edge.i.i89.i.i, label %.lr.ph.i.i85.i.i

bb.dg:                                            ; preds = %._crit_edge.i.i89.i.i
  %i.aas = add i64 %.sroa.011.0.i.i.i80.i.i, 16   ; 2 uses
  %i.aat = add i64 %.sroa.01.0.i.i.i82.i.i, %i.aas
  br label %bb.de

select.unfold206.loopexit248.i.i:                 ; preds = %bb.dc
  %.pre265.i.i = zext i32 %i.zj to i64
  br label %select.unfold206.i.i

select.unfold206.i.i:                             ; preds = %._crit_edge.i.i89.i.i, %select.unfold206.loopexit248.i.i
  %.pre-phi.i.i = phi i64 [ %.pre265.i.i, %select.unfold206.loopexit248.i.i ], [ %i.zo, %._crit_edge.i.i89.i.i ] ; 4 uses
  %i.aau = getelementptr i8, ptr %i.yj, i64 -16
  %i.aav = load i32, ptr %i.aau, align 8, !noalias !147975, !noundef !67
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = load i64, ptr %i.fh, align 8, !alias.scope !148023, !noalias !147975, !noundef !67 ; 3 uses
  %i.aay = load i64, ptr %i.i, align 8, !range !70, !alias.scope !148023, !noalias !147975, !noundef !67
  %i.aaz = icmp eq i64 %i.aax, %i.aay
  br i1 %i.aaz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %select.unfold206.i.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #62
          to label %bb.di unwind label %.loopexit225.i.i, !noalias !147975

bb.di:                                            ; preds = %bb.dh, %select.unfold206.i.i
  %i.aba = load ptr, ptr %i.fg, align 8, !alias.scope !148023, !noalias !147975, !nonnull !67, !noundef !67
  %i.abb = getelementptr inbounds nuw [16 x i8], ptr %i.aba, i64 %i.aax ; 2 uses
  store i64 %i.aaw, ptr %i.abb, align 8, !noalias !147975
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  store i64 %.pre-phi.i.i, ptr %i.abc, align 8, !noalias !147975
  %i.abd = add i64 %i.aax, 1
  store i64 %i.abd, ptr %i.fh, align 8, !alias.scope !148023, !noalias !147975
  call void @llvm.experimental.noalias.scope.decl(metadata !148024)
  %.val.i96.i.i = load i64, ptr %i.fj, align 8, !alias.scope !148025, !noalias !148026, !noundef !67
  %i.abe = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !148027, !noundef !67
  %i.abf = xor i64 %.val.i96.i.i, %.pre-phi.i.i
  %i.abg = zext i64 %i.abf to i128
  %i.abh = zext i64 %i.abe to i128
  %i.abi = mul nuw i128 %i.abh, %i.abg            ; 2 uses
  %i.abj = lshr i128 %i.abi, 64
  %i.abk = xor i128 %i.abj, %i.abi
  %i.abl = trunc i128 %i.abk to i64               ; 2 uses
  %i.abm = load i64, ptr %i.ft, align 8, !alias.scope !148028, !noalias !147975, !noundef !67
  %i.abn = icmp eq i64 %i.abm, 0
  br i1 %i.abn, label %bb.dj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, !prof !71

bb.dj:                                            ; preds = %bb.di
  %i.abo = invoke { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i64 noundef 1, ptr noundef nonnull align 8 %i.fj, i1 noundef zeroext true) #62
          to label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i unwind label %.loopexit225.i.i, !noalias !147975 ; 0 uses

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.dj, %bb.di
  %.val.i.i97.i.i = load ptr, ptr %i.j, align 8, !alias.scope !148029, !noalias !147975, !nonnull !67, !noundef !67 ; 8 uses
  %.val5.i.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !148029, !noalias !147975, !noundef !67 ; 4 uses
  %i.abp = lshr i64 %i.abl, 57
  %i.abq = trunc nuw nsw i64 %i.abp to i8         ; 3 uses
  %i.abr = insertelement <16 x i8> poison, i8 %i.abq, i64 0
  %i.abs = shufflevector <16 x i8> %i.abr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dn, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.pn.i.i.i.i275.i = phi i64 [ %i.abl, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.acr, %bb.dn ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i, %bb.dn ]
  %.sroa.01.0.i.i.i98.i.i = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %.sroa.01.122.i.i.i.i.i, %bb.dn ]
  %i.abt = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.acq, %bb.dn ]
  %.sroa.0.017.i.i.i.i.i = and i64 %.pn.i.i.i.i275.i, %.val5.i.i.i.i ; 4 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.val.i.i97.i.i, i64 %.sroa.0.017.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.abu, align 1, !noalias !148030 ; 3 uses
  %i.abv = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %i.abs
  %i.abw = bitcast <16 x i1> %i.abv to i16        ; 2 uses
  %.not28.i.i.i.i.i = icmp eq i16 %i.abw, 0
  br i1 %.not28.i.i.i.i.i, label %._crit_edge.i.i.i.i276.i, label %.lr.ph.i.i.i99.i.i

.lr.ph.i.i.i99.i.i:                               ; preds = %bb.dk, %bb.dl
  %.sroa.05.029.i.i.i.i.i = phi i16 [ %i.acg, %bb.dl ], [ %i.abw, %bb.dk ] ; 3 uses
  %i.abx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i.i.i.i, i1 true)
  %i.aby = zext nneg i16 %i.abx to i64
  %i.abz = add i64 %.sroa.0.017.i.i.i.i.i, %i.aby
  %i.aca = and i64 %i.abz, %.val5.i.i.i.i
  %i.acb = sub nsw i64 0, %i.aca
  %i.acc = getelementptr inbounds [4 x i8], ptr %.val.i.i97.i.i, i64 %i.acb
  %i.acd = getelementptr inbounds i8, ptr %i.acc, i64 -4
  %.val2.i.i.i100.i.i = load i32, ptr %i.acd, align 4, !noalias !148031, !noundef !67
  %i.ace = icmp eq i32 %i.zj, %.val2.i.i.i100.i.i
  br i1 %i.ace, label %_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.dl, !prof !77

._crit_edge.i.i.i.i276.i:                         ; preds = %bb.dl, %bb.dk
  %.not11.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i98.i.i, 1
  br i1 %.not11.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.dm, !prof !71

bb.dl:                                            ; preds = %.lr.ph.i.i.i99.i.i
  %i.acf = add i16 %.sroa.05.029.i.i.i.i.i, -1
  %i.acg = and i16 %i.acf, %.sroa.05.029.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.acg, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i276.i, label %.lr.ph.i.i.i99.i.i

bb.dm:                                            ; preds = %._crit_edge.i.i.i.i276.i
  %i.ach = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, zeroinitializer
  %i.aci = bitcast <16 x i1> %i.ach to i16        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.aci, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dn, label %.thread24.i.i.i.i.i, !prof !71

.thread24.i.i.i.i.i:                              ; preds = %bb.dm
  %i.acj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aci, i1 true)
  %i.ack = zext nneg i16 %i.acj to i64
  %i.acl = add i64 %.sroa.0.017.i.i.i.i.i, %i.ack
  %i.acm = and i64 %i.acl, %.val5.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread24.i.i.i.i.i, %._crit_edge.i.i.i.i276.i
  %.sroa.4.121.i.i.i.i.i = phi i64 [ %i.acm, %.thread24.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i, %._crit_edge.i.i.i.i276.i ] ; 3 uses
  %i.acn = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1)
  %i.aco = bitcast <16 x i1> %i.acn to i16
  %i.acp = icmp eq i16 %i.aco, 0
  br i1 %i.acp, label %bb.dn, label %bb.do, !prof !71

bb.dn:                                            ; preds = %.thread.i.i.i.i.i, %bb.dm
  %.sroa.01.122.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.dm ]
  %.sroa.4.120.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.dm ]
  %i.acq = add i64 %i.abt, 16                     ; 2 uses
  %i.acr = add i64 %i.acq, %.sroa.0.017.i.i.i.i.i
  br label %bb.dk

bb.do:                                            ; preds = %.thread.i.i.i.i.i
  %i.acs = getelementptr inbounds nuw i8, ptr %.val.i.i97.i.i, i64 %.sroa.4.121.i.i.i.i.i
  %i.act = load i8, ptr %i.acs, align 1, !noalias !147975, !noundef !67 ; 2 uses
  %i.acu = icmp sgt i8 %i.act, -1
  br i1 %i.acu, label %bb.dp, label %bb.dq, !prof !71

bb.dp:                                            ; preds = %bb.do
  %.val62.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i97.i.i, align 16, !noalias !147975
  %i.acv = icmp slt <16 x i8> %.val62.i.i.i.i.i.i, zeroinitializer
  %i.acw = bitcast <16 x i1> %i.acv to i16        ; 2 uses
  %.not.i22.i.i.i.i.i = icmp ne i16 %i.acw, 0
  %i.acx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.acw, i1 true)
  %i.acy = zext nneg i16 %i.acx to i64            ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i97.i.i, i64 %i.acy
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !148032
end_hunk_15
begin_hunk_16_@_RNvNtCskcxRuJ53GpR_9rustworkx8dag_algo36___pyfunction_dag_longest_path_length:bb.a
  %unroll_iter = and i64 %i.ar, 4294967288
  br label %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.loopexit.unr-lcssa:  ; preds = %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i.i.i, label %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil.preheader

_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil.preheader: ; preds = %._crit_edge.thread.i.i.i.i.i.loopexit.unr-lcssa, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader
  %.sroa.0.020.i.i.i.i.i.epil.init = phi ptr [ %i.av, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader ], [ %i.bg, %._crit_edge.thread.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod288 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod288)
  br label %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil

_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil: ; preds = %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil.preheader
  %.sroa.0.020.i.i.i.i.i.epil = phi ptr [ %i.ay, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil ], [ %.sroa.0.020.i.i.i.i.i.epil.init, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil ], [ 0, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.020.i.i.i.i.i.epil, align 8, !noalias !148304
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i.i.i, label %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil, !llvm.loop !148253

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.thread.i.i.i.i.i.loopexit.unr-lcssa, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.0.lcssa27.i.i.i.i.i = phi ptr [ %i.av, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.bg, %._crit_edge.thread.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ay, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa27.i.i.i.i.i, align 8, !noalias !148305
  br label %.lr.ph209.i.i.i

_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader.new
  %.sroa.0.020.i.i.i.i.i = phi ptr [ %i.av, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader.new ], [ %i.bg, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.preheader.new ], [ %niter.next.7, %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  store i64 0, ptr %.sroa.0.020.i.i.i.i.i, align 8, !noalias !148304
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 24
  store i64 0, ptr %i.az, align 8, !noalias !148304
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 48
  store i64 0, ptr %i.ba, align 8, !noalias !148304
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 72
  store i64 0, ptr %i.bb, align 8, !noalias !148304
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 96
  store i64 0, ptr %i.bc, align 8, !noalias !148304
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 120
  store i64 0, ptr %i.bd, align 8, !noalias !148304
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 144
  store i64 0, ptr %i.be, align 8, !noalias !148304
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 168
  store i64 0, ptr %i.bf, align 8, !noalias !148304
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i.i.i, i64 192 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i.i.i.loopexit.unr-lcssa, label %_RNvXs4_NtCslwFuT2d6ECx_4core6optionINtB5_6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtB7_5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

.lr.ph209.i.i.i:                                  ; preds = %bb.j, %bb.i, %._crit_edge.thread.i.i.i.i.i
  %i.bh = phi ptr [ %i.av, %._crit_edge.thread.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.i ], [ inttoptr (i64 8 to ptr), %bb.j ] ; 10 uses
  %.sroa.4.030.i.i.i.i = phi i64 [ %i.at, %._crit_edge.thread.i.i.i.i.i ], [ 0, %bb.i ], [ 0, %bb.j ] ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i) ]
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !148306, !noalias !148307, !nonnull !67, !noundef !67 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !148306, !noalias !148307, !noundef !67 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sink.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph209.i.i.split.us.i, label %.lr.ph209.i.i.split.i

.lr.ph209.i.i.split.us.i:                         ; preds = %.lr.ph209.i.i.i, %bb.q
  %.sroa.7110.0208.i.i.us.i = phi ptr [ %i.bs, %bb.q ], [ %.sroa.4.0.copyload.i.i.i, %.lr.ph209.i.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.7110.0208.i.i.us.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %.sroa.7110.0208.i.i.us.i, align 4, !noalias !148308, !noundef !67 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148309)
  call void @llvm.experimental.noalias.scope.decl(metadata !148310)
  %i.bu = zext i32 %i.bt to i64                   ; 5 uses
  %i.bv = icmp ugt i64 %.val53.i.i.i, %i.bu
  br i1 %i.bv, label %bb.m, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i

bb.m:                                             ; preds = %.lr.ph209.i.i.split.us.i
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.val52.i.i.i, i64 %i.bu ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !148311, !noundef !67
  %.not.i.i.i.i.i.us.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.us.i, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i: ; preds = %bb.m
  %.sroa.5.0..sroa_idx.i.i.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %.sroa.5.0.copyload.i.i.i.i.us.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.us.i, align 4, !noalias !148311
  %i.by = zext i32 %.sroa.5.0.copyload.i.i.i.i.us.i to i64
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i, %bb.m, %.lr.ph209.i.i.split.us.i
  %.sroa.5.0.i.i74.i.i.us.i = phi i64 [ %i.by, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i ], [ 4294967295, %.lr.ph209.i.i.split.us.i ], [ 4294967295, %bb.m ] ; 2 uses
  %i.bz = icmp ugt i64 %i.bm, %.sroa.5.0.i.i74.i.i.us.i
  br i1 %i.bz, label %.lr.ph.i.i.us.us.i, label %._crit_edge.i.i.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i, %bb.p
  %i.ca = phi i64 [ %i.ck, %bb.p ], [ %.sroa.5.0.i.i74.i.i.us.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i ]
  %.sroa.0.0.i85206.i.i.us.us.i = phi i64 [ %spec.select.i.i.i.i.us.us.i, %bb.p ], [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i ] ; 2 uses
  %.sroa.7.0.i205.i.i.us.us.i = phi i32 [ %spec.select12.i.i.i.i.us.us.i, %bb.p ], [ %i.bt, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i ]
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !148312, !noundef !67
  %i.ce = load ptr, ptr %i.cb, align 8, !noalias !148312, !noundef !67
  %.not43.i.i.i.i.us.us.i = icmp eq ptr %i.ce, null
  br i1 %.not43.i.i.i.i.us.us.i, label %.invoke.i.i.i, label %bb.n, !prof !71

bb.n:                                             ; preds = %.lr.ph.i.i.us.us.i
  %.sroa.9.0.in.i.i.i.us.us.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.9.0.i.i.i.us.us.i = load i64, ptr %.sroa.9.0.in.i.i.i.us.us.i, align 8, !noalias !148312 ; 2 uses
  %.sroa.615.24.extract.trunc.i.i.i.us.us.i = trunc i64 %.sroa.9.0.i.i.i.us.us.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !148313
  call void @llvm.experimental.noalias.scope.decl(metadata !148314)
  call void @llvm.experimental.noalias.scope.decl(metadata !148315)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148313
  %i.cf = and i64 %.sroa.9.0.i.i.i.us.us.i, 4294967295 ; 3 uses
  %i.cg = icmp ugt i64 %.sroa.4.030.i.i.i.i, %i.cf
  br i1 %i.cg, label %bb.o, label %.split56.us.i

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.cf ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.us.us.i = load i64, ptr %i.ch, align 8, !noalias !148313
  %i.ci = trunc nuw i64 %.sroa.04.0.copyload.i.i.i.i.us.us.i to i1
  br i1 %i.ci, label %bb.p, label %.invoke.i.i.i, !prof !77

bb.p:                                             ; preds = %bb.o
  %.sroa.45.0..sroa_idx.i.i.i.i.us.us.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.45.0.copyload.i.i.i.i.us.us.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i.i.us.us.i, align 8, !noalias !148313
  %i.cj = add i64 %.sroa.45.0.copyload.i.i.i.i.us.us.i, 1 ; 2 uses
  %.not.i5.i.i.i.us.us.i = icmp ult i64 %i.cj, %.sroa.0.0.i85206.i.i.us.us.i
  %spec.select.i.i.i.i.us.us.i = call i64 @llvm.umax.i64(i64 %i.cj, i64 %.sroa.0.0.i85206.i.i.us.us.i) ; 2 uses
  %spec.select12.i.i.i.i.us.us.i = select i1 %.not.i5.i.i.i.us.us.i, i32 %.sroa.7.0.i205.i.i.us.us.i, i32 %.sroa.615.24.extract.trunc.i.i.i.us.us.i ; 2 uses
  %i.ck = zext i32 %i.cd to i64                   ; 2 uses
  %i.cl = icmp ugt i64 %i.bm, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.us.us.i, label %._crit_edge.i.i.us.i

._crit_edge.i.i.us.i:                             ; preds = %bb.p, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i
  %.sroa.7.0.i.lcssa.i.i.us.i = phi i32 [ %i.bt, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i ], [ %spec.select12.i.i.i.i.us.us.i, %bb.p ]
  %.sroa.0.0.i85.lcssa.i.i.us.i = phi i64 [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.us.i ], [ %spec.select.i.i.i.i.us.us.i, %bb.p ]
  %i.cm = icmp ugt i64 %.sroa.4.030.i.i.i.i, %i.bu
  br i1 %i.cm, label %bb.q, label %.split64.us.i

bb.q:                                             ; preds = %._crit_edge.i.i.us.i
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bu ; 3 uses
  store i64 1, ptr %i.cn, align 8, !noalias !148298
  %.sroa.413.0..sroa_idx.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %.sroa.0.0.i85.lcssa.i.i.us.i, ptr %.sroa.413.0..sroa_idx.i.i.us.i, align 8, !noalias !148298
  %.sroa.514.0..sroa_idx.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 %.sroa.7.0.i.lcssa.i.i.us.i, ptr %.sroa.514.0..sroa_idx.i.i.us.i, align 8, !noalias !148298
  %i.co = icmp eq ptr %i.bs, %i.bi
  br i1 %i.co, label %._crit_edge210.i.i.i, label %.lr.ph209.i.i.split.us.i

.body.i.i.i:                                      ; preds = %bb.aa, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cr, %bb.r ], [ %i.dy, %bb.aa ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.cp = icmp eq i64 %i.ah, 0
  br i1 %i.cp, label %bb.ak, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.body.i.i.i
  %i.cq = shl nuw i64 %i.ah, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !148316
  br label %bb.ak

bb.r:                                             ; preds = %.split64.us.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph209.i.i.split.i:                            ; preds = %.lr.ph209.i.i.i, %bb.ai
  %.sroa.7110.0208.i.i.i = phi ptr [ %i.cs, %bb.ai ], [ %.sroa.4.0.copyload.i.i.i, %.lr.ph209.i.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.7110.0208.i.i.i, i64 4 ; 2 uses
  %i.ct = load i32, ptr %.sroa.7110.0208.i.i.i, align 4, !noalias !148308, !noundef !67 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148309)
  call void @llvm.experimental.noalias.scope.decl(metadata !148310)
  %i.cu = zext i32 %i.ct to i64                   ; 5 uses
  %i.cv = icmp ugt i64 %.val53.i.i.i, %i.cu
  br i1 %i.cv, label %bb.s, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.s:                                             ; preds = %.lr.ph209.i.i.split.i
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.val52.i.i.i, i64 %i.cu ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !148311, !noundef !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.s
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !148311
  %i.cy = zext i32 %.sroa.5.0.copyload.i.i.i.i.i to i64
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i

._crit_edge210.i.i.i:                             ; preds = %bb.ai, %bb.q
  %i.cz = icmp eq i64 %i.ah, 0
  br i1 %i.cz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit76.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i75.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i75.i.i.i: ; preds = %._crit_edge210.i.i.i
  %i.da = shl nuw i64 %i.ah, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !148317
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit76.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit76.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i75.i.i.i, %._crit_edge210.i.i.i
  %.idx252 = mul nsw i64 %.sroa.4.030.i.i.i.i, 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx252 ; 3 uses
  %.not.i77.i.i.i250 = icmp eq i64 %.sroa.4.030.i.i.i.i, 0
  br i1 %.not.i77.i.i.i250, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i80.i.i.i, label %.lr.ph251

bb.t:                                             ; preds = %.lr.ph251
  %.not.i77.i.i.i = icmp eq ptr %i.dd, %i.db
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i77.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i80.i.i.i, label %.lr.ph251

.lr.ph251:                                        ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit76.i.i.i, %bb.t
  %indvar = phi i64 [ %indvar.next, %bb.t ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit76.i.i.i ] ; 2 uses
  %i.dc = phi ptr [ %i.dd, %bb.t ], [ %i.bh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit76.i.i.i ] ; 7 uses
  %.sroa.08.0.copyload.i.i.i.i = load i64, ptr %i.dc, align 8, !noalias !148318
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 5 uses
  %i.de = trunc nuw i64 %.sroa.08.0.copyload.i.i.i.i to i1
  br i1 %i.de, label %bb.u, label %bb.t

bb.u:                                             ; preds = %.lr.ph251
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.59.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 8, !noalias !148318 ; 7 uses
  %.not14.i.i.i.i = icmp eq ptr %i.dd, %i.db
  br i1 %.not14.i.i.i.i, label %_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldTjjENCINvNtNtB2x_8adapters10filter_map19filter_map_try_foldBX_B3g_B3g_IBY_B3g_ENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo19longest_path_lengthRINtNtB1D_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6i_5types3any5PyAnyEB6d_ENCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB7o_23dag_longest_path_length0jE0jNtNtB6i_3err5PyErrEs_0NCB4z_s0_0E0B4o_EB7q_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.u
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.sroa.610.0.copyload.i.i.i.i = load i32, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !noalias !148318 ; 2 uses
  %5 = zext i32 %.sroa.610.0.copyload.i.i.i.i to i64 ; 3 uses
  %6 = add nsw i64 %.idx252, -48
  %7 = mul i64 %indvar, -24
  %8 = add i64 %7, %6                             ; 2 uses
  %9 = udiv i64 %8, 24
  %10 = and i64 %9, 1
  %lcmp.mod291.not.not = icmp eq i64 %10, 0
  br i1 %lcmp.mod291.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.preheader.i.i.i
  %.sroa.010.0.copyload.i.i.i.i.prol = load i64, ptr %i.dd, align 8, !noalias !148319
  %11 = getelementptr inbounds nuw i8, ptr %i.dc, i64 48 ; 2 uses
  %12 = trunc nuw i64 %.sroa.010.0.copyload.i.i.i.i.prol to i1
  br i1 %12, label %bb.v, label %.lr.ph.i.i.i.i.prol.loopexit

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.prol
  %.sroa.612.0..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.sroa.612.0.copyload.i.i.i.i.prol = load i32, ptr %.sroa.612.0..sroa_idx.i.i.i.i.prol, align 8, !noalias !148319 ; 2 uses
  %.sroa.511.0..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %.sroa.511.0.copyload.i.i.i.i.prol = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i.i.prol, align 8, !noalias !148319 ; 3 uses
  %i.df = zext i32 %.sroa.612.0.copyload.i.i.i.i.prol to i64
  %cond.i.i.i.i.i.i.prol = icmp eq i64 %.sroa.59.0.copyload.i.i.i.i, %.sroa.511.0.copyload.i.i.i.i.prol
  %13 = icmp ugt i32 %.sroa.610.0.copyload.i.i.i.i, %.sroa.612.0.copyload.i.i.i.i.prol
  %14 = icmp ugt i64 %.sroa.59.0.copyload.i.i.i.i, %.sroa.511.0.copyload.i.i.i.i.prol
  %15 = select i1 %cond.i.i.i.i.i.i.prol, i1 %13, i1 %14 ; 2 uses
  %spec.select.i.i.i.i.i.i.prol = select i1 %15, i64 %.sroa.59.0.copyload.i.i.i.i, i64 %.sroa.511.0.copyload.i.i.i.i.prol ; 2 uses
  %spec.select4.i.i.i.i.i.i.prol = select i1 %15, i64 %5, i64 %i.df
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %bb.v, %.lr.ph.i.preheader.i.i.i
  %.sink9.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader.i.i.i ], [ %spec.select.i.i.i.i.i.i.prol, %bb.v ], [ %.sroa.59.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi i64 [ %.sroa.59.0.copyload.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %spec.select.i.i.i.i.i.i.prol, %bb.v ], [ %.sroa.59.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.prol ]
  %.sroa.4.015.i.i.i.i.unr = phi i64 [ %5, %.lr.ph.i.preheader.i.i.i ], [ %spec.select4.i.i.i.i.i.i.prol, %bb.v ], [ %5, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.dd, %.lr.ph.i.preheader.i.i.i ], [ %11, %bb.v ], [ %11, %.lr.ph.i.i.i.i.prol ]
  %16 = icmp ult i64 %8, 24
  br i1 %16, label %_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldTjjENCINvNtNtB2x_8adapters10filter_map19filter_map_try_foldBX_B3g_B3g_IBY_B3g_ENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo19longest_path_lengthRINtNtB1D_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6i_5types3any5PyAnyEB6d_ENCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB7o_23dag_longest_path_length0jE0jNtNtB6i_3err5PyErrEs_0NCB4z_s0_0E0B4o_EB7q_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %bb.x
  %.sroa.0.016.i.i.i.i = phi i64 [ %.sink9.i.i.i.i.i.1, %bb.x ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.4.015.i.i.i.i = phi i64 [ %.sink.i.i.i.i.i.1, %bb.x ], [ %.sroa.4.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.dg = phi ptr [ %22, %bb.x ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %.sroa.010.0.copyload.i.i.i.i = load i64, ptr %i.dg, align 8, !noalias !148319
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = trunc nuw i64 %.sroa.010.0.copyload.i.i.i.i to i1
  br i1 %i.di, label %17, label %.lr.ph.i.i.i.i.1

17:                                               ; preds = %.lr.ph.i.i.i.i
  %.sroa.612.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.612.0.copyload.i.i.i.i = load i32, ptr %.sroa.612.0..sroa_idx.i.i.i.i, align 8, !noalias !148319
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.511.0.copyload.i.i.i.i = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !148319 ; 3 uses
  %18 = zext i32 %.sroa.612.0.copyload.i.i.i.i to i64 ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %.sroa.0.016.i.i.i.i, %.sroa.511.0.copyload.i.i.i.i
  %19 = icmp ugt i64 %.sroa.4.015.i.i.i.i, %18
  %20 = icmp ugt i64 %.sroa.0.016.i.i.i.i, %.sroa.511.0.copyload.i.i.i.i
  %21 = select i1 %cond.i.i.i.i.i.i, i1 %19, i1 %20 ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %21, i64 %.sroa.0.016.i.i.i.i, i64 %.sroa.511.0.copyload.i.i.i.i
  %spec.select4.i.i.i.i.i.i = select i1 %21, i64 %.sroa.4.015.i.i.i.i, i64 %18
  br label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %17, %.lr.ph.i.i.i.i
  %.sink9.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %17 ], [ %.sroa.0.016.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i.i = phi i64 [ %spec.select4.i.i.i.i.i.i, %17 ], [ %.sroa.4.015.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.010.0.copyload.i.i.i.i.1 = load i64, ptr %i.dh, align 8, !noalias !148319
  %22 = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 2 uses
  %23 = trunc nuw i64 %.sroa.010.0.copyload.i.i.i.i.1 to i1
  br i1 %23, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.1
  %.sroa.612.0..sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %.sroa.612.0.copyload.i.i.i.i.1 = load i32, ptr %.sroa.612.0..sroa_idx.i.i.i.i.1, align 8, !noalias !148319
  %.sroa.511.0..sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %.sroa.511.0.copyload.i.i.i.i.1 = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i.i.1, align 8, !noalias !148319 ; 3 uses
  %i.dj = zext i32 %.sroa.612.0.copyload.i.i.i.i.1 to i64 ; 2 uses
  %cond.i.i.i.i.i.i.1 = icmp eq i64 %.sink9.i.i.i.i.i, %.sroa.511.0.copyload.i.i.i.i.1
  %i.dk = icmp ugt i64 %.sink.i.i.i.i.i, %i.dj
  %i.dl = icmp ugt i64 %.sink9.i.i.i.i.i, %.sroa.511.0.copyload.i.i.i.i.1
  %i.dm = select i1 %cond.i.i.i.i.i.i.1, i1 %i.dk, i1 %i.dl ; 2 uses
  %spec.select.i.i.i.i.i.i.1 = select i1 %i.dm, i64 %.sink9.i.i.i.i.i, i64 %.sroa.511.0.copyload.i.i.i.i.1
  %spec.select4.i.i.i.i.i.i.1 = select i1 %i.dm, i64 %.sink.i.i.i.i.i, i64 %i.dj
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.1
  %.sink9.i.i.i.i.i.1 = phi i64 [ %spec.select.i.i.i.i.i.i.1, %bb.w ], [ %.sink9.i.i.i.i.i, %.lr.ph.i.i.i.i.1 ] ; 2 uses
  %.sink.i.i.i.i.i.1 = phi i64 [ %spec.select4.i.i.i.i.i.i.1, %bb.w ], [ %.sink.i.i.i.i.i, %.lr.ph.i.i.i.i.1 ]
  %.not.i79.i.i.i.1 = icmp eq ptr %22, %i.db
  br i1 %.not.i79.i.i.i.1, label %_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldTjjENCINvNtNtB2x_8adapters10filter_map19filter_map_try_foldBX_B3g_B3g_IBY_B3g_ENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo19longest_path_lengthRINtNtB1D_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6i_5types3any5PyAnyEB6d_ENCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB7o_23dag_longest_path_length0jE0jNtNtB6i_3err5PyErrEs_0NCB4z_s0_0E0B4o_EB7q_.exit.i.i.i, label %.lr.ph.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i80.i.i.i: ; preds = %bb.t, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit76.i.i.i
  %i.dn = mul nuw nsw i64 %.sroa.4.030.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !148320
  br label %bb.an

_RINvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB6_8IntoIterINtNtCslwFuT2d6ECx_4core6option6OptionTjNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldTjjENCINvNtNtB2x_8adapters10filter_map19filter_map_try_foldBX_B3g_B3g_IBY_B3g_ENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algo19longest_path_lengthRINtNtB1D_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6i_5types3any5PyAnyEB6d_ENCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB7o_23dag_longest_path_length0jE0jNtNtB6i_3err5PyErrEs_0NCB4z_s0_0E0B4o_EB7q_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %bb.x, %bb.u
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i.i.i, %bb.u ], [ %.sink9.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.sink9.i.i.i.i.i.1, %bb.x ]
  %i.do = mul nuw nsw i64 %.sroa.4.030.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !148321
  br label %_RINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB2_23dag_longest_path_length0jEB4_.exit.i

.loopexit.i.i.i:                                  ; preds = %bb.ac, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.split56.us.i, %.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.s, %.lr.ph209.i.i.split.i
  %.sroa.5.0.i.i74.i.i.i = phi i64 [ %i.cy, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 4294967295, %.lr.ph209.i.i.split.i ], [ 4294967295, %bb.s ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bm, %.sroa.5.0.i.i74.i.i.i
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ah
  %i.dq = phi i64 [ %i.eh, %bb.ah ], [ %.sroa.5.0.i.i74.i.i.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %.sroa.0.0.i85206.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.ah ], [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %.sroa.7.0.i205.i.i.i = phi i32 [ %spec.select12.i.i.i.i.i, %bb.ah ], [ %i.ct, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !noalias !148312, !noundef !67
  %i.du = load ptr, ptr %i.dr, align 8, !noalias !148312, !noundef !67
  %.not43.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not43.i.i.i.i.i, label %.invoke.i.i.i, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, !prof !71

.invoke.i.i.i:                                    ; preds = %bb.ag, %.lr.ph.i.i.i, %bb.o, %.lr.ph.i.i.us.us.i
  %.us-phi.i = phi ptr [ @1220, %bb.o ], [ @4319, %.lr.ph.i.i.us.us.i ], [ @1220, %bb.ag ], [ @4319, %.lr.ph.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.us-phi.i) #60
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !148298

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.9.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.9.0.i.i.i.i = load i64, ptr %.sroa.9.0.in.i.i.i.i, align 8, !noalias !148312 ; 3 uses
  %.sroa.615.24.extract.trunc.i.i.i.i = trunc i64 %.sroa.9.0.i.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !148313
  call void @llvm.experimental.noalias.scope.decl(metadata !148314)
  call void @llvm.experimental.noalias.scope.decl(metadata !148315)
  %.sroa.615.28.extract.shift.i.i.i.i = lshr i64 %.sroa.9.0.i.i.i.i, 32
  %i.dv = and i64 %.sroa.9.0.i.i.i.i, 4294967295  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148322
  store i64 %i.dv, ptr %i.a, align 8, !noalias !148322
  store i64 %.sroa.615.28.extract.shift.i.i.i.i, ptr %i.bn, align 8, !noalias !148322
  store ptr %i.dr, ptr %i.bo, align 8, !noalias !148322
  invoke fastcc void @_RINvMsq_NtCsi0YPOvDEjiZ_4pyo38instanceINtB6_2PyNtNtNtB8_5types3any5PyAnyE5call1TjjRBA_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr nonnull %.sink.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc90.i.i.i unwind label %.loopexit.i.i.i, !noalias !148298

.noexc90.i.i.i:                                   ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148322
  %i.dw = load i64, ptr %i.b, align 8, !range !68, !noalias !148322, !noundef !67
  %i.dx = trunc nuw i64 %i.dw to i1
  %.sroa.06.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !noalias !148322 ; 5 uses
  br i1 %i.dx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc90.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !148323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148322
  store ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, ptr %i.br, align 8, !alias.scope !148324, !noalias !148323
  store i64 1, ptr %i.c, align 8, !alias.scope !148324, !noalias !148323
  br label %_RNCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB4_23dag_longest_path_length0jE0B6_.exit.i.i.i.i.i

bb.z:                                             ; preds = %.noexc90.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148322
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %.sroa.06.0.copyload.i.i.i.i.i.i.i)
          to label %bb.ab unwind label %bb.aa, !noalias !148325

bb.aa:                                            ; preds = %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.sroa.06.0.copyload.i.i.i.i.i.i.i) #63
          to label %.body.i.i.i unwind label %bb.ae, !noalias !148326

bb.ab:                                            ; preds = %bb.z
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !148322, !noundef !67
  %i.dz = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dz, label %bb.ad, label %bb.ac, !prof !125

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.06.0.copyload.i.i.i.i.i.i.i)
          to label %_RNCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB4_23dag_longest_path_length0jE0B6_.exit.i.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !148298

bb.ad:                                            ; preds = %bb.ab
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.06.0.copyload.i.i.i.i.i.i.i) #59, !noalias !148326
  br label %_RNCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB4_23dag_longest_path_length0jE0B6_.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !148326
  unreachable

_RNCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB4_23dag_longest_path_length0jE0B6_.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.y
  %i.eb = load i64, ptr %i.c, align 8, !range !68, !noalias !148313, !noundef !67
  %i.ec = trunc nuw i64 %i.eb to i1
  %.sroa.09.0.copyload.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !148313 ; 3 uses
  br i1 %i.ec, label %.split.us.i, label %bb.af

bb.af:                                            ; preds = %_RNCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB4_23dag_longest_path_length0jE0B6_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148313
  %i.ed = icmp ugt i64 %.sroa.4.030.i.i.i.i, %i.dv
  br i1 %i.ed, label %bb.ag, label %.split56.us.i

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.dv ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 8, !noalias !148313
  %i.ef = trunc nuw i64 %.sroa.04.0.copyload.i.i.i.i.i to i1
  br i1 %i.ef, label %bb.ah, label %.invoke.i.i.i, !prof !77

.split56.us.i:                                    ; preds = %bb.af, %bb.n
  %.us-phi57.i = phi i64 [ %i.cf, %bb.n ], [ %i.dv, %bb.af ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.us-phi57.i, i64 noundef %.sroa.4.030.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1219) #60
          to label %.noexc92.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !148298

.noexc92.i.i.i:                                   ; preds = %.split56.us.i
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %.sroa.45.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.45.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i, align 8, !noalias !148313
  %i.eg = add i64 %.sroa.45.0.copyload.i.i.i.i.i, %.sroa.09.0.copyload.i.i.i.i.i ; 2 uses
  %.not.i5.i.i.i.i = icmp ult i64 %i.eg, %.sroa.0.0.i85206.i.i.i
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 %.sroa.0.0.i85206.i.i.i) ; 2 uses
  %spec.select12.i.i.i.i.i = select i1 %.not.i5.i.i.i.i, i32 %.sroa.7.0.i205.i.i.i, i32 %.sroa.615.24.extract.trunc.i.i.i.i ; 2 uses
  %i.eh = zext i32 %i.dt to i64                   ; 2 uses
  %i.ei = icmp ugt i64 %i.bm, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.split.us.i:                                      ; preds = %_RNCINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB4_23dag_longest_path_length0jE0B6_.exit.i.i.i.i.i
  %i.ej = load <2 x i64>, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !148327 ; 2 uses
  %.sroa.19.i.sroa.4.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.19.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.19.i.sroa.4.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !148327 ; 2 uses
  %.sroa.19.i.sroa.5.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ek = load <2 x ptr>, ptr %.sroa.19.i.sroa.5.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !148327 ; 2 uses
  %.sroa.19.i.sroa.7.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.19.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.19.i.sroa.7.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !148327 ; 2 uses
  %.sroa.19.i.sroa.8.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.el = load <2 x i32>, ptr %.sroa.19.i.sroa.8.0..sroa.19.20..sroa.12.16..sroa.410.0..sroa_idx.i.sroa_idx.i.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !148327 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148313
  %i.em = icmp eq i64 %i.ah, 0
  br i1 %i.em, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i94.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i94.i.i.i: ; preds = %.split.us.i
  %i.en = shl nuw i64 %i.ah, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !148328
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ah, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.7.0.i.lcssa.i.i.i = phi i32 [ %i.ct, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %spec.select12.i.i.i.i.i, %bb.ah ]
  %.sroa.0.0.i85.lcssa.i.i.i = phi i64 [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.ah ]
  %i.eo = icmp ugt i64 %.sroa.4.030.i.i.i.i, %i.cu
  br i1 %i.eo, label %bb.ai, label %.split64.us.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.cu ; 3 uses
  store i64 1, ptr %i.ep, align 8, !noalias !148298
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %.sroa.0.0.i85.lcssa.i.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !148298
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i32 %.sroa.7.0.i.lcssa.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !148298
  %i.eq = icmp eq ptr %i.cs, %i.bi
  br i1 %i.eq, label %._crit_edge210.i.i.i, label %.lr.ph209.i.i.split.i

.split64.us.i:                                    ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.us.i
  %.us-phi65.i = phi i64 [ %i.bu, %._crit_edge.i.i.us.i ], [ %i.cu, %._crit_edge.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.us-phi65.i, i64 noundef %.sroa.4.030.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @490) #61
          to label %bb.aj unwind label %bb.r, !noalias !148298

bb.aj:                                            ; preds = %.split64.us.i
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i94.i.i.i, %.split.us.i
  %i.er = icmp eq i64 %.sroa.4.030.i.i.i.i, 0
  br i1 %i.er, label %bb.aq, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit95.i.i.i
  %i.es = mul nuw nsw i64 %.sroa.4.030.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !148298
  br label %bb.aq

bb.ak:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i, %.body.i.i.i
  %i.et = icmp eq i64 %.sroa.4.030.i.i.i.i, 0
  br i1 %i.et, label %.body.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i96.i.i.i: ; preds = %bb.ak
  %i.eu = mul nuw nsw i64 %.sroa.4.030.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !148298
  br label %.body.i

bb.al:                                            ; preds = %bb.h
  %i.ev = icmp eq i64 %i.ah, 0
  br i1 %i.ev, label %_RINvNtCskcxRuJ53GpR_9rustworkx8dag_algo19longest_path_lengthNCNvB2_23dag_longest_path_length0jEB4_.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i98.i.i.i

end_hunk_16
begin_hunk_17_@_RNvNtCskcxRuJ53GpR_9rustworkx9dominance32___pyfunction_dominance_frontiers:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !150921), !noalias !150914
  %i.rt = getelementptr inbounds nuw i8, ptr %.val.i.i78.i, i64 %.sroa.3.0.i.ph.i.i96.i
  %i.ru = and i8 %i.rs, 1
  %i.rv = zext nneg i8 %i.ru to i64
  %i.rw = add i64 %.sroa.3.0.i.ph.i.i96.i, -16
  %i.rx = and i64 %i.rw, %.val5.i.i79.i
  store i8 %i.qj, ptr %i.rt, align 1, !noalias !150920
  %i.ry = getelementptr i8, ptr %.val.i.i78.i, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 16
  store i8 %i.qj, ptr %i.rz, align 1, !noalias !150920
  %i.sa = load <2 x i64>, ptr %i.jf, align 8, !alias.scope !150922, !noalias !150907
  %i.sb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.rv, i64 0
  %i.sc = sub <2 x i64> %i.sa, %i.sb
  store <2 x i64> %i.sc, ptr %i.jf, align 8, !alias.scope !150922, !noalias !150907
  %i.sd = sub nsw i64 0, %.sroa.3.0.i.ph.i.i96.i
  %i.se = getelementptr inbounds [8 x i8], ptr %.val.i.i78.i, i64 %i.sd
  %i.sf = getelementptr inbounds i8, ptr %i.se, i64 -8
  store i64 %i.kt, ptr %i.sf, align 8, !noalias !150920
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i86.i, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i64 24, i1 false), !noalias !150923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !150907
  br i1 %i.pr, label %bb.bs, label %bb.ch

bb.bs:                                            ; preds = %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !150924)
  %i.sg = load i64, ptr %i.jh, align 8, !alias.scope !150924, !noalias !150925, !noundef !67 ; 4 uses
  %i.sh = load ptr, ptr %i.jb, align 8, !alias.scope !150924, !noalias !150925, !nonnull !67, !noundef !67
  %i.si = load i64, ptr %i.jc, align 8, !alias.scope !150924, !noalias !150925, !noundef !67
  call void @llvm.experimental.noalias.scope.decl(metadata !150926)
  %.val6.i.i.i.i = load ptr, ptr %i.jd, align 8, !alias.scope !150927, !noalias !150925, !nonnull !67, !noundef !67 ; 6 uses
  %.val7.i.i.i.i = load i64, ptr %i.je, align 8, !alias.scope !150927, !noalias !150925, !noundef !67 ; 4 uses
  %.sroa.0.07.i.i.i.i.i = and i64 %.val7.i.i.i.i, %.val.i.i.lcssa28.sink.i.i165.i ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.sj, align 1, !noalias !150928
  %i.sk = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.sl = bitcast <16 x i1> %i.sk to i16          ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.sl, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !80

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.bs
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %bb.bs ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.sl, %bb.bs ], [ %i.tc, %.lr.ph.i.i.i.i.i ]
  %i.sm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.sn = zext nneg i16 %i.sm to i64
  %i.so = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.sn
  %i.sp = and i64 %i.so, %.val7.i.i.i.i           ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1, !noalias !150929, !noundef !67 ; 2 uses
  %i.ss = icmp sgt i8 %i.sr, -1
  br i1 %i.ss, label %bb.bt, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i, !prof !71

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i.i
  %.val62.i.i.i.i.i.i = load <16 x i8>, ptr %.val6.i.i.i.i, align 16, !noalias !150929
  %i.st = icmp slt <16 x i8> %.val62.i.i.i.i.i.i, zeroinitializer
  %i.su = bitcast <16 x i1> %i.st to i16          ; 2 uses
  %.not.i6.i.i.i.i.i = icmp ne i16 %i.su, 0
  %i.sv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.su, i1 true)
  %i.sw = zext nneg i16 %i.sv to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 %i.sw
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !150929
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bs, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %bb.bs ]
  %i.sx = phi i64 [ %i.sy, %.lr.ph.i.i.i.i.i ], [ 0, %bb.bs ]
  %i.sy = add i64 %i.sx, 16                       ; 2 uses
  %i.sz = add i64 %i.sy, %.sroa.0.010.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = and i64 %i.sz, %.val7.i.i.i.i ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.ta, align 1, !noalias !150928
  %i.tb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i, zeroinitializer
  %i.tc = bitcast <16 x i1> %i.tb to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.tc, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !81

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i: ; preds = %bb.bt, %._crit_edge.i.i.i.i.i
  %i.td = phi i8 [ %.pre.i.i.i.i, %bb.bt ], [ %i.sr, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.sw, %bb.bt ], [ %i.sp, %._crit_edge.i.i.i.i.i ]
  %i.te = load i64, ptr %i.ji, align 8, !alias.scope !150927, !noalias !150925, !noundef !67 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 0
  %i.tg = trunc i8 %i.td to i1
  %or.cond.i.i.i.i = and i1 %i.tf, %i.tg
  br i1 %or.cond.i.i.i.i, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i56.i, label %.noexc.i54.i, !prof !79

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i56.i: ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i
  %i.th = invoke fastcc i64 @_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.jd, i64 noundef 1, ptr noundef nonnull align 8 %i.sh, i64 noundef %i.si) #62
          to label %.noexc.i.i57.i unwind label %.body.thread.i.i ; 0 uses

.noexc.i.i57.i:                                   ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i56.i
  %.val.i.i.i.i41 = load ptr, ptr %i.jd, align 8, !alias.scope !150927, !noalias !150925, !nonnull !67, !noundef !67 ; 6 uses
  %.val5.i.i.i.i = load i64, ptr %i.je, align 8, !alias.scope !150927, !noalias !150925, !noundef !67 ; 4 uses
  %.sroa.0.07.i.i = and i64 %.val5.i.i.i.i, %.val.i.i.lcssa28.sink.i.i165.i ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i41, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ti, align 1, !noalias !150930
  %i.tj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.tk = bitcast <16 x i1> %i.tj to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.tk, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !80

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.noexc.i.i57.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %.noexc.i.i57.i ], [ %.sroa.0.0.i112.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.tk, %.noexc.i.i57.i ], [ %i.ub, %.lr.ph.i.i ]
  %i.tl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.tm = zext nneg i16 %i.tl to i64
  %i.tn = add i64 %.sroa.0.0.lcssa.i.i, %i.tm
  %i.to = and i64 %i.tn, %.val5.i.i.i.i           ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i41, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !noalias !150931, !noundef !67 ; 2 uses
  %i.tr = icmp sgt i8 %i.tq, -1
  br i1 %i.tr, label %bb.bu, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !71

bb.bu:                                            ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i41, align 16, !noalias !150931
  %i.ts = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.tt = bitcast <16 x i1> %i.ts to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.tt, 0
  %i.tu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.tt, i1 true)
  %i.tv = zext nneg i16 %i.tu to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i), !noalias !150932
  %.phi.trans.insert8.i.i.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i41, i64 %i.tv
  %.pre9.i.i.i.pre.i = load i8, ptr %.phi.trans.insert8.i.i.i.phi.trans.insert.i, align 1, !noalias !150933
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc.i.i57.i, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i112.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %.noexc.i.i57.i ]
  %i.tw = phi i64 [ %i.tx, %.lr.ph.i.i ], [ 0, %.noexc.i.i57.i ]
  %i.tx = add i64 %i.tw, 16                       ; 2 uses
  %i.ty = add i64 %i.tx, %.sroa.0.010.i.i
  %.sroa.0.0.i112.i = and i64 %i.ty, %.val5.i.i.i.i ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i41, i64 %.sroa.0.0.i112.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.tz, align 1, !noalias !150930
  %i.ua = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.ub = bitcast <16 x i1> %i.ua to i16          ; 2 uses
  %.not.i.i.i42 = icmp eq i16 %i.ub, 0
  br i1 %.not.i.i.i42, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !81

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.bu, %._crit_edge.i.i
  %.pre9.i.i.i.i = phi i8 [ %.pre9.i.i.i.pre.i, %bb.bu ], [ %i.tq, %._crit_edge.i.i ]
  %.sroa.0.0.i5.i.i = phi i64 [ %i.tv, %bb.bu ], [ %i.to, %._crit_edge.i.i ]
  %.pre10.i.i.i.i = load i64, ptr %i.ji, align 8, !alias.scope !150934, !noalias !150925
  %.pre.i.i.i = load i64, ptr %i.jh, align 8, !alias.scope !150934, !noalias !150925
  br label %.noexc.i54.i

.noexc.i54.i:                                     ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i
  %i.uc = phi i64 [ %.pre.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ %i.sg, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ]
  %i.ud = phi i64 [ %.val5.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ %.val7.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ]
  %i.ue = phi i64 [ %.pre10.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ %i.te, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ]
  %i.uf = phi i8 [ %.pre9.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ %i.td, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ]
  %i.ug = phi ptr [ %.val.i.i.i.i41, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ %.val6.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i5.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i ], [ %.sroa.0.0.i5.i.i.i.i.i, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i ] ; 3 uses
  %i.uh = lshr i64 %.val.i.i.lcssa28.sink.i.i165.i, 57
  %i.ui = trunc nuw nsw i64 %i.uh to i8           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150935)
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.sroa.0.0.i.i.i.i
  %i.uk = and i8 %i.uf, 1
  %i.ul = zext nneg i8 %i.uk to i64
  %i.um = sub i64 %i.ue, %i.ul
  store i64 %i.um, ptr %i.ji, align 8, !alias.scope !150934, !noalias !150925
  %i.un = add i64 %.sroa.0.0.i.i.i.i, -16
  %i.uo = and i64 %i.un, %i.ud
  store i8 %i.ui, ptr %i.uj, align 1, !noalias !150933
  %i.up = getelementptr i8, ptr %i.ug, i64 %i.uo
  %i.uq = getelementptr i8, ptr %i.up, i64 16
  store i8 %i.ui, ptr %i.uq, align 1, !noalias !150933
  %i.ur = add i64 %i.uc, 1
  store i64 %i.ur, ptr %i.jh, align 8, !alias.scope !150934, !noalias !150925
  %i.us = sub nsw i64 0, %.sroa.0.0.i.i.i.i
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.ug, i64 %i.us
  %i.uu = getelementptr inbounds i8, ptr %i.ut, i64 -8
  store i64 %i.sg, ptr %i.uu, align 8, !noalias !150933
  call void @llvm.experimental.noalias.scope.decl(metadata !150936)
  %i.uv = load i64, ptr %i.jc, align 8, !alias.scope !150936, !noalias !150937, !noundef !67 ; 13 uses
  %i.uw = icmp ult i64 %i.uv, 164703072086692426
  call void @llvm.assume(i1 %i.uw)
  %i.ux = load i64, ptr %i.o, align 8, !range !70, !alias.scope !150936, !noalias !150937, !noundef !67
  %i.uy = icmp eq i64 %i.uv, %i.ux
  br i1 %i.uy, label %bb.bv, label %.noexc58.sink.split.i

bb.bv:                                            ; preds = %.noexc.i54.i
  call void @llvm.experimental.noalias.scope.decl(metadata !150938)
  %i.uz = load i64, ptr %i.jh, align 8, !alias.scope !150939, !noalias !150937, !noundef !67
  %i.va = load i64, ptr %i.ji, align 8, !alias.scope !150939, !noalias !150937, !noundef !67
  %i.vb = add i64 %i.va, %i.uz                    ; 2 uses
  %i.vc = call i64 @llvm.umin.i64(i64 %i.vb, i64 164703072086692425) ; 4 uses
  %i.vd = sub nsw i64 %i.vc, %i.uv
  %i.ve = icmp ugt i64 %i.vd, 1
  br i1 %i.ve, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.cd, %bb.cb, %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !150940)
  call void @llvm.experimental.noalias.scope.decl(metadata !150941)
  call void @llvm.experimental.noalias.scope.decl(metadata !150942)
  %i.vf = add nuw nsw i64 %i.uv, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5150.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.jb, align 8, !alias.scope !150943, !noalias !150937 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150944)
  %i.vg = mul nuw i64 %i.vf, 56                   ; 3 uses
  %.not.i126.i = icmp samesign ugt i64 %i.uv, 164703072086692424
  br i1 %.not.i126.i, label %.loopexit183.i, label %bb.by, !prof !73

bb.bx:                                            ; preds = %bb.by
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !150945
  %i.vh = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.vg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !150945
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i

bb.by:                                            ; preds = %bb.bw
  %i.vi = icmp eq i64 %i.uv, 0
  br i1 %i.vi, label %bb.bx, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.vj = mul nuw nsw i64 %i.uv, 56
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.i.i.i) ], !noalias !150946
  %i.vk = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.val11.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.vj, i64 noundef range(i64 1, 17) 8, i64 noundef range(i64 0, -9223372036854775808) %i.vg) #59, !noalias !150945
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.bz, %bb.bx
  %.sroa.0.0.i.i.pn.i.i = phi ptr [ %i.vk, %bb.bz ], [ %i.vh, %bb.bx ] ; 2 uses
  %i.vl = icmp eq ptr %.sroa.0.0.i.i.pn.i.i, null
  br i1 %i.vl, label %bb.ca, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.thread.i

bb.ca:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i
  store i64 8, ptr %.sroa.5150.i, align 8, !alias.scope !150944, !noalias !150947
  br label %.loopexit183.i

.loopexit183.i:                                   ; preds = %bb.bw, %bb.ca
  %.sink8.i.sroa.phi.ph.i = phi ptr [ %.sroa.10.i, %bb.ca ], [ %.sroa.5150.i, %bb.bw ]
  %.sink6.i.ph.i = phi i64 [ %i.vg, %bb.ca ], [ 0, %bb.bw ]
  store i64 %.sink6.i.ph.i, ptr %.sink8.i.sroa.phi.ph.i, align 8, !alias.scope !150944, !noalias !150947
  %.sroa.5150.i.0..sroa.5150.i.0..sroa.5150.i.0..sroa.5150.0..sroa.5150.0..sroa.5150.8.151.i = load i64, ptr %.sroa.5150.i, align 8, !range !128, !noalias !150947, !noundef !67
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i = load i64, ptr %.sroa.10.i, align 8, !noalias !150947
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5150.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.5150.i.0..sroa.5150.i.0..sroa.5150.i.0..sroa.5150.0..sroa.5150.0..sroa.5150.8.151.i, i64 %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i) #61
          to label %.noexc.i109.i unwind label %bb.cf, !noalias !150948

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.thread.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5150.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store ptr %.sroa.0.0.i.i.pn.i.i, ptr %i.jb, align 8, !alias.scope !150943, !noalias !150937
  store i64 %i.vf, ptr %i.o, align 8, !alias.scope !150939, !noalias !150937
  br label %.noexc58.sink.split.i

.noexc.i109.i:                                    ; preds = %.loopexit183.i
  unreachable

bb.cb:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !150949)
  call void @llvm.experimental.noalias.scope.decl(metadata !150950)
  %i.vm = icmp ult i64 %i.vb, %i.uv
  br i1 %i.vm, label %bb.bw, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !150951
  %.val11.i.i.i.i.i = load ptr, ptr %i.jb, align 8, !alias.scope !150952, !noalias !150937
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, i64 %i.uv, ptr %.val11.i.i.i.i.i, i64 noundef %i.vc, i64 noundef 8, i64 noundef range(i64 16, 89) 56), !noalias !150953
  %i.vn = load i64, ptr %i.h, align 8, !range !68, !noalias !150951, !noundef !67
  %i.vo = trunc nuw i64 %i.vn to i1
  br i1 %i.vo, label %bb.cd, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !150951
  br label %bb.bw

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.cc
  %i.vp = load ptr, ptr %i.jj, align 8, !noalias !150951, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !150951
  store ptr %i.vp, ptr %i.jb, align 8, !alias.scope !150952, !noalias !150937
  store i64 %i.vc, ptr %i.o, align 8, !alias.scope !150939, !noalias !150937
  %i.vq = icmp eq i64 %i.uv, %i.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, i64 24, i1 false), !noalias !150954
  call void @llvm.experimental.noalias.scope.decl(metadata !150955)
  br i1 %i.vq, label %bb.ce, label %.noexc58.i

bb.ce:                                            ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o)
          to label %.noexc58.i unwind label %.body.i.i, !noalias !150956

.body.i.i:                                        ; preds = %bb.ce
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i78.i, i64 %.val5.i.i79.i) #63, !noalias !150957
  br label %.body49.i

bb.cf:                                            ; preds = %.loopexit183.i
  %i.vs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.vt = icmp eq i64 %.val5.i.i79.i, 0
  br i1 %i.vt, label %.body49.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.cf
  %i.vu = shl i64 %.val5.i.i79.i, 3
  %i.vv = icmp slt i64 %.val5.i.i79.i, 2305843009213693950
  call void @llvm.assume(i1 %i.vv), !noalias !150948
  %i.vw = and i64 %i.vu, -16                      ; 2 uses
  %i.vx = add i64 %i.vw, 16                       ; 2 uses
  %i.vy = add nsw i64 %.val5.i.i79.i, 17
  %i.vz = add i64 %i.vy, %i.vx                    ; 4 uses
  %i.wa = icmp uge i64 %i.vz, %i.vx
  %i.wb = icmp ult i64 %i.vz, 9223372036854775793
  call void @llvm.assume(i1 %i.wa), !noalias !150948
  call void @llvm.assume(i1 %i.wb), !noalias !150948
  %i.wc = icmp eq i64 %i.vz, 0
  br i1 %i.wc, label %.body49.i, label %bb.cg

bb.cg:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.wd = sub nuw nsw i64 -16, %i.vw
  %i.we = getelementptr inbounds i8, ptr %.val.i.i78.i, i64 %i.wd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.we, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !150948
  br label %.body49.i

.noexc58.sink.split.i:                            ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.thread.i, %.noexc.i54.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i, i64 24, i1 false), !noalias !150954
  br label %.noexc58.i

.noexc58.i:                                       ; preds = %.noexc58.sink.split.i, %bb.ce, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.wf = load ptr, ptr %i.jb, align 8, !alias.scope !150958, !noalias !150959, !nonnull !67, !noundef !67
  %i.wg = getelementptr inbounds nuw [56 x i8], ptr %i.wf, i64 %i.uv ; 5 uses
  store ptr %.val.i.i78.i, ptr %i.wg, align 8, !noalias !150960
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store i64 %.val5.i.i79.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !150960
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !150960
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wg, i64 40
  store i64 %.val.i.i.lcssa28.sink.i.i165.i, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !noalias !150960
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wg, i64 48
  store i64 %.lcssa30.sink.i.i166.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !150960
  %i.wh = add nuw nsw i64 %i.uv, 1                ; 2 uses
  store i64 %i.wh, ptr %i.jc, align 8, !alias.scope !150958, !noalias !150959
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %.not.i = icmp ugt i64 %i.sg, %i.uv
  br i1 %.not.i, label %.noexc7.i55.i, label %_RNvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB2_5EntryjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i

.noexc7.i55.i:                                    ; preds = %.noexc58.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.sg, i64 noundef %i.wh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1831) #61
          to label %.noexc59.i unwind label %.loopexit.split-lp.i, !noalias !150802

.noexc59.i:                                       ; preds = %.noexc7.i55.i
  unreachable

.body.thread.i.i:                                 ; preds = %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i56.i
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ch:                                            ; preds = %.loopexit.i
  %i.wi = load i64, ptr %i.jc, align 8, !noalias !150961, !noundef !67 ; 2 uses
  %i.wj = icmp ult i64 %.val.i.i.lcssa28.sink.i.i165.i, %i.wi
  br i1 %i.wj, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.wk = icmp eq i64 %.val5.i.i79.i, 0
  br i1 %i.wk, label %_RNvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB2_5EntryjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ci
  %i.wl = shl i64 %.val5.i.i79.i, 3
  %i.wm = icmp slt i64 %.val5.i.i79.i, 2305843009213693950
  call void @llvm.assume(i1 %i.wm)
  %i.wn = and i64 %i.wl, -16                      ; 2 uses
  %i.wo = add i64 %i.wn, 16                       ; 2 uses
  %i.wp = add nsw i64 %.val5.i.i79.i, 17
  %i.wq = add i64 %i.wp, %i.wo                    ; 4 uses
  %i.wr = icmp uge i64 %i.wq, %i.wo
  %i.ws = icmp ult i64 %i.wq, 9223372036854775793
  call void @llvm.assume(i1 %i.wr)
  call void @llvm.assume(i1 %i.ws)
  %i.wt = icmp eq i64 %i.wq, 0
  br i1 %i.wt, label %_RNvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB2_5EntryjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.wu = sub nuw nsw i64 -16, %i.wn
  %i.wv = getelementptr inbounds i8, ptr %.val.i.i78.i, i64 %i.wu
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wv, i64 noundef %i.wq, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !150962
  br label %_RNvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB2_5EntryjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i

bb.ck:                                            ; preds = %bb.ch
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.lcssa28.sink.i.i165.i, i64 noundef %i.wi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @833) #61
          to label %bb.cl unwind label %bb.cn, !noalias !150962

bb.cl:                                            ; preds = %bb.ck
  unreachable

bb.cm:                                            ; preds = %bb.cn, %.body.thread.i.i
  %eh.lpad-body9.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.cn ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i78.i, i64 %.val5.i.i79.i) #63, !noalias !150962
  br label %.body49.i

bb.cn:                                            ; preds = %bb.ck
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_RNvMNtNtCsfztDQZkQYYe_8indexmap3map5entryINtB2_5EntryjINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.cj, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ci, %.noexc58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  br i1 %cond, label %.noexc63.i, label %bb.co

end_hunk_17
begin_hunk_18_@_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component:bb.a

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.loopexit.i.i.i.loopexit
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.14.0.copyload.pr, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i unwind label %.split, !noalias !153398

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !153413, !noalias !153414
  br label %.noexc.i

.noexc.i:                                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i, %.loopexit.i.i.i.loopexit
  %i.ds = phi ptr [ %.pre.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i..noexc_crit_edge.i ], [ %i.ch, %.loopexit.i.i.i.loopexit ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.14.0.copyload.pr
  store i64 %.val6.i.i.i.i.i.i.i, ptr %i.dt, align 8, !noalias !153415
  %i.du = add nuw nsw i64 %.sroa.14.0.copyload.pr, 1 ; 3 uses
  store i64 %i.du, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !153413, !noalias !153414
  %i.dv = icmp eq ptr %i.cm, %i.h
  br i1 %i.dv, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB1z_6copied6CopiedINtNtNtB1D_5slice4iter4IterjEENCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component0EE9from_iterB3n_.exit.thread103, label %.lr.ph.i.i.i.i.i.i.i

.split:                                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.dw, %.split ], [ %i.cg, %.split.us ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153418)
  %.val.i9.i = load i64, ptr %i.a, align 8, !alias.scope !153418, !noalias !153398 ; 2 uses
  %i.dx = icmp eq i64 %.val.i9.i, 0
  br i1 %i.dx, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.q
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !153418, !noalias !153398, !nonnull !67, !noundef !67
  %i.dy = shl nuw i64 %.val.i9.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !153419
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86, %bb.q, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i
  %common.resume.op = phi { ptr, i32 } [ %.us-phi, %bb.q ], [ %.us-phi, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %lpad.phi, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86 ], [ %lpad.phi, %bb.s ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied13copy_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjQNCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component0E0E0B2M_.exit.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !153398
  br label %.sink.split

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB1z_6copied6CopiedINtNtNtB1D_5slice4iter4IterjEENCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component0EE9from_iterB3n_.exit.thread103: ; preds = %.noexc.i, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied13copy_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjQNCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component0E0E0B2M_.exit.loopexit.i.i.i.i.i.i.i, %.noexc.i.us, %bb.l
  %.sroa.14.0.copyload.pr.lcssa.sink = phi i64 [ %i.ce, %.noexc.i.us ], [ 1, %bb.l ], [ %.sroa.14.0.copyload.pr, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters6copied13copy_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkjQNCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component0E0E0B2M_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.du, %.noexc.i ] ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !noalias !153420 ; 4 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !153420 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !153398
  %i.dz = icmp samesign ult i64 %.sroa.14.0.copyload.pr.lcssa.sink, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.ed, align 8
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB1z_6copied6CopiedINtNtNtB1D_5slice4iter4IterjEENCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component0EE9from_iterB3n_.exit.thread103
  %.idx249 = shl nuw nsw i64 %.sroa.14.0.copyload.pr.lcssa.sink, 3
  %i.ee = getelementptr i8, ptr %.sroa.8.0.copyload, i64 %.idx249 ; 2 uses
  %.sroa.021.0189 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 8 ; 2 uses
  %i.ef = icmp eq i64 %.sroa.14.0.copyload.pr.lcssa.sink, 1
  %.not250 = icmp eq i64 %10, 0
  %exitcond.not524 = icmp eq i64 %10, 0
  br label %bb.r

._crit_edge247:                                   ; preds = %.loopexit113, %._crit_edge195, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters6filter6FilterINtNtB1z_6copied6CopiedINtNtNtB1D_5slice4iter4IterjEENCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component0EE9from_iterB3n_.exit.thread103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eg = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.eg, label %.sink.split, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82: ; preds = %._crit_edge247
  %i.eh = shl nuw i64 %.sroa.0.0.copyload, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !153421
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph246, %.loopexit113
  %.sroa.058.0244 = phi i64 [ 0, %.lr.ph246 ], [ %i.ei, %.loopexit113 ]
  %i.ei = add nuw i64 %.sroa.058.0244, 1          ; 2 uses
  %i.ej = load i64, ptr %.sroa.8.0.copyload, align 8, !noundef !67 ; 4 uses
  %i.ek = invoke fastcc noundef double @_RNCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_components_0B7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.ej)
          to label %bb.t unwind label %.loopexit114 ; 3 uses

.loopexit114:                                     ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.split198.us.invoke, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit114
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit114 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.el = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.el, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86: ; preds = %bb.s
  %i.em = shl nuw i64 %.sroa.0.0.copyload, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !153422
  br label %common.resume

bb.t:                                             ; preds = %bb.r
  br i1 %i.ef, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.t
  %i.en = load ptr, ptr %i.e, align 8, !nonnull !67, !align !98 ; 2 uses
  %i.eo = load i64, ptr %i.f, align 8
  %.fr251 = freeze i64 %i.eo                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %.fr251, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i ; 2 uses
  %i.eq = icmp eq i64 %.fr251, 0
  %i.er = load i64, ptr %i.d, align 8
  %i.es = load double, ptr %i.c, align 8
  br i1 %i.eq, label %.lr.ph194.split.us, label %.lr.ph194.split

.lr.ph194.split.us:                               ; preds = %.lr.ph194, %bb.u
  %.sroa.021.0192.us = phi ptr [ %.sroa.021.0.us, %bb.u ], [ %.sroa.021.0189, %.lr.ph194 ] ; 2 uses
  %.sroa.07.0191.us = phi i64 [ %.sroa.07.1.us, %bb.u ], [ %i.ej, %.lr.ph194 ]
  %.sroa.018.0190.us = phi double [ %.sroa.018.1.us, %bb.u ], [ %i.ek, %.lr.ph194 ] ; 2 uses
  %i.et = load i64, ptr %.sroa.021.0192.us, align 8, !noundef !67 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153423)
  %i.eu = icmp ult i64 %i.et, %3
  br i1 %i.eu, label %bb.u, label %.split198.us.invoke

bb.u:                                             ; preds = %.lr.ph194.split.us
  %i.ev = fcmp olt double %.sroa.018.0190.us, 0.000000e+00 ; 2 uses
  %.sroa.018.1.us = select i1 %i.ev, double 0.000000e+00, double %.sroa.018.0190.us ; 2 uses
  %.sroa.07.1.us = select i1 %i.ev, i64 %i.et, i64 %.sroa.07.0191.us ; 2 uses
  %.sroa.021.0.us = getelementptr inbounds nuw i8, ptr %.sroa.021.0192.us, i64 8 ; 2 uses
  %i.ew = icmp eq ptr %.sroa.021.0.us, %i.ee
  br i1 %i.ew, label %._crit_edge195, label %.lr.ph194.split.us

.lr.ph194.split:                                  ; preds = %.lr.ph194, %.loopexit
  %.sroa.021.0192 = phi ptr [ %.sroa.021.0, %.loopexit ], [ %.sroa.021.0189, %.lr.ph194 ] ; 2 uses
  %.sroa.07.0191 = phi i64 [ %.sroa.07.1, %.loopexit ], [ %i.ej, %.lr.ph194 ]
  %.sroa.018.0190 = phi double [ %.sroa.018.1, %.loopexit ], [ %i.ek, %.lr.ph194 ] ; 2 uses
  %i.ex = load i64, ptr %.sroa.021.0192, align 8, !noundef !67 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153423)
  %i.ey = icmp ult i64 %i.ex, %3
  br i1 %i.ey, label %.lr.ph.i.preheader, label %.split198.us.invoke

.lr.ph.i.preheader:                               ; preds = %.lr.ph194.split
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ex
  %i.fa = load <2 x double>, ptr %i.ez, align 8, !alias.scope !153423, !noalias !153424
  %i.fb = mul i64 %i.er, %i.ex
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.outer.i
  %.sroa.07.0.ph31.i = phi ptr [ %i.fg, %.outer.i ], [ %i.en, %.lr.ph.i.preheader ]
  %i.fc = phi <2 x double> [ %i.gd, %.outer.i ], [ zeroinitializer, %.lr.ph.i.preheader ] ; 2 uses
  br label %bb.v

.split198.us.invoke:                              ; preds = %.lr.ph194.split, %.lr.ph194.split.us, %bb.y, %bb.w
  %i.fd = phi i64 [ %i.fj, %bb.w ], [ %i.et, %.lr.ph194.split.us ], [ %i.fh, %bb.y ], [ %i.ex, %.lr.ph194.split ]
  %i.fe = phi i64 [ %1, %bb.w ], [ %3, %.lr.ph194.split.us ], [ %3, %bb.y ], [ %3, %.lr.ph194.split ]
  %i.ff = phi ptr [ @1433, %bb.w ], [ @1432, %.lr.ph194.split.us ], [ @1434, %bb.y ], [ @1432, %.lr.ph194.split ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fd, i64 noundef %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #60
          to label %.split198.us.cont unwind label %.loopexit.split-lp

.split198.us.cont:                                ; preds = %.split198.us.invoke
  unreachable

bb.v:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.07.027.i = phi ptr [ %.sroa.07.0.ph31.i, %.lr.ph.i ], [ %i.fg, %bb.z ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.07.027.i, i64 8 ; 4 uses
  %i.fh = load i64, ptr %.sroa.07.027.i, align 8, !noalias !153425, !noundef !67 ; 5 uses
  %i.fi = icmp eq i64 %i.fh, %i.ex
  br i1 %i.fi, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fj = add i64 %i.fb, %i.fh                    ; 3 uses
  %i.fk = icmp ult i64 %i.fj, %1
  br i1 %i.fk, label %bb.x, label %.split198.us.invoke

bb.x:                                             ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fj
  %i.fm = load double, ptr %i.fl, align 8, !noalias !153425, !noundef !67 ; 4 uses
  %or.cond.i = call i1 @llvm.is.fpclass.f64(double %i.fm, /* (nan inf zero nsub nnorm) */ i32 639)
  br i1 %or.cond.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = icmp ult i64 %i.fh, %3
  br i1 %i.fn, label %.outer.i, label %.split198.us.invoke

.outer.i:                                         ; preds = %bb.y
  %i.fo = fmul nnan double %i.fm, %i.fm
  %i.fp = fdiv nnan double 1.000000e+00, %i.fo
  %i.fq = fdiv double %i.fm, %i.es
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fh
  %i.fs = load <2 x double>, ptr %i.fr, align 8, !alias.scope !153423, !noalias !153424
  %i.ft = fsub <2 x double> %i.fa, %i.fs          ; 3 uses
  %i.fu = fmul <2 x double> %i.ft, %i.ft          ; 2 uses
  %shift = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.fu, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fv = call double @llvm.sqrt.f64(double %11)
  %i.fw = call nsz double @llvm.maximumnum.f64(double %i.fv, double 1.000000e-08)
  %i.fx = fdiv double %i.fq, %i.fw
  %i.fy = fsub double 1.000000e+00, %i.fx
  %i.fz = fmul double %i.fp, %i.fy
  %i.ga = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x double> %i.ft, %i.gb
  %i.gd = fadd <2 x double> %i.fc, %i.gc          ; 2 uses
  %i.ge = icmp eq ptr %i.fg, %i.ep
  br i1 %i.ge, label %.loopexit, label %.lr.ph.i

bb.z:                                             ; preds = %bb.x, %bb.v
  %i.gf = icmp eq ptr %i.fg, %i.ep
  br i1 %i.gf, label %.loopexit, label %bb.v

._crit_edge195:                                   ; preds = %.loopexit, %bb.u, %bb.t
  %.sroa.018.0.lcssa = phi double [ %i.ek, %bb.t ], [ %.sroa.018.1.us, %bb.u ], [ %.sroa.018.1, %.loopexit ]
  %.sroa.07.0.lcssa = phi i64 [ %i.ej, %bb.t ], [ %.sroa.07.1.us, %bb.u ], [ %.sroa.07.1, %.loopexit ]
  %.sroa.07.0.lcssa.fr = freeze i64 %.sroa.07.0.lcssa ; 5 uses
  %i.gg = fcmp olt double %.sroa.018.0.lcssa, %8
  br i1 %i.gg, label %._crit_edge247, label %.preheader

.preheader:                                       ; preds = %._crit_edge195
  %i.gh = icmp ult i64 %.sroa.07.0.lcssa.fr, %3
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.07.0.lcssa.fr ; 3 uses
  %i.gj = load ptr, ptr %i.e, align 8, !nonnull !67, !align !98 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx ; 2 uses
  %i.gl = load i64, ptr %i.d, align 8
  %i.gm = mul i64 %i.gl, %.sroa.07.0.lcssa.fr
  %i.gn = load double, ptr %i.c, align 8
  br i1 %i.gh, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %exitcond.not524, label %.loopexit113, label %.lr.ph203.us.preheader.preheader

.lr.ph203.us.preheader.preheader:                 ; preds = %.preheader.split.us.preheader
  %i.go = insertelement <2 x double> poison, double %i.gn, i64 1
  %.promoted = load <2 x double>, ptr %i.gi, align 8
  br label %.lr.ph203.us.preheader

.lr.ph203.us.preheader:                           ; preds = %.lr.ph203.us.preheader.preheader, %bb.af
  %i.gp = phi <2 x double> [ %i.jc, %bb.af ], [ %.promoted, %.lr.ph203.us.preheader.preheader ] ; 3 uses
  %.sroa.060.0.us525 = phi i64 [ %i.gq, %bb.af ], [ 0, %.lr.ph203.us.preheader.preheader ]
  %i.gq = add i64 %.sroa.060.0.us525, 1           ; 2 uses
  br label %.lr.ph203.us

bb.aa:                                            ; preds = %.lr.ph203.us, %bb.ad
  %.sroa.055.0202.us = phi ptr [ %.sroa.055.0.ph215.us, %.lr.ph203.us ], [ %i.gr, %bb.ad ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.055.0202.us, i64 8 ; 4 uses
  %i.gs = load i64, ptr %.sroa.055.0202.us, align 8, !noundef !67 ; 5 uses
  %i.gt = icmp eq i64 %i.gs, %.sroa.07.0.lcssa.fr
  br i1 %i.gt, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gu = add i64 %i.gm, %i.gs                    ; 3 uses
  %i.gv = icmp ult i64 %i.gu, %1
  br i1 %i.gv, label %bb.ac, label %.invoke

bb.ac:                                            ; preds = %bb.ab
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gu
  %i.gx = load double, ptr %i.gw, align 8, !noundef !67 ; 4 uses
  %or.cond.us = call i1 @llvm.is.fpclass.f64(double %i.gx, /* (nan inf zero nsub nnorm) */ i32 639)
  br i1 %or.cond.us, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.gy = icmp eq ptr %i.gr, %i.gk
  br i1 %i.gy, label %.outer._crit_edge.us, label %bb.aa

bb.ae:                                            ; preds = %bb.ac
  %i.gz = icmp ult i64 %i.gs, %3
  br i1 %i.gz, label %.outer.us, label %.invoke

.outer.us:                                        ; preds = %bb.ae
  %i.ha = fmul double %i.gx, %i.gx
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.gs
  %i.hc = load <2 x double>, ptr %i.hb, align 8
  %i.hd = fsub <2 x double> %i.gp, %i.hc          ; 7 uses
  %i.he = extractelement <2 x double> %i.hd, i64 0
  %i.hf = extractelement <2 x double> %i.hd, i64 1
  %i.hg = fmul <2 x double> %i.hd, %i.hd          ; 2 uses
  %shift527 = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop528 = fadd <2 x double> %i.hg, %shift527
  %12 = extractelement <2 x double> %foldExtExtBinop528, i64 0
  %i.hh = call nsz double @llvm.maximumnum.f64(double %12, double f0x3C9CD2B297D889BD) ; 2 uses
  %i.hi = call double @llvm.sqrt.f64(double %i.hh) ; 2 uses
  %i.hj = fmul double %i.hh, %i.hi                ; 2 uses
  %i.hk = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.gx, i64 1
  %i.hl = insertelement <2 x double> %i.go, double %i.ha, i64 0
  %i.hm = fdiv <2 x double> %i.hk, %i.hl          ; 4 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 1 ; 2 uses
  %i.ho = fdiv double %i.hn, %i.hi
  %i.hp = fsub double 1.000000e+00, %i.ho
  %i.hq = extractelement <2 x double> %i.hm, i64 0 ; 2 uses
  %i.hr = fmul double %i.hq, %i.hp
  %i.hs = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x double> %i.hd, %i.ht
  %i.hv = fadd <2 x double> %i.jg, %i.hu          ; 2 uses
  %i.hw = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hx = fmul <2 x double> %i.hw, %i.hd
  %i.hy = fmul <2 x double> %i.hd, %i.hx
  %i.hz = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fdiv <2 x double> %i.hy, %i.ia
  %i.ic = fsub <2 x double> splat (double 1.000000e+00), %i.ib
  %i.id = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.id, %i.ic
  %i.if = fadd <2 x double> %i.jh, %i.ie          ; 2 uses
  %i.ig = fmul double %i.hq, %i.hn
  %i.ih = fmul double %i.ig, %i.he
  %i.ii = fmul double %i.ih, %i.hf
  %i.ij = fdiv double %i.ii, %i.hj
  %i.ik = fadd double %.sroa.030.0.ph219.us, %i.ij ; 2 uses
  %i.il = icmp eq ptr %i.gr, %i.gk
  br i1 %i.il, label %.outer._crit_edge.us, label %.lr.ph203.us

.outer._crit_edge.us:                             ; preds = %.outer.us, %bb.ad
  %.sroa.030.0.ph.lcssa154.us = phi double [ %.sroa.030.0.ph219.us, %bb.ad ], [ %i.ik, %.outer.us ] ; 3 uses
  %i.im = phi <2 x double> [ %i.jg, %bb.ad ], [ %i.hv, %.outer.us ] ; 7 uses
  %i.in = phi <2 x double> [ %i.jh, %bb.ad ], [ %i.if, %.outer.us ] ; 3 uses
  %shift530 = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop531 = fmul <2 x double> %i.in, %shift530
  %i.io = extractelement <2 x double> %foldExtExtBinop531, i64 0
  %i.ip = fmul double %.sroa.030.0.ph.lcssa154.us, %.sroa.030.0.ph.lcssa154.us
  %i.iq = fsub double %i.io, %i.ip                ; 2 uses
  %i.ir = call double @llvm.fabs.f64(double %i.iq)
  %i.is = fcmp olt double %i.ir, 1.000000e-08
  br i1 %i.is, label %.split233.us, label %bb.af

bb.af:                                            ; preds = %.outer._crit_edge.us
  %i.it = insertelement <2 x double> poison, double %.sroa.030.0.ph.lcssa154.us, i64 0
  %i.iu = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.iv = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x double> %i.iu, %i.iv
  %i.ix = fmul <2 x double> %i.im, %i.in
  %i.iy = fsub <2 x double> %i.iw, %i.ix
  %i.iz = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fdiv <2 x double> %i.iy, %i.ja
  %i.jc = fadd <2 x double> %i.gp, %i.jb          ; 2 uses
  store <2 x double> %i.jc, ptr %i.gi, align 8
  %i.jd = fmul <2 x double> %i.im, %i.im          ; 2 uses
  %shift533 = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop534 = fadd <2 x double> %shift533, %i.jd
  %13 = extractelement <2 x double> %foldExtExtBinop534, i64 0
  %i.je = call double @llvm.sqrt.f64(double %13)
  %i.jf = fcmp olt double %i.je, %8
  %exitcond.not = icmp eq i64 %i.gq, %10
  %or.cond = select i1 %i.jf, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit113, label %.lr.ph203.us.preheader

.lr.ph203.us:                                     ; preds = %.lr.ph203.us.preheader, %.outer.us
  %.sroa.030.0.ph219.us = phi double [ %i.ik, %.outer.us ], [ 0.000000e+00, %.lr.ph203.us.preheader ] ; 2 uses
  %.sroa.055.0.ph215.us = phi ptr [ %i.gr, %.outer.us ], [ %i.gj, %.lr.ph203.us.preheader ]
  %i.jg = phi <2 x double> [ %i.hv, %.outer.us ], [ zeroinitializer, %.lr.ph203.us.preheader ] ; 2 uses
  %i.jh = phi <2 x double> [ %i.if, %.outer.us ], [ zeroinitializer, %.lr.ph203.us.preheader ] ; 2 uses
  br label %bb.aa

.split233.us:                                     ; preds = %.outer._crit_edge.us
  %i.ji = fmul <2 x double> %i.im, splat (double 1.000000e-01)
  %i.jj = fmul <2 x double> %i.im, %i.im          ; 2 uses
  %shift536 = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop537 = fadd <2 x double> %shift536, %i.jj
  %14 = extractelement <2 x double> %foldExtExtBinop537, i64 0
  %i.jk = call double @llvm.sqrt.f64(double %14)
  %i.jl = call nsz double @llvm.maximumnum.f64(double %i.jk, double 1.000000e-08)
  %i.jm = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = fdiv <2 x double> %i.ji, %i.jn
  %i.jp = fsub <2 x double> %i.gp, %i.jo
  store <2 x double> %i.jp, ptr %i.gi, align 8
  br label %.loopexit113

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not250, label %.loopexit113, label %.invoke

.loopexit:                                        ; preds = %.outer.i, %bb.z
  %i.jq = phi <2 x double> [ %i.fc, %bb.z ], [ %i.gd, %.outer.i ] ; 2 uses
  %i.jr = fmul <2 x double> %i.jq, %i.jq          ; 2 uses
  %shift539 = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop540 = fadd <2 x double> %shift539, %i.jr
  %15 = extractelement <2 x double> %foldExtExtBinop540, i64 0
  %i.js = call noundef double @llvm.sqrt.f64(double %15) ; 2 uses
  %i.jt = fcmp ogt double %i.js, %.sroa.018.0190  ; 2 uses
  %.sroa.018.1 = select i1 %i.jt, double %i.js, double %.sroa.018.0190 ; 2 uses
  %.sroa.07.1 = select i1 %i.jt, i64 %i.ex, i64 %.sroa.07.0191 ; 2 uses
  %.sroa.021.0 = getelementptr inbounds nuw i8, ptr %.sroa.021.0192, i64 8 ; 2 uses
  %i.ju = icmp eq ptr %.sroa.021.0, %i.ee
  br i1 %i.ju, label %._crit_edge195, label %.lr.ph194.split

.invoke:                                          ; preds = %.preheader.split, %bb.ae, %bb.ab
  %i.jv = phi i64 [ %i.gs, %bb.ae ], [ %i.gu, %bb.ab ], [ %.sroa.07.0.lcssa.fr, %.preheader.split ]
  %i.jw = phi i64 [ %3, %bb.ae ], [ %1, %bb.ab ], [ %3, %.preheader.split ]
  %i.jx = phi ptr [ @3574, %bb.ae ], [ @3573, %bb.ab ], [ @3572, %.preheader.split ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.jv, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jx) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit113:                                     ; preds = %bb.af, %.preheader.split.us.preheader, %.preheader.split, %.split233.us
  %exitcond327.not = icmp eq i64 %i.ei, %9
  br i1 %exitcond327.not, label %._crit_edge247, label %bb.r

.sink.split:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82, %._crit_edge247, %._crit_edge.split, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, double noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !67 ; 4 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153436)
  %.val.i = load i64, ptr %3, align 8, !alias.scope !153436 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !153436, !nonnull !67, !noundef !67
  %i.g = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !153436
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !67, !noundef !67 ; 5 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %scalar.ph, %middle.block, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.b, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEECskcxRuJ53GpR_9rustworkx.exit31
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.051 = phi ptr [ %i.s, %bb.c ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.k = phi <2 x double> [ %i.v, %bb.c ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.l = load i64, ptr %.sroa.05.051, align 8, !noundef !67 ; 3 uses
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %bb.c, label %bb.d

.lr.ph58.preheader:                               ; preds = %bb.c
  %i.n = uitofp nneg i64 %i.b to double
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.v, %i.p
  %i.r = load i64, ptr %3, align 8, !range !70, !noundef !67 ; 4 uses
  br label %.lr.ph58

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.051, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.u = load <2 x double>, ptr %i.t, align 8
  %i.v = fadd <2 x double> %i.k, %i.u             ; 2 uses
  %.not = icmp eq ptr %i.s, %i.j
  br i1 %.not, label %.lr.ph58.preheader, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3605) #61
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.g, %bb.d
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = icmp eq i64 %i.r, 0
  br i1 %i.x, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35.sink.split

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %bb.h
  %.sroa.07.056 = phi double [ %spec.store.select, %bb.h ], [ -inf, %.lr.ph58.preheader ] ; 2 uses
  %.sroa.5.055 = phi ptr [ %i.av, %bb.h ], [ %i.i, %.lr.ph58.preheader ] ; 2 uses
  %i.y = load i64, ptr %.sroa.5.055, align 8, !noalias !153437, !noundef !67 ; 2 uses
  %i.z = icmp ult i64 %i.y, %1
  br i1 %i.z, label %bb.h, label %bb.g, !prof !77

._crit_edge59:                                    ; preds = %bb.h
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEECskcxRuJ53GpR_9rustworkx.exit31, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i30

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i30: ; preds = %._crit_edge59
  %i.ab = shl nuw i64 %i.r, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !153438
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEECskcxRuJ53GpR_9rustworkx.exit31

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEECskcxRuJ53GpR_9rustworkx.exit31: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i30, %._crit_edge59
  %i.ac = fcmp ogt double %spec.store.select, 0.000000e+00
  br i1 %i.ac, label %.lr.ph63, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit

.lr.ph63:                                         ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEECskcxRuJ53GpR_9rustworkx.exit31
  %.idx64 = shl nuw nsw i64 %1, 4                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx64
  %i.ae = fdiv double %2, %spec.store.select      ; 2 uses
  %i.af = add nsw i64 %.idx64, -16                ; 2 uses
  %i.ag = lshr exact i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph63
  %n.vec = and i64 %i.ah, 2305843009213693950     ; 3 uses
  %i.ai = shl i64 %n.vec, 4
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %next.gep81 = getelementptr i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8
  %wide.load82 = load <2 x double>, ptr %next.gep81, align 8
  %i.am = fmul <2 x double> %broadcast.splat, %wide.load
  %i.an = fmul <2 x double> %broadcast.splat, %wide.load82
  store <2 x double> %i.am, ptr %next.gep, align 8
  store <2 x double> %i.an, ptr %next.gep81, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !153432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph63, %middle.block
  %.sroa.016.061.ph = phi ptr [ %0, %.lr.ph63 ], [ %i.aj, %middle.block ]
  %i.ap = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.016.061 = phi ptr [ %i.ar, %scalar.ph ], [ %.sroa.016.061.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.061, i64 16 ; 2 uses
  %i.as = load <2 x double>, ptr %.sroa.016.061, align 8
  %i.at = fmul <2 x double> %i.aq, %i.as
  store <2 x double> %i.at, ptr %.sroa.016.061, align 8
  %i.au = icmp eq ptr %i.ar, %i.ad
  br i1 %i.au, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit, label %scalar.ph, !llvm.loop !153433

bb.g:                                             ; preds = %.lr.ph58
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3606) #61
          to label %bb.e unwind label %bb.f

bb.h:                                             ; preds = %.lr.ph58
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.5.055, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ax = load <2 x double>, ptr %i.aw, align 8
  %i.ay = fsub <2 x double> %i.ax, %i.q           ; 2 uses
  store <2 x double> %i.ay, ptr %i.aw, align 8
  %i.az = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ay) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = extractelement <2 x double> %i.az, i64 1
  %i.bc = tail call nsz double @llvm.maximumnum.f64(double %i.ba, double %i.bb) ; 2 uses
  %i.bd = fcmp olt double %.sroa.07.056, %i.bc
  %spec.store.select = select i1 %i.bd, double %i.bc, double %.sroa.07.056 ; 3 uses
  %i.be = icmp eq ptr %i.av, %i.j
  br i1 %i.be, label %._crit_edge59, label %.lr.ph58

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35.sink.split: ; preds = %bb.f, %bb.i
  %.val.i32.sink = phi i64 [ %.val.i32, %bb.i ], [ %i.r, %bb.f ]
  %.pn39.ph = phi { ptr, i32 } [ %i.bg, %bb.i ], [ %i.w, %bb.f ]
  %i.bf = shl nuw i64 %.val.i32.sink, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !67
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35.sink.split, %bb.i, %bb.f
  %.pn39 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.bg, %bb.i ], [ %.pn39.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35.sink.split ]
end_hunk_18
begin_hunk_19_@_RNvXsa_NtCskcxRuJ53GpR_9rustworkx9iteratorsSTINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBM_5types3any5PyAnyEINtNtCs87CvPiUlf0m_5alloc3vec3VecBH_EENtB5_9PyDisplay3strB7_:bb.a
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ef = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i32.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !169159
  br label %.thread110

.thread:                                          ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i42.i, %.thread118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !169157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.1, ptr %i.eg, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.1, ptr %.sroa.495.0..sroa_idx, align 8
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.1, ptr %.sroa.596.0..sroa_idx, align 8
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.697.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.i, i64 40, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !169233)
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !169233, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i = load i64, ptr %i.ae, align 8, !alias.scope !169233, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169234)
  %i.eh = icmp eq i64 %.val1.i, 0
  br i1 %i.eh, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.ej, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %.thread ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.ej = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169235)
  call void @llvm.experimental.noalias.scope.decl(metadata !169236)
  %.val.i.i.i.i.i14 = load i64, ptr %i.ei, align 8, !alias.scope !169237, !noalias !169233 ; 2 uses
  %i.ek = icmp eq i64 %.val.i.i.i.i.i14, 0
  br i1 %i.ek, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i15

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i15: ; preds = %.lr.ph.i.i.i13
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.val1.i.i.i.i.i16 = load ptr, ptr %i.el, align 8, !alias.scope !169237, !noalias !169233, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i16, i64 noundef %.val.i.i.i.i.i14, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169238
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i15, %.lr.ph.i.i.i13
  %i.em = icmp eq i64 %i.ej, %.val1.i
  br i1 %i.em, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i13

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.thread
  %.val2.i = load i64, ptr %i.w, align 8, !alias.scope !169233 ; 2 uses
  %i.en = icmp eq i64 %.val2.i, 0
  br i1 %i.en, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39.sink.split

.thread110:                                       ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !169157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.eo = load i64, ptr %i.ae, align 8, !alias.scope !169239, !noalias !169240, !noundef !67 ; 3 uses
  %i.ep = load i64, ptr %i.w, align 8, !range !70, !alias.scope !169239, !noalias !169240, !noundef !67
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.thread110
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscQOBX8uaZYv_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ah unwind label %bb.ag, !noalias !169240

bb.ag:                                            ; preds = %bb.af
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = icmp eq i64 %.sroa.7.8.copyload53, 0
  br i1 %i.es, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i18

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i18: ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.8.copyload57) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.8.copyload57, i64 noundef %.sroa.7.8.copyload53, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169241
  br label %.body

bb.ah:                                            ; preds = %bb.af, %.thread110
  %i.et = load ptr, ptr %i.ad, align 8, !alias.scope !169239, !noalias !169240, !nonnull !67, !noundef !67
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.eo ; 3 uses
  store i64 %.sroa.7.8.copyload53, ptr %i.eu, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %.sroa.12.8.copyload57, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %.sroa.14.8.copyload61, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ev = add i64 %i.eo, 1                        ; 2 uses
  store i64 %i.ev, ptr %i.ae, align 8, !alias.scope !169239, !noalias !169240
  %i.ew = icmp eq ptr %i.ao, %i.af
  br i1 %i.ew, label %._crit_edge.loopexit, label %bb.d

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39.sink.split: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i36
  %.val2.i.sink = phi i64 [ %.val2.i37, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i36 ], [ %.val2.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.val.i.sink = phi ptr [ %.val.i28, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i36 ], [ %.val.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.ex = mul nuw i64 %.val2.i.sink, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.sink, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !67
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39.sink.split, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre = load ptr, ptr %i.ad, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread, %._crit_edge.loopexit
  %i.ey = phi ptr [ %i.ae, %._crit_edge.loopexit ], [ %i.aa, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.ez = phi ptr [ %i.ad, %._crit_edge.loopexit ], [ %i.z, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.fa = phi i64 [ %i.ev, %._crit_edge.loopexit ], [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.fb = phi ptr [ %.pre, %._crit_edge.loopexit ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCs87CvPiUlf0m_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fb, i64 noundef %i.fa)
          to label %bb.ai unwind label %bb.ad

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @3163, ptr noundef nonnull %i.t)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169242)
  call void @llvm.experimental.noalias.scope.decl(metadata !169243)
  %.val.i.i22 = load i64, ptr %i.u, align 8, !alias.scope !169244 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i22, 0
  br i1 %i.fd, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i23 = load ptr, ptr %i.fe, align 8, !alias.scope !169244, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i23, i64 noundef %.val.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169244
  br label %.body

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !169245)
  call void @llvm.experimental.noalias.scope.decl(metadata !169246)
  %.val.i.i24 = load i64, ptr %i.u, align 8, !alias.scope !169247 ; 2 uses
  %i.ff = icmp eq i64 %.val.i.i24, 0
  br i1 %i.ff, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit27, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i25

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i25: ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i26 = load ptr, ptr %i.fg, align 8, !alias.scope !169247, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i26, i64 noundef %.val.i.i24, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169247
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit27

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit27: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i25, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !169248)
  %.val.i28 = load ptr, ptr %i.ez, align 8, !alias.scope !169248, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i29 = load i64, ptr %i.ey, align 8, !alias.scope !169248, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169249)
  %i.fi = icmp eq i64 %.val1.i29, 0
  br i1 %i.fi, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i36, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit27, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i35
  %.sroa.0.011.i.i.i31 = phi i64 [ %i.fk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i35 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit27 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %.val.i28, i64 %.sroa.0.011.i.i.i31 ; 2 uses
  %i.fk = add nuw nsw i64 %.sroa.0.011.i.i.i31, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169250)
  call void @llvm.experimental.noalias.scope.decl(metadata !169251)
  %.val.i.i.i.i.i32 = load i64, ptr %i.fj, align 8, !alias.scope !169252, !noalias !169248 ; 2 uses
  %i.fl = icmp eq i64 %.val.i.i.i.i.i32, 0
  br i1 %i.fl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i35, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i33

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i30
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.val1.i.i.i.i.i34 = load ptr, ptr %i.fm, align 8, !alias.scope !169252, !noalias !169248, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i34, i64 noundef %.val.i.i.i.i.i32, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169253
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i35

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i35: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i33, %.lr.ph.i.i.i30
  %i.fn = icmp eq i64 %i.fk, %.val1.i29
  br i1 %i.fn, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i36, label %.lr.ph.i.i.i30

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i36: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i35, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit27
  %.val2.i37 = load i64, ptr %i.w, align 8, !alias.scope !169248 ; 2 uses
  %i.fo = icmp eq i64 %.val2.i37, 0
  br i1 %i.fo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit39.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCskcxRuJ53GpR_9rustworkx9iteratorsSTjjENtB5_9PyDisplay3strB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = mul nuw i64 %2, 24                       ; 2 uses
  %.not.i = icmp samesign ugt i64 %2, 384307168202282325
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.c

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.b
  store i64 0, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !169287
  %i.k = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !169287 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.448.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  %.sroa.10.0.ph = phi i64 [ %i.g, %bb.c ], [ undef, %bb.a ]
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.448.0.ph, i64 %.sroa.10.0.ph) #61
  unreachable

.lr.ph:                                           ; preds = %bb.c
  store i64 %2, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %i.n, align 8
  %.idx = shl nuw nsw i64 %2, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.03.070 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.k ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.070, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvXs1L_NtCskcxRuJ53GpR_9rustworkx9iteratorsTjjENtB6_9PyDisplay3strB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.03.070)
          to label %bb.f unwind label %.loopexit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.m, %bb.j, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ap, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.ae, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %i.ap, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.e, align 8, !range !68, !noundef !67
  %i.s = trunc nuw i64 %i.r to i1
  %.sroa.057.0.copyload = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.458.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8 ; 4 uses
  %.sroa.559.0.copyload = load i64, ptr %.sroa.552.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.664.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.660.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.057.0.copyload, ptr %i.t, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.458.0.copyload, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.559.0.copyload, ptr %.sroa.563.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !169288)
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !169288, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i = load i64, ptr %i.n, align 8, !alias.scope !169288, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169289)
  %i.u = icmp eq i64 %.val1.i, 0
  br i1 %i.u, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.w, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169290)
  call void @llvm.experimental.noalias.scope.decl(metadata !169291)
  %.val.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !169292, !noalias !169288 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !169292, !noalias !169288, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169293
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i
  %i.z = icmp eq i64 %i.w, %.val1.i
  br i1 %i.z, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.g
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !169288 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i, 0
  br i1 %i.aa, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit28, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit28.sink.split

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = load i64, ptr %i.n, align 8, !alias.scope !169294, !noalias !169295, !noundef !67 ; 3 uses
  %i.ac = load i64, ptr %i.f, align 8, !range !70, !alias.scope !169294, !noalias !169295, !noundef !67
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscQOBX8uaZYv_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.j, !noalias !169295

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %.sroa.057.0.copyload, 0
  br i1 %i.af, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.458.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.458.0.copyload, i64 noundef %.sroa.057.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169296
  br label %.body

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ag = load ptr, ptr %i.m, align 8, !alias.scope !169294, !noalias !169295, !nonnull !67, !noundef !67
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ab ; 3 uses
  store i64 %.sroa.057.0.copyload, ptr %i.ah, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.458.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.559.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ai = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.n, align 8, !alias.scope !169294, !noalias !169295
  %i.aj = icmp eq ptr %i.q, %i.o
  br i1 %i.aj, label %._crit_edge.loopexit, label %bb.e

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit28.sink.split: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i25
  %.val2.i.sink = phi i64 [ %.val2.i26, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i25 ], [ %.val2.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.val.i.sink = phi ptr [ %.val.i17, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i25 ], [ %.val.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.ak = mul nuw i64 %.val2.i.sink, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.sink, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !67
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit28

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit28: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtBG_6string6StringEECskcxRuJ53GpR_9rustworkx.exit28.sink.split, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load ptr, ptr %i.m, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread, %._crit_edge.loopexit
  %i.al = phi ptr [ %i.n, %._crit_edge.loopexit ], [ %i.j, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.am = phi ptr [ %i.m, %._crit_edge.loopexit ], [ %i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.an = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  %i.ao = phi ptr [ %.pre, %._crit_edge.loopexit ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCs87CvPiUlf0m_5alloc3str17join_generic_copyehNtNtB4_6string6StringECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.an)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @3163, ptr noundef nonnull %i.b)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169297)
  call void @llvm.experimental.noalias.scope.decl(metadata !169298)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !169299 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i, 0
  br i1 %i.aq, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !169299, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !169299
  br label %.body

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.l
end_hunk_19
begin_hunk_20_@_RNvXsh_NtCslwFuT2d6ECx_4core3fmteNtB5_5Debug3fmt

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs59S24YpdcPa_10serde_core2deDNtB5_8ExpectedEL_NtNtCslwFuT2d6ECx_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCse4xgDkpji04_10num_bigint7biguintNtB5_7BigUintNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCslwFuT2d6ECx_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCslwFuT2d6ECx_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3Tt2PVjAfPX_5numpy6borrow6shared7release(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods4repr(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13python_format(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsl_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numiNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB8_8instance5BoundNtB4_5PySetENtB4_12PySetMethods4iter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo35types9frozensetINtNtB9_8instance5BoundNtB5_11PyFrozenSetENtB5_18PyFrozenSetMethods4iter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCscQOBX8uaZYv_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsbv8bzjJ0gSk_6flate23memNtB5_10Decompress5reset(ptr noalias nofree noundef align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCscQOBX8uaZYv_3std2fsNtB5_4FileNtNtNtCs87CvPiUlf0m_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMse_NtNtCs1zNYWXRTdJn_9quick_xml6events10attributesNtB5_9IterState4next(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB5_19FunctionDescription29too_many_positional_arguments(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB5_19FunctionDescription27unexpected_keyword_argument(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_10tp_dealloc(ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE27get_borrowed_item_unchecked(ptr noundef nonnull, i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple18wrong_tuple_length(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCslwFuT2d6ECx_4core3fmt5floatfNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs87CvPiUlf0m_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs87CvPiUlf0m_5alloc4syncINtB5_3ArcNtNtCslLviULm4Laq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCslwFuT2d6ECx_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCslwFuT2d6ECx_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCslwFuT2d6ECx_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCslwFuT2d6ECx_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCslwFuT2d6ECx_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCslwFuT2d6ECx_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash17hash_bytes_medium(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCs3Tt2PVjAfPX_5numpy6npyffi5array13PyArray_Check(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB5_11BoolVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs1a_NtNtCs59S24YpdcPa_10serde_core2de5implsjNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCslwFuT2d6ECx_4core3str5errorNtB5_14ParseBoolErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #41

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo311conversions11num_complexINtCse4EQE0hdTSP_11num_complex7ComplexdENtNtB9_10conversion12IntoPyObject13into_pyobject(double noundef, double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCscQOBX8uaZYv_3std3sys5stdio4unixNtB5_6StderrNtNtNtCslwFuT2d6ECx_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsp_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numRjNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #56

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smin.i128(i128, i128) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #41

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #39 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #43 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #47 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #49 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #55 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #58 = { cold noreturn nounwind }
attributes #59 = { nounwind }
attributes #60 = { noinline noreturn }
attributes #61 = { noreturn }
attributes #62 = { noinline }
attributes #63 = { cold }
attributes #64 = { inlinehint }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !{!0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!1 = distinct !{!1, !0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!2 = distinct !{!2, !0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!3 = distinct !{!3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!4 = distinct !{!4, !3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!5 = distinct !{!5, !3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!6 = distinct !{!6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!7 = distinct !{!7, !6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!8 = distinct !{!8, !6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!9 = distinct !{!9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!10 = distinct !{!10, !9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!11 = distinct !{!11, !9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!12 = distinct !{!12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!13 = distinct !{!13, !12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!14 = distinct !{!14, !12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!15 = distinct !{!15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!16 = distinct !{!16, !15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!17 = distinct !{!17, !15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!18 = distinct !{!18, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx"}
!19 = distinct !{!19, !18, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx: argument 0"}
!20 = distinct !{!20, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx"}
!21 = distinct !{!21, !20, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx: argument 0"}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{!27, !"_RNvXse_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!28 = distinct !{!28, !27, !"_RNvXse_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{null, null}
!32 = distinct !{!32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!33 = distinct !{!33, !32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!34 = distinct !{!34, !32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!35 = distinct !{!35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!36 = distinct !{!36, !35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!37 = distinct !{!37, !35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!38 = distinct !{!38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!39 = distinct !{!39, !38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!40 = distinct !{!40, !38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!41 = distinct !{!41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!42 = distinct !{!42, !41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!43 = distinct !{!43, !41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!44 = distinct !{!44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!45 = distinct !{!45, !44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!46 = distinct !{!46, !44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!47 = distinct !{null, null, null}
!48 = distinct !{null, null, null, null, null}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{null, null, null, null, null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null, null}
!56 = distinct !{null}
!57 = distinct !{null, null}
!58 = distinct !{null, null, null}
!59 = distinct !{null, null, null, null, null}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 2, !"RtLibUseGOT", i32 1}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!66 = !{i64 -1, i64 -9223372036854775808}
!67 = !{}
!68 = !{i64 0, i64 2}
!69 = !{i8 0, i8 2}
!70 = !{i64 0, i64 -9223372036854775808}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!"branch_weights", !"expected", i32 2144103052, i32 3380596}
!73 = !{!"branch_weights", i32 2002, i32 2000}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{i32 0, i32 2}
!77 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!78 = !{i8 0, i8 3}
!79 = !{!"branch_weights", i32 1, i32 4001}
!80 = !{!"branch_weights", i32 1, i32 1999}
!81 = !{!"branch_weights", i32 0, i32 1}
!82 = !{!1}
!83 = !{!2}
!84 = !{!"branch_weights", i32 2146410443, i32 1073205}
!85 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!86 = !{!4}
!87 = !{!5}
!88 = !{!7}
!89 = !{!8}
!90 = !{!"branch_weights", i32 4001, i32 4000000}
!91 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!92 = !{!13}
!93 = !{!14}
!94 = !{!16}
!95 = !{!17}
!96 = !{!"branch_weights", i32 1718845484, i32 428638164}
!97 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!98 = !{i64 8}
!99 = !{!"address", !"read_provenance"}
!100 = !{!21, !19}
!101 = !{i64 4}
!102 = !{!"branch_weights", i32 4292820, i32 2143190828}
!103 = !{i8 0, i8 7}
!104 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!105 = !{i64 0, i64 -9223372036854775801}
!106 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!107 = !{i64 -2, i64 -9223372036854775808}
!108 = !{i8 0, i8 6}
!109 = !{i64 -1, i64 6}
!110 = !{i8 0, i8 5}
!111 = !{i8 0, i8 44}
!112 = !{i64 -1, i64 -9223372036854775795}
!113 = !{!"branch_weights", !"expected", i32 1259889, i32 2146223759}
!114 = !{!"branch_weights", i32 3167468, i32 2144316180}
!115 = !{!"branch_weights", !"expected", i32 1584884, i32 2145898764}
!116 = !{i64 0, i64 10}
!117 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!118 = !{i32 0, i32 -1}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = !{!"branch_weights", !"expected", i32 2145302618, i32 2181030}
!121 = !{!"llvm.loop.peeled.count", i32 1}
!122 = !{i16 0, i16 2}
end_hunk_20
