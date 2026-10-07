Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_df-46e7ca1752cf580c.uu_df.542a784a59c1bc9-cgu.0?download=true
inline.NumInlined: 1449
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECss03989lGqH_5uu_df:bb.a
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.bo) #30, !noalias !524
  br label %_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECss03989lGqH_5uu_df.exit

bb.r:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.sroa.012.2.i.i.i.i = phi i64 [ %.sroa.012.3.i.i.i.i, %bb.x ], [ %.sroa.012.031.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.cc, %bb.x ], [ %.sroa.0.032.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.019.030.i.i.i.i, %i.l
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !516

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bs = icmp ugt i64 %.sroa.019.030.i.i.i.i, %.sroa.0.032.i.i.i.i
  br i1 %i.bs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.012.3.i.i.i.i = phi i64 [ %i.cb, %bb.u ], [ %.sroa.012.031.i.i.i.i, %bb.s ]
  %i.bt = sub nuw i64 %.val3.i.i, %i.bk
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %i.bk ; 2 uses
  %i.bv = icmp eq i64 %i.bt, 1
  %i.bw = load i8, ptr %i.bu, align 1, !alias.scope !528, !noalias !529, !noundef !6
  %i.bx = icmp eq i8 %i.bw, 46                    ; 2 uses
  br i1 %i.bv, label %bb.v, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.by = sub nuw i64 %.sroa.019.030.i.i.i.i, %.sroa.0.032.i.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.sroa.0.032.i.i.i.i
  %i.ca = add i64 %i.by, %.sroa.012.031.i.i.i.i   ; 2 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 62)
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.by) #30, !noalias !524
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  br i1 %i.bx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.y, %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w, %bb.v
  %.sroa.024.0.i.i.i.i = phi i64 [ 1, %bb.v ], [ 0, %bb.w ], [ 1, %bb.z ]
  %i.cc = add i64 %.sroa.024.0.i.i.i.i, %i.bk
  br label %bb.r

bb.y:                                             ; preds = %bb.t
  br i1 %i.bx, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !528, !noalias !529, !noundef !6
  %i.cf = icmp eq i8 %i.ce, 47
  br i1 %i.cf, label %bb.x, label %bb.w

