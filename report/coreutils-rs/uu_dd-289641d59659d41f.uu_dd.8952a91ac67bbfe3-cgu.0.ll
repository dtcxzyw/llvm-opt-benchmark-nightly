inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvCsbMXVmEvvZJf_5uu_dd7dd_copy:bb.a
  %i.qo = sub i64 %i.qn, %i.qm
  %i.qp = icmp ugt i64 %.pre-phi36.i.i.i, %i.qo
  br i1 %i.qp, label %bb.cj, label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i, !prof !33

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.qm, i64 noundef %.pre-phi36.i.i.i, i64 noundef 1, i64 noundef 1) #27, !noalias !2100
  %.pre165.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2101
  br label %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i

_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.promoted = phi i64 [ %.pre165.i.i, %bb.cj ], [ %i.or, %bb.ci ] ; 6 uses
  %i.qq = add i64 %.pre-phi36.i.i.i, %i.oq        ; 6 uses
  %i.qr = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2097, !nonnull !8, !noundef !8 ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.oq
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qt, ptr nonnull align 1 %i.qs, i64 %i.ls, i1 false), !noalias !2104
  %.not6.i40.i.i.i.i = icmp ult i64 %.promoted, %i.qq
  br i1 %.not6.i40.i.i.i.i, label %.lr.ph.i42.i.i.i.i.preheader, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i

.lr.ph.i42.i.i.i.i.preheader:                     ; preds = %_RNvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCsbMXVmEvvZJf_5uu_dd.exit39.i.i.i.i
  %.not.not.i45.i.i.i.i426 = icmp samesign eq i64 %.pre-phi36.i.i.i, 0
  br i1 %.not.not.i45.i.i.i.i426, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i42.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.qr, i64 %.promoted
  %i.qu = add nsw i64 %.pre-phi36.i.i.i, -1       ; 2 uses
  %i.qv = add i64 %i.qu, %i.oq
  %i.qw = sub i64 %i.qv, %.promoted
  %umin = call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.qu)
  %i.qx = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %i.ot, i64 %i.qx, i1 false), !noalias !2105
  br label %.lr.ph

.lr.ph.i42.i.i.i.i:                               ; preds = %.lr.ph
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qz, i64 1 ; 2 uses
  %.not.not.i45.i.i.i.i = icmp eq ptr %i.qy, %i.qj
  br i1 %.not.not.i45.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i42.i.i.i.i
  %i.qz = phi ptr [ %i.qy, %.lr.ph.i42.i.i.i.i ], [ %i.ot, %.lr.ph.preheader ]
  %i.ra = phi i64 [ %i.rb, %.lr.ph.i42.i.i.i.i ], [ %.promoted, %.lr.ph.preheader ]
  %i.rb = add i64 %i.ra, 1                        ; 3 uses
  %exitcond.not.i46.i.i.i.i = icmp eq i64 %i.rb, %i.qq
  br i1 %exitcond.not.i46.i.i.i.i, label %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i.loopexit, label %.lr.ph.i42.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i33.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i
  %i.rc = phi ptr [ %i.qk, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.op, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.oz, %.lr.ph.i33.i.i.i.i ]
  %i.rd = phi i64 [ %i.ql, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.oq, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.oy, %.lr.ph.i33.i.i.i.i ] ; 2 uses
  %i.re = phi i64 [ %.pre.i.i21.i, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit47.thread.i.i.i.i ], [ %i.or, %_RINvMs2_NtNtCs7tKScEop1B6_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECsbMXVmEvvZJf_5uu_dd.exit38.thread.i.thread.i.i.i ], [ %i.qh, %.lr.ph.i33.i.i.i.i ] ; 4 uses
  %i.rf = icmp sgt i64 %i.re, -1
  call void @llvm.assume(i1 %i.rf)
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.rd, %i.re
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cl, %.loopexit.i.i.i
  %i.rg = phi ptr [ %i.ri, %bb.cl ], [ %i.rc, %.loopexit.i.i.i ]
  %i.rh = add i64 %i.re, %i.ls
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i

