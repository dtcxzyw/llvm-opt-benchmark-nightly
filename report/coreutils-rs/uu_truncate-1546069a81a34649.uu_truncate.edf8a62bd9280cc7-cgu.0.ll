Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_truncate-1546069a81a34649.uu_truncate.edf8a62bd9280cc7-cgu.0?download=true
inline.NumInlined: 415
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCskqImE9wpq17_11uu_truncate8truncate:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.pf = load i64, ptr %i.ar, align 8, !range !12, !alias.scope !690, !noalias !689, !noundef !4
  %i.pg = trunc nuw i64 %i.pf to i1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  br i1 %i.pg, label %bb.bz, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  %i.pj = load i8, ptr %i.pi, align 2, !range !664, !alias.scope !691, !noalias !689, !noundef !4
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.ph, align 8, !alias.scope !690, !noalias !689 ; 12 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.pn = load ptr, ptr %i.pm, align 8, !alias.scope !691, !noalias !689, !nonnull !4, !noundef !4 ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.pp = load i64, ptr %i.po, align 8, !alias.scope !691, !noalias !689, !noundef !4 ; 14 uses
  %.promoted52.i.i.i.i.i = load i8, ptr %i.pl, align 8, !alias.scope !691, !noalias !689
  %i.pq = trunc nuw i8 %.promoted52.i.i.i.i.i to i1 ; 2 uses
  %i.pr = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.pr, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.pp
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.br, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.bq
  %i.ps = icmp eq i64 %.promoted.i.i.i.i.i, %i.pp
  br i1 %i.ps, label %bb.bs, label %.loopexit.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.promoted.i.i.i.i.i
  %i.pu = load i8, ptr %i.pt, align 1, !alias.scope !692, !noalias !693, !noundef !4
  %i.pv = icmp sgt i8 %i.pu, -65
  br i1 %i.pv, label %bb.bs, label %.loopexit.i.i.i.i

bb.bs:                                            ; preds = %bb.br, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.promoted.i.i.i.i.i ; 4 uses
  %i.px = icmp samesign eq i64 %.promoted.i.i.i.i.i, %i.pp
  br i1 %i.px, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.py = load i8, ptr %i.pw, align 1, !noalias !694, !noundef !4 ; 5 uses
  %i.pz = icmp sgt i8 %i.py, -1
  br i1 %i.pz, label %bb.bu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.bt
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  %i.qb = and i8 %i.py, 31
  %i.qc = zext nneg i8 %i.qb to i32               ; 3 uses
  %i.qd = add nuw nsw i64 %.promoted.i.i.i.i.i, 1
  %i.qe = icmp samesign ne i64 %i.qd, %i.pp
  call void @llvm.assume(i1 %i.qe)
  %i.qf = load i8, ptr %i.qa, align 1, !noalias !694, !noundef !4
  %i.qg = shl nuw nsw i32 %i.qc, 6
  %i.qh = and i8 %i.qf, 63
  %i.qi = zext nneg i8 %i.qh to i32               ; 2 uses
  %i.qj = or disjoint i32 %i.qg, %i.qi
  %i.qk = icmp samesign ugt i8 %i.py, -33
  br i1 %i.qk, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i, label %bb.bv

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  %i.qm = add nuw nsw i64 %.promoted.i.i.i.i.i, 2
  %i.qn = icmp samesign ne i64 %i.qm, %i.pp
  call void @llvm.assume(i1 %i.qn)
  %i.qo = load i8, ptr %i.ql, align 1, !noalias !694, !noundef !4
  %i.qp = shl nuw nsw i32 %i.qi, 6
  %i.qq = and i8 %i.qo, 63
  %i.qr = zext nneg i8 %i.qq to i32
  %i.qs = or disjoint i32 %i.qp, %i.qr            ; 2 uses
  %i.qt = shl nuw nsw i32 %i.qc, 12
  %i.qu = or disjoint i32 %i.qs, %i.qt
  %i.qv = icmp samesign ugt i8 %i.py, -17
  br i1 %i.qv, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i, label %bb.bv

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  %i.qx = add nuw nsw i64 %.promoted.i.i.i.i.i, 3
  %i.qy = icmp samesign ne i64 %i.qx, %i.pp
  call void @llvm.assume(i1 %i.qy)
  %i.qz = load i8, ptr %i.qw, align 1, !noalias !694, !noundef !4
  %i.ra = shl nuw nsw i32 %i.qc, 18
  %i.rb = and i32 %i.ra, 1835008
  %i.rc = shl nuw nsw i32 %i.qs, 6
  %i.rd = and i8 %i.qz, 63
  %i.re = zext nneg i8 %i.rd to i32
  %i.rf = or disjoint i32 %i.rc, %i.re
  %i.rg = or disjoint i32 %i.rf, %i.rb
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.rh = zext nneg i8 %i.py to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.qu, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.peel.i.i.i.i ], [ %i.rg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.peel.i.i.i.i ], [ %i.qj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.peel.i.i.i.i ], [ %i.rh, %bb.bu ] ; 4 uses
  %i.ri = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ri)
  br i1 %i.pq, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.rj, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.rk, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.rl, i64 3, i64 4
  br label %bb.ca