_RINvXs3_NtNtCs6JMX4GRUq9U_4core4hash5implsRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufENtB8_4Hash4hashNtNtNtB1E_4hash6random13DefaultHasherECss03989lGqH_5uu_df.exit: ; preds = %._crit_edge.i.i.i.i, %bb.q
  %.sroa.012.1.i.i.i.i = phi i64 [ %i.br, %bb.q ], [ %.sroa.012.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !531
  store i64 %.sroa.012.1.i.i.i.i, ptr %i.a, align 8, !noalias !531
  call fastcc void @_RNvXs2_NtNtCs2vKOLqTMYjT_3std4hash6randomNtB5_13DefaultHasherNtNtCs6JMX4GRUq9U_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30, !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !531
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !alias.scope !533
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !533
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !533 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !533
  %i.cg = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !533, !noundef !6
  %i.ch = shl i64 %i.cg, 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !533, !noundef !6
  %i.ck = or i64 %i.ch, %i.cj                     ; 2 uses
  %i.cl = xor i64 %i.ck, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.cm = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.cn = add i64 %i.cl, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cq, %i.cn                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 3 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32)
  %i.da = xor i64 %i.cu, %i.ck
  %i.db = xor i64 %i.cz, 255
  %i.dc = add i64 %i.da, %i.cw                    ; 3 uses
  %i.dd = add i64 %i.cy, %i.db                    ; 2 uses
  %i.de = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 13)
  %i.df = xor i64 %i.dc, %i.de                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 16)
  %i.dh = xor i64 %i.dg, %i.dd                    ; 3 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32)
  %i.dj = add i64 %i.df, %i.dd                    ; 3 uses
  %i.dk = add i64 %i.dh, %i.di                    ; 2 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 17)
  %i.dm = xor i64 %i.dj, %i.dl                    ; 3 uses
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 21)
  %i.do = xor i64 %i.dn, %i.dk                    ; 3 uses
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 32)
  %i.dq = add i64 %i.dm, %i.dk                    ; 3 uses
  %i.dr = add i64 %i.do, %i.dp                    ; 2 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 13)
  %i.dt = xor i64 %i.ds, %i.dq                    ; 3 uses
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 16)
  %i.dv = xor i64 %i.du, %i.dr                    ; 3 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 32)
  %i.dx = add i64 %i.dt, %i.dr                    ; 3 uses
  %i.dy = add i64 %i.dv, %i.dw                    ; 2 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 17)
  %i.ea = xor i64 %i.dz, %i.dx                    ; 3 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 21)
  %i.ec = xor i64 %i.eb, %i.dy                    ; 3 uses
  %i.ed = tail call noundef i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  %i.ee = add i64 %i.ea, %i.dy
  %i.ef = add i64 %i.ec, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 13)
  %i.eh = xor i64 %i.eg, %i.ee                    ; 3 uses
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 16)
  %i.ej = xor i64 %i.ei, %i.ef                    ; 2 uses
  %i.ek = add i64 %i.eh, %i.ef                    ; 3 uses
  %i.el = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 17)
  %i.em = tail call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 21)
  %i.en = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 32)
  %i.eo = xor i64 %i.em, %i.el
  %i.ep = xor i64 %i.eo, %i.en
  %i.eq = xor i64 %i.ep, %i.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.eq
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc i64 @_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs7Zx3WTHCDWk_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECss03989lGqH_5uu_df(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.not.i19 = icmp eq ptr %0, %1
  br i1 %.not.i19, label %_RNvXs0_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
  %.sroa.0.022 = phi i64 [ %i.eh, %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit ], [ 0, %bb.a ]
  %.sroa.6.021 = phi i16 [ %.sroa.51.1.i.i, %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit ], [ 0, %bb.a ] ; 5 uses
  %.sroa.2.020 = phi ptr [ %.sroa.2.3.ph, %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -1 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !noalias !541, !noundef !6 ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit17.i.i

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit17.i.i: ; preds = %.lr.ph
  %i.d = icmp ne ptr %0, %i.a
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -2 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !noalias !541, !noundef !6 ; 3 uses
  %i.g = and i8 %i.f, 31
  %i.h = zext nneg i8 %i.g to i32
  %i.i = icmp slt i8 %i.f, -64
  br i1 %i.i, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit19.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = zext nneg i8 %i.b to i32
  br label %bb.e

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit17.i.i
  %i.k = icmp ne ptr %0, %i.e
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -3 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !noalias !541, !noundef !6 ; 3 uses
  %i.n = and i8 %i.m, 15
  %i.o = zext nneg i8 %i.n to i32
  %i.p = icmp slt i8 %i.m, -64
  br i1 %i.p, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit21.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit17.i.i
  %.sroa.2.1 = phi ptr [ %.sroa.2.2, %bb.d ], [ %i.e, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit17.i.i ]
  %.sroa.010.0.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.h, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit17.i.i ]
  %i.q = shl nuw nsw i32 %.sroa.010.0.i.i, 6
  %i.r = and i8 %i.b, 63
  %i.s = zext nneg i8 %i.r to i32
  %i.t = or disjoint i32 %i.q, %i.s
  br label %bb.e

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit19.i.i
  %i.u = icmp ne ptr %0, %i.l
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !noalias !541, !noundef !6
  %i.x = and i8 %i.w, 7
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 6
  %i.aa = and i8 %i.m, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit21.i.i, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit19.i.i
  %.sroa.2.2 = phi ptr [ %i.v, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit21.i.i ], [ %i.l, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit19.i.i ]
  %.sroa.010.1.i.i = phi i32 [ %i.ac, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit21.i.i ], [ %i.o, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCss03989lGqH_5uu_df.exit19.i.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.ae = and i8 %i.f, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.3.ph = phi ptr [ %.sroa.2.1, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %spec.select.i.ph = phi i32 [ %i.t, %bb.c ], [ %i.j, %bb.b ] ; 80 uses
  %.not.i.i = icmp sgt i16 %.sroa.6.021, -1
  br i1 %.not.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = lshr i32 %spec.select.i.ph, 10
  switch i32 %i.ah, label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i [
    i32 0, label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 12, label %bb.j
    i32 124, label %bb.k
    i32 125, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  br label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.h:                                             ; preds = %bb.f
  br label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.i:                                             ; preds = %bb.f
  br label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.j:                                             ; preds = %bb.f
  br label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.k:                                             ; preds = %bb.f
  br label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.l:                                             ; preds = %bb.f
  br label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.01.0.i.i.i = phi i64 [ 6, %bb.l ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 0, %bb.f ]
  %i.ai = lshr i32 %spec.select.i.ph, 3
  %i.aj = and i32 %i.ai, 127
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [128 x i8], ptr @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables25EMOJI_PRESENTATION_LEAVES, i64 %.sroa.01.0.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !noundef !6
  %i.ao = trunc i32 %spec.select.i.ph to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.an, %i.ap
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i

bb.m:                                             ; preds = %bb.o, %bb.e
  %.sroa.0.0.i.i = phi i16 [ %i.aw, %bb.o ], [ %.sroa.6.021, %bb.e ] ; 13 uses
  %i.as = icmp samesign ult i32 %spec.select.i.ph, 161
  br i1 %i.as, label %bb.r, label %bb.q

_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i: ; preds = %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i, %bb.f
  %i.at = and i16 %.sroa.6.021, 8192
  %.not81.i.i = icmp eq i16 %i.at, 0
  br i1 %.not81.i.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i
  %i.au = and i16 %.sroa.6.021, -20480
  %i.av = icmp eq i16 %i.au, -28672
  %..i.i = select i1 %i.av, i8 0, i8 2
  br label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit

bb.o:                                             ; preds = %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i
  %i.aw = and i16 %.sroa.6.021, 32767
  br label %bb.m

bb.p:                                             ; preds = %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i
  %i.ax = icmp samesign ult i32 %spec.select.i.ph, 161
  br i1 %i.ax, label %bb.cp, label %.thread121.i.i

bb.q:                                             ; preds = %bb.m
  %.not82.i.i = icmp eq i16 %.sroa.0.0.i.i, 0
  br i1 %.not82.i.i, label %.thread121.i.i, label %bb.s

bb.r:                                             ; preds = %bb.m
  %trunc.i.i = trunc nuw i32 %spec.select.i.ph to i8
  switch i8 %trunc.i.i, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit [
    i8 10, label %bb.cn
    i8 13, label %bb.co
  ]

.thread121.i.i:                                   ; preds = %bb.ci, %bb.cm, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %.thread137.i.i, %bb.cb, %bb.bn, %bb.ax, %bb.ax, %bb.ax, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.q, %bb.p
  %spec.select.i17 = phi i32 [ %spec.select.i.ph, %bb.cm ], [ %spec.select.i.ph, %bb.ci ], [ %spec.select.i.ph, %bb.ch ], [ 127988, %bb.cg ], [ %spec.select.i.ph, %bb.cf ], [ %spec.select.i.ph, %bb.ce ], [ %spec.select.i.ph, %bb.cd ], [ %spec.select.i.ph, %.thread137.i.i ], [ %spec.select.i.ph, %bb.cb ], [ %spec.select.i.ph, %bb.bn ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ %spec.select.i.ph, %bb.au ], [ %spec.select.i.ph, %bb.at ], [ %spec.select.i.ph, %bb.as ], [ %spec.select.i.ph, %bb.ar ], [ %spec.select.i.ph, %bb.q ], [ %spec.select.i.ph, %bb.p ]
  %i.ay = tail call fastcc { i8, i16 } @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i17) #30 ; 2 uses
  %i.az = extractvalue { i8, i16 } %i.ay, 0
  %i.ba = extractvalue { i8, i16 } %i.ay, 1
  br label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit

bb.s:                                             ; preds = %bb.q
  switch i32 %spec.select.i.ph, label %bb.w [
    i32 65039, label %bb.t
    i32 65025, label %bb.u
    i32 65038, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.bb = and i16 %.sroa.0.0.i.i, 12288
  %or.cond27.not.i.i = icmp eq i16 %i.bb, 0
  %i.bc = or disjoint i16 %.sroa.0.0.i.i, -32768
  %.sroa.050.0.i.i = select i1 %or.cond27.not.i.i, i16 -32768, i16 %i.bc
  br label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = and i16 %.sroa.0.0.i.i, 8192
  %.not84.i.i = icmp eq i16 %i.bd, 0
  %i.be = or i16 %.sroa.0.0.i.i, 512
  %.sroa.051.0.i.i = select i1 %.not84.i.i, i16 512, i16 %i.be
  br label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit

bb.v:                                             ; preds = %bb.s
  %i.bf = and i16 %.sroa.0.0.i.i, 8192
  %.not83.i.i = icmp eq i16 %i.bf, 0
  %i.bg = or i16 %.sroa.0.0.i.i, 16384
  %.sroa.052.0.i.i = select i1 %.not83.i.i, i16 16384, i16 %i.bg
  br label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit

bb.w:                                             ; preds = %bb.s
  %.not85.i.i = icmp samesign ult i16 %.sroa.0.0.i.i, 16384
  br i1 %.not85.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bh = and i16 %.sroa.0.0.i.i, 512
  %.not86.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not86.i.i, label %bb.ak, label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.bi = lshr i32 %spec.select.i.ph, 8
  switch i32 %i.bi, label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i [
    i32 35, label %bb.ah
    i32 37, label %.thread.i.i.i
    i32 38, label %bb.z
    i32 39, label %bb.aa
    i32 43, label %bb.ab
    i32 496, label %bb.ac
    i32 499, label %bb.ad
    i32 500, label %bb.ae
    i32 501, label %bb.af
    i32 502, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  br label %.thread.i.i.i

bb.ad:                                            ; preds = %bb.y
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  br label %bb.ah

.thread.i.i.i:                                    ; preds = %bb.ac, %bb.y
  %.sroa.01.0.ph.i.i.i = phi ptr [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_5, %bb.ac ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_1, %bb.y ]
  %i.bj = trunc i32 %spec.select.i.ph to i8
  br label %._crit_edge.i.i.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.11.0.i.i.i = phi i64 [ 10, %bb.ag ], [ 4, %bb.af ], [ 15, %bb.z ], [ 10, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.y ], [ 13, %bb.ad ], [ 22, %bb.ae ] ; 2 uses
  %.sroa.01.0.i99.i.i = phi ptr [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_9, %bb.ag ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_8, %bb.af ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_2, %bb.z ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_3, %bb.aa ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_4, %bb.ab ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_0, %bb.y ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_6, %bb.ad ], [ @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables24TEXT_PRESENTATION_LEAF_7, %bb.ae ] ; 2 uses
  %i.bk = trunc i32 %spec.select.i.ph to i8       ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.thread.i.i.i
  %i.bl = phi i8 [ %i.bj, %.thread.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.01.05.i.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.01.0.i99.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %.thread.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.05.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i ; 2 uses
  %.val15.i.i.i.i = load i8, ptr %i.bm, align 1, !alias.scope !542, !noalias !543, !noundef !6
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  %.val16.i.i.i.i = load i8, ptr %i.bn, align 1, !alias.scope !542, !noalias !543
  %.not = icmp ult i8 %i.bl, %.val15.i.i.i.i
  %i.bo = icmp ugt i8 %i.bl, %.val16.i.i.i.i
  %i.bp = select i1 %.not, i1 true, i1 %i.bo
  br i1 %i.bp, label %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.ah
  %.sroa.01.020.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.05.019.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ 0, %bb.ah ] ; 2 uses
  %i.bq = lshr i64 %.sroa.01.020.i.i.i.i, 1       ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, %.sroa.05.019.i.i.i.i ; 3 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.11.0.i.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i99.i.i, i64 %i.br
  %.val12.i.i.i.i = load i8, ptr %i.bt, align 1, !alias.scope !542, !noalias !543, !noundef !6
  %i.bu = icmp ugt i8 %.val12.i.i.i.i, %i.bk
  %i.bv = select i1 %i.bu, i64 %.sroa.05.019.i.i.i.i, i64 %i.br, !unpredictable !6 ; 2 uses
  %i.bw = sub nuw nsw i64 %.sroa.01.020.i.i.i.i, %i.bq ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 1
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.ai:                                            ; preds = %bb.x
  %switch.tableidx = add i32 %spec.select.i.ph, -8216 ; 2 uses
  %i.by = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond9 = select i1 %i.by, i1 %switch.lobit, i1 false
  br i1 %or.cond9, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = and i16 %.sroa.0.0.i.i, 15871
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i, %bb.aj, %bb.x
  %.sroa.0.1.i.i = phi i16 [ %i.cb, %_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i ], [ %i.bz, %bb.aj ], [ %.sroa.0.0.i.i, %bb.x ] ; 17 uses
  %i.ca = and i16 %.sroa.0.1.i.i, 2048
  %.not87.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not87.i.i, label %bb.am, label %bb.al

_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.y
  %i.cb = and i16 %.sroa.0.0.i.i, 16383
  br label %bb.ak

bb.al:                                            ; preds = %bb.ak
  switch i32 %spec.select.i.ph, label %bb.ao [
    i32 8205, label %bb.an
    i32 847, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
    i32 6159, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
  ]

bb.am:                                            ; preds = %bb.ao, %bb.ak
  switch i16 %.sroa.0.1.i.i, label %bb.ap [
    i16 12543, label %bb.aq
    i16 15360, label %bb.ar
    i16 15367, label %bb.as
    i16 15361, label %bb.at
    i16 15362, label %bb.au
  ]

bb.an:                                            ; preds = %bb.al
  %i.cc = or i16 %.sroa.0.1.i.i, 1024
  br label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit

bb.ao:                                            ; preds = %bb.al
  %i.cd = and i32 %spec.select.i.ph, 2097150
  %or.cond.i = icmp eq i32 %i.cd, 6068
  %i.ce = add nsw i32 %spec.select.i.ph, -6155
  %or.cond1.i = icmp ult i32 %i.ce, 3
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %or.cond1.i
  %i.cf = and i32 %spec.select.i.ph, 2097136
  %or.cond2.i = icmp eq i32 %i.cf, 65024
  %or.cond4.i = or i1 %or.cond2.i, %or.cond3.i
  %i.cg = add nsw i32 %spec.select.i.ph, -917760
  %spec.select.i9 = icmp ult i32 %i.cg, 240
  %or.cond = select i1 %or.cond4.i, i1 true, i1 %spec.select.i9
  br i1 %or.cond, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit, label %bb.am

bb.ap:                                            ; preds = %bb.aw, %bb.am
  %i.ch = icmp eq i32 %spec.select.i.ph, 11647
  br i1 %i.ch, label %bb.ax, label %bb.ay

bb.aq:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %bb.av [
    i32 1604, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
    i32 1898, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
    i32 2214, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
    i32 2247, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
  ]

bb.ar:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 1488, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
    i32 11647, label %.thread121.i.i
  ]

bb.as:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6098, label %_RNCNvNtCs7Zx3WTHCDWk_13unicode_width6tables9str_width0Css03989lGqH_5uu_df.exit
    i32 11647, label %.thread121.i.i
  ]

end_hunk_0
begin_hunk_1_@_RNvCss03989lGqH_5uu_df11filesystems:bb.a
  %i.lc = getelementptr i8, ptr %i.kw, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lc) ]
  store ptr %i.lc, ptr %i.fp, align 8, !alias.scope !1080, !noalias !1079
  store i8 3, ptr %i.bs, align 8, !alias.scope !1080, !noalias !1079
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fp) #28, !noalias !1079
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit.i111.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit.i111.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1078
  store i8 1, ptr %i.fg, align 8, !noalias !1022
  store i64 -1, ptr %i.dr, align 8, !noalias !1022
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i

