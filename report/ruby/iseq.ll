inline.NumInlined: 615
inline.NumDeleted: 145
begin_hunk_0_@rb_iseq_trace_set:bb.a

.lr.ph:                                           ; preds = %bb.g, %encoded_iseq_trace_instrument.exit
  %.029 = phi i32 [ %i.cw, %encoded_iseq_trace_instrument.exit ], [ 0, %bb.g ] ; 6 uses
  %i.ag = zext i32 %.029 to i64
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !18 ; 3 uses
  %i.ah = getelementptr i8, ptr %.val.i, i64 112
  %i.ai = getelementptr i8, ptr %.val.i, i64 128
end_hunk_0
begin_hunk_1_@rb_iseq_trace_set:bb.a
  br label %succ_index_lookup.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ay = add nsw i32 %.029, -54                  ; 3 uses
  %i.az = lshr i32 %i.ay, 9
  %i.ba = getelementptr i8, ptr %i.am, i64 48
  %i.bb = zext nneg i32 %i.az to i64
end_hunk_1
begin_hunk_2_@rb_iseq_trace_set:bb.a
  %i.bq = zext nneg i32 %i.be to i64
  %i.br = getelementptr [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  %2 = and i32 %i.ay, 63
  %3 = xor i32 %2, 63
  %4 = zext nneg i32 %3 to i64
  %i.bt = shl i64 %i.bs, %4
  %i.bu = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bt)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = load i32, ptr %i.bc, align 8, !tbaa !162
end_hunk_2
begin_hunk_3_@rb_iseq_line_no:bb.a
  br label %succ_index_lookup.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.h, -54                    ; 3 uses
  %i.u = lshr i32 %i.t, 9
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = zext nneg i32 %i.u to i64
end_hunk_3
begin_hunk_4_@rb_iseq_line_no:bb.a
  %i.al = zext nneg i32 %i.z to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %2 = and i32 %i.t, 63
  %3 = xor i32 %2, 63
  %4 = zext nneg i32 %3 to i64
  %i.ao = shl i64 %i.an, %4
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ao)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = load i32, ptr %i.x, align 8, !tbaa !162
end_hunk_4
begin_hunk_5_@rb_iseq_node_id:bb.a
  br label %succ_index_lookup.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.h, -54                    ; 3 uses
  %i.u = lshr i32 %i.t, 9
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = zext nneg i32 %i.u to i64
end_hunk_5
begin_hunk_6_@rb_iseq_node_id:bb.a
  %i.al = zext nneg i32 %i.z to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %2 = and i32 %i.t, 63
  %3 = xor i32 %2, 63
  %4 = zext nneg i32 %3 to i64
  %i.ao = shl i64 %i.an, %4
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ao)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = load i32, ptr %i.x, align 8, !tbaa !162
end_hunk_6
begin_hunk_7_@rb_iseq_event_flags:bb.a
  br label %succ_index_lookup.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.h, -54                    ; 3 uses
  %i.u = lshr i32 %i.t, 9
  %i.v = getelementptr i8, ptr %i.g, i64 48
  %i.w = zext nneg i32 %i.u to i64
end_hunk_7
begin_hunk_8_@rb_iseq_event_flags:bb.a
  %i.al = zext nneg i32 %i.z to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %2 = and i32 %i.t, 63
  %3 = xor i32 %2, 63
  %4 = zext nneg i32 %3 to i64
  %i.ao = shl i64 %i.an, %4
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ao)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = load i32, ptr %i.x, align 8, !tbaa !162
end_hunk_8
begin_hunk_9_@rb_iseq_clear_event_flags:bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = trunc i64 %1 to i32                      ; 4 uses
  %i.f = icmp slt i32 %i.e, 54
  %i.g = add nsw i32 %i.e, -54                    ; 3 uses
  %i.h = lshr i32 %i.g, 9
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i32 %i.g, 6
end_hunk_9
begin_hunk_10_@rb_iseq_clear_event_flags:bb.a
  %i.n = add nsw i32 %i.m, -9
  %i.o = zext nneg i32 %i.n to i64
  %i.p = zext nneg i32 %i.k to i64
  %3 = and i32 %i.g, 63
  %4 = xor i32 %3, 63
  %5 = zext nneg i32 %4 to i64
  %i.q = sdiv i32 %i.e, 9
  %i.r = srem i32 %i.e, 9
  %i.s = sext i32 %i.q to i64
