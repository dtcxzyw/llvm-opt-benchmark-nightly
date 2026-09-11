Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.15?download=true
inline.NumInlined: 900
inline.NumDeleted: 427
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_:bb.a
  %i.be = lshr i64 %i.bd, 1                       ; 8 uses
  %i.bf = lshr i64 %.sroa.023.144, 1              ; 6 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 4 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bh ; 6 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.144 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.144
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bk, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 42700796466920259) %i.be, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias noundef nonnull %5)
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  %i.bu = icmp eq i64 %i.be, 0
  %i.bv = icmp eq i64 %i.bf, 0
  %or.cond.i = or i1 %i.bv, %i.bu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 range(i64 0, -9223372036854775808) %i.be) ; 2 uses
  %i.bw = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bw, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %i.bi, i64 %i.be ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.be, %i.bf  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.bx, ptr %i.bi
  %i.by = mul nuw nsw i64 %.sroa.0.0.i.i35, 216   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.by, i1 false), !alias.scope !591
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by ; 3 uses
  br i1 %.not.i36, label %.preheader.i37, label %.lr.ph.i.i

.preheader.i37:                                   ; preds = %.critedge.i, %.preheader.i37
  %i.ca = phi ptr [ %i.ck, %.preheader.i37 ], [ %i.bz, %.critedge.i ]
  %i.cb = phi ptr [ %i.ci, %.preheader.i37 ], [ %i.bx, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ce, %.preheader.i37 ], [ %i.m, %.critedge.i ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -216 ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 -216 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -216 ; 2 uses
  %i.cf = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.cc), !noalias !592 ; 3 uses
  %..i.i = select i1 %i.cf, ptr %i.cc, ptr %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ce, ptr noundef nonnull align 8 dereferenceable(216) %..i.i, i64 216, i1 false), !alias.scope !591, !noalias !592
  %i.cg = xor i1 %i.cf, true
  %i.ch = zext i1 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [216 x i8], ptr %i.cc, i64 %i.ch ; 3 uses
  %i.cj = zext i1 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [216 x i8], ptr %i.cd, i64 %i.cj ; 3 uses
  %i.cl = icmp eq ptr %i.ci, %i.bi
  %i.cm = icmp eq ptr %i.ck, %2
  %or.cond.i.i = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i, label %.preheader.i37

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cn = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.bi, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.bx, %.critedge.i ] ; 3 uses
  %i.co = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cp = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %.sroa.0.02.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.co), !noalias !593 ; 3 uses
  %i.cq = xor i1 %i.cp, true
  %spec.select.i.i = select i1 %i.cp, ptr %.sroa.0.02.i.i, ptr %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.cn, ptr noundef nonnull align 8 dereferenceable(216) %spec.select.i.i, i64 216, i1 false), !alias.scope !591, !noalias !593
  %i.cr = zext i1 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [216 x i8], ptr %i.co, i64 %i.cr ; 3 uses
  %i.ct = zext i1 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [216 x i8], ptr %.sroa.0.02.i.i, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 216 ; 2 uses
  %i.cw = icmp ne ptr %i.cs, %i.bz
  %i.cx = icmp ne ptr %i.cu, %i.m
  %or.cond.i19.i = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i37
  %.sroa.13.1.i = phi ptr [ %i.ci, %.preheader.i37 ], [ %i.cv, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ck, %.preheader.i37 ], [ %i.bz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i37 ], [ %i.cs, %.lr.ph.i.i ] ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.7.0.i to i64
  %i.cz = ptrtoint ptr %.sroa.0.1.i to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.da, i1 false), !alias.scope !591, !noalias !594
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit.i
  %i.db = shl nuw nsw i64 %i.bg, 1
  %i.dc = or disjoint i64 %i.db, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw [216 x i8], ptr %i.bi, i64 %i.be
  %i.de = or i64 %i.bf, 1
  %i.df = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %i.dd, i64 noundef range(i64 0, 42700796466920259) %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias noundef nonnull %5)
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_.exit ], [ %i.bo, %bb.u ] ; 2 uses
  %i.dj = icmp ugt i64 %i.ax, 1
  br i1 %i.dj, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dk = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dl = lshr i64 %.sroa.018.0, 1
  %i.dm = add nuw i64 %i.dl, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dn = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dn, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.do = or i64 %1, 1
  %i.dp = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  %i.ds = xor i32 %i.dr, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures20ForeignKeyConstraintNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias noundef nonnull %5)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYBW_NtNtBa_3cmp10PartialOrd2ltEB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.aq, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aq ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ls, %bb.aq ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.lq, %bb.aq ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.fw, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, %bb.h
  br i1 %4, label %bb.x, label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !647, !noalias !648, !nonnull !4, !align !6, !noundef !4 ; 9 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !647, !noalias !648, !nonnull !4, !align !6, !noundef !4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !653, !noalias !654, !nonnull !4, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !653, !noalias !654, !noundef !4 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !655, !noalias !656, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !655, !noalias !656, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.y)
  %i.z = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.w, i64 %spec.store.select.i.i.i.i.i), !noalias !657 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = sub i64 %i.u, %i.y
  %spec.select.i.i.i.i.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa ; 2 uses
  %i.ad = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.ad, label %bb.l, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.val10.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !653, !noalias !654, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %.val10.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !653, !noalias !654, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val11.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !655, !noalias !656, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.val11.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !655, !noalias !656, !noundef !4 ; 2 uses
  %spec.store.select1.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.al)
  %i.am = tail call i32 @memcmp(ptr nonnull %i.af, ptr nonnull %i.aj, i64 %spec.store.select1.i.i.i.i.i), !noalias !657 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %i.ah, %i.al
  %spec.select30.i.i.i.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.an ; 2 uses
  %i.aq = icmp eq i64 %spec.select30.i.i.i.i.i, 0
  br i1 %i.aq, label %bb.m, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.val10.i, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !range !12, !alias.scope !653, !noalias !654, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.as, -1
  %i.at = getelementptr inbounds nuw i8, ptr %.val11.i, i64 48
  %i.au = load i64, ptr %i.at, align 8, !range !12, !alias.scope !655, !noalias !656, !noundef !4
  %.not28.i.i.i.i.not.i = icmp eq i64 %i.au, -1   ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split38.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not28.i.i.i.i.not.i, label %.critedge.preheader.i, label %.split.i

