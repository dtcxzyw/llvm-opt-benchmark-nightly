Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.3?download=true
inline.NumInlined: 125
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren14compact_leaves:bb.a
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.022.0131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117
  %exitcond.not = icmp eq i64 %i.t, %i.cv
  br i1 %exitcond.not, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info.exit, %.preheader, %bb.c
  ret void

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit32: ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit31
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ae)
  %i.ag = zext nneg i8 %i.p to i64                ; 4 uses
  %i.ah = icmp samesign ult i64 %.sroa.0.0128, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit31
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.k:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit32
  %i.ai = extractvalue { ptr, i64 } %i.af, 1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0128 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.al)
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  %i.ao = add i64 %i.an, %i.ai
  %i.ap = icmp ult i64 %i.ao, 985
  br i1 %i.ap, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit33

bb.l:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit32
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0128, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit33: ; preds = %bb.k
  %i.aq = icmp samesign ult i64 %i.r, %i.ag
  br i1 %i.aq, label %bb.n, label %bb.o

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit: ; preds = %bb.k
  %i.ar = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ac) #24
  %i.as = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13leaf_text_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ar)
  %i.at = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.au) ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6remove(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %0, i64 noundef %.sroa.0.0128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.ay = load ptr, ptr %i.m, align 8, !alias.scope !124, !nonnull !5, !noundef !5
  %i.az = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !124
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit

bb.m:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.m) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit: ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.n:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit33
  %i.bb = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ae)
  %i.bc = extractvalue { ptr, i64 } %i.bb, 1
  %i.bd = icmp ult i64 %i.bc, 984
  br i1 %i.bd, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit34, label %bb.p

bb.o:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes.exit33
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = add nuw nsw i64 %.sroa.0.0128, 1
  br label %bb.v

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit34: ; preds = %bb.n
  %i.bf = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ac) #24
  %i.bg = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13leaf_text_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.bf) ; 2 uses
  %i.bh = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.aj) #24
  %i.bi = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13leaf_text_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.bh) ; 5 uses
  %i.bj = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bg)
  %i.bk = extractvalue { ptr, i64 } %i.bj, 1      ; 3 uses
  %i.bl = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bi) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1      ; 4 uses
  %i.bo = icmp eq i64 %i.bk, 984
  br i1 %i.bo, label %.thread, label %bb.q

.thread:                                          ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit34
  %i.bp = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bi)
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  br label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit

bb.q:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit34
  %i.br = sub i64 983, %i.bk                      ; 3 uses
  %i.bs = icmp eq i64 %i.bk, 983
  %i.bt = icmp eq i64 %i.br, %i.bn
  %or.cond.i126 = or i1 %i.bs, %i.bt
  br i1 %or.cond.i126, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread52, %bb.q
  %.sroa.014.1.lcssa = phi i64 [ %i.br, %bb.q ], [ %i.cp, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread52 ] ; 2 uses
  %i.bu = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bi) ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0      ; 2 uses
  %i.bw = icmp eq i64 %.sroa.014.1.lcssa, 0
  br i1 %i.bw, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.r

bb.r:                                             ; preds = %.thread54, %._crit_edge
  %.sroa.014.163 = phi i64 [ %.sroa.014.1127, %.thread54 ], [ %.sroa.014.1.lcssa, %._crit_edge ] ; 6 uses
  %.pn = phi { ptr, i64 } [ %i.cn, %.thread54 ], [ %i.bu, %._crit_edge ]
  %i.bx = phi ptr [ %i.co, %.thread54 ], [ %i.bv, %._crit_edge ] ; 4 uses
  %i.by = extractvalue { ptr, i64 } %.pn, 1       ; 3 uses
  %.not.i = icmp ult i64 %.sroa.014.163, %i.by
  br i1 %.not.i, label %bb.s, label %.split.i