bb.bn:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread196.i.i
  %.sroa.466.0.copyload.i.i = load i64, ptr %i.fh, align 8, !noalias !1078 ; 2 uses
  %.sroa.567.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.567.sroa.4.0..sroa.567.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1078 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1078
  %i.ld = inttoptr i64 %.sroa.466.0.copyload.i.i to ptr ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1078
  %i.le = icmp ne i64 %.sroa.466.0.copyload.i.i, 0
  call void @llvm.assume(i1 %i.le)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext6statfs(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ld, i64 noundef %.sroa.567.sroa.4.0.copyload.i.i) #28, !noalias !1078
  %i.lf = load i64, ptr %i.bu, align 8, !range !18, !noalias !1078, !noundef !6
  %i.lg = trunc nuw i64 %i.lf to i1
  %.sroa.0180.0.copyload.i.i = load i64, ptr %i.fi, align 8, !noalias !1078 ; 3 uses
  br i1 %i.lg, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.lh = icmp eq i64 %.sroa.0180.0.copyload.i.i, 0
  br i1 %i.lh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.sroa.4181.0.copyload.i.i = load ptr, ptr %.sroa.483.0..sroa_idx.i.i, align 8, !noalias !1078, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4181.0.copyload.i.i, i64 noundef %.sroa.0180.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1081
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1078
  br label %bb.cl

bb.bq:                                            ; preds = %bb.bn
  %i.li = load <2 x i64>, ptr %.sroa.483.0..sroa_idx.i.i, align 8, !noalias !1078
  %.sroa.786.0.copyload.i.i = load i64, ptr %.sroa.786.0..sroa_idx.i.i, align 8, !noalias !1078
  %i.lj = load <2 x i64>, ptr %.sroa.685.0..sroa_idx.i.i, align 8, !noalias !1078
  %i.lk = load <2 x i64>, ptr %.sroa.887.0..sroa_idx.i.i, align 8, !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1082
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ld, i64 noundef %.sroa.567.sroa.4.0.copyload.i.i) #28, !noalias !1082
  %i.ll = load i64, ptr %i.br, align 8, !range !16, !noalias !1082, !noundef !6 ; 4 uses
  %i.lm = icmp eq i64 %i.ll, -1
  %i.ln = load ptr, ptr %i.fj, align 8, !noalias !1082 ; 6 uses
  br i1 %i.lm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1082
  br label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i

bb.bs:                                            ; preds = %bb.bq
  %.sroa.547.0.copyload.i.i.i = load i64, ptr %.sroa.547.0..sroa_idx.i.i.i, align 8, !noalias !1082 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !1083
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ln, i64 noundef %.sroa.547.0.copyload.i.i.i) #28, !noalias !1084
  %i.lo = load i64, ptr %i.bp, align 8, !range !20, !noalias !1083, !noundef !6
  %i.lp = icmp eq i64 %i.lo, 2
  br i1 %i.lp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lq = load ptr, ptr %i.fn, align 8, !noalias !1083, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1083
  br label %bb.ca

bb.bu:                                            ; preds = %bb.bs
  %.sroa.8123.0.copyload.i.i.i = load i64, ptr %.sroa.8123.0..sroa_idx.i.i.i, align 8, !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1083
  %i.lr = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ln, i64 noundef %.sroa.547.0.copyload.i.i.i) #28, !noalias !1082 ; 2 uses
  %i.ls = extractvalue { ptr, i64 } %i.lr, 0      ; 2 uses
  %i.lt = extractvalue { ptr, i64 } %i.lr, 1      ; 2 uses
  %.not156.i.i.i = icmp eq ptr %i.ls, null
  %i.lu = icmp eq i64 %i.lt, 0
  %or.cond157.i.i.i = select i1 %.not156.i.i.i, i1 true, i1 %i.lu
  br i1 %or.cond157.i.i.i, label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i
  %i.lv = phi i64 [ %i.me, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %i.lt, %bb.bu ] ; 3 uses
  %i.lw = phi ptr [ %i.md, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %i.ls, %bb.bu ] ; 3 uses
  %.sroa.0105.0160.i.i.i = phi i64 [ %.sroa.0105.0.copyload107.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %i.ll, %bb.bu ] ; 5 uses
  %.sroa.9.0159.i.i.i = phi ptr [ %.sroa.9.0.copyload112.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %i.ln, %bb.bu ] ; 5 uses
  %.sroa.14.0158.i.i.i = phi i64 [ %.sroa.14.0.copyload118.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %.sroa.547.0.copyload.i.i.i, %bb.bu ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !1086
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lw, i64 noundef %i.lv) #28, !noalias !1087
  %i.lx = load i64, ptr %i.bo, align 8, !range !20, !noalias !1086, !noundef !6
  %i.ly = icmp eq i64 %i.lx, 2
  br i1 %i.ly, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.lr.ph.i.i.i
  %i.lz = load ptr, ptr %i.fk, align 8, !noalias !1086, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1086
  br label %bb.ca

bb.bw:                                            ; preds = %.lr.ph.i.i.i
  %.sroa.8131.0.copyload.i.i.i = load i64, ptr %.sroa.8131.0..sroa_idx.i.i.i, align 8, !noalias !1088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1086
  %.not94.i.i.i = icmp eq i64 %.sroa.8131.0.copyload.i.i.i, %.sroa.8123.0.copyload.i.i.i
  br i1 %.not94.i.i.i, label %bb.bx, label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !1082
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lw, i64 noundef %i.lv) #28, !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1082
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.0159.i.i.i, i64 noundef %.sroa.14.0158.i.i.i) #28, !noalias !1082
  %i.ma = call fastcc noundef zeroext i1 @_RNvXsl_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bm) #30, !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1082
  br i1 %i.ma, label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !1082
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lw, i64 noundef %i.lv) #28, !noalias !1082
  %i.mb = icmp eq i64 %.sroa.0105.0160.i.i.i, 0
  br i1 %i.mb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0159.i.i.i, i64 noundef %.sroa.0105.0160.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1082
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i: ; preds = %bb.bz, %bb.by
  %.sroa.0105.0.copyload107.i.i.i = load i64, ptr %i.bq, align 8, !noalias !1082 ; 2 uses
  %.sroa.9.0.copyload112.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx111.i.i.i, align 8, !noalias !1082 ; 3 uses
  %.sroa.14.0.copyload118.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx117.i.i.i, align 8, !noalias !1082 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1082
  %i.mc = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.0.copyload112.i.i.i, i64 noundef %.sroa.14.0.copyload118.i.i.i) #28, !noalias !1082 ; 2 uses
  %i.md = extractvalue { ptr, i64 } %i.mc, 0      ; 2 uses
  %i.me = extractvalue { ptr, i64 } %i.mc, 1      ; 2 uses
  %.not.i146.i.i = icmp eq ptr %i.md, null
  %i.mf = icmp eq i64 %i.me, 0
  %or.cond.i.i.i = select i1 %.not.i146.i.i, i1 true, i1 %i.mf
  br i1 %or.cond.i.i.i, label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i, label %.lr.ph.i.i.i

