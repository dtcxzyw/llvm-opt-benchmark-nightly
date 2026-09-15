Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.02?download=true
inline.NumInlined: 431
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter14print_span_hms:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i16, ptr %i.e, align 8, !noundef !4 ; 6 uses
  %i.g = and i16 %i.f, 960
  %i.h = icmp ne i16 %i.g, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !range !8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = load i8, ptr %i.k, align 2, !range !10, !alias.scope !120, !noalias !121, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val3.i = load i8, ptr %i.m, align 1, !alias.scope !120, !noalias !121
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.val.i = load i8, ptr %i.n, align 1, !alias.scope !120, !noalias !121
  %i.o = icmp eq i8 %.val.i, 0
  %i.p = icmp slt i8 %i.j, 0                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.q = icmp slt i8 %i.j, 0
  %spec.select423 = select i1 %i.q, i8 0, i8 2
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.d:                                             ; preds = %bb.a
  %i.r = icmp slt i8 %i.j, 0
  %.3.i.i = select i1 %i.r, i8 45, i8 43
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.e:                                             ; preds = %bb.a
  %i.s = icmp slt i8 %i.j, 0
  %.4.i.i = select i1 %i.s, i8 1, i8 2
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.f:                                             ; preds = %bb.b
  %spec.select424 = select i1 %i.p, i8 0, i8 2
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.h, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.h:                                             ; preds = %bb.g
  %i.t = trunc nuw i8 %.val3.i to i1
  %.not.i.i = xor i1 %i.t, true
  %brmerge.i.i = or i1 %i.h, %.not.i.i
  %.8.i.i = zext i1 %brmerge.i.i to i8
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit: ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.11.0.i.i = phi i8 [ undef, %bb.e ], [ 45, %bb.f ], [ 45, %bb.h ], [ undef, %bb.g ], [ 45, %bb.c ], [ %.3.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i8 [ %.4.i.i, %bb.e ], [ %spec.select424, %bb.f ], [ %.8.i.i, %bb.h ], [ 2, %bb.g ], [ %spec.select423, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i8, ptr %i.u, align 4, !range !7, !alias.scope !120, !noalias !121, !noundef !4
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !120, !noalias !121 ; 2 uses
  %.sroa.0.0.i46 = select i1 %i.w, i8 %i.y, i8 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.aa = load i8, ptr %i.z, align 2, !range !7, !alias.scope !120, !noalias !121, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !120, !noalias !121 ; 2 uses
  store ptr %0, ptr %i.d, align 8, !alias.scope !119, !noalias !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %2, ptr %i.ad, align 8, !alias.scope !119, !noalias !122
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.ae, align 8, !alias.scope !119, !noalias !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 %.sroa.11.0.i.i, ptr %i.af, align 1, !alias.scope !119, !noalias !122
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %.sroa.0.0.i46, ptr %i.ag, align 2, !alias.scope !119, !noalias !122
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  store i8 %i.aa, ptr %i.ah, align 1, !alias.scope !119, !noalias !122
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 %i.ac, ptr %i.ai, align 4, !alias.scope !119, !noalias !122
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 21 ; 2 uses
  store i8 0, ptr %i.aj, align 1, !alias.scope !119, !noalias !122
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4 ; 9 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.14.0.copyload = load i16, ptr %.sroa.14.0..sroa_idx, align 2 ; 2 uses
  %i.ak = icmp eq i8 %i.j, 0
  %.sroa.15.0.copyload = load i32, ptr %i.i, align 4
  %spec.select = select i1 %i.ak, i32 %.sroa.15.0.copyload, i32 1 ; 2 uses
  %cond.i = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %cond.i, label %bb.i, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit

bb.i:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !123, !noalias !124, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 8, !alias.scope !123, !noalias !124, !noundef !4 ; 2 uses
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %.not.i.i47 = icmp eq i64 %i.am, %i.ap
  br i1 %.not.i.i47, label %bb.j, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i, !prof !9

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !125
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i: ; preds = %bb.i
  %i.aq = load ptr, ptr %2, align 8, !alias.scope !123, !noalias !124, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 %.sroa.11.0.i.i, ptr %i.ar, align 1, !noalias !125
  %i.as = add i16 %i.ao, 1
  store i16 %i.as, ptr %i.an, align 8, !alias.scope !123, !noalias !124
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit: ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i
  br i1 %i.h, label %bb.ag, label %bb.k

bb.k:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit41, %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit
  %i.at = phi ptr [ %.pre, %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit ], [ %.pre, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit41 ], [ %2, %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit ] ; 8 uses
  %.sroa.024.0 = select i1 %i.w, i8 %i.y, i8 2    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.au = zext i32 %.sroa.12.0.copyload to i64
  %..i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.024.0, i8 20) ; 2 uses
  %i.av = icmp ult i32 %.sroa.12.0.copyload, 10
  br i1 %i.av, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp ult i32 %.sroa.12.0.copyload, 100
  br i1 %i.aw, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ult i32 %.sroa.12.0.copyload, 1000
  br i1 %i.ax, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp ult i32 %.sroa.12.0.copyload, 10000
  br i1 %i.ay, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit: ; preds = %bb.n
  %i.az = icmp ugt i32 %.sroa.12.0.copyload, 99999 ; 2 uses
  %i.ba = udiv i32 %.sroa.12.0.copyload, 100000
  %.sroa.05.1.i = select i1 %i.az, i32 5, i32 0
  %.sroa.0.1.i = select i1 %i.az, i32 %i.ba, i32 %.sroa.12.0.copyload ; 4 uses
  %i.bb = add nuw nsw i32 %.sroa.0.1.i, 393206
  %i.bc = add nuw nsw i32 %.sroa.0.1.i, 524188
  %i.bd = and i32 %i.bb, %i.bc
  %i.be = add nuw nsw i32 %.sroa.0.1.i, 916504
  %i.bf = add nuw nsw i32 %.sroa.0.1.i, 514288
  %i.bg = and i32 %i.be, %i.bf
  %i.bh = xor i32 %i.bd, %i.bg
  %i.bi = lshr i32 %i.bh, 17
  %i.bj = add nuw nsw i32 %i.bi, %.sroa.05.1.i    ; 2 uses
  %i.bk = icmp samesign ult i32 %i.bj, 20
  tail call void @llvm.assume(i1 %i.bk), !noalias !126
  %i.bl = trunc nuw nsw i32 %i.bj to i8
  %i.bm = add nuw nsw i8 %i.bl, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit
  %.sroa.0.0.i43 = phi i8 [ %i.bm, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ]
  %..i49 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i43, i8 %..i) ; 2 uses
  %i.bn = zext nneg i8 %..i49 to i64              ; 2 uses
  %i.bo = load ptr, ptr %i.at, align 8, !alias.scope !126, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !126, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 7 uses
  %i.bs = load i16, ptr %i.br, align 8, !alias.scope !126, !noundef !4 ; 2 uses
  %i.bt = zext i16 %i.bs to i64                   ; 2 uses
  %i.bu = sub nuw i64 %i.bq, %i.bt
  %i.bv = getelementptr i8, ptr %i.bo, i64 %i.bt  ; 2 uses
  %.not.i = icmp ult i64 %i.bu, %i.bn
  br i1 %.not.i, label %bb.o, label %.preheader401, !prof !11