.split38.i:                                       ; preds = %bb.m
  br i1 %.not28.i.i.i.i.not.i, label %.critedge.preheader.i, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit.i, %.split.i, %.split38.i
  %.not66.i = icmp eq i64 %i.n, 2
  br i1 %.not66.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %.lr.ph.i

.split.i:                                         ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.val10.i, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !653, !noalias !654, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.val10.i, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !653, !noalias !654, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val11.i, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !655, !noalias !656, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.val11.i, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !655, !noalias !656, !noundef !4 ; 2 uses
  %spec.store.select2.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.bc)
  %i.bd = tail call i32 @memcmp(ptr nonnull %i.aw, ptr nonnull %i.ba, i64 %spec.store.select2.i.i.i.i.i), !noalias !657 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %i.ay, %i.bc
  %spec.select31.i.i.i.i.i = select i1 %i.bf, i64 %i.bg, i64 %i.be
  %i.bh = icmp slt i64 %spec.select31.i.i.i.i.i, 0
  br i1 %i.bh, label %.preheader.i, label %.critedge.preheader.i

_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.in.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.k ], [ %spec.select30.i.i.i.i.i, %bb.l ]
  %.sroa.0.0.i.i.i.i.i = icmp slt i64 %.sroa.0.0.i.i.i.i.in.i, 0
  br i1 %.sroa.0.0.i.i.i.i.i, label %.preheader.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit.i, %.split.i, %.split38.i, %bb.n
  %.not67.i = icmp eq i64 %i.n, 2
  br i1 %.not67.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.critedge.preheader.i, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i
  %i.bi = phi i64 [ %i.bo, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i ], [ %i.u, %.critedge.preheader.i ] ; 2 uses
  %i.bj = phi ptr [ %i.bm, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i ], [ %i.s, %.critedge.preheader.i ]
  %.val9.i = phi ptr [ %.val8.i, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i ], [ %.val10.i, %.critedge.preheader.i ] ; 5 uses
  %.sroa.01.0.i60.i = phi i64 [ %i.cy, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i60.i
  %.val8.i = load ptr, ptr %i.bk, align 8, !alias.scope !647, !noalias !648, !nonnull !4, !align !6, !noundef !4 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.bl = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !662, !noalias !663, !nonnull !4, !noundef !4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !662, !noalias !663, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bi)
  %i.bp = tail call i32 @memcmp(ptr nonnull %i.bm, ptr nonnull %i.bj, i64 %spec.store.select.i.i.i.i12.i), !noalias !664 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub i64 %i.bo, %i.bi
  %spec.select.i.i.i.i13.i = select i1 %i.br, i64 %i.bs, i64 %i.bq ; 2 uses
  %i.bt = icmp eq i64 %spec.select.i.i.i.i13.i, 0
  br i1 %i.bt, label %bb.o, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.i