.split.i:                                         ; preds = %bb.r
  %i.bz = icmp eq i64 %.sroa.014.163, %i.by
  br i1 %i.bz, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.014.163
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !125, !noundef !5
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread47, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %._crit_edge, %.split.i, %.thread
  %i.cd = phi ptr [ %i.bq, %.thread ], [ %i.bv, %._crit_edge ], [ %i.bx, %.split.i ] ; 2 uses
  %.sroa.014.042 = phi i64 [ 0, %.thread ], [ 0, %._crit_edge ], [ %.sroa.014.163, %.split.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread47

.lr.ph:                                           ; preds = %bb.q, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread52
  %.sroa.014.1127 = phi i64 [ %i.cp, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread52 ], [ %i.br, %bb.q ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ce = icmp ult i64 %.sroa.014.1127, %i.bn
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.cf = getelementptr i8, ptr %i.bm, i64 %.sroa.014.1127 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !126, !noundef !5 ; 2 uses
  %i.ch = icmp slt i8 %i.cg, -64
  br i1 %i.ch, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread52, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit

bb.u:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.1127, i64 noundef range(i64 0, -9223372036854775808) %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #20, !noalias !126
  unreachable

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit:    ; preds = %bb.t
  %i.ci = getelementptr i8, ptr %i.cf, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !126, !noundef !5
  %i.ck = icmp ne i8 %i.cj, 13
  %i.cl = icmp ne i8 %i.cg, 10
  %i.cm = or i1 %i.cl, %i.ck
  br i1 %i.cm, label %.thread54, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread52

.thread54:                                        ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit
  %i.cn = tail call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.bi) ; 2 uses
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  br label %bb.r

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread52: ; preds = %bb.t, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit
  %i.cp = add i64 %.sroa.014.1127, -1             ; 4 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = icmp eq i64 %i.cp, %i.bn
  %or.cond.i = or i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %._crit_edge, label %.lr.ph

_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread47: ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, %bb.s
  %.sroa.014.04250 = phi i64 [ %.sroa.014.042, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ], [ %.sroa.014.163, %bb.s ] ; 2 uses
  %i.cs = phi ptr [ %i.cd, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ], [ %i.bx, %bb.s ]
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %.sroa.014.04250)
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText14truncate_front(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.bi, i64 noundef %.sroa.014.04250)
  %i.ct = add nuw nsw i64 %.sroa.0.0128, 1
  br label %bb.v

_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i, %bb.s
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.by, i64 noundef 0, i64 noundef %.sroa.014.163, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.v:                                             ; preds = %bb.p, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread47, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0128, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_.exit ], [ %i.ct, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread47 ], [ %i.be, %bb.p ] ; 2 uses
  %i.cu = load i8, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.cv = zext i8 %i.cu to i64                    ; 3 uses
  %i.cw = icmp ult i64 %.sroa.0.1, %i.cv
  br i1 %i.cw, label %bb.e, label %.preheader
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15distribute_with(ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !noundef !5  ; 4 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !noundef !5
  %i.h = zext i8 %i.g to i64                      ; 3 uses
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 1                         ; 4 uses
  %i.k = icmp samesign ugt i64 %i.j, %i.h
  br i1 %i.k, label %.lr.ph, label %.preheader.a

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = trunc nuw i64 %i.j to i8
  %.first_iter = icmp ult i8 %i.d, 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i.i18 = icmp eq i8 %i.d, 0
  br i1 %.not.i.i18, label %._crit_edge21, label %.lr.ph20, !prof !143

.preheader.loopexit:                              ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop.exit
  %.pre = zext i8 %10 to i64
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.h, %bb.a ]
  %2 = phi i8 [ %indvars, %.preheader.loopexit ], [ %i.d, %bb.a ]
  %3 = icmp samesign ult i64 %i.j, %.pre-phi
  br i1 %3, label %.lr.ph2, label %._crit_edge

.lr.ph2:                                          ; preds = %.preheader.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %6 = trunc nuw i64 %i.j to i8
  br label %bb.d