bb.bz:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.rn = load i64, ptr %i.rm, align 8, !alias.scope !690, !noalias !689, !noundef !4 ; 2 uses
  %i.ro = icmp eq i64 %i.rn, -1
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.rq = load ptr, ptr %i.rp, align 8, !alias.scope !690, !noalias !689, !nonnull !4, !noundef !4 ; 8 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.rs = load i64, ptr %i.rr, align 8, !alias.scope !690, !noalias !689, !noundef !4 ; 10 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.ru = load ptr, ptr %i.rt, align 8, !alias.scope !690, !noalias !689, !nonnull !4, !noundef !4 ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.rw = load i64, ptr %i.rv, align 8, !alias.scope !690, !noalias !689, !noundef !4 ; 14 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.ry = add nsw i64 %i.rw, -1                   ; 5 uses
  br i1 %i.ro, label %bb.cn, label %bb.cf

bb.ca:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.bx ], [ %..i.i.peel.i.i.i.i, %bb.by ], [ 1, %bb.bw ]
  %i.rz = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.promoted.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.sa = icmp eq i64 %i.rz, 0
  br i1 %i.sa, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.rz, %i.pp
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cc, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.cb
  %i.sb = icmp eq i64 %i.rz, %i.pp
  br i1 %i.sb, label %bb.cd, label %.loopexit.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.rz
  %i.sd = load i8, ptr %i.sc, align 1, !alias.scope !692, !noalias !696, !noundef !4
  %i.se = icmp sgt i8 %i.sd, -65
  br i1 %i.se, label %bb.cd, label %.loopexit.i.i.i.i

bb.cd:                                            ; preds = %bb.cc, %.split.i.i.i.i.i.i.i, %bb.ca
  %i.sf = icmp samesign eq i64 %i.rz, %i.pp
  br i1 %i.sf, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.rz
  %i.sh = load i8, ptr %i.sg, align 1, !noalias !697, !noundef !4 ; 3 uses
  %i.si = icmp sgt i8 %i.sh, -1
  br i1 %i.si, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.i.i.i44.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.i.i.i44.i: ; preds = %bb.ce
  %i.sj = add nuw nsw i64 %i.rz, 1
  %i.sk = icmp samesign ne i64 %i.sj, %i.pp
  call void @llvm.assume(i1 %i.sk)
  %i.sl = icmp samesign ugt i8 %i.sh, -33
  br i1 %i.sl, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.i.i.i46.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.i.i.i46.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.i.i.i44.i
  %i.sm = add nuw nsw i64 %i.rz, 2
  %i.sn = icmp samesign ne i64 %i.sm, %i.pp
  call void @llvm.assume(i1 %i.sn)
  %i.so = icmp samesign ugt i8 %i.sh, -17
  br i1 %i.so, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.i.i.i47.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.i.i.i47.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.i.i.i46.i
  %i.sp = add nuw nsw i64 %i.rz, 3
  %i.sq = icmp samesign ne i64 %i.sp, %i.pp
  call void @llvm.assume(i1 %i.sq)
  br label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

.loopexit.i.i.i.i:                                ; preds = %bb.cc, %.split.i.i.i.i.i.i.i, %bb.br, %.split.i.i.i.peel.i.i.i.i
  %.lcssa67.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.br ], [ %i.rz, %.split.i.i.i.i.i.i.i ], [ %i.rz, %bb.cc ]
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pn, i64 noundef %i.pp, i64 noundef %.lcssa67.i.i.i.i, i64 noundef %i.pp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !696
  unreachable