bb.ca:                                            ; preds = %bb.bv, %bb.bt
  %.sink.i147.i.i = phi ptr [ %i.lz, %bb.bv ], [ %i.lq, %bb.bt ] ; 2 uses
  %.sroa.9.1.i.i.i = phi ptr [ %.sroa.9.0159.i.i.i, %bb.bv ], [ %i.ln, %bb.bt ]
  %.sroa.0105.1.i.i.i = phi i64 [ %.sroa.0105.0160.i.i.i, %bb.bv ], [ %i.ll, %bb.bt ] ; 2 uses
  %i.mg = icmp eq i64 %.sroa.0105.1.i.i.i, 0
  br i1 %i.mg, label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.1.i.i.i, i64 noundef %.sroa.0105.1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1082
  br label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i

_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i, %bb.bx, %bb.bw
  %.sroa.10.0.i.i = phi ptr [ %.sroa.9.0159.i.i.i, %bb.bw ], [ %.sroa.9.0.copyload112.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %.sroa.9.0159.i.i.i, %bb.bx ] ; 2 uses
  %.sroa.18.0.i.i = phi i64 [ %.sroa.14.0158.i.i.i, %bb.bw ], [ %.sroa.14.0.copyload118.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %.sroa.14.0158.i.i.i, %bb.bx ]
  %.sroa.0166.0.i.i = phi i64 [ %.sroa.0105.0160.i.i.i, %bb.bw ], [ %.sroa.0105.0.copyload107.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i.i ], [ %.sroa.0105.0160.i.i.i, %bb.bx ] ; 2 uses
  %i.mh = icmp eq i64 %.sroa.0166.0.i.i, -1
  br i1 %i.mh, label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i, label %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i

_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i: ; preds = %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i, %bb.cb, %bb.ca, %bb.br
  %.sroa.10.0205.i.i = phi ptr [ %.sroa.10.0.i.i, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i ], [ %.sink.i147.i.i, %bb.cb ], [ %.sink.i147.i.i, %bb.ca ], [ %i.ln, %bb.br ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0205.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1089
  %i.mi = ptrtoint ptr %.sroa.10.0205.i.i to i64  ; 2 uses
  %i.mj = and i64 %i.mi, 3
  switch i64 %i.mj, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit150.i.i
    i64 3, label %bb.cc
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit150.i.i
    i64 1, label %bb.cd
  ], !prof !15

bb.cc:                                            ; preds = %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i
  %i.mk = icmp ult ptr %.sroa.10.0205.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ml = and i64 %i.mi, 1095216660480
  %i.mm = icmp ne i64 %i.ml, 1095216660480
  call void @llvm.assume(i1 %i.mk)
  call void @llvm.assume(i1 %i.mm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit150.i.i

bb.cd:                                            ; preds = %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i
  %i.mn = getelementptr i8, ptr %.sroa.10.0205.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mn) ]
  store ptr %i.mn, ptr %i.fo, align 8, !alias.scope !1090, !noalias !1089
  store i8 3, ptr %i.bl, align 8, !alias.scope !1090, !noalias !1089
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fo) #28, !noalias !1089
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit150.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit150.i.i: ; preds = %bb.cd, %bb.cc, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1089
  br label %bb.cl

_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i: ; preds = %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i, %bb.bu
  %.sroa.0166.0212.i.i = phi i64 [ %.sroa.0166.0.i.i, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i ], [ %i.ll, %bb.bu ]
  %.sroa.18.0211.i.i = phi i64 [ %.sroa.18.0.i.i, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i ], [ %.sroa.547.0.copyload.i.i.i, %bb.bu ]
  %.sroa.10.0210.i.i = phi ptr [ %.sroa.10.0.i.i, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.i.i ], [ %i.ln, %bb.bu ]
  %i.mo = ptrtoint ptr %.sroa.10.0210.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1078
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext13pretty_fstype(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bt, i64 noundef %.sroa.0180.0.copyload.i.i) #28, !noalias !1078
  %i.mp = load i64, ptr %i.bt, align 8, !range !16, !noalias !1078, !noundef !6 ; 2 uses
  %.not135.i.i = icmp eq i64 %i.mp, -1
  %i.mq = load ptr, ptr %i.fl, align 8, !noalias !1078 ; 2 uses
  %i.mr = load i64, ptr %i.fm, align 8, !noalias !1078 ; 8 uses
  br i1 %.not135.i.i, label %bb.ce, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit155.thread218.i.i

bb.ce:                                            ; preds = %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i
  %.not.i151.i.i = icmp slt i64 %i.mr, 0
  br i1 %.not.i151.i.i, label %bb.cg, label %bb.cf, !prof !12

bb.cf:                                            ; preds = %bb.ce
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit155.thread218.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i153.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i153.i.i: ; preds = %bb.cf
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1091
  %i.mt = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.mr, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1091 ; 3 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i153.i.i, %bb.ce
  %.sroa.4185.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i153.i.i ], [ 0, %bb.ce ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4185.0.ph.i.i, i64 %i.mr) #31, !noalias !1078
  unreachable