end_hunk_10
begin_hunk_11_@rb_iseq_clear_event_flags:bb.a
  %i.bi = getelementptr i8, ptr %i.bb, i64 16
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.p
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bl = shl i64 %i.bk, %5
  %i.bm = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bl)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = load i32, ptr %i.bb, align 8, !tbaa !162
end_hunk_11
begin_hunk_12_@rb_iseq_disasm_insn:bb.a
  br label %succ_index_lookup.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.av = add nsw i32 %i.aj, -54                  ; 3 uses
  %i.aw = lshr i32 %i.av, 9
  %i.ax = getelementptr i8, ptr %i.ai, i64 48
  %i.ay = zext nneg i32 %i.aw to i64
end_hunk_12
begin_hunk_13_@rb_iseq_disasm_insn:bb.a
  %i.bn = zext nneg i32 %i.bb to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %5 = and i32 %i.av, 63
  %6 = xor i32 %5, 63
  %7 = zext nneg i32 %6 to i64
  %i.bq = shl i64 %i.bp, %7
  %i.br = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bq)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = load i32, ptr %i.az, align 8, !tbaa !162
end_hunk_13
begin_hunk_14_@rb_iseq_disasm_insn:bb.a
  br label %succ_index_lookup.exit.i.i.i92

bb.l:                                             ; preds = %bb.j
  %i.cq = add i32 %i.cd, -55                      ; 3 uses
  %i.cr = lshr i32 %i.cq, 9
  %i.cs = getelementptr i8, ptr %i.cc, i64 48
  %i.ct = zext nneg i32 %i.cr to i64
end_hunk_14
begin_hunk_15_@rb_iseq_disasm_insn:bb.a
  %i.di = zext nneg i32 %i.cw to i64
  %i.dj = getelementptr [8 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11
  %8 = and i32 %i.cq, 63
  %9 = xor i32 %8, 63
  %10 = zext nneg i32 %9 to i64
  %i.dl = shl i64 %i.dk, %10
  %i.dm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dl)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = load i32, ptr %i.cu, align 8, !tbaa !162
end_hunk_15
begin_hunk_16_@rb_iseq_disasm_insn:bb.a
  br label %succ_index_lookup.exit.i.i.i100

bb.t:                                             ; preds = %bb.r
  %i.eu = add nsw i32 %i.ei, -54                  ; 3 uses
  %i.ev = lshr i32 %i.eu, 9
  %i.ew = getelementptr i8, ptr %i.eh, i64 48
  %i.ex = zext nneg i32 %i.ev to i64
end_hunk_16
begin_hunk_17_@rb_iseq_disasm_insn:bb.a
  %i.fm = zext nneg i32 %i.fa to i64
  %i.fn = getelementptr [8 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !11
  %11 = and i32 %i.eu, 63
  %12 = xor i32 %11, 63
  %13 = zext nneg i32 %12 to i64
  %i.fp = shl i64 %i.fo, %13
  %i.fq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fp)
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = load i32, ptr %i.ey, align 8, !tbaa !162
end_hunk_17
begin_hunk_18_@iseq_add_local_tracepoint_i:bb.a
bb.b:                                             ; preds = %encoded_iseq_trace_instrument.exit.i, %.lr.ph.i
  %.038.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cn, %encoded_iseq_trace_instrument.exit.i ] ; 6 uses
  %.03037.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select33.i, %encoded_iseq_trace_instrument.exit.i ]
  %i.s = zext i32 %.038.i to i64
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !18 ; 3 uses
  %i.t = getelementptr i8, ptr %.val.i, i64 112
  %i.u = getelementptr i8, ptr %.val.i, i64 128