bb.cf:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.rx, align 8, !alias.scope !701, !noalias !689 ; 2 uses
  %i.sr = add i64 %.promoted.i.i.i.i.i.i, %i.ry   ; 2 uses
  %i.ss = icmp ult i64 %i.sr, %i.rs
  br i1 %i.ss, label %.lr.ph.i1.i.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i

.lr.ph.i1.i.i.i.i.i:                              ; preds = %bb.cf
  %i.st = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.su = load i64, ptr %i.st, align 8, !alias.scope !701, !noalias !689, !noundef !4
  %i.sv = load i64, ptr %i.ph, align 8, !alias.scope !701, !noalias !689
  %.fr60.i.i.i.i.i.i = freeze i64 %i.sv           ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.sx = load i64, ptr %i.sw, align 8, !alias.scope !701, !noalias !689 ; 2 uses
  %i.sy = sub i64 %i.rw, %i.sx
  %invariant.op = sub i64 1, %.fr60.i.i.i.i.i.i
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.ci, %.lr.ph.i1.i.i.i.i.i
  %.sink.i4.i32.i.i.i.i = phi i64 [ %.sink.i4.i.i.i.i.i, %bb.ci ], [ %i.rn, %.lr.ph.i1.i.i.i.i.i ] ; 3 uses
  %i.sz = phi i64 [ %i.tk, %bb.ci ], [ %i.sr, %.lr.ph.i1.i.i.i.i.i ]
  %i.ta = phi i64 [ %i.tj, %bb.ci ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.i1.i.i.i.i.i ] ; 5 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.sz
  %i.tc = load i8, ptr %i.tb, align 1, !alias.scope !699, !noalias !702, !noundef !4
  %i.td = and i8 %i.tc, 63
  %i.te = zext nneg i8 %i.td to i64
  %i.tf = shl nuw i64 1, %i.te
  %i.tg = and i64 %i.tf, %i.su
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.tg, 0
  br i1 %.not.i2.i.i.i.i.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.th = add i64 %i.ta, %i.rw
  br label %bb.ci

bb.ch:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %..i.i3.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink.i4.i32.i.i.i.i, i64 %.fr60.i.i.i.i.i.i) ; 2 uses
  %i.ti = icmp ult i64 %..i.i3.i.i.i.i.i, %i.rw
  br i1 %i.ti, label %.lr.ph633, label %.preheader36.i.i.i.i.i.i.preheader

bb.ci:                                            ; preds = %bb.cm, %bb.cl, %bb.cg
  %.sink.i4.i.i.i.i.i = phi i64 [ 0, %bb.cm ], [ %i.sy, %bb.cl ], [ 0, %bb.cg ]
  %i.tj = phi i64 [ %i.uf, %bb.cm ], [ %i.ue, %bb.cl ], [ %i.th, %bb.cg ] ; 2 uses
  %i.tk = add i64 %i.tj, %i.ry                    ; 2 uses
  %i.tl = icmp ult i64 %i.tk, %i.rs
  br i1 %i.tl, label %.lr.ph.split.i.i.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i

bb.cj:                                            ; preds = %.lr.ph633
  %i.tm = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i631, 1 ; 2 uses
  %i.tn = icmp ult i64 %i.tm, %i.rw
  br i1 %i.tn, label %.lr.ph633, label %.preheader36.i.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.i.preheader:               ; preds = %bb.cj, %bb.ch
  %i.to = icmp ult i64 %.sink.i4.i32.i.i.i.i, %.fr60.i.i.i.i.i.i
  br i1 %i.to, label %.lr.ph635, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

.lr.ph633:                                        ; preds = %bb.ch, %bb.cj
  %.sroa.04.0.i.i.i.i.i.i631 = phi i64 [ %i.tm, %bb.cj ], [ %..i.i3.i.i.i.i.i, %bb.ch ] ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sroa.04.0.i.i.i.i.i.i631
  %i.tq = load i8, ptr %i.tp, align 1, !alias.scope !700, !noalias !702, !noundef !4
  %i.tr = add i64 %.sroa.04.0.i.i.i.i.i.i631, %i.ta ; 2 uses
  %i.ts = icmp ult i64 %i.tr, %i.rs
  call void @llvm.assume(i1 %i.ts)
  %i.tt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.tr
  %i.tu = load i8, ptr %i.tt, align 1, !alias.scope !699, !noalias !702, !noundef !4
  %.not21.i.i.i.i.i.i = icmp eq i8 %i.tq, %i.tu
  br i1 %.not21.i.i.i.i.i.i, label %bb.cj, label %bb.cm

