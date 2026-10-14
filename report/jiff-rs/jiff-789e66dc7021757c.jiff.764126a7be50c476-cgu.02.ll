Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.02?download=true
inline.NumInlined: 431
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter25write_fractional_duration:bb.a
  %.pre16 = load i16, ptr %.phi.trans.insert, align 8, !alias.scope !525, !noalias !526
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter9is_plural.exit.thread

bb.l:                                             ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter13from_duration.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !527, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 8, !alias.scope !527, !noundef !4 ; 2 uses
  %i.cj = zext i16 %i.ci to i64                   ; 2 uses
  %.not.i = icmp eq i64 %i.cg, %i.cj
  br i1 %.not.i, label %bb.n, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !527
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.m
  %i.ck = load ptr, ptr %i.cb, align 8, !alias.scope !527, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 32, ptr %i.cl, align 1, !noalias !527
  %i.cm = add i16 %i.ci, 1                        ; 2 uses
  store i16 %i.cm, ptr %i.ch, align 8, !alias.scope !527
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter9is_plural.exit.thread

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter9is_plural.exit.thread: ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit._RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter9is_plural.exit.thread_crit_edge, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %i.cn = phi i16 [ %.pre16, %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit._RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter9is_plural.exit.thread_crit_edge ], [ %i.cm, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit ] ; 2 uses
  %i.co = load ptr, ptr %.pre, align 8, !nonnull !4, !align !14, !noundef !4
  %i.cp = icmp ne i64 %.sink17.i, 1
  %not..i = xor i1 %i.av, true
  %spec.select.i.i.i5 = select i1 %not..i, i1 true, i1 %i.aw
  %cond.fr = freeze i1 %spec.select.i.i.i5
  %i.cq = and i1 %i.au, %cond.fr
  %.not15 = select i1 %i.cp, i1 true, i1 %i.cq
  %i.cr = select i1 %.not15, i64 160, i64 0
  %switch.offset.i.i.i5 = sub nuw nsw i8 5, %1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  %i.ct = zext nneg i8 %switch.offset.i.i.i5 to i64
  %.sroa.0.0.in.i = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %.sroa.0.0.i6 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !528, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in.i, i64 8
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !528, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !525, !noalias !526, !noundef !4
  %i.cw = zext i16 %i.cn to i64                   ; 2 uses
  %i.cx = sub nuw i64 %i.cv, %i.cw
  %.not.i1 = icmp ugt i64 %.sroa.3.0.i, %i.cx
  br i1 %.not.i1, label %bb.o, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit, !prof !11

bb.o:                                             ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter9is_plural.exit.thread
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24, !noalias !529
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit: ; preds = %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter9is_plural.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cz = load ptr, ptr %i.cb, align 8, !alias.scope !525, !noalias !526, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.da, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i6, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16), !noalias !525
  %i.db = trunc i64 %.sroa.3.0.i to i16
  %i.dc = add i16 %i.cn, %i.db
  store i16 %i.dc, ptr %i.cy, align 8, !alias.scope !525, !noalias !526
  br label %bb.l
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7, !alias.scope !545, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !alias.scope !545, !nonnull !4, !align !14, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !7, !noalias !545, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit2.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %i.j = load i8, ptr %i.i, align 1, !range !13, !noalias !545, !noundef !4
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !545, !nonnull !4, !align !14, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !546, !noalias !545, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !alias.scope !546, !noalias !545, !noundef !4 ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %.not.i1.i = icmp eq i64 %i.o, %i.r
  br i1 %.not.i1.i, label %bb.f, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit2.i, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !547
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit2.i: ; preds = %bb.e
  %i.s = load ptr, ptr %i.m, align 8, !alias.scope !546, !noalias !545, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 44, ptr %i.t, align 1, !noalias !547
  %i.u = add i16 %i.q, 1
  store i16 %i.u, ptr %i.p, align 8, !alias.scope !546, !noalias !545
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !545, !nonnull !4, !align !14, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !548, !noalias !545, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !alias.scope !548, !noalias !545, !noundef !4 ; 2 uses
  %i.ab = zext i16 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %i.ab
  br i1 %.not.i.i, label %bb.h, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !549
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i: ; preds = %bb.g
  %i.ac = load ptr, ptr %i.w, align 8, !alias.scope !548, !noalias !545, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 32, ptr %i.ad, align 1, !noalias !549
  %i.ae = add i16 %i.aa, 1
  store i16 %i.ae, ptr %i.z, align 8, !alias.scope !548, !noalias !545
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit: ; preds = %bb.b, %bb.d, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i
  store i8 1, ptr %i.b, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !14, !noundef !4 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ai = load i8, ptr %i.ah, align 2, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %..i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %i.ai, i8 20)
  %i.aj = icmp ult i64 %2, 10
  br i1 %i.aj, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16finish_preceding.exit
  %i.ak = icmp ult i64 %2, 100
  br i1 %i.ak, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = icmp ult i64 %2, 1000
  br i1 %i.al, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = icmp ult i64 %2, 10000
  br i1 %i.am, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = icmp ugt i64 %2, 9999999999             ; 2 uses
  %i.ao = udiv i64 %2, 10000000000
  %.sroa.05.0.i = select i1 %i.an, i32 10, i32 0  ; 2 uses
  %.sroa.0.0.i4 = select i1 %i.an, i64 %i.ao, i64 %2 ; 3 uses
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i4, 99999
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
  %..i5 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i3, i8 %..i) ; 3 uses
  %i.bf = zext nneg i8 %..i5 to i64               ; 4 uses
  %i.bg = load ptr, ptr %i.ag, align 8, !alias.scope !550, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !550, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 8, !alias.scope !550, !noundef !4 ; 2 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = sub nuw i64 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl ; 3 uses
  %.not.i = icmp ult i64 %i.bm, %i.bf
  br i1 %.not.i, label %bb.n, label %.preheader.preheader, !prof !11