bb.ch:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i153.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mt, ptr nonnull align 1 %i.mq, i64 %i.mr, i1 false), !noalias !1078
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit155.thread218.i.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit155.thread218.i.i: ; preds = %bb.ch, %bb.cf, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i
  %.sroa.0102.0.i.i = phi i64 [ 0, %bb.cf ], [ %i.mr, %bb.ch ], [ %i.mp, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i ]
  %.sroa.3.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cf ], [ %i.mt, %bb.ch ], [ %i.mq, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i ]
  %.sroa.4105.0.i.i = phi i64 [ 0, %bb.cf ], [ %i.mr, %bb.ch ], [ %i.mr, %_RINvNtCss03989lGqH_5uu_df10filesystem16find_mount_pointRNtNtCs2vKOLqTMYjT_3std4path7PathBufEB4_.exit.thread206.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1078
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1092
  %i.mv = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1092 ; 3 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit155.thread218.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !1078
  unreachable

bb.cj:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit155.thread218.i.i
  store i8 45, ptr %i.mv, align 1, !noalias !1078
  %.sroa.786.0.copyload.lobit.i.i = lshr i64 %.sroa.786.0.copyload.i.i, 63
  %i.mx = trunc nuw nsw i64 %.sroa.786.0.copyload.lobit.i.i to i8
  store i64 0, ptr %i.dr, align 8, !noalias !1022
  store ptr inttoptr (i64 1 to ptr), ptr %i.fg, align 8, !noalias !1022
  store i64 0, ptr %.sroa.046.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1022
  store i64 1, ptr %.sroa.046.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1022
  store ptr %i.mv, ptr %.sroa.046.sroa.0.sroa.6.sroa.4.0..sroa.046.sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 1, ptr %.sroa.046.sroa.0.sroa.6.sroa.5.0..sroa.046.sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 %.sroa.0102.0.i.i, ptr %.sroa.046.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1022
  store ptr %.sroa.3.0.i.i, ptr %.sroa.046.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1022
  store i64 %.sroa.4105.0.i.i, ptr %.sroa.046.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1022
  store i64 0, ptr %.sroa.046.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1022
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.046.sroa.7.sroa.4.0..sroa.046.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 0, ptr %.sroa.046.sroa.7.sroa.5.0..sroa.046.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 %.sroa.0166.0212.i.i, ptr %.sroa.046.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1022
  store i64 %i.mo, ptr %.sroa.046.sroa.8.sroa.4.0..sroa.046.sroa.8.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 %.sroa.18.0211.i.i, ptr %.sroa.046.sroa.8.sroa.5.sroa.4.0..sroa.046.sroa.8.sroa.5.0..sroa.046.sroa.8.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 0, ptr %.sroa.046.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1022
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.046.sroa.9.sroa.4.0..sroa.046.sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 0, ptr %.sroa.046.sroa.9.sroa.5.0..sroa.046.sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i8 0, ptr %.sroa.447.0..sroa_idx.i.i, align 8, !noalias !1022
  store i8 0, ptr %.sroa.548.0..sroa_idx.i.i, align 1, !noalias !1022
  store i64 %.val1.i.i107.i, ptr %.sroa.750.0..sroa_idx.i.i, align 8, !noalias !1022
  store ptr %i.kt, ptr %.sroa.750.sroa.4.0..sroa.750.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store i64 %.val1.i.i107.i, ptr %.sroa.750.sroa.5.0..sroa.750.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  store <2 x i64> %i.li, ptr %.sroa.851.0..sroa_idx.i.i, align 8, !noalias !1022
  store <2 x i64> %i.lj, ptr %.sroa.1053.0..sroa_idx.i.i, align 8, !noalias !1022
  store <2 x i64> %i.lk, ptr %.sroa.1255.0..sroa_idx.i.i, align 8, !noalias !1022
  store i8 %i.mx, ptr %.sroa.1457.0..sroa_idx.i.i, align 8, !noalias !1022
  %i.my = icmp eq i64 %i.ku, 0
  br i1 %i.my, label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef %i.ku, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1078
  br label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i

bb.cl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit150.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i
  store i8 2, ptr %i.fg, align 8, !noalias !1022
  store i64 -1, ptr %i.dr, align 8, !noalias !1022
  %i.mz = icmp eq i64 %i.ku, 0
  br i1 %i.mz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ld, i64 noundef %i.ku, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1078
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i: ; preds = %bb.cm, %bb.cl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit.i111.i
  %.pre.i344 = phi i8 [ 2, %bb.cm ], [ 2, %bb.cl ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECss03989lGqH_5uu_df.exit.i111.i ] ; 2 uses
  br i1 %i.kq, label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread.i, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %.val1.i.i107.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1078
  br label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread.i

_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i: ; preds = %_RINvNtCss03989lGqH_5uu_df10filesystem20mount_info_from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB4_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !1043
  store i64 %.val1.i.i.i, ptr %i.cc, align 8, !noalias !1043
  store ptr %i.iy, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !1043
  store i64 %.val1.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !1043
  call fastcc void @_RNvMNtCss03989lGqH_5uu_df10filesystemNtB2_10Filesystem10from_mount(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(232) %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.0.i, i64 noundef range(i64 0, 60680079189834052) %.sroa.4.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %.sroa.89.0.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cc) #28, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !1043
  %.pr.pre.i = load i64, ptr %i.dr, align 8, !noalias !1022
  %i.na = icmp eq i64 %.pr.pre.i, -1
  br i1 %i.na, label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread_crit_edge.i_crit_edge, label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i_crit_edge

_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread_crit_edge.i_crit_edge: ; preds = %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i
  %.pre.i.pre = load i8, ptr %i.fg, align 8, !range !21, !noalias !1022
  br label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread.i

_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i_crit_edge: ; preds = %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i
  %.sroa.3.0.copyload.pre = load i64, ptr %.sroa.750.0..sroa_idx.i.i, align 8, !noalias !1022
  %.sroa.440.0.copyload.pre = load ptr, ptr %.sroa.750.sroa.4.0..sroa.750.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1022
  br label %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i

_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i, %bb.cn, %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread_crit_edge.i_crit_edge, %bb.bf, %bb.be
  %.sroa.018.0.val91.i = phi i64 [ %.val1.i.i.i, %bb.bf ], [ 0, %bb.be ], [ %.val1.i.i.i, %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread_crit_edge.i_crit_edge ], [ %.val1.i.i107.i, %bb.cn ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i ] ; 2 uses
  %.sroa.018.0.val90.i = phi ptr [ %.val.i.i.i, %bb.bf ], [ %.val.i.i.i, %bb.be ], [ %.val.i.i.i, %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread_crit_edge.i_crit_edge ], [ %.val.i.i106.i, %bb.cn ], [ %.val.i.i106.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i ] ; 2 uses
  %i.nb = phi i8 [ %.sroa.5.133.i.i, %bb.bf ], [ %.sroa.5.133.i.i, %bb.be ], [ %.pre.i.pre, %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread_crit_edge.i_crit_edge ], [ %.pre.i344, %bb.cn ], [ %.pre.i344, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit159.i.i ]
  switch i8 %i.nb, label %default.unreachable [
    i8 0, label %bb.ct
    i8 1, label %bb.di
    i8 2, label %bb.dx
  ]

_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i: ; preds = %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i_crit_edge, %bb.ck, %bb.cj
  %.sroa.440.0.copyload = phi ptr [ %.sroa.440.0.copyload.pre, %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i_crit_edge ], [ %i.kt, %bb.ck ], [ %i.kt, %bb.cj ] ; 2 uses
  %.sroa.3.0.copyload = phi i64 [ %.sroa.3.0.copyload.pre, %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.i._RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i_crit_edge ], [ %.val1.i.i107.i, %bb.ck ], [ %.val1.i.i107.i, %bb.cj ] ; 2 uses
  %i.nc = call fastcc noundef zeroext i1 @_RNvCss03989lGqH_5uu_df11is_included(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %3) #28, !noalias !1023
  br i1 %i.nc, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i
  %i.nd = icmp sgt i64 %.sroa.3.0.copyload, 0
  br i1 %i.nd, label %bb.cp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i

bb.cp:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.440.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.440.0.copyload, i64 noundef %.sroa.3.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1093
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i: ; preds = %bb.cp, %bb.co
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features5fsext9MountInfoECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(232) %i.dr) #28, !noalias !1022
  br label %bb.cs

bb.cq:                                            ; preds = %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread436.i
  %i.ne = load i64, ptr %i.ew, align 8, !alias.scope !1094, !noalias !1095, !noundef !6 ; 3 uses
  %i.nf = load i64, ptr %i.ds, align 8, !range !7, !alias.scope !1094, !noalias !1095, !noundef !6
  %i.ng = icmp eq i64 %i.ne, %i.nf
  br i1 %i.ng, label %bb.cr, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df10filesystem10FilesystemE8push_mutBJ_.exit.i

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCss03989lGqH_5uu_df10filesystem10FilesystemE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds) #27, !noalias !1095
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df10filesystem10FilesystemE8push_mutBJ_.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df10filesystem10FilesystemE8push_mutBJ_.exit.i: ; preds = %bb.cr, %bb.cq
  %i.nh = load ptr, ptr %i.ev, align 8, !alias.scope !1094, !noalias !1095, !nonnull !6, !noundef !6
  %i.ni = getelementptr inbounds nuw [232 x i8], ptr %i.nh, i64 %i.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ni, ptr noundef nonnull align 8 dereferenceable(232) %i.dr, i64 232, i1 false), !noalias !1022
  %i.nj = add i64 %i.ne, 1
  store i64 %i.nj, ptr %i.ew, align 8, !alias.scope !1094, !noalias !1095
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df10filesystem10FilesystemE8push_mutBJ_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECss03989lGqH_5uu_df.exit204.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECss03989lGqH_5uu_df.exit185.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECss03989lGqH_5uu_df.exit166.i
  %i.nk = icmp eq ptr %i.it, %i.ex
  br i1 %i.nk, label %._crit_edge.i, label %bb.ae

bb.ct:                                            ; preds = %_RINvMNtCss03989lGqH_5uu_df10filesystemNtB3_10Filesystem9from_pathRRNtNtCs2vKOLqTMYjT_3std4path4PathEB5_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !1022
  store i64 0, ptr %i.da, align 8, !noalias !1022
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !1022
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !1022
  store i64 1, ptr %i.cz, align 8, !noalias !1022
  store ptr %.sroa.018.0.val90.i, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !1022
  store i64 %.sroa.018.0.val91.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !1022
  store i8 1, ptr %i.gg, align 8, !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !1096
  store i64 0, ptr %i.bk, align 8, !noalias !1096
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1096
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !1096
  store i64 1610612768, ptr %i.gh, align 8, !noalias !1096
  store ptr %i.bk, ptr %i.bj, align 8, !noalias !1096
  store ptr @200, ptr %i.gi, align 8, !noalias !1096
  %i.nl = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj) #28, !noalias !1097
  br i1 %i.nl, label %bb.cu, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i, !prof !11

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #29, !noalias !1097
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i: ; preds = %bb.ct
  %.sroa.0252.0.copyload253.i = load i64, ptr %i.bk, align 8, !noalias !1098 ; 3 uses
  %.sroa.5254.0.copyload256.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1098, !nonnull !6, !noundef !6 ; 8 uses
  %.sroa.8258.0.copyload260.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1098 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !1022
  switch i64 %.sroa.8258.0.copyload260.i, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.cv
  ]