.preheader36.i.i.i.i.i.i:                         ; preds = %bb.ck
  %i.tv = icmp ult i64 %.sink.i4.i32.i.i.i.i, %i.tw
  br i1 %i.tv, label %.lr.ph635, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i

.lr.ph635:                                        ; preds = %.preheader36.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i634 = phi i64 [ %i.tw, %.preheader36.i.i.i.i.i.i ], [ %.fr60.i.i.i.i.i.i, %.preheader36.i.i.i.i.i.i.preheader ]
  %i.tw = add i64 %.sroa.2.0.i.i.i.i.i.i634, -1   ; 6 uses
  %i.tx = icmp ult i64 %i.tw, %i.rw
  br i1 %i.tx, label %bb.ck, label %.split32.us.i.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph635
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.tw
  %i.tz = load i8, ptr %i.ty, align 1, !alias.scope !700, !noalias !702, !noundef !4
  %i.ua = add i64 %i.tw, %i.ta                    ; 2 uses
  %i.ub = icmp ult i64 %i.ua, %i.rs
  call void @llvm.assume(i1 %i.ub)
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.ua
  %i.ud = load i8, ptr %i.uc, align 1, !alias.scope !699, !noalias !702, !noundef !4
  %.not20.i.i.i.i.i.i = icmp eq i8 %i.tz, %i.ud
  br i1 %.not20.i.i.i.i.i.i, label %.preheader36.i.i.i.i.i.i, label %bb.cl

.split32.us.i.i.i.i.i.i:                          ; preds = %.lr.ph635
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.tw, i64 noundef range(i64 0, -9223372036854775808) %i.rw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !703
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.ue = add i64 %i.ta, %i.sx
  br label %bb.ci

bb.cm:                                            ; preds = %.lr.ph633
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.ta, %invariant.op
  %i.uf = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i.i631
  br label %bb.ci

bb.cn:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %.promoted.i5.i.i.i.i.i = load i64, ptr %i.rx, align 8, !alias.scope !707, !noalias !689 ; 3 uses
  %i.ug = add i64 %.promoted.i5.i.i.i.i.i, %i.ry  ; 3 uses
  %i.uh = icmp ult i64 %i.ug, %i.rs
  br i1 %i.uh, label %.lr.ph.i8.i.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i

.lr.ph.i8.i.i.i.i.i:                              ; preds = %bb.cn
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.uj = load i64, ptr %i.ui, align 8, !alias.scope !707, !noalias !689, !noundef !4 ; 2 uses
  %i.uk = load i64, ptr %i.ph, align 8, !alias.scope !707, !noalias !689
  %.fr63.i.i.i.i.i = freeze i64 %i.uk             ; 10 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.um = load i64, ptr %i.ul, align 8, !alias.scope !707, !noalias !689
  %umax.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr63.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.rw) ; 2 uses
  %i.un = add i64 %.fr63.i.i.i.i.i, -1            ; 2 uses
  %.first_iter.i9.i.i.i.i.i = icmp ult i64 %i.un, %i.rw
  %i.uo = sub i64 1, %.fr63.i.i.i.i.i             ; 2 uses
  br i1 %.first_iter.i9.i.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.i.preheader, label %.lr.ph.split.us.i.i4.i.i.i.i.preheader

.lr.ph.split.us.i.i4.i.i.i.i.preheader:           ; preds = %.lr.ph.i8.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i636.not = icmp ult i64 %.fr63.i.i.i.i.i, %i.rw
  br label %.lr.ph.split.us.i.i4.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i.preheader:         ; preds = %.lr.ph.i8.i.i.i.i.i
  %exitcond.not.i.us.i.i.i.i.i639.not = icmp ult i64 %.fr63.i.i.i.i.i, %i.rw
  %.not34.i.us.us.i.i.i.i.i642 = icmp eq i64 %.fr63.i.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i:                   ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.preheader, %bb.cq
  %i.up = phi i64 [ %i.vq, %bb.cq ], [ %i.ug, %.lr.ph.split.us.i.us.i.i.i.i.i.preheader ]
  %i.uq = phi i64 [ %i.vp, %bb.cq ], [ %.promoted.i5.i.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i.i.preheader ] ; 5 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.up
  %i.us = load i8, ptr %i.ur, align 1, !alias.scope !705, !noalias !702, !noundef !4
  %i.ut = and i8 %i.us, 63
  %i.uu = zext nneg i8 %i.ut to i64
  %i.uv = shl nuw i64 1, %i.uu
  %i.uw = and i64 %i.uv, %i.uj
  %.not.us.i.us.i.i.i.i.i = icmp eq i64 %i.uw, 0
  br i1 %.not.us.i.us.i.i.i.i.i, label %bb.cp, label %.preheader35.i.us.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i.preheader:            ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i639.not, label %.lr.ph641, label %.preheader.i10.us.us.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i:                      ; preds = %.lr.ph641
  %i.ux = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i640, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i.i = icmp eq i64 %i.ux, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.i.preheader, label %.lr.ph641