bb.o:                                             ; preds = %.lr.ph61.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val8.i, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !662, !noalias !663, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !662, !noalias !663, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !665, !noalias !666, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %.val9.i, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !665, !noalias !666, !noundef !4 ; 2 uses
  %spec.store.select1.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.cb)
  %i.cc = tail call i32 @memcmp(ptr nonnull %i.bv, ptr nonnull %i.bz, i64 %spec.store.select1.i.i.i.i15.i), !noalias !664 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp eq i32 %i.cc, 0
  %i.cf = sub i64 %i.bx, %i.cb
  %spec.select30.i.i.i.i16.i = select i1 %i.ce, i64 %i.cf, i64 %i.cd ; 2 uses
  %i.cg = icmp eq i64 %spec.select30.i.i.i.i16.i, 0
  br i1 %i.cg, label %bb.p, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.i

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !range !12, !alias.scope !662, !noalias !663, !noundef !4
  %.not.i.i.i.i17.i = icmp eq i64 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !range !12, !alias.scope !665, !noalias !666, !noundef !4
  %.not28.i.i.i.i21.not.i = icmp eq i64 %i.ck, -1 ; 2 uses
  br i1 %.not.i.i.i.i17.i, label %.split41.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not28.i.i.i.i21.not.i, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i, label %.split40.i

.split41.i:                                       ; preds = %bb.p
  br i1 %.not28.i.i.i.i21.not.i, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i

.split40.i:                                       ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.val8.i, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !662, !noalias !663, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !662, !noalias !663, !noundef !4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val9.i, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !665, !noalias !666, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %.val9.i, i64 64
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !665, !noalias !666, !noundef !4 ; 2 uses
  %spec.store.select2.i.i.i.i19.i = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cs)
  %i.ct = tail call i32 @memcmp(ptr nonnull %i.cm, ptr nonnull %i.cq, i64 %spec.store.select2.i.i.i.i19.i), !noalias !664 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp eq i32 %i.ct, 0
  %i.cw = sub i64 %i.co, %i.cs
  %spec.select31.i.i.i.i20.i = select i1 %i.cv, i64 %i.cw, i64 %i.cu
  %i.cx = icmp slt i64 %spec.select31.i.i.i.i20.i, 0
  br i1 %i.cx, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i

_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.i: ; preds = %bb.o, %.lr.ph61.i
  %.sroa.0.0.i.i.i.i14.in.i = phi i64 [ %spec.select.i.i.i.i13.i, %.lr.ph61.i ], [ %spec.select30.i.i.i.i16.i, %bb.o ]
  %.sroa.0.0.i.i.i.i14.i = icmp slt i64 %.sroa.0.0.i.i.i.i14.in.i, 0
  br i1 %.sroa.0.0.i.i.i.i14.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i