bb.o:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24, !noalias !126
  unreachable

.preheader401:                                    ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44, %.preheader401
  %.sroa.06.0.i = phi i64 [ %i.bw, %.preheader401 ], [ %i.bn, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44 ]
  %.sroa.0.0.i = phi i64 [ %i.cb, %.preheader401 ], [ %i.au, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit44 ] ; 3 uses
  %i.bw = add i64 %.sroa.06.0.i, -1               ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = urem i64 %.sroa.0.0.i, 10
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, 48
  store i8 %i.ca, ptr %i.bx, align 1, !noalias !126
  %i.cb = udiv i64 %.sroa.0.0.i, 10
  %i.cc = icmp samesign ugt i64 %.sroa.0.0.i, 9
  %i.cd = icmp ne i64 %i.bw, 0
  %or.cond2.i = and i1 %i.cc, %i.cd
  br i1 %or.cond2.i, label %.preheader401, label %.preheader400

.preheader400:                                    ; preds = %.preheader401
  %.not17.i403 = icmp eq i64 %i.bw, 0
  br i1 %.not17.i403, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padmEBa_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader400
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bv, i8 48, i64 %i.bw, i1 false), !noalias !126
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padmEBa_.exit

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padmEBa_.exit: ; preds = %.lr.ph.preheader, %.preheader400
  %i.ce = zext nneg i8 %..i49 to i16
  %i.cf = add i16 %i.bs, %i.ce                    ; 3 uses
  store i16 %i.cf, ptr %i.br, align 8, !alias.scope !126
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.cg = load i64, ptr %i.bp, align 8, !alias.scope !127, !noundef !4
  %i.ch = zext i16 %i.cf to i64                   ; 2 uses
  %.not.i38 = icmp eq i64 %i.cg, %i.ch
  br i1 %.not.i38, label %bb.p, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit39, !prof !9

bb.p:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padmEBa_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !127
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit39: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padmEBa_.exit
  %i.ci = load ptr, ptr %i.at, align 8, !alias.scope !127, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 58, ptr %i.cj, align 1, !noalias !127
  %i.ck = add i16 %i.cf, 1                        ; 3 uses
  store i16 %i.ck, ptr %i.br, align 8, !alias.scope !127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.cl = icmp ult i64 %.sroa.0.0.copyload, 10
  br i1 %i.cl, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit39
  %i.cm = icmp ult i64 %.sroa.0.0.copyload, 100
  br i1 %i.cm, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = icmp ult i64 %.sroa.0.0.copyload, 1000
  br i1 %i.cn, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = icmp ult i64 %.sroa.0.0.copyload, 10000
  br i1 %i.co, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = icmp ugt i64 %.sroa.0.0.copyload, 9999999999 ; 2 uses
  %i.cq = udiv i64 %.sroa.0.0.copyload, 10000000000
  %.sroa.05.0.i = select i1 %i.cp, i32 10, i32 0  ; 2 uses
  %.sroa.0.0.i51 = select i1 %i.cp, i64 %i.cq, i64 %.sroa.0.0.copyload ; 3 uses
  %i.cr = icmp samesign ugt i64 %.sroa.0.0.i51, 99999
  br i1 %i.cr, label %bb.u, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit54

bb.u:                                             ; preds = %bb.t
  %i.cs = udiv i64 %.sroa.0.0.i51, 100000
  %i.ct = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit54

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit54: ; preds = %bb.t, %bb.u
  %.sroa.05.1.i52 = phi i32 [ %i.ct, %bb.u ], [ %.sroa.05.0.i, %bb.t ]
  %.sroa.0.1.i53 = phi i64 [ %i.cs, %bb.u ], [ %.sroa.0.0.i51, %bb.t ]
  %i.cu = trunc nuw nsw i64 %.sroa.0.1.i53 to i32 ; 4 uses
  %i.cv = add nuw nsw i32 %i.cu, 393206
  %i.cw = add nuw nsw i32 %i.cu, 524188
  %i.cx = and i32 %i.cv, %i.cw
  %i.cy = add nuw nsw i32 %i.cu, 916504
  %i.cz = add nuw nsw i32 %i.cu, 514288
  %i.da = and i32 %i.cy, %i.cz
  %i.db = xor i32 %i.cx, %i.da
  %i.dc = lshr i32 %i.db, 17
  %i.dd = add nuw nsw i32 %i.dc, %.sroa.05.1.i52  ; 2 uses
  %i.de = icmp samesign ult i32 %i.dd, 20
  tail call void @llvm.assume(i1 %i.de), !noalias !128
  %i.df = trunc nuw nsw i32 %i.dd to i8
  %i.dg = add nuw nsw i8 %i.df, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit39, %bb.q, %bb.r, %bb.s, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit54
  %.sroa.0.0.i42 = phi i8 [ %i.dg, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit54 ], [ 1, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit39 ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ]
  %..i55 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i42, i8 %..i) ; 2 uses
  %i.dh = zext nneg i8 %..i55 to i64              ; 2 uses
  %i.di = load ptr, ptr %i.at, align 8, !alias.scope !128, !nonnull !4, !noundef !4
  %i.dj = load i64, ptr %i.bp, align 8, !alias.scope !128, !noundef !4
  %i.dk = zext i16 %i.ck to i64                   ; 2 uses
  %i.dl = sub nuw i64 %i.dj, %i.dk
  %i.dm = getelementptr i8, ptr %i.di, i64 %i.dk  ; 2 uses
  %.not.i29 = icmp ult i64 %i.dl, %i.dh
  br i1 %.not.i29, label %bb.v, label %.preheader399, !prof !11

bb.v:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24, !noalias !128
  unreachable

