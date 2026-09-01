Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish6screen18escape_code_length:bb.a

.lr.ph36.split.us.i:                              ; preds = %bb.d
  %i.g = add i64 %1, -2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 noundef %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @501, i64 noundef 2) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

bb.e:                                             ; preds = %.lr.ph36.split.us.i
  %i.l = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.m = add nuw i64 %i.l, 2
  %i.n = icmp ugt i64 %i.l, -3
  br i1 %i.n, label %.split.us.i, label %.split39.us.i

._crit_edge37.i:                                  ; preds = %bb.h, %.thread.i, %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @507) #38
  unreachable

.lr.ph36.split.i:                                 ; preds = %.thread.i, %bb.h
  %.sroa.02.034.i = phi i64 [ %i.ao, %bb.h ], [ 2, %.thread.i ] ; 5 uses
  %i.o = sub nuw i64 %1, %.sroa.02.034.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.034.i
  %i.q = tail call { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.p, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @501, i64 noundef 2) ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

bb.f:                                             ; preds = %.lr.ph36.split.i
  %i.t = extractvalue { i64, i64 } %i.q, 1        ; 2 uses
  %i.u = add i64 %i.t, %.sroa.02.034.i            ; 7 uses
  %i.v = icmp ult i64 %i.u, %.sroa.02.034.i
  br i1 %i.v, label %.split.us.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.w = add i64 %.sroa.02.034.i, -1
  %i.x = add i64 %i.w, %i.t
  %.first_iter.i = icmp ult i64 %i.x, %1
  %i.y = add i64 %i.u, -1                         ; 3 uses
  br i1 %.first_iter.i, label %.lr.ph.split.us, label %.lr.ph.preheader.i._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph.preheader.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !range !706, !alias.scope !3330, !noundef !13
  %.not = icmp eq i32 %i.aa, 27
  br i1 %.not, label %.lr.ph.i.us, label %.split39.us.i

.lr.ph46:                                         ; preds = %.lr.ph.i.us
  %i.ab = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.af, i32 1) ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %.split.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %.lr.ph46
  %i.ad = phi { i32, i1 } [ %i.ab, %.lr.ph46 ], [ { i32 1, i1 false }, %.lr.ph.split.us ]
  %i.ae = phi i64 [ %i.ag, %.lr.ph46 ], [ %i.y, %.lr.ph.split.us ]
  %i.af = extractvalue { i32, i1 } %i.ad, 0       ; 2 uses
  %i.ag = add i64 %i.ae, -1                       ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !range !706, !alias.scope !3330, !noundef !13
  %i.aj = icmp ne i32 %i.ai, 27
  %.not20.i.us = icmp eq i64 %i.ag, 0
  %or.cond.i.us = or i1 %i.aj, %.not20.i.us
  br i1 %or.cond.i.us, label %._crit_edge.i, label %.lr.ph46

.split.us.i:                                      ; preds = %bb.f, %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @502) #38
  unreachable

.split39.us.i:                                    ; preds = %.lr.ph.split.us, %._crit_edge.i, %bb.e
  %.us-phi.i = phi i64 [ %i.m, %bb.e ], [ %i.u, %._crit_edge.i ], [ %i.u, %.lr.ph.split.us ] ; 2 uses
  %i.ak = icmp ugt i64 %.us-phi.i, -3
  br i1 %i.ak, label %bb.k, label %bb.j

._crit_edge.i:                                    ; preds = %.lr.ph.i.us
  %i.al = and i32 %i.af, -2147483647
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.g, label %.split39.us.i

.lr.ph.preheader.i._crit_edge:                    ; preds = %.lr.ph.preheader.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @503) #38
  unreachable

.split.us:                                        ; preds = %.lr.ph46
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @504) #38
  unreachable

bb.g:                                             ; preds = %._crit_edge.i
  %i.an = icmp eq i64 %i.u, -1
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw i64 %i.u, 1
  %.not40.i = icmp ugt i64 %1, %i.u
  br i1 %.not40.i, label %.lr.ph36.split.i, label %._crit_edge37.i, !prof !3333

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @505) #38
  unreachable

bb.j:                                             ; preds = %.split39.us.i
  %i.ap = add nuw i64 %.us-phi.i, 2
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