_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i: ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.i, %.split40.i, %.split41.i, %bb.q
  %i.cy = add nuw nsw i64 %.sroa.01.0.i60.i, 1    ; 2 uses
  %exitcond71.not.i = icmp eq i64 %i.cy, %i.n
  br i1 %exitcond71.not.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %.lr.ph61.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.u
  %i.cz = phi i64 [ %i.df, %bb.u ], [ %i.u, %.preheader.i ] ; 2 uses
  %i.da = phi ptr [ %i.dd, %bb.u ], [ %i.s, %.preheader.i ]
  %.val7.i = phi ptr [ %.val.i, %bb.u ], [ %.val10.i, %.preheader.i ] ; 5 uses
  %.sroa.01.1.i54.i = phi i64 [ %i.ep, %bb.u ], [ 2, %.preheader.i ] ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i54.i
  %.val.i = load ptr, ptr %i.db, align 8, !alias.scope !647, !noalias !648, !nonnull !4, !align !6, !noundef !4 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !671, !noalias !672, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !671, !noalias !672, !noundef !4 ; 3 uses
  %spec.store.select.i.i.i.i23.i = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.cz)
  %i.dg = tail call i32 @memcmp(ptr nonnull %i.dd, ptr nonnull %i.da, i64 %spec.store.select.i.i.i.i23.i), !noalias !673 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp eq i32 %i.dg, 0
  %i.dj = sub i64 %i.df, %i.cz
  %spec.select.i.i.i.i24.i = select i1 %i.di, i64 %i.dj, i64 %i.dh ; 2 uses
  %i.dk = icmp eq i64 %spec.select.i.i.i.i24.i, 0
  br i1 %i.dk, label %bb.r, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit33.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !671, !noalias !672, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !671, !noalias !672, !noundef !4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val7.i, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !674, !noalias !675, !nonnull !4, !noundef !4
  %i.dr = getelementptr inbounds nuw i8, ptr %.val7.i, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !674, !noalias !675, !noundef !4 ; 2 uses
  %spec.store.select1.i.i.i.i26.i = tail call i64 @llvm.umin.i64(i64 %i.do, i64 %i.ds)
  %i.dt = tail call i32 @memcmp(ptr nonnull %i.dm, ptr nonnull %i.dq, i64 %spec.store.select1.i.i.i.i26.i), !noalias !673 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp eq i32 %i.dt, 0
  %i.dw = sub i64 %i.do, %i.ds
  %spec.select30.i.i.i.i27.i = select i1 %i.dv, i64 %i.dw, i64 %i.du ; 2 uses
  %i.dx = icmp eq i64 %spec.select30.i.i.i.i27.i, 0
  br i1 %i.dx, label %bb.s, label %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit33.i

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.dz = load i64, ptr %i.dy, align 8, !range !12, !alias.scope !671, !noalias !672, !noundef !4
  %.not.i.i.i.i28.i = icmp eq i64 %i.dz, -1
  %i.ea = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48
  %i.eb = load i64, ptr %i.ea, align 8, !range !12, !alias.scope !674, !noalias !675, !noundef !4
  %.not28.i.i.i.i32.not.i = icmp eq i64 %i.eb, -1 ; 2 uses
  br i1 %.not.i.i.i.i28.i, label %.split44.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not28.i.i.i.i32.not.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %.split43.i

.split44.i:                                       ; preds = %bb.s
  br i1 %.not28.i.i.i.i32.not.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %bb.u

.split43.i:                                       ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !671, !noalias !672, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !671, !noalias !672, !noundef !4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val7.i, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !674, !noalias !675, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %.val7.i, i64 64
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !674, !noalias !675, !noundef !4 ; 2 uses
  %spec.store.select2.i.i.i.i30.i = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ej)
  %i.ek = tail call i32 @memcmp(ptr nonnull %i.ed, ptr nonnull %i.eh, i64 %spec.store.select2.i.i.i.i30.i), !noalias !673 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i32 %i.ek, 0
  %i.en = sub i64 %i.ef, %i.ej
  %spec.select31.i.i.i.i31.i = select i1 %i.em, i64 %i.en, i64 %i.el
  %i.eo = icmp slt i64 %spec.select31.i.i.i.i31.i, 0
  br i1 %i.eo, label %bb.u, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i

_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit33.i: ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.0.i.i.i.i25.in.i = phi i64 [ %spec.select.i.i.i.i24.i, %.lr.ph.i ], [ %spec.select30.i.i.i.i27.i, %bb.r ]
  %.sroa.0.0.i.i.i.i25.i = icmp slt i64 %.sroa.0.0.i.i.i.i25.in.i, 0
  br i1 %.sroa.0.0.i.i.i.i25.i, label %bb.u, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i

bb.u:                                             ; preds = %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit33.i, %.split43.i, %.split44.i
  %i.ep = add nuw nsw i64 %.sroa.01.1.i54.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ep, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i, label %.lr.ph.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i: ; preds = %bb.u, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit33.i, %.split43.i, %.split44.i, %bb.t, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.i, %.split40.i, %.split41.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split41.i ], [ false, %.split40.i ], [ false, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.i ], [ true, %bb.t ], [ true, %.split44.i ], [ true, %.split43.i ], [ true, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit33.i ], [ true, %bb.u ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.n, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i60.i, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit22.i ], [ %.sroa.01.0.i60.i, %.split40.i ], [ %.sroa.01.0.i60.i, %.split41.i ], [ %.sroa.01.1.i54.i, %bb.t ], [ %i.n, %bb.u ], [ %.sroa.01.1.i54.i, %_RNvYNvYRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNtNtCscI6d9CVNmLh_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBc_.exit33.i ], [ %.sroa.01.1.i54.i, %.split43.i ], [ %.sroa.01.1.i54.i, %.split44.i ] ; 9 uses
  %i.eq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.eq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.v