.preheader399:                                    ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, %.preheader399
  %.sroa.06.0.i31 = phi i64 [ %i.dn, %.preheader399 ], [ %i.dh, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ]
  %.sroa.0.0.i32 = phi i64 [ %i.ds, %.preheader399 ], [ %.sroa.0.0.copyload, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ] ; 3 uses
  %i.dn = add i64 %.sroa.06.0.i31, -1             ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  %i.dp = urem i64 %.sroa.0.0.i32, 10
  %i.dq = trunc nuw nsw i64 %i.dp to i8
  %i.dr = or disjoint i8 %i.dq, 48
  store i8 %i.dr, ptr %i.do, align 1, !noalias !128
  %i.ds = udiv i64 %.sroa.0.0.i32, 10
  %i.dt = icmp ugt i64 %.sroa.0.0.i32, 9
  %i.du = icmp ne i64 %i.dn, 0
  %or.cond2.i33 = and i1 %i.dt, %i.du
  br i1 %or.cond2.i33, label %.preheader399, label %.preheader

.preheader:                                       ; preds = %.preheader399
  %.not17.i36405 = icmp eq i64 %i.dn, 0
  br i1 %.not17.i36405, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dm, i8 48, i64 %i.dn, i1 false), !noalias !128
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit: ; preds = %.lr.ph407.preheader, %.preheader
  %i.dv = zext nneg i8 %..i55 to i16
  %i.dw = add i16 %i.ck, %i.dv                    ; 3 uses
  store i16 %i.dw, ptr %i.br, align 8, !alias.scope !128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.dx = load i64, ptr %i.bp, align 8, !alias.scope !129, !noundef !4
  %i.dy = zext i16 %i.dw to i64                   ; 2 uses
  %.not.i37 = icmp eq i64 %i.dx, %i.dy
  br i1 %.not.i37, label %bb.w, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.w:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !129
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit
  %i.dz = load ptr, ptr %i.at, align 8, !alias.scope !129, !nonnull !4, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  store i8 58, ptr %i.ea, align 1, !noalias !129
  %i.eb = add i16 %i.dw, 1
  store i16 %i.eb, ptr %i.br, align 8, !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.ec = icmp eq i16 %.sroa.14.0.copyload, 0
  %i.ed = icmp eq i32 %.sroa.9.0.copyload, 0
  %or.cond.i.i = select i1 %i.ec, i1 %i.ed, i1 false
  %i.ee = icmp eq i32 %.sroa.10.0.copyload, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.ee, i1 false
  %i.ef = icmp eq i32 %.sroa.11.0.copyload, 0
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.ef, i1 false
  %i.eg = icmp eq i32 %.sroa.12.0.copyload, 0
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.eg, i1 false
  %i.eh = icmp eq i64 %.sroa.5.0.copyload, 0      ; 2 uses
  %or.cond16.i.i = select i1 %or.cond11.i.i, i1 %i.eh, i1 false
  %i.ei = icmp eq i64 %.sroa.6.0.copyload, 0      ; 2 uses
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.ei, i1 false
  %i.ej = icmp eq i64 %.sroa.7.0.copyload, 0      ; 2 uses
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.ej, i1 false
  %i.ek = icmp eq i64 %.sroa.8.0.copyload, 0      ; 2 uses
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.ek, i1 false
  %i.el = and i32 %spec.select, 255
  %.sroa.24.60.insert.ext = select i1 %or.cond4.i.i, i32 0, i32 %i.el ; 2 uses
  %i.em = icmp eq i32 %.sroa.24.60.insert.ext, 254
  br i1 %i.em, label %bb.x, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit141, !prof !9

bb.x:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131
  store ptr null, ptr %i.a, align 8, !noalias !131
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 34, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #20
          to label %bb.ab unwind label %bb.y, !noalias !132

bb.y:                                             ; preds = %bb.x
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !133), !noalias !130
  %i.eo = load ptr, ptr %i.a, align 8, !alias.scope !134, !noalias !131, !noundef !4 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !135
  %i.er = icmp eq i64 %i.eq, 1
  br i1 %i.er, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire, !noalias !136
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #21
          to label %common.resume unwind label %bb.ac, !noalias !132, !inline_history !12

bb.ab:                                            ; preds = %bb.x
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !132
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.z, %bb.aa
  resume { ptr, i32 } %i.en

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit141: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %i.et = select i1 %i.eh, i1 %i.ei, i1 false
  %i.eu = select i1 %i.et, i1 %i.ej, i1 false
  %i.ev = select i1 %i.eu, i1 %i.ek, i1 false
  %.sroa.16.60.insert.ext.i = select i1 %i.ev, i32 0, i32 %.sroa.24.60.insert.ext
  %.sroa.79.61.extract.shift311 = and i32 %spec.select, -256
  %.sroa.16.60.insert.insert.i = or disjoint i32 %.sroa.16.60.insert.ext.i, %.sroa.79.61.extract.shift311
  %i.ew = and i16 %i.f, -1009
  store i64 0, ptr %i.b, align 8, !alias.scope !137
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.15.0..sroa_idx, align 8, !alias.scope !137
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.22.0..sroa_idx, align 8, !alias.scope !137
  %.sroa.29191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.7.0.copyload, ptr %.sroa.29191.0..sroa_idx, align 8, !alias.scope !137
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.8.0.copyload, ptr %.sroa.36.0..sroa_idx, align 8, !alias.scope !137
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store i16 %i.ew, ptr %.sroa.66.0..sroa_idx, align 8, !alias.scope !137
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i16 0, ptr %.sroa.73.0..sroa_idx, align 2, !alias.scope !137
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %.sroa.16.60.insert.insert.i, ptr %.sroa.79.0..sroa_idx, align 4, !alias.scope !137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.ex = call fastcc { i64, i32 } @_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b) #25, !noalias !138 ; 2 uses
  %i.ey = extractvalue { i64, i32 } %i.ex, 0
  %i.ez = extractvalue { i64, i32 } %i.ex, 1
  %.sroa.0.0.i142 = tail call i64 @llvm.abs.i64(i64 %i.ey, i1 false) ; 2 uses
  %.sroa.01.0.i = tail call i32 @llvm.abs.i32(i32 %i.ez, i1 false) ; 4 uses
  %i.fa = icmp ult i32 %.sroa.01.0.i, 1000000000
  br i1 %i.fa, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter17from_span_seconds.exit, label %bb.ad