bb.cl:                                            ; preds = %.loopexit.i.i.i
  %i.ri = load ptr, ptr %i.hl, align 8, !alias.scope !1969, !noalias !2106, !nonnull !8, !noundef !8 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rd
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.re
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rk, ptr nonnull align 1 %i.rj, i64 %i.ls, i1 false), !noalias !2111
  br label %bb.ck

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block1104, %vec.epilog.middle.block1120, %bb.ck
  %i.rl = phi ptr [ %i.rg, %bb.ck ], [ %i.ly, %middle.block1104 ], [ %i.ly, %vec.epilog.middle.block1120 ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %storemerge31.i.i = phi i64 [ %i.rh, %bb.ck ], [ %i.md, %middle.block1104 ], [ %i.mk, %vec.epilog.middle.block1120 ], [ %i.mu, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %storemerge31.i.i, ptr %i.hm, align 8, !alias.scope !1969, !noalias !2112
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !2113
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec6splice6SpliceINtNtBG_9into_iter8IntoIterhEEECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.br
  %.pre168.i221.i = phi i64 [ %.pre168.i.i, %bb.br ], [ %storemerge31.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 4 uses
  %i.rm = phi ptr [ %i.ku, %bb.br ], [ %i.rl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ]
  %.sroa.02.1.i.i = phi i64 [ %.sroa.02.0105.i.i, %bb.br ], [ %i.lk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.lj, %bb.br ], [ %.sroa.0.0106.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainhEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i ] ; 2 uses
  %.sroa.011.1.i.i = add i64 %.sroa.011.0103.i.i, %i.lf ; 2 uses
  %i.rn = load ptr, ptr %i.az, align 8, !alias.scope !2116, !noalias !1967, !nonnull !8, !align !59, !noundef !8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 112
  %i.rp = load i64, ptr %i.ro, align 8, !noalias !1967, !noundef !8 ; 2 uses
  %i.rq = add i64 %i.rp, %.sroa.04.0104.i.i       ; 3 uses
  %i.rr = icmp sgt i64 %.pre168.i221.i, -1
  call void @llvm.assume(i1 %i.rr)
  %i.rs = icmp ult i64 %i.rq, %.pre168.i221.i
  br i1 %i.rs, label %bb.bm, label %._crit_edge.i.i

bb.cm:                                            ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %i.ru = load i64, ptr %i.rt, align 8, !noalias !2120, !noundef !8 ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %bb.cn, label %bb.co, !prof !33

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #30, !noalias !2120
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.rw = icmp eq i64 %storemerge.i.i, 0
  br i1 %i.rw, label %.sink.split.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.co, %bb.cr
  %.sroa.0.041.i.i = phi i64 [ %i.sl, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.04.040.i.i = phi i64 [ %i.sk, %bb.cr ], [ 0, %bb.co ] ; 2 uses
  %.sroa.0.02439.i.i = phi ptr [ %i.rx, %bb.cr ], [ %i.kl, %bb.co ] ; 2 uses
  %.sroa.6.038.i.i = phi i64 [ %i.ry, %bb.cr ], [ %storemerge.i.i, %bb.co ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ru, i64 %.sroa.6.038.i.i) ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0.02439.i.i, i64 %..i.i.i.i
  %i.ry = sub nuw i64 %.sroa.6.038.i.i, %..i.i.i.i ; 2 uses
  %i.rz = call { i64, ptr } @_RNvXs4_CsbMXVmEvvZJf_5uu_ddNtB5_5InputNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %.sroa.0.02439.i.i, i64 noundef %..i.i.i.i) #27, !noalias !2123 ; 2 uses
  %i.sa = extractvalue { i64, ptr } %i.rz, 0
  %i.sb = extractvalue { i64, ptr } %i.rz, 1      ; 3 uses
  %i.sc = ptrtoint ptr %i.sb to i64               ; 3 uses
  %i.sd = trunc nuw i64 %i.sa to i1
  br i1 %i.sd, label %.loopexit, label %bb.cp

_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i: ; preds = %bb.cr, %bb.cq
  %.sroa.0.032.i.i = phi i64 [ %.sroa.0.041.i.i, %bb.cq ], [ %i.sl, %bb.cr ] ; 2 uses
  %.sroa.04.1.i.i = phi i64 [ %i.sj, %bb.cq ], [ %i.sk, %bb.cr ] ; 4 uses
  %.sroa.02.0.i.i = phi i64 [ %spec.select21.i.i, %bb.cq ], [ 0, %bb.cr ] ; 2 uses
  %i.se = icmp ugt i64 %.sroa.04.1.i.i, %storemerge.i.i
  br i1 %i.se, label %bb.cs, label %.sink.split.i

bb.cp:                                            ; preds = %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i
  %i.sf = load ptr, ptr %i.az, align 8, !alias.scope !2124, !noalias !2123, !nonnull !8, !align !59, !noundef !8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 112
  %i.sh = load i64, ptr %i.sg, align 8, !noalias !2123, !noundef !8
  %i.si = icmp eq i64 %i.sh, %i.sc
  br i1 %i.si, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not20.i.i = icmp ne ptr %i.sb, null
  %i.sj = add i64 %.sroa.04.040.i.i, %i.sc
  %spec.select21.i.i = zext i1 %.not20.i.i to i64
  br label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.sk = add i64 %.sroa.04.040.i.i, %i.sc        ; 2 uses
  %i.sl = add i64 %.sroa.0.041.i.i, 1             ; 2 uses
  %i.sm = icmp eq i64 %i.ry, 0
  br i1 %i.sm, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, label %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i

.sink.split.i:                                    ; preds = %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, %bb.co, %._crit_edge.i.i, %bb.bl
  %.sroa.04.0.lcssa203.i.sink.i = phi i64 [ 0, %bb.bl ], [ %.sroa.04.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.535.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.0.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.0.032.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.936.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.02.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.02.0.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  %.sroa.1137.0.ph.sink.ph.i = phi i64 [ 0, %bb.bl ], [ %.sroa.011.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ 0, %bb.co ]
  store i64 %.sroa.04.0.lcssa203.i.sink.i, ptr %i.hm, align 8, !alias.scope !1943, !noalias !1954
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, %._crit_edge.i.i
  %.sroa.535.0.ph.sink.i = phi i64 [ %.sroa.0.032.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.0.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.535.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %.sroa.936.0.ph.sink.i = phi i64 [ %.sroa.02.0.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.02.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.936.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %.sroa.1137.0.ph.sink.i = phi i64 [ %.sroa.04.1.i.i, %_RNvXs1f_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i ], [ %.sroa.011.0.lcssa.ph.i.i, %._crit_edge.i.i ], [ %.sroa.1137.0.ph.sink.ph.i, %.sink.split.i ] ; 3 uses
  %i.sn = inttoptr i64 %.sroa.535.0.ph.sink.i to ptr
  store ptr %i.sn, ptr %i.l, align 8, !noalias !1961
  store i64 %.sroa.936.0.ph.sink.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1961
  store i64 %.sroa.1137.0.ph.sink.i, ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !noalias !1961
  store i32 0, ptr %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i, align 8, !noalias !1961
  %i.so = icmp eq i64 %.sroa.535.0.ph.sink.i, 0
  %i.sp = icmp eq i64 %.sroa.936.0.ph.sink.i, 0
  %or.cond.i = select i1 %i.so, i1 %i.sp, i1 false
  br i1 %or.cond.i, label %bb.eo, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sq = load ptr, ptr %i.az, align 8, !alias.scope !1940, !noalias !1959, !nonnull !8, !align !59, !noundef !8 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 106
  %i.ss = load i8, ptr %i.sr, align 2, !range !44, !noalias !1959, !noundef !8
  %i.st = trunc nuw i8 %i.ss to i1
  br i1 %i.st, label %bb.cu, label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i

_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i: ; preds = %bb.cv
  %.pre.i = load ptr, ptr %i.az, align 8, !alias.scope !1940, !noalias !1959
  br label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i

_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i: ; preds = %bb.cu, %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i, %bb.ct
  %i.su = phi ptr [ %.pre.i, %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i ], [ %i.sq, %bb.cu ], [ %i.sq, %bb.ct ] ; 16 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 80 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 8, !range !2125, !noalias !1959, !noundef !8 ; 2 uses
  %.not.i101 = icmp eq i8 %i.sw, -1
  br i1 %.not.i101, label %bb.eo, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.sx = load ptr, ptr %i.hl, align 8, !alias.scope !1943, !noalias !1954, !nonnull !8, !noundef !8
  %i.sy = load i64, ptr %i.hm, align 8, !alias.scope !1943, !noalias !1954, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %.sroa.06.0.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.sy, i64 1) ; 2 uses
  %i.sz = lshr i64 %.sroa.06.0.i.i.i.i, 1
  %.sroa.05.0.i.i.i.i = sub nsw i64 %.sroa.06.0.i.i.i.i, %i.sz ; 2 uses
  %.not11.i.i = icmp eq i64 %.sroa.05.0.i.i.i.i, 0
  br i1 %.not11.i.i, label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.cu, %bb.cv
  %.sroa.01.013.i.i = phi i64 [ %i.tc, %bb.cv ], [ 1, %bb.cu ] ; 4 uses
  %.sroa.06.012.i.i = phi i64 [ %i.tb, %bb.cv ], [ %.sroa.05.0.i.i.i.i, %bb.cu ]
  %i.ta = icmp samesign ult i64 %.sroa.01.013.i.i, %i.sy
  br i1 %i.ta, label %bb.cv, label %2

2:                                                ; preds = %.lr.ph.i25.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.013.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.sy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #30, !noalias !2129
  unreachable

bb.cv:                                            ; preds = %.lr.ph.i25.i
  %i.tb = add i64 %.sroa.06.012.i.i, -1           ; 2 uses
  %i.tc = add nuw i64 %.sroa.01.013.i.i, 2
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 %.sroa.01.013.i.i ; 3 uses
  %i.te = getelementptr i8, ptr %i.td, i64 -1     ; 2 uses
  %.sroa.04.0.copyload.i.i = load i8, ptr %i.td, align 1, !alias.scope !2126, !noalias !1959
  %i.tf = load i8, ptr %i.te, align 1, !alias.scope !2126, !noalias !1959
  store i8 %i.tf, ptr %i.td, align 1, !alias.scope !2126, !noalias !1959
  store i8 %.sroa.04.0.copyload.i.i, ptr %i.te, align 1, !alias.scope !2126, !noalias !1959
  %.not.i26.i = icmp eq i64 %i.tb, 0
  br i1 %.not.i26.i, label %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.loopexit.i, label %.lr.ph.i25.i

bb.cw:                                            ; preds = %_RNvNvCsbMXVmEvvZJf_5uu_dd11read_helper12perform_swab.exit.i
  %.val18.i = load ptr, ptr %i.hl, align 8, !alias.scope !1943, !noalias !1954, !nonnull !8, !noundef !8
  %.val19.i = load i64, ptr %i.hm, align 8, !alias.scope !1943, !noalias !1954, !noundef !8 ; 27 uses
  %i.tg = icmp eq i64 %.val19.i, 0                ; 6 uses
  br i1 %i.tg, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2130
  %i.th = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val19.i, i64 noundef range(i64 1, 9) 1) #27, !noalias !2130 ; 3 uses
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val19.i) #32, !noalias !2138
  unreachable

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.th, ptr nonnull readonly align 1 %.val18.i, i64 range(i64 0, -9223372036854775808) %.val19.i, i1 false), !noalias !2139
  %.pre222.i = load i8, ptr %i.sv, align 8, !range !2140, !alias.scope !2141, !noalias !2144
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.cz, %bb.cw
  %i.tj = phi i8 [ %.pre222.i, %bb.cz ], [ %i.sw, %bb.cw ]
  %.sroa.8.0.i = phi ptr [ %i.th, %bb.cz ], [ inttoptr (i64 1 to ptr), %bb.cw ] ; 26 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  switch i8 %i.tj, label %default.unreachable [
    i8 0, label %bb.da
    i8 1, label %bb.db
    i8 2, label %bb.dc
    i8 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i115.peel.i.i
    i8 4, label %bb.ed
    i8 5, label %bb.ef
    i8 6, label %bb.eg
  ]

bb.da:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.tl = load ptr, ptr %i.tk, align 8, !alias.scope !2141, !noalias !2144, !nonnull !8, !noundef !8 ; 5 uses
  %i.tm = icmp sgt i64 %.val19.i, -1
  call void @llvm.assume(i1 %i.tm)
  br i1 %i.tg, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.da
  %i.tn = add nsw i64 %.val19.i, -1
  %xtraiter1322 = and i64 %.val19.i, 3            ; 3 uses
  %i.to = icmp ult i64 %i.tn, 3
  br i1 %i.to, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter1326 = and i64 %.val19.i, 9223372036854775804
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.01.01.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ug, %.lr.ph.i.i.i.i ] ; 5 uses
  %niter1327 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter1327.next.3, %.lr.ph.i.i.i.i ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !noalias !2148, !noundef !8
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !noalias !2148, !noundef !8
  store i8 %i.tt, ptr %i.tp, align 1, !noalias !2148
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 1 ; 2 uses
  %i.tw = load i8, ptr %i.tv, align 1, !noalias !2148, !noundef !8
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !noalias !2148, !noundef !8
  store i8 %i.tz, ptr %i.tv, align 1, !noalias !2148
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 2 ; 2 uses
  %i.uc = load i8, ptr %i.ub, align 1, !noalias !2148, !noundef !8
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !noalias !2148, !noundef !8
  store i8 %i.uf, ptr %i.ub, align 1, !noalias !2148
  %i.ug = add nuw nsw i64 %.sroa.01.01.i.i.i.i, 4 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 3 ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !noalias !2148, !noundef !8
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !noalias !2148, !noundef !8
  store i8 %i.um, ptr %i.ui, align 1, !noalias !2148
  %niter1327.next.3 = add i64 %niter1327, 4       ; 2 uses
  %niter1327.ncmp.3 = icmp eq i64 %niter1327.next.3, %unroll_iter1326
  br i1 %niter1327.ncmp.3, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod1324.not = icmp eq i64 %xtraiter1322, 0
  br i1 %lcmp.mod1324.not, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.01.01.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.ug, %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1325 = icmp ne i64 %xtraiter1322, 0
  call void @llvm.assume(i1 %lcmp.mod1325)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.01.01.i.i.i.i.epil = phi i64 [ %i.un, %.lr.ph.i.i.i.i.epil ], [ %.sroa.01.01.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter1323 = phi i64 [ %epil.iter1323.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.un = add nuw nsw i64 %.sroa.01.01.i.i.i.i.epil, 1
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 %.sroa.01.01.i.i.i.i.epil ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !noalias !2148, !noundef !8
  %i.uq = zext i8 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !noalias !2148, !noundef !8
  store i8 %i.us, ptr %i.uo, align 1, !noalias !2148
  %epil.iter1323.next = add i64 %epil.iter1323, 1 ; 2 uses
  %epil.iter1323.cmp.not = icmp eq i64 %epil.iter1323.next, %xtraiter1322
  br i1 %epil.iter1323.cmp.not, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !2154

_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i: ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EhEB2v_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.da
  store i64 %.val19.i, ptr %i.d, align 8, !noalias !1961
  store ptr %.sroa.8.0.i, ptr %i.hv, align 8, !noalias !1961
  store i64 %.val19.i, ptr %i.hw, align 8, !noalias !1961
  br label %_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper.exit.i

bb.db:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2155
  %i.ut = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.uu = load i64, ptr %i.ut, align 8, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.su, i64 81
  %i.uw = load i8, ptr %i.uv, align 1, !range !44, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.ux = trunc nuw i8 %i.uw to i1
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks5block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.i, i64 noundef %.val19.i, i64 noundef %i.uu, i1 noundef zeroext %i.ux, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #27, !noalias !2156
  %i.uy = load ptr, ptr %i.io, align 8, !noalias !2155, !nonnull !8, !noundef !8 ; 3 uses
  %i.uz = load i64, ptr %i.f, align 8, !range !184, !noalias !2155, !noundef !8
  %i.va = load i64, ptr %i.ip, align 8, !noalias !2155, !noundef !8 ; 2 uses
  %i.vb = icmp ult i64 %i.va, 384307168202282326
  call void @llvm.assume(i1 %i.vb)
  %i.vc = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.va
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2155
  store ptr %i.uy, ptr %i.g, align 8, !noalias !2155
  store ptr %i.uy, ptr %.sroa.065.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2155
  store i64 %i.uz, ptr %.sroa.065.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr %i.vc, ptr %.sroa.065.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr null, ptr %.sroa.466.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr null, ptr %.sroa.668.0..sroa_idx.i.i, align 8, !noalias !2155
  call fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBR_EEE9from_iterCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.g) #27, !noalias !1959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2155
  br label %bb.eh

bb.dc:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.ve = load i64, ptr %i.vd, align 8, !alias.scope !2141, !noalias !2144, !noundef !8
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks7unblock(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.i, i64 noundef %.val19.i, i64 noundef %i.ve) #27, !noalias !1959
  br label %bb.eh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i115.peel.i.i: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsbMXVmEvvZJf_5uu_dd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2155
  %i.vf = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.vg = load i64, ptr %i.vf, align 8, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.su, i64 81
  %i.vi = load i8, ptr %i.vh, align 1, !range !44, !alias.scope !2141, !noalias !2144, !noundef !8
  %i.vj = trunc nuw i8 %i.vi to i1
  call fastcc void @_RNvNtCsbMXVmEvvZJf_5uu_dd6blocks5block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.i, i64 noundef %.val19.i, i64 noundef %i.vg, i1 noundef zeroext %i.vj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #27, !noalias !2156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2155
  %i.vk = load ptr, ptr %i.hz, align 8, !noalias !2155, !nonnull !8, !noundef !8 ; 6 uses
  %i.vl = load i64, ptr %i.k, align 8, !range !184, !noalias !2155, !noundef !8
  %i.vm = load i64, ptr %i.ia, align 8, !noalias !2155, !noundef !8 ; 3 uses
  %i.vn = icmp ult i64 %i.vm, 384307168202282326
  call void @llvm.assume(i1 %i.vn)
  %.idx.i.i = mul nuw nsw i64 %i.vm, 24
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 %.idx.i.i ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.su, i64 96
  %i.vq = load ptr, ptr %i.vp, align 8, !alias.scope !2141, !noalias !2144, !nonnull !8, !noundef !8 ; 5 uses
  store ptr %i.vk, ptr %i.j, align 8, !noalias !2155
  store i64 %i.vl, ptr %.sroa.029.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr %i.vo, ptr %.sroa.029.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr %i.vq, ptr %.sroa.029.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2155
  store ptr null, ptr %.sroa.632.0..sroa_idx.i.i, align 8, !noalias !2155
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  call void @llvm.experimental.noalias.scope.decl(metadata !2160), !noalias !2163
  %.promoted42.i.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !2166, !noalias !2167 ; 2 uses
  %.promoted43.i.i.i.i = load ptr, ptr %i.ic, align 8, !alias.scope !2166, !noalias !2167 ; 2 uses
  %.promoted45.i.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !2166, !noalias !2167 ; 2 uses
  %.sroa.722.0..sroa_idx.i.i.promoted.i.i = load ptr, ptr %.sroa.722.0..sroa_idx.i.i.i.i, align 8, !noalias !2155 ; 2 uses
  %i.vr = icmp eq i64 %i.vm, 0
  br i1 %i.vr, label %.loopexit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i115.peel.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vk, i64 24 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.peel.i.i = load i64, ptr %i.vk, align 8, !noalias !2168 ; 2 uses
  %.not.i.i.i.i116.peel.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.peel.i.i, -1
  br i1 %.not.i.i.i.i116.peel.i.i, label %.loopexit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhENCNvNvNtCsbMXVmEvvZJf_5uu_dd6blocks25conv_block_unblock_helper16apply_conversion0EEEB2t_.exit.i.i.i.i: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i
  %.sink264.i.i = phi ptr [ %i.vt, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i ], [ %i.vk, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i ] ; 2 uses
  %i.vt = phi ptr [ %i.vx, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i ], [ %i.vs, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i ] ; 5 uses
  %.sroa.0.0.copyload1.i.i46.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i.i.peel.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VechEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.peel.i.i ] ; 5 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %.sink264.i.i, i64 16
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.peel.i.i = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.peel.i.i, align 8, !noalias !2168 ; 4 uses
  %i.vu = icmp sgt i64 %.sroa.6.sroa.4.0.copyload.i.i.i.i.peel.i.i, -1
  call void @llvm.assume(i1 %i.vu), !noalias !2163
  %.sroa.6.0..sroa_idx2.i.i.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %.sink264.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.peel.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.peel.i.i, align 8, !noalias !2168, !nonnull !8, !noundef !8 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2177), !noalias !2163
  call void @llvm.experimental.noalias.scope.decl(metadata !2180), !noalias !2163
  call void @llvm.experimental.noalias.scope.decl(metadata !2183), !noalias !2163
end_hunk_0