bb.v:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB12_NtNtB8_3cmp10PartialOrd2ltEB19_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.y, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i

bb.w:                                             ; preds = %bb.i
  %.sroa.0.0.i34.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.er = shl nuw nsw i64 %.sroa.0.0.i34.i, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.x:                                             ; preds = %bb.i
  %.sroa.0.0.i35.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1c_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i35.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5)
  %i.es = shl nuw nsw i64 %.sroa.0.0.i35.i, 1
  %i.et = or disjoint i64 %i.es, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i, %middle.block, %bb.y, %bb.v, %bb.j
  %.sroa.0.0.i50.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.v ], [ %.sroa.0.0.i.i, %bb.y ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i ]
  %i.eu = shl nuw nsw i64 %.sroa.0.0.i50.i, 1
  %i.ev = or disjoint i64 %i.eu, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.y:                                             ; preds = %bb.v
  %i.ew = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %.not.i.i.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.preheader.i.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.preheader.i.i.i: ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i, 8
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ew, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ey = xor i64 %index, -1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.fa = getelementptr [8 x i8], ptr %i.ex, i64 %i.ey ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ez, align 8, !alias.scope !678, !noalias !679
  %wide.load81 = load <2 x ptr>, ptr %i.fb, align 8, !alias.scope !678, !noalias !679
  %i.fc = getelementptr i8, ptr %i.fa, i64 -8
  %i.fd = getelementptr i8, ptr %i.fa, i64 -24
  %wide.load82 = load <2 x i64>, ptr %i.fc, align 8, !alias.scope !680, !noalias !681
  %wide.load83 = load <2 x i64>, ptr %i.fd, align 8, !alias.scope !680, !noalias !681
  %reverse = shufflevector <2 x i64> %wide.load82, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse84 = shufflevector <2 x i64> %wide.load83, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <2 x i64> %reverse, ptr %i.ez, align 8, !alias.scope !678, !noalias !679
  store <2 x i64> %reverse84, ptr %i.fe, align 8, !alias.scope !678, !noalias !679
  %i.ff = getelementptr i8, ptr %i.fa, i64 -8
  %i.fg = getelementptr i8, ptr %i.fa, i64 -24
  %reverse85 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse86 = shufflevector <2 x ptr> %wide.load81, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse85, ptr %i.ff, align 8, !alias.scope !680, !noalias !681
  store <2 x ptr> %reverse86, ptr %i.fg, align 8, !alias.scope !680, !noalias !681
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.fn, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i.preheader ] ; 3 uses
  %i.fi = xor i64 %.sroa.0.016.i.i.i, -1
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.fk = getelementptr [8 x i8], ptr %i.ex, i64 %i.fi ; 2 uses
  %i.fl = load ptr, ptr %i.fj, align 8, !alias.scope !678, !noalias !679, !nonnull !4, !align !6, !noundef !4
  %i.fm = load i64, ptr %i.fk, align 8, !alias.scope !680, !noalias !681
  store i64 %i.fm, ptr %i.fj, align 8, !alias.scope !678, !noalias !679
  store ptr %i.fl, ptr %i.fk, align 8, !alias.scope !680, !noalias !681
  %i.fn = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fn, %i.ew
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName12split_at_mutBB_.exit11.i.i.i, !llvm.loop !623

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB13_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.w, %bb.x, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.ev, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableName7reverseBB_.exit.i ], [ %i.et, %bb.x ], [ %i.er, %bb.w ] ; 2 uses
  %i.fo = lshr i64 %.sroa.023.0, 1
  %i.fp = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.fq = sub nsw i64 %factor, %i.fo
  %i.fr = add nuw nsw i64 %i.fp, %factor
  %i.fs = mul i64 %i.fq, %.sroa.0.0
  %i.ft = mul i64 %i.fr, %.sroa.0.0
  %i.fu = xor i64 %i.ft, %i.fs
  %i.fv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fu, i1 false)
  %i.fw = trunc nuw nsw i64 %i.fv to i8
  br label %bb.g

bb.z:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit
  %.sroa.02.145 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.fx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit ] ; 2 uses
  %.sroa.023.144 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit ] ; 4 uses
  %i.fx = add i64 %.sroa.02.145, -1               ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !noundef !4
  %.not29 = icmp ult i8 %i.fz, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit, %bb.z, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.144, %bb.z ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.145, %bb.z ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableNameNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1d_.exit ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ga, align 8
end_hunk_0