bb.cv:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i
  %i.nm = load i8, ptr %.sroa.5254.0.copyload256.i, align 1, !alias.scope !1099, !noalias !1100, !noundef !6 ; 2 uses
  switch i8 %i.nm, label %bb.cw [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCss03989lGqH_5uu_df.exit.i
  %.pr.i.i = load i8, ptr %.sroa.5254.0.copyload256.i, align 1, !alias.scope !1099, !noalias !1100
  br label %bb.cw

bb.cw:                                            ; preds = %thread-pre-split.i.i, %bb.cv
  %i.nn = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.nm, %bb.cv ]
  switch i8 %i.nn, label %bb.dd [
    i8 43, label %bb.cx
    i8 45, label %bb.cy
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.5254.0.copyload256.i, i64 1
  %i.np = add nsw i64 %.sroa.8258.0.copyload260.i, -1
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cw
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.5254.0.copyload256.i, i64 1 ; 2 uses
  %i.nr = add nsw i64 %.sroa.8258.0.copyload260.i, -1 ; 3 uses
  %i.ns = icmp samesign ult i64 %.sroa.8258.0.copyload260.i, 17
  br i1 %i.ns, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.cy
  %.not103137.i.i = icmp eq i64 %i.nr, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.cy, %bb.db
  %.sroa.0.1136.i.i = phi ptr [ %i.nt, %bb.db ], [ %i.nq, %bb.cy ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.nu, %bb.db ], [ %i.nr, %bb.cy ]
  %.sroa.084.0134.i.i = phi i64 [ %i.of, %bb.db ], [ 0, %bb.cy ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.nu = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.nv = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.nw = extractvalue { i64, i1 } %i.nv, 0
  %i.nx = extractvalue { i64, i1 } %i.nv, 1
  br i1 %i.nx, label %.loopexit.i, label %bb.cz, !prof !11

bb.cz:                                            ; preds = %.lr.ph.i.i
  %i.ny = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !1099, !noalias !1100, !noundef !6
  %i.nz = zext i8 %i.ny to i32
end_hunk_1
begin_hunk_2_@_RNvCss03989lGqH_5uu_df11filesystems:bb.a

bb.io:                                            ; preds = %bb.il
  %.sroa.546.0.copyload.i.i = load i64, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1185
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aht, i64 noundef %.sroa.546.0.copyload.i.i) #28, !noalias !1186
  %i.ahu = icmp eq i64 %i.ahr, 0
  br i1 %i.ahu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aht, i64 noundef %i.ahr, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1186
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.ip, %bb.io
  %i.ahv = load i64, ptr %i.ah, align 8, !range !16, !noalias !1185, !noundef !6 ; 3 uses
  %i.ahw = icmp eq i64 %i.ahv, -1
  %i.ahx = load ptr, ptr %i.yx, align 8, !noalias !1185 ; 3 uses
  br i1 %i.ahw, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1185
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeRNtNtCs2vKOLqTMYjT_3std4path4PathECss03989lGqH_5uu_df.exit.thread.i

bb.ir:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i
  %.sroa.549.0.copyload.i.i = load i64, ptr %.sroa.549.0..sroa_idx.i.i, align 8, !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1185
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ahx, i64 noundef %.sroa.549.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre.i21, i64 noundef %.fr41.i.i) #28, !noalias !1186
  %i.ahy = icmp eq i64 %i.ahv, 0
  br i1 %i.ahy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit102.i.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahx, i64 noundef %i.ahv, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1186
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit102.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit102.i.i: ; preds = %bb.is, %bb.ir, %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1185
  %i.ahz = load ptr, ptr %i.yy, align 8, !noalias !1185, !nonnull !6, !noundef !6 ; 3 uses
  %i.aia = load i64, ptr %i.yz, align 8, !noalias !1185, !noundef !6
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features2fs14normalize_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ahz, i64 noundef %i.aia) #28, !noalias !1186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1185
  %i.aib = load ptr, ptr %i.za, align 8, !noalias !1185, !nonnull !6, !noundef !6 ; 3 uses
  %i.aic = load i64, ptr %i.zb, align 8, !noalias !1185, !noundef !6
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aib, i64 noundef %i.aic) #28, !noalias !1186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1185
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1191
  call void @_RNvXsi_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ae) #28, !noalias !1192
  %i.aid = load i8, ptr %i.o, align 8, !range !22, !noalias !1191, !noundef !6
  %.not.i.i.i.i.i.i24 = icmp eq i8 %i.aid, -1
  br i1 %.not.i.i.i.i.i.i24, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit102.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1191
  br label %_RNvXNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_12SpecFromIterB1k_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB3t_9ComponentINtNtB2M_7convert4IntoB1k_E4intoEE14spec_from_iterCss03989lGqH_5uu_df.exit.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit102.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !noalias !1191
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.n) #28, !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1191
  %.pr.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !1190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1191
  %.not.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_12SpecFromIterB1k_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB3t_9ComponentINtNtB2M_7convert4IntoB1k_E4intoEE14spec_from_iterCss03989lGqH_5uu_df.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1194
  %i.aie = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 8) #28, !noalias !1194 ; 5 uses
  %i.aif = icmp eq ptr %i.aie, null
  br i1 %i.aif, label %bb.it, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i

bb.it:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 128) #31, !noalias !1193
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aie, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !1193
  store i64 4, ptr %i.r, align 8, !noalias !1190
  store ptr %i.aie, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1190
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i14, align 8, !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false), !noalias !1195
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1199
  call void @_RNvXsi_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.p) #28, !noalias !1200
  %i.aig = load i8, ptr %i.l, align 8, !range !22, !noalias !1199, !noundef !6
  %.not.i2.i.i.i.i.i.i.i = icmp eq i8 %i.aig, -1
  br i1 %.not.i2.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.iv, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i
  %.sroa.7.0.copyload9.i.i.i = phi i64 [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ %i.aio, %bb.iv ]
  %.sroa.5.0.copyload7.i.i.i = phi ptr [ %i.aie, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ %i.aim, %bb.iv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1201
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB2X_9ComponentINtNtB2g_7convert4IntoBR_E4intoEE11spec_extendCss03989lGqH_5uu_df.exit.i.i.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i, %bb.iv
  %i.aih = phi ptr [ %i.aim, %bb.iv ], [ %i.aie, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i ] ; 2 uses
  %i.aii = phi i64 [ %i.aio, %bb.iv ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCss03989lGqH_5uu_df.exit.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !1201
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.k) #28, !noalias !1202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1201
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1201
  %.not.i.i2.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i2.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB2X_9ComponentINtNtB2g_7convert4IntoBR_E4intoEE11spec_extendCss03989lGqH_5uu_df.exit.i.i.i.i.i, label %bb.iu

bb.iu:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i
  %i.aij = icmp samesign ult i64 %i.aii, 288230376151711744
  call void @llvm.assume(i1 %i.aij)
  %i.aik = load i64, ptr %i.r, align 8, !range !7, !alias.scope !1204, !noalias !1205, !noundef !6
  %i.ail = icmp eq i64 %i.aii, %i.aik
  br i1 %i.ail, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i, label %bb.iv

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i: ; preds = %bb.iu
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.aii, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32) #28, !noalias !1193
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1204, !noalias !1205
  br label %bb.iv

bb.iv:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i, %bb.iu
  %i.aim = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE7reserveCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i ], [ %i.aih, %bb.iu ] ; 3 uses
  %i.ain = getelementptr inbounds nuw [32 x i8], ptr %i.aim, i64 %i.aii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ain, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !1202
  %i.aio = add nuw nsw i64 %i.aii, 1              ; 3 uses
  store i64 %i.aio, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i14, align 8, !alias.scope !1204, !noalias !1205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1206
  call void @_RNvXsi_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.p) #28, !noalias !1207
  %i.aip = load i8, ptr %i.l, align 8, !range !22, !noalias !1206, !noundef !6
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aip, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB2X_9ComponentINtNtB2g_7convert4IntoBR_E4intoEE11spec_extendCss03989lGqH_5uu_df.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i.i.i
  %.sroa.7.0.copyload.i.i.i = phi i64 [ %.sroa.7.0.copyload9.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i.i.i ], [ %i.aii, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i ]
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload7.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i.i.i ], [ %i.aih, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1190
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.r, align 8, !noalias !1208
  br label %_RNvXNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_12SpecFromIterB1k_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB3t_9ComponentINtNtB2M_7convert4IntoB1k_E4intoEE14spec_from_iterCss03989lGqH_5uu_df.exit.i.i

_RNvXNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_12SpecFromIterB1k_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB3t_9ComponentINtNtB2M_7convert4IntoB1k_E4intoEE14spec_from_iterCss03989lGqH_5uu_df.exit.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB2X_9ComponentINtNtB2g_7convert4IntoBR_E4intoEE11spec_extendCss03989lGqH_5uu_df.exit.i.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i
  %.promoted299.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB2X_9ComponentINtNtB2g_7convert4IntoBR_E4intoEE11spec_extendCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB2X_9ComponentINtNtB2g_7convert4IntoBR_E4intoEE11spec_extendCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i103.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB2X_9ComponentINtNtB2g_7convert4IntoBR_E4intoEE11spec_extendCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtBY_9ComponentINtNtBb_7convert4IntoNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4intoENtNtNtB9_6traits8iterator8Iterator4nextCss03989lGqH_5uu_df.exit.thread.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1189
  %i.aiq = icmp ult i64 %.promoted299.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.aiq)
  store i64 0, ptr %i.zc, align 8, !alias.scope !1188, !noalias !1209
  store i64 %.promoted299.i.i, ptr %i.zd, align 8, !alias.scope !1188, !noalias !1209
  store i64 %.sroa.0.0.i103.i.i, ptr %i.af, align 8, !alias.scope !1188, !noalias !1209
  store ptr %.sroa.5.0.i.i.i, ptr %i.ze, align 8, !alias.scope !1188, !noalias !1209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1185
  store i64 0, ptr %i.ac, align 8, !noalias !1185
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx.i.i, align 8, !noalias !1185
  store i64 0, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1185
  %i.air = load i8, ptr %i.zg, align 8, !range !14, !noalias !1210, !noundef !6
  %i.ais = trunc nuw i8 %i.air to i1
  br i1 %i.ais, label %._RNvYNCNKNvNvMNtNtCs2vKOLqTMYjT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCss03989lGqH_5uu_df.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECss03989lGqH_5uu_df.exit.i.i.i.i, !prof !10