.preheader.i10.us.us.i.i.i.i.i.preheader:         ; preds = %.preheader35.i.us.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i.i.i642, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %.lr.ph644

.lr.ph641:                                        ; preds = %.preheader35.i.us.i.i.i.i.i.preheader, %.preheader35.i.us.i.i.i.i.i
  %.sroa.04.0.us.i.us.i.i.i.i.i640 = phi i64 [ %i.ux, %.preheader35.i.us.i.i.i.i.i ], [ %.fr63.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sroa.04.0.us.i.us.i.i.i.i.i640
  %i.uz = load i8, ptr %i.uy, align 1, !alias.scope !706, !noalias !702, !noundef !4
  %i.va = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i640, %i.uq ; 2 uses
  %i.vb = icmp ult i64 %i.va, %i.rs
  call void @llvm.assume(i1 %i.vb)
  %i.vc = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.va
  %i.vd = load i8, ptr %i.vc, align 1, !alias.scope !705, !noalias !702, !noundef !4
  %.not21.us.i.us.i.i.i.i.i = icmp eq i8 %i.uz, %i.vd
  br i1 %.not21.us.i.us.i.i.i.i.i, label %.preheader35.i.us.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %.lr.ph641
  %i.ve = add i64 %i.uq, %i.uo
  %i.vf = add i64 %i.ve, %.sroa.04.0.us.i.us.i.i.i.i.i640
  br label %bb.cq

.preheader.i10.us.us.i.i.i.i.i:                   ; preds = %.lr.ph644
  %.not34.i.us.us.i.i.i.i.i = icmp eq i64 %i.vg, 0
  br i1 %.not34.i.us.us.i.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %.lr.ph644

.lr.ph644:                                        ; preds = %.preheader.i10.us.us.i.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i.i643 = phi i64 [ %i.vg, %.preheader.i10.us.us.i.i.i.i.i ], [ %.fr63.i.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.i.preheader ]
  %i.vg = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i.i643, -1 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !alias.scope !706, !noalias !702, !noundef !4
  %i.vj = add i64 %i.vg, %i.uq                    ; 2 uses
  %i.vk = icmp ult i64 %i.vj, %i.rs
  call void @llvm.assume(i1 %i.vk)
  %i.vl = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.vj
  %i.vm = load i8, ptr %i.vl, align 1, !alias.scope !705, !noalias !702, !noundef !4
  %.not20.us.i.us.us.i.i.i.i.i = icmp eq i8 %i.vi, %i.vm
  br i1 %.not20.us.i.us.us.i.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.i, label %.split.us.us.i.i.i.i.i

.split.us.us.i.i.i.i.i:                           ; preds = %.lr.ph644
  %i.vn = add i64 %i.uq, %i.um
  br label %bb.cq

bb.cp:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i
  %i.vo = add i64 %i.uq, %i.rw
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.split.us.us.i.i.i.i.i, %bb.co
  %i.vp = phi i64 [ %i.vf, %bb.co ], [ %i.vo, %bb.cp ], [ %i.vn, %.split.us.us.i.i.i.i.i ] ; 2 uses
  %i.vq = add i64 %i.vp, %i.ry                    ; 2 uses
  %i.vr = icmp ult i64 %i.vq, %i.rs
  br i1 %i.vr, label %.lr.ph.split.us.i.us.i.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i

.lr.ph.split.us.i.i4.i.i.i.i:                     ; preds = %.lr.ph.split.us.i.i4.i.i.i.i.preheader, %bb.ct
  %i.vs = phi i64 [ %i.wl, %bb.ct ], [ %i.ug, %.lr.ph.split.us.i.i4.i.i.i.i.preheader ]
  %i.vt = phi i64 [ %i.wk, %bb.ct ], [ %.promoted.i5.i.i.i.i.i, %.lr.ph.split.us.i.i4.i.i.i.i.preheader ] ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.vs
  %i.vv = load i8, ptr %i.vu, align 1, !alias.scope !705, !noalias !702, !noundef !4
  %i.vw = and i8 %i.vv, 63
  %i.vx = zext nneg i8 %i.vw to i64
  %i.vy = shl nuw i64 1, %i.vx
  %i.vz = and i64 %i.vy, %i.uj
  %.not.us.i.i.i.i.i.i = icmp eq i64 %i.vz, 0
  br i1 %.not.us.i.i.i.i.i.i, label %bb.cs, label %.preheader35.i.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.i.preheader:               ; preds = %.lr.ph.split.us.i.i4.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i636.not, label %.lr.ph638, label %.preheader.split.i13.i.i.i.i.i

.preheader35.i.i.i.i.i.i:                         ; preds = %.lr.ph638
  %i.wa = add i64 %.sroa.04.0.us.i.i.i.i.i.i637, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.wa, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.preheader.split.i13.i.i.i.i.i, label %.lr.ph638

.preheader.split.i13.i.i.i.i.i:                   ; preds = %.preheader35.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i = icmp eq i64 %.fr63.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, label %.split32.us.i14.i.i.i.i.i

.lr.ph638:                                        ; preds = %.preheader35.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i.i637 = phi i64 [ %i.wa, %.preheader35.i.i.i.i.i.i ], [ %.fr63.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sroa.04.0.us.i.i.i.i.i.i637
  %i.wc = load i8, ptr %i.wb, align 1, !alias.scope !706, !noalias !702, !noundef !4
  %i.wd = add i64 %.sroa.04.0.us.i.i.i.i.i.i637, %i.vt ; 2 uses
  %i.we = icmp ult i64 %i.wd, %i.rs
  call void @llvm.assume(i1 %i.we)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.wd
  %i.wg = load i8, ptr %i.wf, align 1, !alias.scope !705, !noalias !702, !noundef !4
  %.not21.us.i.i.i.i.i.i = icmp eq i8 %i.wc, %i.wg
  br i1 %.not21.us.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph638
  %i.wh = add i64 %i.vt, %i.uo
  %i.wi = add i64 %i.wh, %.sroa.04.0.us.i.i.i.i.i.i637
  br label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.split.us.i.i4.i.i.i.i
  %i.wj = add i64 %i.vt, %i.rw
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.wk = phi i64 [ %i.wi, %bb.cr ], [ %i.wj, %bb.cs ] ; 2 uses
  %i.wl = add i64 %i.wk, %i.ry                    ; 2 uses
  %i.wm = icmp ult i64 %i.wl, %i.rs
  br i1 %i.wm, label %.lr.ph.split.us.i.i4.i.i.i.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i

.split32.us.i14.i.i.i.i.i:                        ; preds = %.preheader.split.i13.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.un, i64 noundef range(i64 0, -9223372036854775808) %i.rw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !708
  unreachable

.thread69.i:                                      ; preds = %bb.bl, %bb.bk
  %i.wn = trunc nuw nsw i32 %.sroa.4.0.i36.ph.i to i8
  switch i8 %i.wn, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i [
    i8 43, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
    i8 45, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
    i8 60, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
    i8 62, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
    i8 47, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
    i8 37, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
  ]

_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i: ; preds = %.preheader36.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit12.i.i.i.i.i.i44.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit14.i.i.i.i.i.i46.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqImE9wpq17_11uu_truncate.exit16.i.i.i.i.i.i47.i, %bb.ce, %.preheader.split.i13.i.i.i.i.i, %bb.cd, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !689
  br label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.sink.split.i

_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i: ; preds = %bb.ci, %bb.ct, %bb.cq, %bb.cn, %bb.cf, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !673
  br label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i

_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.i: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !673
  br i1 %i.pq, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i, label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i

_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i: ; preds = %bb.cw, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.i, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i, %.thread69.i, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread81.i
  %i.wo = phi i64 [ %i.kf, %.thread69.i ], [ %i.kf, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i ], [ %i.kf, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread81.i ], [ %i.yc, %bb.cw ], [ %i.kf, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.i ]
  %i.wp = phi ptr [ %i.kg, %.thread69.i ], [ %i.kg, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread88.i ], [ %i.kg, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread81.i ], [ %i.yd, %bb.cw ], [ %i.kg, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !673
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size28allow_list_with_all_suffixes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 14) #22, !noalias !671
  %i.wq = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !noalias !673, !nonnull !4, !noundef !4 ; 5 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.wt = load i64, ptr %i.ws, align 8, !noalias !673, !noundef !4 ; 8 uses
  %i.wu = shl nuw i64 %i.wt, 4                    ; 3 uses
  %i.wv = icmp eq i64 %i.wt, 0                    ; 2 uses
  br i1 %i.wv, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !709
  %i.ww = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.wu, i64 noundef range(i64 1, 9) 8) #22, !noalias !709 ; 6 uses
  %i.wx = icmp eq ptr %i.ww, null
  br i1 %i.wx, label %bb.cu, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %xtraiter = and i64 %i.wt, 1
  %i.wy = icmp eq i64 %i.wt, 1
  br i1 %i.wy, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.wt, -2
  br label %.preheader.i.i.i.i

bb.cu:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.wu) #24, !noalias !710
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.wz = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.xl, %.preheader.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.xa = getelementptr inbounds nuw [24 x i8], ptr %i.wr, i64 %i.wz ; 2 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 8
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.xb, align 8, !noalias !711, !nonnull !4, !noundef !4
  %i.xc = getelementptr i8, ptr %i.xa, i64 16
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.xc, align 8, !noalias !711, !noundef !4
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr %i.ww, i64 %i.wz ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.i, ptr %i.xd, align 8, !noalias !712, !captures !713
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store i64 %.val12.i.i.i.i.i.i.i, ptr %i.xe, align 8, !noalias !714
  %i.xf = or disjoint i64 %i.wz, 1                ; 2 uses
  %i.xg = getelementptr inbounds nuw [24 x i8], ptr %i.wr, i64 %i.xf ; 2 uses
  %i.xh = getelementptr i8, ptr %i.xg, i64 8
  %.val11.i.i.i.i.i.i.i.1 = load ptr, ptr %i.xh, align 8, !noalias !711, !nonnull !4, !noundef !4
  %i.xi = getelementptr i8, ptr %i.xg, i64 16
  %.val12.i.i.i.i.i.i.i.1 = load i64, ptr %i.xi, align 8, !noalias !711, !noundef !4
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.ww, i64 %i.xf ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.i.1, ptr %i.xj, align 8, !noalias !712, !captures !713
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i64 %.val12.i.i.i.i.i.i.i.1, ptr %i.xk, align 8, !noalias !714
  %i.xl = add nuw i64 %i.wz, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.xl, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod727 = trunc i64 %i.wt to i1
  call void @llvm.assume(i1 %lcmp.mod727)
  %i.xm = getelementptr inbounds nuw [24 x i8], ptr %i.wr, i64 %.epil.init ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 8
  %.val11.i.i.i.i.i.i.i.epil = load ptr, ptr %i.xn, align 8, !noalias !711, !nonnull !4, !noundef !4
  %i.xo = getelementptr i8, ptr %i.xm, i64 16
  %.val12.i.i.i.i.i.i.i.epil = load i64, ptr %i.xo, align 8, !noalias !711, !noundef !4
  %i.xp = getelementptr inbounds nuw [16 x i8], ptr %i.ww, i64 %.epil.init ; 2 uses
  store ptr %.val11.i.i.i.i.i.i.i.epil, ptr %i.xp, align 8, !noalias !712, !captures !713
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store i64 %.val12.i.i.i.i.i.i.i.epil, ptr %i.xq, align 8, !noalias !714
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i: ; preds = %.preheader.i.i.i.i.epil.preheader, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i.loopexit.unr-lcssa, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i
  %i.xr = phi ptr [ inttoptr (i64 8 to ptr), %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i ], [ %i.ww, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i.loopexit.unr-lcssa ], [ %i.ww, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !673
  %i.xs = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i8 0, ptr %i.xs, align 8, !noalias !673
  %i.xt = getelementptr inbounds nuw i8, ptr %i.at, i64 33
  store i8 0, ptr %i.xt, align 1, !noalias !673
  %i.xu = getelementptr inbounds nuw i8, ptr %i.at, i64 34
  store i8 0, ptr %i.xu, align 2, !noalias !673
  %i.xv = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %i.xw, align 8, !noalias !673
  store ptr %i.xr, ptr %i.at, align 8, !noalias !673
  store i64 %i.wt, ptr %i.xv, align 8, !noalias !673
  call void @_RNvMs0_NtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_sizeNtB5_6Parser9parse_u64(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.wp, i64 noundef %i.wo) #22, !noalias !671
  %switch.tableidx = add nsw i32 %.sroa.4.0.i36.ph.i, -37 ; 2 uses
  %i.xx = icmp ult i32 %switch.tableidx, 26
  br i1 %i.xx, label %switch.lookup, label %bb.cy

_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.sink.split.i: ; preds = %.split.us.i.i.i.i.i.i, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread85.i, %.lr.ph.split.us.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !673
  br label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i

_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i: ; preds = %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.sink.split.i, %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.i, %.thread69.i, %.thread69.i, %.thread69.i, %.thread69.i, %.thread69.i, %.thread69.i
  %.not.i48.i = icmp ugt i64 %i.kf, 1
  br i1 %.not.i48.i, label %bb.cv, label %.split.i.i

.split.i.i:                                       ; preds = %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
  %i.xy = icmp eq i64 %i.kf, 1
  br i1 %i.xy, label %bb.cw, label %bb.cx

bb.cv:                                            ; preds = %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ya = load i8, ptr %i.xz, align 1, !alias.scope !715, !noundef !4
  %i.yb = icmp sgt i8 %i.ya, -65
  br i1 %i.yb, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %.split.i.i
  %i.yc = add i64 %i.kf, -1                       ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.kg, i64 1 ; 2 uses
  store ptr %i.yd, ptr %i.ax, align 8, !noalias !673, !captures !713
  store i64 %i.yc, ptr %i.kh, align 8, !noalias !673
  br label %_RNvCskqImE9wpq17_11uu_truncate11is_modifier.exit.thread74.i

bb.cx:                                            ; preds = %bb.cv, %.split.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kg, i64 noundef %i.kf, i64 noundef 1, i64 noundef %i.kf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23, !noalias !671
  unreachable

switch.lookup:                                    ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i
  %i.ye = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCskqImE9wpq17_11uu_truncate8truncate, i64 %i.ye
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %switch.lookup, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i
  %.sroa.06.0.i = phi ptr [ @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskqImE9wpq17_11uu_truncate.exit.i ], [ %switch.load, %switch.lookup ]
  %i.yf = load i64, ptr %i.au, align 8, !range !716, !noalias !673, !noundef !4
  %.not32.i = icmp eq i64 %i.yf, -1
  br i1 %.not32.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !672
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.yg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.yh = load i64, ptr %i.yg, align 8, !noalias !673, !noundef !4
  %i.yi = call { i64, i64 } %.sroa.06.0.i(i64 noundef %i.yh) #22, !noalias !671, !inline_history !569 ; 2 uses
  %i.yj = extractvalue { i64, i64 } %i.yi, 0
  %i.yk = extractvalue { i64, i64 } %i.yi, 1
  %i.yl = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.yj, ptr %i.yl, align 8, !alias.scope !671
  %i.ym = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.yk, ptr %i.ym, align 8, !alias.scope !671
  store i64 -1, ptr %i.bu, align 8, !alias.scope !671
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !673
  br i1 %i.wv, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskqImE9wpq17_11uu_truncate.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskqImE9wpq17_11uu_truncate.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskqImE9wpq17_11uu_truncate.exit.i: ; preds = %bb.db
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xr, i64 noundef %i.wu, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !671
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  br label %.lr.ph.i.i.i50.i

.lr.ph.i.i.i50.i:                                 ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskqImE9wpq17_11uu_truncate.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.yo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskqImE9wpq17_11uu_truncate.exit.i ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [24 x i8], ptr %i.wr, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.yo = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %.val.i.i.i.i.i = load i64, ptr %i.yn, align 8, !range !5, !alias.scope !720, !noalias !721, !noundef !4 ; 2 uses
  %i.yp = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.yp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i50.i
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.yq, align 8, !alias.scope !720, !noalias !721, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !722
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit.i.i.i.i: ; preds = %bb.dc, %.lr.ph.i.i.i50.i
  %i.yr = icmp eq i64 %i.yo, %i.wt
  br i1 %i.yr, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskqImE9wpq17_11uu_truncate.exit.i.i, label %.lr.ph.i.i.i50.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCskqImE9wpq17_11uu_truncate.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit.i.i.i.i, %bb.db
end_hunk_0