bb.k:                                             ; preds = %.split39.us.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506) #38
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.aq = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 1)
  %i.ar = icmp eq i32 %i.aq, 93
  %i.as = icmp ugt i64 %1, 2                      ; 2 uses
  %or.cond.i.i.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.o
  %.sroa.01.013.i.i.i = phi i64 [ %i.az, %bb.o ], [ 2, %bb.l ] ; 3 uses
  %i.at = getelementptr [4 x i8], ptr %0, i64 %.sroa.01.013.i.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !range !706, !alias.scope !3334, !noundef !13
  switch i32 %i.au, label %bb.o [
    i32 7, label %bb.n
    i32 92, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr i8, ptr %i.at, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !range !706, !alias.scope !3334, !noundef !13
  %i.ax = icmp eq i32 %i.aw, 27
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %i.ay = add nuw i64 %.sroa.01.013.i.i.i, 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

bb.o:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %i.az = add nuw i64 %.sroa.01.013.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %bb.o, %bb.l
  %i.ba = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 1)
  %i.bb = icmp eq i32 %i.ba, 91
  br i1 %i.bb, label %bb.p, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit.thread

bb.p:                                             ; preds = %.loopexit
  %i.bc = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 2)
  %i.bd = icmp samesign ugt i32 %i.bc, 63
  br i1 %i.bd, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit: ; preds = %bb.p
  %i.be = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 2)
  %i.bf = icmp samesign ult i32 %i.be, 96
  br i1 %i.bf, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit.thread: ; preds = %bb.p, %.loopexit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit
  %i.bg = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 1)
  %i.bh = icmp eq i32 %i.bg, 91
  br i1 %i.bh, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit.thread
  br i1 %i.as, label %.lr.ph.i.i.i7, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

.lr.ph.i.i.i7:                                    ; preds = %.preheader.i.i.i, %bb.r
  %.sroa.01.09.i.i.i = phi i64 [ %i.bm, %bb.r ], [ 2, %.preheader.i.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.09.i.i.i
  %i.bj = load i32, ptr %i.bi, align 4, !range !706, !alias.scope !3341, !noundef !13 ; 2 uses
  %i.bk = icmp samesign ult i32 %i.bj, 128
  br i1 %i.bk, label %bb.q, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i7
  %i.bl = add nsw i32 %i.bj, -64
  %spec.select.i.i.i.i = icmp ult i32 %i.bl, 62
  %i.bm = add nuw i64 %.sroa.01.09.i.i.i, 1       ; 3 uses
  br i1 %spec.select.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %exitcond.not.i.i.i8 = icmp eq i64 %i.bm, %1
  br i1 %exitcond.not.i.i.i8, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit, label %.lr.ph.i.i.i7

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit.thread
  %i.bn = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 1)
  %i.bo = icmp samesign ugt i32 %i.bn, 63
  br i1 %i.bo, label %bb.t, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

bb.t:                                             ; preds = %bb.s
  %i.bp = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 1)
  %i.bq = icmp samesign ult i32 %i.bp, 96
  %spec.select.i.i.i11 = zext i1 %i.bq to i64
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths1_0EBY_.exit: ; preds = %.lr.ph.i.i.i7, %bb.r, %bb.q, %.lr.ph36.split.i, %bb.t, %bb.s, %bb.n, %bb.j, %.lr.ph36.split.us.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit, %.preheader.i.i.i, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ 2, %bb.t ], [ 2, %bb.s ], [ 3, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit ], [ 2, %.lr.ph36.split.us.i ], [ %i.ap, %bb.j ], [ 2, %.preheader.i.i.i ], [ 2, %.lr.ph36.split.i ], [ %i.ay, %bb.n ], [ %.sroa.01.09.i.i.i, %.lr.ph.i.i.i7 ], [ %1, %bb.r ], [ %i.bm, %bb.q ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %spec.select.i.i.i11, %bb.t ], [ 0, %bb.s ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvNtCs8frGy5WneL6_4fish6screen18escape_code_lengths_0EBY_.exit ], [ 1, %.lr.ph36.split.us.i ], [ 1, %bb.j ], [ 1, %.preheader.i.i.i ], [ 1, %.lr.ph36.split.i ], [ 1, %bb.n ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %.lr.ph.i.i.i7 ]
  %i.br = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.bs = insertvalue { i64, i64 } %i.br, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.bs
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCs8frGy5WneL6_4fish6screen18line_shared_prefix(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 2 uses
  %.sroa.026 = alloca ptr, align 8                ; 2 uses
  store ptr %0, ptr %.sroa.026, align 8
  store ptr %1, ptr %.sroa.0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 2 uses
  %i.f = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.b) ; 3 uses
  %.not81 = icmp eq i64 %..i, 0
  br i1 %.not81, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  br label %bb.b