._RNvYNCNKNvNvMNtNtCs2vKOLqTMYjT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCss03989lGqH_5uu_df.exit_crit_edge.i.i.i.i: ; preds = %_RNvXNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_12SpecFromIterB1k_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB3t_9ComponentINtNtB2M_7convert4IntoB1k_E4intoEE14spec_from_iterCss03989lGqH_5uu_df.exit.i.i
  %.pre.i.i.i.i = load i64, ptr %i.zf, align 8, !noalias !1211
  %.pre1.i.i.i.i = load i64, ptr %i.zh, align 8, !noalias !1211
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECss03989lGqH_5uu_df.exit.i.i

_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECss03989lGqH_5uu_df.exit.i.i.i.i: ; preds = %_RNvXNtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentEINtB2_12SpecFromIterB1k_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtCs2vKOLqTMYjT_3std4path10ComponentsNvYNtB3t_9ComponentINtNtB2M_7convert4IntoB1k_E4intoEE14spec_from_iterCss03989lGqH_5uu_df.exit.i.i
  %i.ait = call { i64, i64 } @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys6random5linux19hashmap_random_keys() #28, !noalias !1212 ; 2 uses
  %i.aiu = extractvalue { i64, i64 } %i.ait, 0
  %i.aiv = extractvalue { i64, i64 } %i.ait, 1    ; 2 uses
  store i64 %i.aiv, ptr %i.zh, align 8, !noalias !1213
  store i8 1, ptr %i.zg, align 8, !noalias !1213
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECss03989lGqH_5uu_df.exit.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECss03989lGqH_5uu_df.exit.i.i: ; preds = %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECss03989lGqH_5uu_df.exit.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs2vKOLqTMYjT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCss03989lGqH_5uu_df.exit_crit_edge.i.i.i.i
  %.pre-phi362.i.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs2vKOLqTMYjT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCss03989lGqH_5uu_df.exit_crit_edge.i.i.i.i ], [ %i.aiv, %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECss03989lGqH_5uu_df.exit.i.i.i.i ]
  %i.aiw = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCs2vKOLqTMYjT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCss03989lGqH_5uu_df.exit_crit_edge.i.i.i.i ], [ %i.aiu, %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECss03989lGqH_5uu_df.exit.i.i.i.i ] ; 2 uses
  %i.aix = add i64 %i.aiw, 1
  store i64 %i.aix, ptr %i.zf, align 8, !noalias !1211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) @28, i64 32, i1 false), !noalias !1185
  store i64 %i.aiw, ptr %.sroa.468.0..sroa_idx.i.i, align 8, !noalias !1185
  store i64 %.pre-phi362.i.i, ptr %.sroa.569.0..sroa_idx.i.i, align 8, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  %i.aiy = icmp eq i64 %.promoted299.i.i, 0
  br i1 %i.aiy, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.thread.i.i, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.lr.ph.i.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.i.i: ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.lr.ph.i.i, %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i
  %i.aiz = phi i64 [ %.promoted302.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.lr.ph.i.i ], [ %i.ajd, %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i ]
  %i.aja = phi i64 [ %.promoted289303.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.lr.ph.i.i ], [ %.sroa.0.0.i105.i.i, %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i ] ; 2 uses
  %i.ajb = add i64 %i.aja, 1                      ; 2 uses
  %.not.i104.i.i = icmp ult i64 %i.ajb, %i.aqr
  %i.ajc = select i1 %.not.i104.i.i, i64 0, i64 %i.aqr
  %.sroa.0.0.i105.i.i = sub nuw i64 %i.ajb, %i.ajc ; 7 uses
  %i.ajd = add i64 %i.aiz, -1                     ; 10 uses
  %i.aje = icmp ult i64 %i.ajd, %i.aqr
  call void @llvm.assume(i1 %i.aje)
  %i.ajf = getelementptr inbounds nuw [32 x i8], ptr %i.aqq, i64 %i.aja ; 2 uses
  %.sroa.0166.0.copyload167.i.i = load i64, ptr %i.ajf, align 8, !noalias !1214 ; 7 uses
  %.sroa.9.0..sroa_idx168.i.i = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx168.i.i, i64 24, i1 false), !noalias !1214
  %.not71.i.i = icmp eq i64 %.sroa.0166.0.copyload167.i.i, -1
  br i1 %.not71.i.i, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.thread.i.i, label %bb.iw

bb.iw:                                            ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1185
  store i64 %.sroa.0166.0.copyload167.i.i, ptr %i.aa, align 8, !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i, i64 24, i1 false), !noalias !1185
  switch i64 %.sroa.0166.0.copyload167.i.i, label %default.unreachable.i.i [
    i64 0, label %bb.ix
    i64 1, label %bb.iz
    i64 2, label %.loopexit241.i.i
    i64 3, label %bb.ja
    i64 4, label %bb.iz
  ]

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.thread.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECss03989lGqH_5uu_df.exit142.i.i, %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.i.i, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECss03989lGqH_5uu_df.exit.i.i
  %i.ajg = phi i64 [ %.sroa.0.0.i105.i.i, %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i ], [ 0, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECss03989lGqH_5uu_df.exit.i.i ], [ %.sroa.0.0.i105.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.i.i ], [ %.promoted289.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECss03989lGqH_5uu_df.exit142.i.i ]
  %i.ajh = phi i64 [ 0, %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i ], [ 0, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECss03989lGqH_5uu_df.exit.i.i ], [ %i.ajd, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECss03989lGqH_5uu_df.exit142.i.i ]
  store i64 %i.ajh, ptr %i.zd, align 8, !noalias !1185
  store i64 %i.ajg, ptr %i.zc, align 8, !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  %.sroa.14.0.copyload84.pre308.i = load ptr, ptr %.sroa.358.0..sroa_idx.i.i, align 8, !noalias !1215 ; 2 uses
  %.sroa.21.0.copyload86.pre310.i = load i64, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !1215 ; 2 uses
  br i1 %.sroa.0.0.i.i, label %bb.le, label %bb.kw

default.unreachable.i.i:                          ; preds = %bb.iw
  unreachable

bb.ix:                                            ; preds = %bb.iw
  %.sroa.0169.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1185 ; 2 uses
  %.sroa.4170.0.copyload.i.i = load ptr, ptr %.sroa.4170.0..sroa_idx.i.i, align 8, !noalias !1185, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.5171.0.copyload.i.i = load i64, ptr %.sroa.5171.0..sroa_idx.i.i, align 8, !noalias !1185
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4170.0.copyload.i.i, i64 noundef %.sroa.5171.0.copyload.i.i) #28, !noalias !1216
  %i.aji = icmp eq i64 %.sroa.0169.0.copyload.i.i, 0
  br i1 %i.aji, label %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4170.0.copyload.i.i, i64 noundef %.sroa.0169.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1216
  br label %_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i

bb.iz:                                            ; preds = %bb.iw, %bb.iw
  store i64 %i.ajd, ptr %i.zd, align 8, !noalias !1185
  store i64 %.sroa.0.0.i105.i.i, ptr %i.zc, align 8, !noalias !1185
  %i.ajj = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa) #28, !noalias !1186 ; 2 uses
  %i.ajk = extractvalue { ptr, i64 } %i.ajj, 0
  %i.ajl = extractvalue { ptr, i64 } %i.ajj, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajk, i64 noundef %i.ajl) #28, !noalias !1186
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iw
  store i64 %i.ajd, ptr %i.zd, align 8, !noalias !1185
  store i64 %.sroa.0.0.i105.i.i, ptr %i.zc, align 8, !noalias !1185
  %i.ajm = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #28, !noalias !1186 ; 0 uses
  br label %bb.jb