bb.b:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i.i = icmp eq i64 %indvars.iv.next.a, 0
  br i1 %.not.i.i, label %._crit_edge21, label %.lr.ph20, !prof !144

._crit_edge21:                                    ; preds = %bb.b, %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #20, !noalias !145
  unreachable

.lr.ph20:                                         ; preds = %.lr.ph, %bb.b
  %indvars.iv19 = phi i64 [ %indvars.iv.next.a, %bb.b ], [ %i.e, %.lr.ph ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %indvars.iv.next.a = add nsw i64 %indvars.iv19, -1 ; 6 uses
  %indvars = trunc nuw i64 %indvars.iv.next.a to i8 ; 2 uses
  store i8 %indvars, ptr %i.c, align 8, !alias.scope !150
  br i1 %.first_iter, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph20
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %indvars.iv.next.a, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #20, !noalias !145
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop.exit: ; preds = %.lr.ph20
  %7 = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.next.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !alias.scope !151, !noalias !5
  %8 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.a
  %9 = load ptr, ptr %8, align 8, !alias.scope !150, !nonnull !5, !noundef !5
  store ptr %9, ptr %i.m, align 8, !alias.scope !152
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %10 = load i8, ptr %i.f, align 8, !noundef !5   ; 2 uses
  %11 = icmp ult i8 %10, %i.n
  br i1 %11, label %bb.b, label %.preheader.loopexit

._crit_edge:                                      ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push.exit, %.preheader.a
  ret void

bb.d:                                             ; preds = %.lr.ph2, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push.exit
  %i.o = phi i8 [ %2, %.lr.ph2 ], [ %i.ac, %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren6remove(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, i64 noundef 0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.p = icmp ult i8 %i.o, 24
  br i1 %i.p, label %bb.g, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
          to label %bb.f unwind label %bb.i, !noalias !157

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = zext nneg i8 %i.o to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 32, i1 false), !alias.scope !158, !noalias !156
  %i.s = load i8, ptr %i.c, align 8, !alias.scope !159, !noundef !5 ; 2 uses
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %i.u = icmp ult i8 %i.s, 24
  br i1 %i.u, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #21, !noalias !157
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %lpad.thr_comm.i

bb.i:                                             ; preds = %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161), !noalias !155
  %i.v = load ptr, ptr %5, align 8, !alias.scope !162, !noalias !155, !nonnull !5, !noundef !5
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !163
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire, !noalias !155
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %5) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit.i unwind label %bb.k, !noalias !153

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !164
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push.exit: ; preds = %bb.g
  %i.z = load ptr, ptr %5, align 8, !alias.scope !165, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !159
  %i.ab = load i8, ptr %i.c, align 8, !alias.scope !159, !noundef !5
  %i.ac = add i8 %i.ab, 1                         ; 2 uses
  store i8 %i.ac, ptr %i.c, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = load i8, ptr %i.f, align 8, !noundef !5
  %i.ae = icmp ugt i8 %i.ad, %6
  br i1 %i.ae, label %bb.d, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_byte_idx(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(968) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !171, !noalias !170, !noundef !5 ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20, !noalias !172
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit: ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1                     ; 3 uses
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_byte_idx0EB7_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = add nuw nsw i64 %i.c, 576460752303423486
  %i.j = and i64 %i.i, 576460752303423487
  %i.k = add nuw nsw i64 %i.j, 1
  br label %.lr.ph

bb.d:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !170
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.0.0.i8 = phi i64 [ %i.n, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.0.i5 = phi i64 [ %i.r, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.0.i4 = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.017.0.i3 = phi ptr [ %i.v, %bb.e ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %i.l = phi <2 x i64> [ %i.u, %bb.e ], [ zeroinitializer, %.lr.ph.preheader ] ; 2 uses
  %i.m = load i64, ptr %.sroa.017.0.i3, align 8, !noalias !170, !noundef !5
  %i.n = add i64 %i.m, %.sroa.0.0.i8              ; 3 uses
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_byte_idx0EB7_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noalias !170, !noundef !5
  %i.r = add i64 %i.q, %.sroa.9.0.i5              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i3, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8, !noalias !170
  %i.u = add <2 x i64> %i.t, %i.l                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i3, i64 32 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.015.0.i4, 1
  %i.x = icmp eq ptr %i.v, %i.g
  br i1 %i.x, label %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_byte_idx0EB7_.exit, label %.lr.ph

_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_byte_idx0EB7_.exit: ; preds = %bb.e, %.lr.ph, %bb.c
  %.sroa.015.0.i.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.015.0.i4, %.lr.ph ], [ %i.k, %bb.e ]
  %.sroa.9.0.i.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.9.0.i5, %.lr.ph ], [ %i.r, %bb.e ]
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.0.0.i8, %.lr.ph ], [ %i.n, %bb.e ]
  %i.y = phi <2 x i64> [ zeroinitializer, %bb.c ], [ %i.l, %.lr.ph ], [ %i.u, %bb.e ]
  store i64 %.sroa.015.0.i.lcssa, ptr %0, align 8, !alias.scope !170
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.lcssa, ptr %i.z, align 8, !alias.scope !170
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.y, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !170
  %.sroa.9.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0.i.lcssa, ptr %.sroa.9.0..sroa_idx13.i, align 8, !alias.scope !170
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren15search_char_idx(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(968) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.b = load i8, ptr %i.a, align 8, !alias.scope !178, !noalias !177, !noundef !5 ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = icmp ult i8 %i.b, 25
  br i1 %i.d, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20, !noalias !179
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit: ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1                     ; 3 uses
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_char_idx0EB7_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = add nuw nsw i64 %i.c, 576460752303423486
  %i.j = and i64 %i.i, 576460752303423487
  %i.k = add nuw nsw i64 %i.j, 1
  br label %.lr.ph

bb.d:                                             ; preds = %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !177
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.0.0.i8 = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.0.i7 = phi i64 [ %i.o, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.0.i4 = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.017.0.i3 = phi ptr [ %i.v, %bb.e ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %i.l = phi <2 x i64> [ %i.s, %bb.e ], [ zeroinitializer, %.lr.ph.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !177, !noundef !5
  %i.o = add i64 %i.n, %.sroa.5.0.i7              ; 3 uses
  %i.p = icmp ult i64 %2, %i.o
  br i1 %i.p, label %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_char_idx0EB7_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i3, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 8, !noalias !177
  %i.s = add <2 x i64> %i.r, %i.l                 ; 2 uses
  %i.t = load i64, ptr %.sroa.017.0.i3, align 8, !noalias !177, !noundef !5
  %i.u = add i64 %i.t, %.sroa.0.0.i8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i3, i64 32 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.015.0.i4, 1
  %i.x = icmp eq ptr %i.v, %i.g
  br i1 %i.x, label %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_char_idx0EB7_.exit, label %.lr.ph

_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_char_idx0EB7_.exit: ; preds = %bb.e, %.lr.ph, %bb.c
  %.sroa.015.0.i.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.015.0.i4, %.lr.ph ], [ %i.k, %bb.e ]
  %.sroa.5.0.i.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.5.0.i7, %.lr.ph ], [ %i.o, %bb.e ]
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.0.0.i8, %.lr.ph ], [ %i.u, %bb.e ]
  %i.y = phi <2 x i64> [ zeroinitializer, %bb.c ], [ %i.l, %.lr.ph ], [ %i.s, %bb.e ]
  store i64 %.sroa.015.0.i.lcssa, ptr %0, align 8, !alias.scope !177
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.lcssa, ptr %i.z, align 8, !alias.scope !177
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.lcssa, ptr %.sroa.5.0..sroa_idx5.i, align 8, !alias.scope !177
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.y, ptr %.sroa.7.0..sroa_idx9.i, align 8, !alias.scope !177
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren16merge_distribute(ptr noalias nofree noundef align 8 captures(none) dereferenceable(968) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [1000 x i8], align 8              ; 5 uses
  %i.g = icmp ult i64 %1, %2
  br i1 %i.g, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.i = load i8, ptr %i.h, align 8, !noundef !5  ; 2 uses
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = icmp ult i64 %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i8 %i.i, 25
  br i1 %i.l, label %_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !noalias !220
  unreachable

_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut.exit: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 2 uses
  %i.p = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.n) #24 ; 4 uses
  %i.q = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.o) #24 ; 4 uses
  %i.r = load i8, ptr %i.p, align 8, !range !4, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  %i.u = load i8, ptr %i.q, align 8, !range !4, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h
end_hunk_0
begin_hunk_1_@llvm.umul.with.overflow.i64
; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB5_20NodeChildrenInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(none) dereferenceable(968), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(968)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text8NodeTextNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEINtNtNtBa_5slice4iter4IterB14_EEB1I_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noinline noreturn }
attributes #21 = { noreturn }
attributes #22 = { noinline }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { inlinehint }
attributes #25 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 0, i64 2}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{!"branch_weights", i32 4000000, i32 4001}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 4001, i32 4000000}
!13 = !{i64 8}
!14 = distinct !{!14, i1 true, !"_RNvXs1n_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_"}
!15 = distinct !{!15, !14, !"_RNvXs1n_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB10_: argument 0"}
!16 = !{!15}
!17 = !{i64 1, i64 -9223372036854775807}
!18 = distinct !{!18, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs2wCc12Mnjqg_5ropey"}
!19 = distinct !{!19, !18, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs2wCc12Mnjqg_5ropey: argument 0"}
!20 = !{!19}
!21 = distinct !{!21, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push"}
!22 = distinct !{!22, !21, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 0"}
!23 = distinct !{!23, !21, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 1"}
!24 = distinct !{!24, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push"}
!25 = distinct !{!25, !24, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 0"}
!26 = distinct !{!26, !24, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 1"}
!27 = distinct !{!27, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!28 = distinct !{!28, !27, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!29 = distinct !{!29, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!30 = distinct !{!30, !29, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!31 = distinct !{!31, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_"}
!32 = distinct !{!32, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_: argument 0"}
!33 = distinct !{!33, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!34 = distinct !{!34, !33, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!35 = distinct !{!35, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!36 = distinct !{!36, !35, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!37 = !{!22}
!38 = !{!23}
!39 = !{!25}
!40 = !{!26}
!41 = !{!25, !22}
!42 = !{!25, !26, !22, !23}
!43 = !{!22, !23}
!44 = !{!28}
!45 = !{!30}
!46 = !{!30, !28, !23}
!47 = !{!30, !28, !25, !22, !23}
!48 = !{!25, !22, !23}
!49 = !{!26, !23}
!50 = !{!32}
!51 = !{!34}
!52 = !{!36}
!53 = !{!36, !34, !32}
!54 = distinct !{!54, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut"}
!55 = distinct !{!55, !54, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut: argument 1"}
!56 = distinct !{!56, !54, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut: argument 0"}
!57 = distinct !{!57, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!58 = distinct !{!58, !57, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!59 = distinct !{!59, !57, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!60 = !{!59, !58, !56, !55}
!61 = distinct !{!61, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop"}
!62 = distinct !{!62, !61, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop: argument 0"}
!63 = distinct !{!63, !61, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop: argument 1"}
!64 = distinct !{!64, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop"}
!65 = distinct !{!65, !64, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop: argument 0"}
!66 = distinct !{!66, !64, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop: argument 1"}
!67 = distinct !{!67, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_"}
!68 = distinct !{!68, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_: argument 0"}
!69 = distinct !{!69, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!70 = distinct !{!70, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!71 = distinct !{!71, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!72 = distinct !{!72, !71, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_"}
!74 = distinct !{!74, !73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_: argument 0"}
!75 = distinct !{!75, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!76 = distinct !{!76, !75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!77 = distinct !{!77, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!78 = distinct !{!78, !77, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!79 = !{!62}
!80 = !{!63}
!81 = !{!65}
!82 = !{!66}
!83 = !{!66, !63}
!84 = !{!62, !63}
!85 = !{!65, !62}
!86 = !{!72, !70, !68}
!87 = !{!74}
!88 = !{!76}
!89 = !{!78}
!90 = !{!78, !76, !74}
!91 = distinct !{!91, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info"}
!92 = distinct !{!92, !91, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info: argument 0"}
!93 = distinct !{!93, !95}
!94 = !{!92}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes"}
!97 = distinct !{!97, !96, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes: argument 0"}
!98 = distinct !{!98, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes"}
!99 = distinct !{!99, !98, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes: argument 0"}
!100 = distinct !{!100, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info"}
!101 = distinct !{!101, !100, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info: argument 0"}
!102 = distinct !{!102, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!103 = distinct !{!103, !102, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!104 = distinct !{!104, !102, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!105 = distinct !{!105, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_"}
!106 = distinct !{!106, !105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_: argument 0"}
!107 = distinct !{!107, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!108 = distinct !{!108, !107, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!109 = distinct !{!109, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!110 = distinct !{!110, !109, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!111 = distinct !{!111, i1 true, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!112 = distinct !{!112, !111, !"_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!113 = distinct !{!113, i1 true, !"_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break"}
!114 = distinct !{!114, !113, !"_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break: argument 0"}
!115 = !{!97}
!116 = !{!99}
!117 = !{!101}
!118 = !{!103}
!119 = !{!103, !101}
!120 = !{!104, !103, !101}
!121 = !{!106}
!122 = !{!108}
!123 = !{!110}
!124 = !{!110, !108, !106}
!125 = !{!112}
!126 = !{!114}
!127 = distinct !{!127, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop"}
!128 = distinct !{!128, !127, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop: argument 1"}
!129 = distinct !{!129, !127, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren3pop: argument 0"}
!130 = distinct !{!130, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop"}
!131 = distinct !{!131, !130, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop: argument 1"}
!132 = distinct !{!132, !130, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop: argument 0"}
!133 = distinct !{!133, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push"}
!134 = distinct !{!134, !133, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 0"}
!135 = distinct !{!135, !133, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 1"}
!136 = distinct !{!136, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push"}
!137 = distinct !{!137, !136, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 0"}
!138 = distinct !{!138, !136, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 1"}
!139 = distinct !{!139, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!140 = distinct !{!140, !139, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!141 = distinct !{!141, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!142 = distinct !{!142, !141, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!143 = !{!"branch_weights", i32 1, i32 127}
!144 = !{!"branch_weights", i32 127, i32 255873}
!145 = !{!132, !131, !129, !128}
!146 = !{!129}
!147 = !{!128}
!148 = !{!132}
!149 = !{!131}
!150 = !{!131, !128}
!151 = !{!129, !128}
!152 = !{!132, !129}
!153 = !{!134}
!154 = !{!135}
!155 = !{!137}
!156 = !{!138}
!157 = !{!137, !138, !134, !135}
!158 = !{!134, !135}
!159 = !{!137, !134}
!160 = !{!140}
!161 = !{!142}
!162 = !{!142, !140, !135}
!163 = !{!142, !140, !137, !134, !135}
!164 = !{!137, !134, !135}
!165 = !{!138, !135}
!166 = distinct !{!166, i1 true, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_byte_idx0EB7_"}
!167 = distinct !{!167, !166, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_byte_idx0EB7_: argument 0"}
!168 = distinct !{!168, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info"}
!169 = distinct !{!169, !168, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info: argument 0"}
!170 = !{!167}
!171 = !{!169}
!172 = !{!169, !167}
!173 = distinct !{!173, i1 true, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_char_idx0EB7_"}
!174 = distinct !{!174, !173, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_15search_char_idx0EB7_: argument 0"}
!175 = distinct !{!175, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info"}
!176 = distinct !{!176, !175, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info: argument 0"}
!177 = !{!174}
!178 = !{!176}
!179 = !{!176, !174}
!180 = distinct !{!180, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut"}
!181 = distinct !{!181, !180, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut: argument 1"}
!182 = distinct !{!182, !180, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren11get_two_mut: argument 0"}
!183 = distinct !{!183, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut"}
!184 = distinct !{!184, !183, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut: argument 1"}
!185 = distinct !{!185, !183, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren8data_mut: argument 0"}
!186 = distinct !{!186, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!187 = distinct !{!187, !186, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!188 = distinct !{!188, !186, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!189 = distinct !{!189, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info"}
!190 = distinct !{!190, !189, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info: argument 0"}
!191 = distinct !{!191, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!192 = distinct !{!192, !191, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!193 = distinct !{!193, !191, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!194 = distinct !{!194, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info"}
!195 = distinct !{!195, !194, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info: argument 0"}
!196 = distinct !{!196, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!197 = distinct !{!197, !196, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!198 = distinct !{!198, !196, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!199 = distinct !{!199, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_"}
!200 = distinct !{!200, !199, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_: argument 0"}
!201 = distinct !{!201, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!202 = distinct !{!202, !201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!203 = distinct !{!203, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!204 = distinct !{!204, !203, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!205 = distinct !{!205, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info"}
!206 = distinct !{!206, !205, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren17update_child_info: argument 0"}
!207 = distinct !{!207, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!208 = distinct !{!208, !207, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!209 = distinct !{!209, !207, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!210 = distinct !{!210, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push"}
!211 = distinct !{!211, !210, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 0"}
!212 = distinct !{!212, !210, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 1"}
!213 = distinct !{!213, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push"}
!214 = distinct !{!214, !213, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 0"}
!215 = distinct !{!215, !213, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 1"}
!216 = distinct !{!216, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!217 = distinct !{!217, !216, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!218 = distinct !{!218, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!219 = distinct !{!219, !218, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!220 = !{!188, !187, !185, !184, !182, !181}
!221 = !{!190}
!222 = !{!192}
!223 = !{!192, !190}
!224 = !{!193, !192, !190}
!225 = !{!195}
!226 = !{!197}
!227 = !{!197, !195}
!228 = !{!198, !197, !195}
!229 = !{!200}
!230 = !{!202}
!231 = !{!204}
!232 = !{!204, !202, !200}
!233 = !{!206}
!234 = !{!208}
!235 = !{!208, !206}
!236 = !{!209, !208, !206}
!237 = !{!211}
!238 = !{!212}
!239 = !{!214}
!240 = !{!215}
!241 = !{!214, !211}
!242 = !{!214, !215, !211, !212}
!243 = !{!211, !212}
!244 = !{!217}
!245 = !{!219}
!246 = !{!219, !217, !212}
!247 = !{!219, !217, !214, !211, !212}
!248 = !{!214, !211, !212}
!249 = !{!215, !212}
!250 = distinct !{!250, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!251 = distinct !{!251, !250, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!252 = distinct !{!252, !250, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!253 = !{!251}
!254 = !{!252, !251}
!255 = distinct !{!255, i1 true, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_21search_line_break_idx0EB7_"}
!256 = distinct !{!256, !255, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_21search_line_break_idx0EB7_: argument 0"}
!257 = distinct !{!257, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info"}
!258 = distinct !{!258, !257, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info: argument 0"}
!259 = !{!256}
!260 = !{!258}
!261 = !{!258, !256}
!262 = distinct !{!262, i1 true, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_26search_utf16_code_unit_idx0EB7_"}
!263 = distinct !{!263, !262, !"_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvB2_26search_utf16_code_unit_idx0EB7_: argument 0"}
!264 = distinct !{!264, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info"}
!265 = distinct !{!265, !264, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info: argument 0"}
!266 = !{!263}
!267 = !{!265}
!268 = !{!265, !263}
!269 = distinct !{!269, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop"}
!270 = distinct !{!270, !269, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop: argument 0"}
!271 = distinct !{!271, !269, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal3pop: argument 1"}
!272 = !{!270}
!273 = !{!271}
!274 = !{!270, !271}
!275 = distinct !{!275, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info"}
!276 = distinct !{!276, !275, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info: argument 0"}
!277 = !{!276}
!278 = distinct !{!278, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push"}
!279 = distinct !{!279, !278, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 0"}
!280 = distinct !{!280, !278, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 1"}
!281 = distinct !{!281, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!282 = distinct !{!282, !281, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!283 = distinct !{!283, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!284 = distinct !{!284, !283, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!285 = !{!279}
!286 = !{!280}
!287 = !{!279, !280}
!288 = !{!282}
!289 = !{!284}
!290 = !{!284, !282}
!291 = !{!284, !282, !279}
!292 = distinct !{!292, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6insert"}
!293 = distinct !{!293, !292, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6insert: argument 0"}
!294 = distinct !{!294, !292, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6insert: argument 1"}
!295 = distinct !{!295, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!296 = distinct !{!296, !295, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!297 = distinct !{!297, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!298 = distinct !{!298, !297, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!299 = distinct !{!299, i1 true, !"_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoE11copy_withinINtNtNtB5_3ops5range5RangejEEB1g_"}
!300 = distinct !{!300, !299, !"_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoE11copy_withinINtNtNtB5_3ops5range5RangejEEB1g_: argument 0"}
!301 = !{!293}
!302 = !{!294}
!303 = !{!296}
!304 = !{!298}
!305 = !{!298, !296}
!306 = !{!293, !294}
!307 = !{!300}
!308 = distinct !{!308, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6remove"}
!309 = distinct !{!309, !308, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6remove: argument 1"}
!310 = distinct !{!310, !308, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal6remove: argument 0"}
!311 = distinct !{!311, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_"}
!312 = distinct !{!312, !311, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtBG_4node4NodeEEEBI_: argument 0"}
!313 = distinct !{!313, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!314 = distinct !{!314, !313, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!315 = distinct !{!315, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!316 = distinct !{!316, !315, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!317 = distinct !{!317, i1 true, !"_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoE11copy_withinINtNtNtB5_3ops5range5RangejEEB1g_"}
!318 = distinct !{!318, !317, !"_RINvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoE11copy_withinINtNtNtB5_3ops5range5RangejEEB1g_: argument 0"}
!319 = !{!309}
!320 = !{!310, !309}
!321 = !{!310}
!322 = !{!316, !314, !312, !310}
!323 = !{!318}
!324 = distinct !{!324, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut"}
!325 = distinct !{!325, !324, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 0"}
!326 = distinct !{!326, !324, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal8data_mut: argument 1"}
!327 = !{!325}
!328 = !{!326}
!329 = !{!325, !326}
!330 = distinct !{!330, i1 true, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push"}
!331 = distinct !{!331, !330, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 0"}
!332 = distinct !{!332, !330, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push: argument 1"}
!333 = distinct !{!333, i1 true, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push"}
!334 = distinct !{!334, !333, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 0"}
!335 = distinct !{!335, !333, !"_RNvMNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB2_20NodeChildrenInternal4push: argument 1"}
!336 = distinct !{!336, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_"}
!337 = distinct !{!337, !336, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_: argument 0"}
!338 = distinct !{!338, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_"}
!339 = distinct !{!339, !338, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_: argument 0"}
!340 = !{!331}
!341 = !{!332}
!342 = !{!334}
!343 = !{!335}
!344 = !{!334, !335, !331, !332}
!345 = !{!331, !332}
!346 = !{!334, !331}
!347 = !{!337}
!348 = !{!339}
!349 = !{!339, !337, !332}
!350 = !{!339, !337, !334, !331, !332}
!351 = !{!334, !331, !332}
!352 = !{!335, !332}
end_hunk_1