bb.ad:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit141
  %i.fb = udiv i32 %.sroa.01.0.i, 1000000000
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = add nuw i64 %.sroa.0.0.i142, %i.fc
  %i.fe = urem i32 %.sroa.01.0.i, 1000000000
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter17from_span_seconds.exit

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter17from_span_seconds.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit141, %bb.ad
  %.sroa.3.0.i.i = phi i32 [ %i.fe, %bb.ad ], [ %.sroa.01.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit141 ]
  %.sroa.0.0.i.i143 = phi i64 [ %i.fd, %bb.ad ], [ %.sroa.0.0.i142, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit141 ]
  store i64 %.sroa.0.0.i.i143, ptr %i.c, align 8, !alias.scope !138, !noalias !139
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sroa.3.0.i.i, ptr %i.ff, align 8, !alias.scope !138, !noalias !139
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %.sroa.024.0, ptr %i.fg, align 4, !alias.scope !138, !noalias !139
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 %i.aa, ptr %i.fh, align 1, !alias.scope !138, !noalias !139
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %i.ac, ptr %i.fi, align 2, !alias.scope !138, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.at)
  %.val45 = load i8, ptr %i.ae, align 8, !range !13, !noundef !4
  %i.fj = icmp eq i8 %.val45, 1
  br i1 %i.fj, label %bb.ae, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_suffix_sign.exit

bb.ae:                                            ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter17from_span_seconds.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.fk = load i64, ptr %i.bp, align 8, !alias.scope !140, !noalias !141, !noundef !4
  %i.fl = load i16, ptr %i.br, align 8, !alias.scope !140, !noalias !141, !noundef !4 ; 2 uses
  %i.fm = zext i16 %i.fl to i64                   ; 2 uses
  %i.fn = sub nuw i64 %i.fk, %i.fm
  %.not.i.i144 = icmp ult i64 %i.fn, 4
  br i1 %.not.i.i144, label %bb.af, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !11

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24, !noalias !142
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.ae
  %i.fo = load ptr, ptr %i.at, align 8, !alias.scope !140, !noalias !141, !nonnull !4, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.fp, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16), !noalias !140
  %i.fq = add i16 %i.fl, 4
  store i16 %i.fq, ptr %i.br, align 8, !alias.scope !140, !noalias !141
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_suffix_sign.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_suffix_sign.exit: ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter17from_span_seconds.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ag:                                            ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit
  %i.fr = and i16 %i.f, 512
  %.not.i145 = icmp eq i16 %i.fr, 0
  br i1 %.not.i145, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.fs = and i16 %i.f, 256
  %.not1.i = icmp eq i16 %i.fs, 0
  br i1 %.not1.i, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.ft = zext i16 %.sroa.14.0.copyload to i64
  call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef 9, i64 noundef %i.ft) #21, !noalias !143
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %i.fu = and i16 %i.f, 128
  %.not2.i = icmp eq i16 %i.fu, 0
  br i1 %.not2.i, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.fv = zext i32 %.sroa.9.0.copyload to i64
  call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef 8, i64 noundef %i.fv) #21, !noalias !143
  br label %bb.aj

bb.al:                                            ; preds = %bb.am, %bb.aj
  %i.fw = and i16 %i.f, 64
  %.not3.i = icmp eq i16 %i.fw, 0
  br i1 %.not3.i, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter44print_span_calendar_designators_non_fraction.exit, label %bb.an
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter18duration_to_string:bb.a

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.n = icmp samesign ugt i64 %i.j, 3
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.j, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !187
  store ptr %i.b, ptr %i.a, align 8, !noalias !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 194, ptr %i.o, align 8, !noalias !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.p, align 8, !noalias !187
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.r = load i8, ptr %i.q, align 1, !range !7, !alias.scope !186, !noalias !188, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter33print_signed_duration_designators(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter25print_signed_duration_hms(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e, %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !noalias !187, !nonnull !4, !noundef !4
  %i.u = load i16, ptr %i.p, align 8, !noalias !187, !noundef !4
  %i.v = zext i16 %i.u to i64
  %i.w = invoke { i64, ptr } @_RNvXs4_NtCsa9sSWSfjDbm_4jiff3fmtQNtNtCs1xwejQucwHj_5alloc6string6StringNtB5_5Write9write_strB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.noexc, %bb.e, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.i, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %i.ab, %bb.k ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %bb.o unwind label %bb.n

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = extractvalue { i64, ptr } %i.w, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.h, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBM_.exit, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.aa = extractvalue { i64, ptr } %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !189
  store ptr %i.aa, ptr %i.d, align 8, !noalias !189
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.ac = load ptr, ptr %i.d, align 8, !alias.scope !191, !noundef !4 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !192
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  fence acquire, !noalias !193
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #21
          to label %.body unwind label %bb.m, !inline_history !12

bb.l:                                             ; preds = %bb.h
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE6unwrapBM_.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.n:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter18print_duration_hms(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !range !7, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %.sroa.0.0 = select i1 %i.d, i8 %i.f, i8 2      ; 2 uses
  %i.g = udiv i64 %.0.val, 3600                   ; 2 uses
  %i.h = urem i64 %.0.val, 3600                   ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.h to i16     ; 2 uses
  %i.i = udiv i16 %.lhs.trunc, 60
  %i.j = urem i16 %.lhs.trunc, 60
  %.zext = zext nneg i16 %i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %..i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.0.0, i8 20) ; 2 uses
  %i.k = icmp ult i64 %.0.val, 36000
  br i1 %i.k, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %.0.val, 360000
  br i1 %i.l, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %.0.val, 3600000
  br i1 %i.m, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %.0.val, 36000000
  br i1 %i.n, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.0.val, 35999999999999     ; 2 uses
  %i.p = udiv i64 %.0.val, 36000000000000
  %.sroa.05.0.i = select i1 %i.o, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i25 = select i1 %i.o, i64 %i.p, i64 %i.g ; 3 uses
  %i.q = icmp samesign ugt i64 %.sroa.0.0.i25, 99999
  br i1 %i.q, label %bb.f, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.r = udiv i64 %.sroa.0.0.i25, 100000
  %i.s = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit: ; preds = %bb.e, %bb.f
  %.sroa.05.1.i = phi i32 [ %i.s, %bb.f ], [ %.sroa.05.0.i, %bb.e ]
  %.sroa.0.1.i = phi i64 [ %i.r, %bb.f ], [ %.sroa.0.0.i25, %bb.e ]
  %i.t = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.u = add nuw nsw i32 %i.t, 393206
  %i.v = add nuw nsw i32 %i.t, 524188
  %i.w = and i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.t, 916504
  %i.y = add nuw nsw i32 %i.t, 514288
  %i.z = and i32 %i.x, %i.y
  %i.aa = xor i32 %i.w, %i.z
  %i.ab = lshr i32 %i.aa, 17
  %i.ac = add nuw nsw i32 %i.ab, %.sroa.05.1.i    ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 20
  tail call void @llvm.assume(i1 %i.ad), !noalias !202
  %i.ae = trunc nuw nsw i32 %i.ac to i8
  %i.af = add nuw nsw i8 %i.ae, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit
  %.sroa.0.0.i22 = phi i8 [ %i.af, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  %..i26 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i22, i8 %..i) ; 2 uses
  %i.ag = zext nneg i8 %..i26 to i64              ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !202, !nonnull !4, !noundef !4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !202, !noundef !4 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.al = load i16, ptr %i.ak, align 8, !alias.scope !202, !noundef !4 ; 2 uses
  %i.am = zext i16 %i.al to i64                   ; 2 uses
  %i.an = sub nuw i64 %i.aj, %i.am
  %i.ao = getelementptr i8, ptr %i.ah, i64 %i.am  ; 2 uses
  %.not.i10 = icmp ult i64 %i.an, %i.ag
  br i1 %.not.i10, label %bb.g, label %.preheader6, !prof !11

bb.g:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24, !noalias !202
  unreachable

.preheader6:                                      ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, %.preheader6
  %.sroa.06.0.i12 = phi i64 [ %i.ap, %.preheader6 ], [ %i.ag, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ]
  %.sroa.0.0.i13 = phi i64 [ %i.au, %.preheader6 ], [ %i.g, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ] ; 3 uses
  %i.ap = add i64 %.sroa.06.0.i12, -1             ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = urem i64 %.sroa.0.0.i13, 10
  %i.as = trunc nuw nsw i64 %i.ar to i8
  %i.at = or disjoint i8 %i.as, 48
  store i8 %i.at, ptr %i.aq, align 1, !noalias !202
  %i.au = udiv i64 %.sroa.0.0.i13, 10
  %i.av = icmp samesign ugt i64 %.sroa.0.0.i13, 9
  %i.aw = icmp ne i64 %i.ap, 0
  %or.cond2.i14 = and i1 %i.av, %i.aw
  br i1 %or.cond2.i14, label %.preheader6, label %.preheader5

.preheader5:                                      ; preds = %.preheader6
  %.not17.i178 = icmp eq i64 %i.ap, 0
  br i1 %.not17.i178, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit18, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader5
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 48, i64 %i.ap, i1 false), !noalias !202
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit18

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit18: ; preds = %.lr.ph.preheader, %.preheader5
  %i.ax = zext nneg i8 %..i26 to i16
  %i.ay = add i16 %i.al, %i.ax                    ; 3 uses
  store i16 %i.ay, ptr %i.ak, align 8, !alias.scope !202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.az = zext i16 %i.ay to i64                   ; 2 uses
  %.not.i20 = icmp eq i64 %i.aj, %i.az
  br i1 %.not.i20, label %bb.h, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit21, !prof !9

bb.h:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit18
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !203
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit21: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  store i8 58, ptr %i.ba, align 1, !noalias !203
  %i.bb = add i16 %i.ay, 1                        ; 3 uses
  store i16 %i.bb, ptr %i.ak, align 8, !alias.scope !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.bc = icmp samesign ult i64 %i.h, 600
  %spec.select = select i1 %i.bc, i8 1, i8 2
  %..i33 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %spec.select, i8 %..i) ; 2 uses
  %i.bd = zext nneg i8 %..i33 to i64              ; 2 uses
  %i.be = zext i16 %i.bb to i64                   ; 2 uses
  %i.bf = sub nuw i64 %i.aj, %i.be
  %i.bg = getelementptr i8, ptr %i.ah, i64 %i.be  ; 2 uses
  %.not.i = icmp ult i64 %i.bf, %i.bd
  br i1 %.not.i, label %bb.i, label %.preheader4, !prof !11