.thread:                                          ; preds = %bb.e, %bb.l, %bb.a, %bb.n, %bb.g, %bb.c
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.n ], [ %.sroa.0.278, %bb.l ], [ %.sroa.0.077, %bb.g ], [ 0, %bb.c ], [ %..i, %bb.e ]
  ret i64 %.sroa.0.1

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.077 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.e ] ; 7 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.077 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !range !706, !noundef !13 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.077 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !range !706, !noundef !13
  %.not = icmp eq i32 %i.m, %i.p
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.not48 = icmp eq i64 %.sroa.0.077, 0
  br i1 %.not48, label %.thread, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.t = load i32, ptr %i.r, align 4
  %i.u = load i32, ptr %i.s, align 4
  %.not144 = icmp eq i32 %i.t, %i.u
  br i1 %.not144, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.v = add nuw nsw i64 %.sroa.0.077, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %..i
  br i1 %exitcond.not, label %.thread, label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.w = tail call { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef range(i32 0, 1114112) %i.m) ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = extractvalue { i64, i64 } %i.w, 1
  %i.aa = icmp ne i64 %i.z, 0
  %.sroa.0.0.i.not = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %.sroa.0.0.i.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %i.q, align 8, !range !706, !noundef !13
  %i.ac = tail call { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef range(i32 0, 1114112) %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = extractvalue { i64, i64 } %i.ac, 1
  %i.ag = icmp ne i64 %i.af, 0
  %.sroa.0.0.i50.not = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %.sroa.0.0.i50.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.019.0 = phi ptr [ %.sroa.026, %bb.f ], [ %.sroa.0, %bb.g ] ; 3 uses
  %.not82 = icmp eq i64 %.sroa.0.077, 1
  br i1 %.not82, label %._crit_edge, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.h, %bb.p
  %.sroa.0.278 = phi i64 [ %i.ah, %bb.p ], [ %.sroa.0.077, %bb.h ] ; 5 uses
  %i.ah = add i64 %.sroa.0.278, -1                ; 5 uses
  %i.ai = load ptr, ptr %.sroa.019.0, align 8, !nonnull !13, !align !418, !noundef !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !13 ; 2 uses
  %i.al = icmp ult i64 %i.ah, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph79
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !13, !noundef !13
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ah
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !range !706, !noundef !13
  %i.ar = tail call { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef range(i32 0, 1114112) %i.aq) ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = extractvalue { i64, i64 } %i.ar, 1
  %i.av = icmp ne i64 %i.au, 0
  %.sroa.0.0.i52.not = select i1 %i.at, i1 %i.av, i1 false
  br i1 %.sroa.0.0.i52.not, label %bb.k, label %bb.p

bb.j:                                             ; preds = %.lr.ph79
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #38
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %.sroa.019.0, align 8, !nonnull !13, !align !418, !noundef !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !13 ; 2 uses
  %i.az = icmp ult i64 %.sroa.0.278, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !13, !noundef !13
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.0.278
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !range !706, !noundef !13
  %i.bf = tail call { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef range(i32 0, 1114112) %i.be) ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = extractvalue { i64, i64 } %i.bf, 1
  %i.bj = icmp ne i64 %i.bi, 0
  %.sroa.0.0.i54.not = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %.sroa.0.0.i54.not, label %.thread, label %bb.p

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.278, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #38
  unreachable

._crit_edge:                                      ; preds = %bb.p, %bb.h
  %i.bk = load ptr, ptr %.sroa.019.0, align 8, !nonnull !13, !align !418, !noundef !13 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !13 ; 2 uses
  %i.bn = icmp ugt i64 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !13, !noundef !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !range !706, !noundef !13
  %i.bs = tail call { i64, i64 } @_RNvCsiolMeYWJ97s_13fish_fallback12fish_wcwidth(i32 noundef range(i32 0, 1114112) %i.br) ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = extractvalue { i64, i64 } %i.bs, 1
  %i.bw = icmp ne i64 %i.bv, 0
  %.sroa.0.0.i56.not = select i1 %i.bu, i1 %i.bw, i1 false
  %spec.select = zext i1 %.sroa.0.0.i56.not to i64
  br label %.thread

bb.o:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #38
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.l
  %i.bx = icmp ugt i64 %i.ah, 1
  br i1 %i.bx, label %.lr.ph79, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i32 32, 1114112) i32 @_RNvNtCs8frGy5WneL6_4fish6screen18rendered_character(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 32
  %i.b = or disjoint i32 %0, 9216
  %spec.select = select i1 %i.a, i32 %i.b, i32 %0
  ret i32 %spec.select
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish6screen19mtime_stdout_stderr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [176 x i8], align 8               ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 4 uses
  %i.e = alloca [176 x i8], align 8               ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [176 x i8], align 8               ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvNtCs8frGy5WneL6_4fish5wutil5fstatlEB4_(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.g, i32 noundef 1)
  %i.i = load i64, ptr %i.g, align 8, !range !573, !noundef !13
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %i.g, i64 176, i1 false)
  call void @_RNvMsm_NtCsaL1QbXo9JQH_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !1286 ; 2 uses
  %.pre10 = load i64, ptr %i.h, align 8           ; 2 uses
  %i.m = inttoptr i64 %.pre10 to ptr
end_hunk_0