.loopexit241.i.i:                                 ; preds = %bb.iw
  store i64 %i.ajd, ptr %i.zd, align 8, !noalias !1185
  store i64 %.sroa.0.0.i105.i.i, ptr %i.zc, align 8, !noalias !1185
  br label %bb.jb

bb.jb:                                            ; preds = %.loopexit241.i.i, %bb.ja, %bb.iz
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1218
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.358.0..sroa_idx.i.i, align 8, !alias.scope !1217, !noalias !1219, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !alias.scope !1217, !noalias !1219, !noundef !6 ; 2 uses
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i) #28, !noalias !1220
  %i.ajn = load i64, ptr %i.i, align 8, !range !20, !noalias !1218, !noundef !6
  %i.ajo = icmp eq i64 %i.ajn, 2
  br i1 %i.ajo, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.ajp = load ptr, ptr %i.zs, align 8, !noalias !1218, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1218
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit123.thread.i.i

bb.jd:                                            ; preds = %bb.jb
  %.sroa.845.0.copyload.i.i.i = load i32, ptr %.sroa.845.0..sroa_idx.i.i.i, align 8, !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1218
  %i.ajq = and i32 %.sroa.845.0.copyload.i.i.i, 61440
  %i.ajr = icmp eq i32 %i.ajq, 40960
  br i1 %i.ajr, label %bb.je, label %.thread229.i.i

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1222
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs9read_link(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i) #28, !noalias !1223
  %i.ajs = load i64, ptr %i.j, align 8, !range !16, !noalias !1222, !noundef !6 ; 5 uses
  %i.ajt = icmp eq i64 %i.ajs, -1
  %i.aju = load ptr, ptr %i.zi, align 8, !noalias !1222 ; 4 uses
  br i1 %i.ajt, label %bb.jf, label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1222
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit123.thread.i.i

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.je
  %.sroa.538.0.copyload.i.i.i = load i64, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !1222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1222
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aju, i64 noundef %.sroa.538.0.copyload.i.i.i) #28, !noalias !1186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1185
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y) #28, !noalias !1186
  %i.ajv = load i8, ptr %i.x, align 8, !range !22, !noalias !1185, !noundef !6
  %.not74298.i.i = icmp eq i8 %i.ajv, -1
  br i1 %.not74298.i.i, label %._crit_edge.i.i, label %.lr.ph.i59.i

_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.iy, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  %i.ajw = icmp eq i64 %i.ajd, 0
  br i1 %i.ajw, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.thread.i.i, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCss03989lGqH_5uu_df.exit.i.i

.lr.ph.i59.i:                                     ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i
  %.val.i112353.i.i = phi i64 [ %.val.i112352.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %.val.i112355.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ]
  %i.ajx = phi ptr [ %i.akc, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %i.aqo, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ]
  %i.ajy = phi i64 [ %..i.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %.sroa.0.0.i105.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ]
  %i.ajz = phi i64 [ %i.ake, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %i.aqp, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ] ; 2 uses
  %i.aka = phi i64 [ %i.aki, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ], [ %i.ajd, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1185
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.w) #28, !noalias !1186
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.akb = icmp eq i64 %i.aka, %i.ajz
  br i1 %i.akb, label %bb.jg, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i

bb.jg:                                            ; preds = %.lr.ph.i59.i
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af) #27, !noalias !1225
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !1224, !noalias !1226 ; 2 uses
  %.pre5.i.i.i = load i64, ptr %i.zd, align 8, !alias.scope !1224, !noalias !1226
  %.pre.i65.i = load i64, ptr %i.zc, align 8, !alias.scope !1224, !noalias !1226
  %.pre349.i.i = load ptr, ptr %i.ze, align 8, !alias.scope !1224, !noalias !1226
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i: ; preds = %bb.jg, %.lr.ph.i59.i
  %.val.i112352.i.i = phi i64 [ %.pre.i.i.i, %bb.jg ], [ %.val.i112353.i.i, %.lr.ph.i59.i ] ; 2 uses
  %i.akc = phi ptr [ %.pre349.i.i, %bb.jg ], [ %i.ajx, %.lr.ph.i59.i ] ; 4 uses
  %i.akd = phi i64 [ %.pre.i65.i, %bb.jg ], [ %i.ajy, %.lr.ph.i59.i ]
  %i.ake = phi i64 [ %.pre.i.i.i, %bb.jg ], [ %i.ajz, %.lr.ph.i59.i ] ; 5 uses
  %i.akf = phi i64 [ %.pre5.i.i.i, %bb.jg ], [ %i.aka, %.lr.ph.i59.i ]
  %i.akg = add i64 %i.akd, -1                     ; 2 uses
  %i.akh = add i64 %i.akg, %i.ake                 ; 2 uses
  %.not.i109.i.i = icmp ult i64 %i.akh, %i.ake
  %..i.i.i = select i1 %.not.i109.i.i, i64 %i.akh, i64 %i.akg ; 3 uses
  store i64 %..i.i.i, ptr %i.zc, align 8, !alias.scope !1224, !noalias !1226
  %i.aki = add i64 %i.akf, 1                      ; 3 uses
  store i64 %i.aki, ptr %i.zd, align 8, !alias.scope !1224, !noalias !1226
  %i.akj = getelementptr inbounds nuw [32 x i8], ptr %i.akc, i64 %..i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1185
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y) #28, !noalias !1186
  %i.akk = load i8, ptr %i.x, align 8, !range !22, !noalias !1185, !noundef !6
  %.not74.i.i = icmp eq i8 %i.akk, -1
  br i1 %.not74.i.i, label %._crit_edge.i.i, label %.lr.ph.i59.i

._crit_edge.i.i:                                  ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i
  %.promoted359.i.i = phi i64 [ %i.ajd, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.aki, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ] ; 6 uses
  %.val.i112.i.i = phi i64 [ %.val.i112355.i.i, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %.val.i112352.i.i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ] ; 8 uses
  %i.akl = phi ptr [ %i.aqo, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.akc, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  %i.akm = phi i64 [ %i.aqp, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.ake, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  %i.akn = phi ptr [ %i.aqq, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.akc, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  %i.ako = phi i64 [ %i.aqr, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECss03989lGqH_5uu_df.exit.i.i ], [ %i.ake, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCss03989lGqH_5uu_df.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1185
  %i.akp = icmp slt i32 %.sroa.022.0.ph301.i.i, 20
  br i1 %i.akp, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5183.i.i)
  %i.akq = load ptr, ptr %.sroa.358.0..sroa_idx.i.i, align 8, !noalias !1185, !nonnull !6, !noundef !6
  %i.akr = load i64, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !1185, !noundef !6
  %i.aks = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akq, i64 noundef %i.akr) #28, !noalias !1186 ; 2 uses
  %i.akt = extractvalue { ptr, i64 } %i.aks, 0    ; 3 uses
  %.not75.i.i = icmp eq ptr %i.akt, null
  br i1 %.not75.i.i, label %bb.ju, label %bb.jj, !prof !11

bb.ji:                                            ; preds = %._crit_edge.i.i
  %i.aku = add nsw i32 %.sroa.022.0.ph301.i.i, 1
  br label %bb.ki

bb.jj:                                            ; preds = %bb.jh
  %i.akv = extractvalue { ptr, i64 } %i.aks, 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1185
  %i.akw = icmp samesign ugt i64 %i.akv, 255
  br i1 %i.akw, label %bb.jl, label %bb.jk, !prof !11

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1228
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %i.akt, i64 range(i64 0, -9223372036854775808) %i.akv, i1 false), !noalias !1229
  %i.akx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.akv
  store i8 0, ptr %i.akx, align 1, !noalias !1228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1228
  %i.aky = add nuw nsw i64 %i.akv, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.aky) #28, !noalias !1230
  %i.akz = load i64, ptr %i.f, align 8, !range !18, !noalias !1228, !noundef !6
  %i.ala = trunc nuw i64 %i.akz to i1
  br i1 %i.ala, label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.thread.i.i.i, label %bb.jm

bb.jl:                                            ; preds = %bb.jj
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akt, i64 noundef range(i64 0, -9223372036854775808) %i.akv) #28, !noalias !1231
  %.pre.i111.i.i = load i16, ptr %i.h, align 8, !range !1232, !noalias !1233
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.i.i.i

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECss03989lGqH_5uu_df.exit.thread.i.i.i: ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1228
  br label %.loopexit.i63.i

bb.jm:                                            ; preds = %bb.jk
  %i.alb = load ptr, ptr %i.zj, align 8, !noalias !1228, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1234
  %i.alc = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.alb, ptr nonnull %i.e, ptr nonnull inttoptr (i64 256 to ptr)) #28, !noalias !1235, !srcloc !17
  %i.ald = extractvalue { ptr, i32, i32 } %i.alc, 0 ; 2 uses
  %.not.i.i.i.i110.i.i = icmp eq ptr %i.ald, null
end_hunk_2