bb.i:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit21
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24, !noalias !204
  unreachable

.preheader4:                                      ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit21, %.preheader4
  %.sroa.06.0.i = phi i64 [ %i.bh, %.preheader4 ], [ %i.bd, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit21 ]
  %.sroa.0.0.i = phi i64 [ %i.bm, %.preheader4 ], [ %.zext, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit21 ] ; 3 uses
  %i.bh = add i64 %.sroa.06.0.i, -1               ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %i.bj = urem i64 %.sroa.0.0.i, 10
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  %i.bl = or disjoint i8 %i.bk, 48
  store i8 %i.bl, ptr %i.bi, align 1, !noalias !204
  %i.bm = udiv i64 %.sroa.0.0.i, 10
  %i.bn = icmp samesign ugt i64 %.sroa.0.0.i, 9
  %i.bo = icmp ne i64 %i.bh, 0
  %or.cond2.i = and i1 %i.bn, %i.bo
  br i1 %or.cond2.i, label %.preheader4, label %.preheader

.preheader:                                       ; preds = %.preheader4
  %.not17.i10 = icmp eq i64 %i.bh, 0
  br i1 %.not17.i10, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit, label %.lr.ph12.preheader

.lr.ph12.preheader:                               ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 48, i64 %i.bh, i1 false), !noalias !204
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit: ; preds = %.lr.ph12.preheader, %.preheader
  %i.bp = zext nneg i8 %..i33 to i16
  %i.bq = add i16 %i.bb, %i.bp                    ; 3 uses
  store i16 %i.bq, ptr %i.ak, align 8, !alias.scope !204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.br = zext i16 %i.bq to i64                   ; 2 uses
  %.not.i19 = icmp eq i64 %i.aj, %i.br
  br i1 %.not.i19, label %bb.j, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.j:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !205
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit
  %.zext2 = zext nneg i16 %i.j to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.br
  store i8 58, ptr %i.bs, align 1, !noalias !205
  %i.bt = add i16 %i.bq, 1
  store i16 %i.bt, ptr %i.ak, align 8, !alias.scope !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bv = load i8, ptr %i.bu, align 2, !range !7, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bx = load i8, ptr %i.bw, align 1
  store i64 %.zext2, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.8.val, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %.sroa.0.0, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.bv, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.bx, ptr %i.cb, align 2
  call fastcc void @_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter22print_span_designators(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 2, !range !10, !alias.scope !220, !noalias !221, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val3.i = load i8, ptr %i.f, align 1, !alias.scope !220, !noalias !221
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.val.i = load i8, ptr %i.g, align 1, !alias.scope !220, !noalias !221
  %i.h = icmp eq i8 %.val.i, 0
  %i.i = icmp slt i8 %i.c, 0                      ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i8 %i.c, 0
  %spec.select = select i1 %i.j, i8 0, i8 2
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.d:                                             ; preds = %bb.a
  %i.k = icmp slt i8 %i.c, 0
  %.3.i.i = select i1 %i.k, i8 45, i8 43
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.e:                                             ; preds = %bb.a
  %i.l = icmp slt i8 %i.c, 0
  %.4.i.i = select i1 %i.l, i8 1, i8 2
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.f:                                             ; preds = %bb.b
  %spec.select8 = select i1 %i.i, i8 0, i8 2
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.h, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = and i8 %.val3.i, 1
  %.8.i.i = xor i8 %.not.i.i, 1
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit: ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.11.0.i.i = phi i8 [ undef, %bb.e ], [ 45, %bb.f ], [ 45, %bb.h ], [ undef, %bb.g ], [ 45, %bb.c ], [ %.3.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i8 [ %.4.i.i, %bb.e ], [ %spec.select8, %bb.f ], [ %.8.i.i, %bb.h ], [ 2, %bb.g ], [ %spec.select, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i8, ptr %i.m, align 4, !range !7, !alias.scope !220, !noalias !221, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !220, !noalias !221
  %.sroa.0.0.i = select i1 %i.o, i8 %i.q, i8 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i8, ptr %i.r, align 2, !range !7, !alias.scope !220, !noalias !221, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !220, !noalias !221
  store ptr %0, ptr %i.a, align 8, !alias.scope !219, !noalias !222
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.v, align 8, !alias.scope !219, !noalias !222
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.w, align 8, !alias.scope !219, !noalias !222
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %.sroa.11.0.i.i, ptr %i.x, align 1, !alias.scope !219, !noalias !222
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %.sroa.0.0.i, ptr %i.y, align 2, !alias.scope !219, !noalias !222
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.s, ptr %i.z, align 1, !alias.scope !219, !noalias !222
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %i.u, ptr %i.aa, align 4, !alias.scope !219, !noalias !222
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 2 uses
  store i8 0, ptr %i.ab, align 1, !alias.scope !219, !noalias !222
  %cond.i = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %cond.i, label %bb.i, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit

bb.i:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !223, !noalias !224, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8, !alias.scope !223, !noalias !224, !noundef !4 ; 2 uses
  %i.ag = zext i16 %i.af to i64                   ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.ad, %i.ag
  br i1 %.not.i.i2, label %bb.j, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i, !prof !9

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !225
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i: ; preds = %bb.i
  %i.ah = load ptr, ptr %2, align 8, !alias.scope !223, !noalias !224, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 %.sroa.11.0.i.i, ptr %i.ai, align 1, !noalias !225
  %i.aj = add i16 %i.af, 1
  store i16 %i.aj, ptr %i.ae, align 8, !alias.scope !223, !noalias !224
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit: ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !range !16, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.al, -1
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit
  call fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter33print_span_designators_fractional(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i8 noundef %i.al, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
  br label %bb.m

bb.l:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit
  call fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter35print_span_designators_non_fraction(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = load i8, ptr %i.ab, align 1, !range !7, !alias.scope !226, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16maybe_write_zero.exit, label %bb.n, !prof !17

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RNvNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB7_16DesignatorWriter16maybe_write_zero3imp(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #21
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16maybe_write_zero.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16maybe_write_zero.exit: ; preds = %bb.m, %bb.n
  %.val = load ptr, ptr %i.v, align 8             ; 4 uses
  %.val1 = load i8, ptr %i.w, align 8, !range !13, !noundef !4
  %i.ao = icmp eq i8 %.val1, 1
  br i1 %i.ao, label %bb.o, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_suffix_sign.exit

bb.o:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16maybe_write_zero.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !227, !noalias !228, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8, !alias.scope !227, !noalias !228, !noundef !4 ; 2 uses
  %i.at = zext i16 %i.as to i64                   ; 2 uses
  %i.au = sub nuw i64 %i.aq, %i.at
  %.not.i.i3 = icmp ult i64 %i.au, 4
  br i1 %.not.i.i3, label %bb.p, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !11

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24, !noalias !229
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.o
  %i.av = load ptr, ptr %.val, align 8, !alias.scope !227, !noalias !228, !nonnull !4, !noundef !4
end_hunk_1
begin_hunk_2_@_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write:bb.a
  br i1 %i.ap, label %bb.m, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = udiv i64 %.sroa.0.0.i4, 100000
  %i.ar = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit: ; preds = %bb.l, %bb.m
  %.sroa.05.1.i = phi i32 [ %i.ar, %bb.m ], [ %.sroa.05.0.i, %bb.l ]
  %.sroa.0.1.i = phi i64 [ %i.aq, %bb.m ], [ %.sroa.0.0.i4, %bb.l ]
  %i.as = trunc nuw nsw i64 %.sroa.0.1.i to i32   ; 4 uses
  %i.at = add nuw nsw i32 %i.as, 393206
  %i.au = add nuw nsw i32 %i.as, 524188
  %i.av = and i32 %i.at, %i.au
  %i.aw = add nuw nsw i32 %i.as, 916504
  %i.ax = add nuw nsw i32 %i.as, 514288
  %i.ay = and i32 %i.aw, %i.ax
  %i.az = xor i32 %i.av, %i.ay
  %i.ba = lshr i32 %i.az, 17
  %i.bb = add nuw nsw i32 %i.ba, %.sroa.05.1.i    ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 20
  tail call void @llvm.assume(i1 %i.bc), !noalias !550
  %i.bd = trunc nuw nsw i32 %i.bb to i8
  %i.be = add nuw nsw i8 %i.bd, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit: ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit, %bb.i, %bb.j, %bb.k, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit
  %.sroa.0.0.i3 = phi i8 [ %i.be, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit ], [ 1, %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ]
  %..i5 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i3, i8 %..i) ; 2 uses
  %i.bf = zext nneg i8 %..i5 to i64               ; 2 uses
  %i.bg = load ptr, ptr %i.ag, align 8, !alias.scope !550, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !550, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 8, !alias.scope !550, !noundef !4 ; 2 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = sub nuw i64 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  %.not.i = icmp ult i64 %i.bm, %i.bf
  br i1 %.not.i, label %bb.n, label %.preheader, !prof !11

bb.n:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !noalias !550
  unreachable

.preheader:                                       ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, %.preheader
  %.sroa.0.0.i8 = phi i64 [ %i.bt, %.preheader ], [ %2, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ] ; 2 uses
  %.sroa.03.0.i7 = phi i64 [ %i.bo, %.preheader ], [ %i.bf, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ]
  %i.bo = add nsw i64 %.sroa.03.0.i7, -1          ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = urem i64 %.sroa.0.0.i8, 10
  %i.br = trunc nuw nsw i64 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, 48
  store i8 %i.bs, ptr %i.bp, align 1, !noalias !550
  %i.bt = udiv i64 %.sroa.0.0.i8, 10
  %.not8.i = icmp eq i64 %i.bo, 0
  br i1 %.not8.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit, label %.preheader

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit: ; preds = %.preheader
  %i.bu = zext nneg i8 %..i5 to i16
  %i.bv = add i16 %i.bk, %i.bu                    ; 4 uses
  store i16 %i.bv, ptr %i.bj, align 8, !alias.scope !550
  %i.bw = load ptr, ptr %0, align 8, !nonnull !4, !align !14, !noundef !4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !range !13, !noundef !4
  %i.bz = icmp eq i8 %i.by, 2
  br i1 %i.bz, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.a, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit
  ret void

bb.p:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.ca = load i64, ptr %i.bh, align 8, !alias.scope !551, !noundef !4
  %i.cb = zext i16 %i.bv to i64                   ; 2 uses
  %.not.i1 = icmp eq i64 %i.ca, %i.cb
  br i1 %.not.i1, label %bb.q, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !551
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.p
  %i.cc = load ptr, ptr %i.ag, align 8, !alias.scope !551, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 32, ptr %i.cd, align 1, !noalias !551
  %i.ce = add i16 %i.bv, 1                        ; 2 uses
  store i16 %i.ce, ptr %i.bj, align 8, !alias.scope !551
  br label %bb.r

bb.r:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %i.cf = phi i16 [ %i.bv, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit ], [ %i.ce, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit ] ; 2 uses
  %i.cg = load ptr, ptr %i.bw, align 8, !nonnull !4, !align !14, !noundef !4
  %.not = icmp eq i64 %2, 1
  %.idx.i = select i1 %.not, i64 0, i64 160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i
  %i.ci = zext nneg i8 %1 to i64
  %.sroa.0.0.in.i = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %.sroa.0.0.i6 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !552, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in.i, i64 8
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !552, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.cj = load i64, ptr %i.bh, align 8, !alias.scope !553, !noalias !554, !noundef !4
  %i.ck = zext i16 %i.cf to i64                   ; 2 uses
  %i.cl = sub nuw i64 %i.cj, %i.ck
  %.not.i2 = icmp ugt i64 %.sroa.3.0.i, %i.cl
  br i1 %.not.i2, label %bb.s, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit, !prof !11

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24, !noalias !555
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit: ; preds = %bb.r
  %i.cm = load ptr, ptr %i.ag, align 8, !alias.scope !553, !noalias !554, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.cn, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i6, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16), !noalias !553
  %i.co = trunc i64 %.sroa.3.0.i to i16
  %i.cp = add i16 %i.cf, %i.co
  store i16 %i.cp, ptr %i.bj, align 8, !alias.scope !553, !noalias !554
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter5print(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %..i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %i.d, i8 20)
  %i.e = icmp ult i64 %i.b, 10
  br i1 %i.e, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %i.b, 100
  br i1 %i.f, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.b, 1000
  br i1 %i.g, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %i.b, 10000
  br i1 %i.h, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ugt i64 %i.b, 9999999999            ; 2 uses
  %i.j = udiv i64 %i.b, 10000000000
  %.sroa.05.0.i = select i1 %i.i, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i6 = select i1 %i.i, i64 %i.j, i64 %i.b ; 3 uses
  %i.k = icmp samesign ugt i64 %.sroa.0.0.i6, 99999
  br i1 %i.k, label %bb.f, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.l = udiv i64 %.sroa.0.0.i6, 100000
  %i.m = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit: ; preds = %bb.e, %bb.f
  %.sroa.05.1.i = phi i32 [ %i.m, %bb.f ], [ %.sroa.05.0.i, %bb.e ]
  %.sroa.0.1.i = phi i64 [ %i.l, %bb.f ], [ %.sroa.0.0.i6, %bb.e ]
  %i.n = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.o = add nuw nsw i32 %i.n, 393206
  %i.p = add nuw nsw i32 %i.n, 524188
  %i.q = and i32 %i.o, %i.p
  %i.r = add nuw nsw i32 %i.n, 916504
  %i.s = add nuw nsw i32 %i.n, 514288
  %i.t = and i32 %i.r, %i.s
  %i.u = xor i32 %i.q, %i.t
  %i.v = lshr i32 %i.u, 17
  %i.w = add nuw nsw i32 %i.v, %.sroa.05.1.i      ; 2 uses
  %i.x = icmp samesign ult i32 %i.w, 20
  tail call void @llvm.assume(i1 %i.x), !noalias !564
  %i.y = trunc nuw nsw i32 %i.w to i8
  %i.z = add nuw nsw i8 %i.y, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit
  %.sroa.0.0.i5 = phi i8 [ %i.z, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  %..i7 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i5, i8 %..i) ; 2 uses
  %i.aa = zext nneg i8 %..i7 to i64               ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !564, !nonnull !4, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !564, !noundef !4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.af = load i16, ptr %i.ae, align 8, !alias.scope !564, !noundef !4 ; 2 uses
  %i.ag = zext i16 %i.af to i64                   ; 2 uses
  %i.ah = sub nuw i64 %i.ad, %i.ag
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.ag  ; 2 uses
  %.not.i = icmp ult i64 %i.ah, %i.aa
  br i1 %.not.i, label %bb.g, label %.preheader9, !prof !11

bb.g:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24, !noalias !564
  unreachable

.preheader9:                                      ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, %.preheader9
  %.sroa.06.0.i = phi i64 [ %i.aj, %.preheader9 ], [ %i.aa, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ]
  %.sroa.0.0.i = phi i64 [ %i.ao, %.preheader9 ], [ %i.b, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ] ; 3 uses
  %i.aj = add i64 %.sroa.06.0.i, -1               ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = urem i64 %.sroa.0.0.i, 10
  %i.am = trunc nuw nsw i64 %i.al to i8
  %i.an = or disjoint i8 %i.am, 48
  store i8 %i.an, ptr %i.ak, align 1, !noalias !564
  %i.ao = udiv i64 %.sroa.0.0.i, 10
  %i.ap = icmp ugt i64 %.sroa.0.0.i, 9
  %i.aq = icmp ne i64 %i.aj, 0
  %or.cond2.i = and i1 %i.ap, %i.aq
  br i1 %or.cond2.i, label %.preheader9, label %.preheader

.preheader:                                       ; preds = %.preheader9
  %.not17.i12 = icmp eq i64 %i.aj, 0
  br i1 %.not17.i12, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 48, i64 %i.aj, i1 false), !noalias !564
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit: ; preds = %.lr.ph.preheader, %.preheader
  %i.ar = zext nneg i8 %..i7 to i16
  %i.as = add i16 %i.af, %i.ar                    ; 3 uses
  store i16 %i.as, ptr %i.ae, align 8, !alias.scope !564
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.au = load i8, ptr %i.at, align 1, !range !7, !alias.scope !565, !noundef !4
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ax = load i8, ptr %i.aw, align 2, !alias.scope !565 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.ay, align 8, !alias.scope !565 ; 9 uses
  %i.az = icmp ne i8 %i.ax, 0
  %i.ba = icmp ne i32 %.val.i, 0
  %.sroa.02.0.in.i.i = select i1 %i.av, i1 %i.az, i1 %i.ba
  br i1 %.sroa.02.0.in.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit
  ret void

bb.i:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.bb = zext i16 %i.as to i64                   ; 2 uses
  %.not.i4 = icmp eq i64 %i.ad, %i.bb
  br i1 %.not.i4, label %bb.j, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !566
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bb
  store i8 46, ptr %i.bc, align 1, !noalias !566
  %i.bd = add i16 %i.as, 1                        ; 3 uses
  store i16 %i.bd, ptr %i.ae, align 8, !alias.scope !566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.be = icmp ult i32 %.val.i, 1000000000
  br i1 %i.be, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24, !noalias !567
  unreachable

bb.l:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !567
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = urem i32 %.val.i, 10                    ; 2 uses
  %i.bh = trunc nuw nsw i32 %i.bg to i8
  %i.bi = or disjoint i8 %i.bh, 48
  store i8 %i.bi, ptr %i.bf, align 1, !noalias !567
  %i.bj = insertelement <4 x i32> poison, i32 %.val.i, i64 0
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bl = udiv <4 x i32> %i.bk, <i32 10000, i32 1000, i32 100, i32 10>
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bn = urem <4 x i32> %i.bl, splat (i32 10)    ; 5 uses
  %i.bo = trunc nuw nsw <4 x i32> %i.bn to <4 x i8>
  %i.bp = or disjoint <4 x i8> %i.bo, splat (i8 48)
  store <4 x i8> %i.bp, ptr %i.bm, align 1, !noalias !567
  %i.bq = udiv i32 %.val.i, 100000
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.lhs.trunc = trunc nuw i32 %i.bq to i16
  %i.bs = urem i16 %.lhs.trunc, 10                ; 2 uses
  %i.bt = trunc nuw nsw i16 %i.bs to i8
  %i.bu = or disjoint i8 %i.bt, 48
  store i8 %i.bu, ptr %i.br, align 1, !noalias !567
  %i.bv = udiv i32 %.val.i, 1000000
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.lhs.trunc32 = trunc nuw nsw i32 %i.bv to i16
  %i.bx = urem i16 %.lhs.trunc32, 10              ; 2 uses
  %i.by = trunc nuw nsw i16 %i.bx to i8
  %i.bz = or disjoint i8 %i.by, 48
  store i8 %i.bz, ptr %i.bw, align 1, !noalias !567
  %i.ca = udiv i32 %.val.i, 10000000
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.lhs.trunc34 = trunc nuw i32 %i.ca to i8
  %i.cc = urem i8 %.lhs.trunc34, 10               ; 2 uses
  %i.cd = or disjoint i8 %i.cc, 48
  store i8 %i.cd, ptr %i.cb, align 1, !noalias !567
  %i.ce = udiv i32 %.val.i, 100000000
  %i.cf = trunc nuw nsw i32 %i.ce to i8
  %i.cg = or disjoint i8 %i.cf, 48
  store i8 %i.cg, ptr %i.a, align 1, !noalias !567
  br i1 %i.av, label %bb.m, label %.split

bb.m:                                             ; preds = %bb.l
  %..i8 = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %i.ax, i8 9)
  br label %bb.v

.split:                                           ; preds = %bb.l
  %i.ch = icmp eq i32 %i.bg, 0
  br i1 %i.ch, label %bb.n, label %bb.v

bb.n:                                             ; preds = %.split
  %i.ci = extractelement <4 x i32> %i.bn, i64 3
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ck = extractelement <4 x i32> %i.bn, i64 2
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.cm = extractelement <4 x i32> %i.bn, i64 1
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.co = extractelement <4 x i32> %i.bn, i64 0
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cq = icmp eq i16 %i.bs, 0
  br i1 %i.cq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cr = icmp eq i16 %i.bx, 0
  br i1 %i.cr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cs = icmp eq i8 %i.cc, 0
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp ugt i32 %.val.i, 99999999
  %spec.select = zext i1 %i.ct to i8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.m
  %.sroa.06.1.i3 = phi i8 [ %..i8, %bb.m ], [ 9, %.split ], [ 3, %bb.s ], [ 8, %bb.n ], [ %spec.select, %bb.u ], [ 7, %bb.o ], [ 4, %bb.r ], [ 6, %bb.p ], [ 2, %bb.t ], [ 5, %bb.q ] ; 2 uses
  %i.cu = zext nneg i8 %.sroa.06.1.i3 to i64      ; 3 uses
  %i.cv = zext i16 %i.bd to i64                   ; 2 uses
  %i.cw = sub nuw i64 %i.ad, %i.cv
  %.not20.i = icmp ult i64 %i.cw, %i.cu
  br i1 %.not20.i, label %bb.w, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, !prof !9

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24, !noalias !567
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit: ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.cv
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.cx, i64 noundef %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13), !noalias !567
  %i.cy = zext nneg i8 %.sroa.06.1.i3 to i16
  %i.cz = add i16 %i.bd, %i.cy
  store i16 %i.cz, ptr %i.ae, align 8, !alias.scope !567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !567
  br label %bb.h
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 31 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.m = load i8, ptr %i.l, align 8, !range !633, !alias.scope !632, !noundef !4 ; 4 uses
  %i.n = icmp ne i8 %i.m, 10
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i8 %i.m, -4
  %i.p = icmp samesign ugt i8 %i.m, 3
  %narrow.i = select i1 %i.p, i8 %i.o, i8 6
  switch i8 %narrow.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit [
    i8 0, label %bb.b
    i8 5, label %bb.c
    i8 6, label %bb.f
    i8 13, label %bb.h
    i8 16, label %bb.j
    i8 20, label %bb.m
    i8 29, label %bb.n
    i8 30, label %bb.u
    i8 32, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.val1.i = load i64, ptr %i.q, align 8, !alias.scope !632, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %.val1.i, 0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !632, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #19, !noalias !632
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
end_hunk_2