.preheader.preheader:                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  %xtraiter = and i64 %i.bf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %3 = add nsw i64 %i.bf, -1                      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bn, i64 %3
  %5 = urem i64 %2, 10
  %6 = trunc nuw nsw i64 %5 to i8
  %7 = or disjoint i8 %6, 48
  store i8 %7, ptr %4, align 1, !noalias !550
  %8 = udiv i64 %2, 10
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.sroa.0.0.i8.unr = phi i64 [ %2, %.preheader.preheader ], [ %8, %.preheader.prol ]
  %.sroa.03.0.i7.unr = phi i64 [ %i.bf, %.preheader.preheader ], [ %3, %.preheader.prol ]
  %9 = icmp eq i8 %..i5, 1
  br i1 %9, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit, label %.preheader

bb.n:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !noalias !550
  unreachable

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.sroa.0.0.i8 = phi i64 [ %i.bt, %.preheader ], [ %.sroa.0.0.i8.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.sroa.03.0.i7 = phi i64 [ %i.bo, %.preheader ], [ %.sroa.03.0.i7.unr, %.preheader.prol.loopexit ] ; 2 uses
  %10 = getelementptr i8, ptr %i.bn, i64 %.sroa.03.0.i7
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = urem i64 %.sroa.0.0.i8, 10
  %13 = trunc nuw nsw i64 %12 to i8
  %14 = or disjoint i8 %13, 48
  store i8 %14, ptr %11, align 1, !noalias !550
  %15 = udiv i64 %.sroa.0.0.i8, 10
  %i.bo = add nsw i64 %.sroa.03.0.i7, -2          ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = urem i64 %15, 10
  %i.br = trunc nuw nsw i64 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, 48
  store i8 %i.bs, ptr %i.bp, align 1, !noalias !550
  %i.bt = udiv i64 %.sroa.0.0.i8, 100
  %.not8.i = icmp eq i64 %i.bo, 0
  br i1 %.not8.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit, label %.preheader

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad0yEBa_.exit: ; preds = %.preheader, %.preheader.prol.loopexit
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
  %i.aj = add i64 %.sroa.06.0.i, -1               ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = urem i64 %.sroa.0.0.i, 10
  %i.am = trunc nuw nsw i64 %i.al to i8
  %i.an = or disjoint i8 %i.am, 48
  store i8 %i.an, ptr %i.ak, align 1, !noalias !564
  %i.ao = udiv i64 %.sroa.0.0.i, 10
  %i.ap = icmp ugt i64 %.sroa.0.0.i, 9
  %i.aq = icmp ne i64 %i.aj, 0                    ; 2 uses
  %or.cond2.i = and i1 %i.ap, %i.aq
  br i1 %or.cond2.i, label %.preheader9, label %.preheader

.preheader:                                       ; preds = %.preheader9
  br i1 %i.aq, label %.lr.ph.preheader, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit

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
end_hunk_0