end_hunk_18
begin_hunk_19_@iseq_add_local_tracepoint_i:bb.a
  br label %succ_index_lookup.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ak = add nsw i32 %.038.i, -54                ; 3 uses
  %i.al = lshr i32 %i.ak, 9
  %i.am = getelementptr i8, ptr %i.y, i64 48
  %i.an = zext nneg i32 %i.al to i64
end_hunk_19
begin_hunk_20_@iseq_add_local_tracepoint_i:bb.a
  %i.bc = zext nneg i32 %i.aq to i64
  %i.bd = getelementptr [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %2 = and i32 %i.ak, 63
  %3 = xor i32 %2, 63
  %4 = zext nneg i32 %3 to i64
  %i.bf = shl i64 %i.be, %4
  %i.bg = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bf)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = load i32, ptr %i.ao, align 8, !tbaa !162
end_hunk_20
begin_hunk_21_@iseq_remove_local_tracepoint_i:bb.a
bb.g:                                             ; preds = %encoded_iseq_trace_instrument.exit.i, %.lr.ph.i
  %.02533.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %encoded_iseq_trace_instrument.exit.i ] ; 6 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !283 ; 2 uses
  %i.ak = zext i32 %.02533.i to i64
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %.val.i.i = load ptr, ptr %i.al, align 8, !tbaa !18 ; 3 uses
  %i.am = getelementptr i8, ptr %.val.i.i, i64 112
end_hunk_21
begin_hunk_22_@iseq_remove_local_tracepoint_i:bb.a
  br label %succ_index_lookup.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bd = add nsw i32 %.02533.i, -54              ; 3 uses
  %i.be = lshr i32 %i.bd, 9
  %i.bf = getelementptr i8, ptr %i.ar, i64 48
  %i.bg = zext nneg i32 %i.be to i64
end_hunk_22
begin_hunk_23_@iseq_remove_local_tracepoint_i:bb.a
  %i.bv = zext nneg i32 %i.bj to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %2 = and i32 %i.bd, 63
  %3 = xor i32 %2, 63
  %4 = zext nneg i32 %3 to i64
  %i.by = shl i64 %i.bx, %4
  %i.bz = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.by)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = load i32, ptr %i.bh, align 8, !tbaa !162
end_hunk_23
begin_hunk_24_@iseq_data_to_ary:bb.a
  %i.re = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0339
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.rg = zext i32 %.0342 to i64
  %i.rh = call i32 @rb_st_lookup(ptr noundef %i.n, i64 noundef %i.rg, ptr noundef nonnull %i.c) #20
  %.not374 = icmp eq i32 %i.rh, 0
  br i1 %.not374, label %bb.ca, label %bb.bz
end_hunk_24
begin_hunk_25_@iseq_data_to_ary:bb.a
  br label %succ_index_lookup.exit.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.sb = add nsw i32 %.0342, -54                 ; 3 uses
  %i.sc = lshr i32 %i.sb, 9
  %i.sd = getelementptr i8, ptr %i.rp, i64 48
  %i.se = zext nneg i32 %i.sc to i64
end_hunk_25
begin_hunk_26_@iseq_data_to_ary:bb.a
  %i.st = zext nneg i32 %i.sh to i64
  %i.su = getelementptr [8 x i8], ptr %i.ss, i64 %i.st
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !11
  %1 = and i32 %i.sb, 63
  %2 = xor i32 %1, 63
  %3 = zext nneg i32 %2 to i64
  %i.sw = shl i64 %i.sv, %3
  %i.sx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.sw)
  %i.sy = trunc nuw nsw i64 %i.sx to i32
  %i.sz = load i32, ptr %i.sf, align 8, !tbaa !162
end_hunk_26
