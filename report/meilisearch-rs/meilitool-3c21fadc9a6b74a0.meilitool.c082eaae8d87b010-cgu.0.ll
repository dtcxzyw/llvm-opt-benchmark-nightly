Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19732
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE":bb.a
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ed, i64 noundef %i.ee), !noalias !73652, !inline_history !16
  %i.ef = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.1.i.i.i.i = icmp eq i64 %i.ef, 3
  br i1 %.not.i.1.i.i.i.i, label %bb.ar, label %bb.bi

bb.ar:                                            ; preds = %bb.aq
  %i.eg = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.eh = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eg, i64 noundef %i.eh), !noalias !73652, !inline_history !16
  %i.ei = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.2.i.i.i.i = icmp eq i64 %i.ei, 3
  br i1 %.not.i.2.i.i.i.i, label %bb.as, label %bb.bi

bb.as:                                            ; preds = %bb.ar
  %i.ej = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.ek = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ej, i64 noundef %i.ek), !noalias !73652, !inline_history !16
  %i.el = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.3.i.i.i.i = icmp eq i64 %i.el, 3
  br i1 %.not.i.3.i.i.i.i, label %bb.at, label %bb.bi

bb.at:                                            ; preds = %bb.as
  %i.em = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.en = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.em, i64 noundef %i.en), !noalias !73652, !inline_history !16
  %i.eo = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.4.i.i.i.i = icmp eq i64 %i.eo, 3
  br i1 %.not.i.4.i.i.i.i, label %bb.au, label %bb.bi

bb.au:                                            ; preds = %bb.at
  %i.ep = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.eq = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 120), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ep, i64 noundef %i.eq), !noalias !73652, !inline_history !16
  %i.er = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.5.i.i.i.i = icmp eq i64 %i.er, 3
  br i1 %.not.i.5.i.i.i.i, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %bb.au
  %i.es = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.et = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 144), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.es, i64 noundef %i.et), !noalias !73652, !inline_history !16
  %i.eu = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.6.i.i.i.i = icmp eq i64 %i.eu, 3
  br i1 %.not.i.6.i.i.i.i, label %bb.aw, label %bb.bi

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.ew = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 168), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ev, i64 noundef %i.ew), !noalias !73652, !inline_history !16
  %i.ex = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.7.i.i.i.i = icmp eq i64 %i.ex, 3
  br i1 %.not.i.7.i.i.i.i, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.ey = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.ez = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 192), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ey, i64 noundef %i.ez), !noalias !73652, !inline_history !16
  %i.fa = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.8.i.i.i.i = icmp eq i64 %i.fa, 3
  br i1 %.not.i.8.i.i.i.i, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.fc = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 216), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fb, i64 noundef %i.fc), !noalias !73652, !inline_history !16
  %i.fd = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.9.i.i.i.i = icmp eq i64 %i.fd, 3
  br i1 %.not.i.9.i.i.i.i, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.fe = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.ff = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 240), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff), !noalias !73652, !inline_history !16
  %i.fg = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.10.i.i.i.i = icmp eq i64 %i.fg, 3
  br i1 %.not.i.10.i.i.i.i, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.fh = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.fi = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 264), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fh, i64 noundef %i.fi), !noalias !73652, !inline_history !16
  %i.fj = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.11.i.i.i.i = icmp eq i64 %i.fj, 3
  br i1 %.not.i.11.i.i.i.i, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fk = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.fl = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 288), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fk, i64 noundef %i.fl), !noalias !73652, !inline_history !16
  %i.fm = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.12.i.i.i.i = icmp eq i64 %i.fm, 3
  br i1 %.not.i.12.i.i.i.i, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.fn = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.fo = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 312), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fo), !noalias !73652, !inline_history !16
  %i.fp = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.13.i.i.i.i = icmp eq i64 %i.fp, 3
  br i1 %.not.i.13.i.i.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.fq = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.fr = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 336), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fq, i64 noundef %i.fr), !noalias !73652, !inline_history !16
  %i.fs = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.14.i.i.i.i = icmp eq i64 %i.fs, 3
  br i1 %.not.i.14.i.i.i.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.ft = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.fu = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 360), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ft, i64 noundef %i.fu), !noalias !73652, !inline_history !16
  %i.fv = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.15.i.i.i.i = icmp eq i64 %i.fv, 3
  br i1 %.not.i.15.i.i.i.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fw = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.fx = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 384), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fw, i64 noundef %i.fx), !noalias !73652, !inline_history !16
  %i.fy = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.16.i.i.i.i = icmp eq i64 %i.fy, 3
  br i1 %.not.i.16.i.i.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.ga = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 408), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fz, i64 noundef %i.ga), !noalias !73652, !inline_history !16
  %i.gb = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.17.i.i.i.i = icmp eq i64 %i.gb, 3
  br i1 %.not.i.17.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gc = load ptr, ptr %i.ea, align 8, !noalias !73649, !nonnull !24, !align !34, !noundef !24
  %i.gd = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !73649
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 432), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gc, i64 noundef %i.gd), !noalias !73652, !inline_history !16
  %i.ge = load i64, ptr %i.c, align 8, !range !62, !noalias !73649, !noundef !24 ; 2 uses
  %.not.i.18.i.i.i.i = icmp eq i64 %i.ge, 3
  br i1 %.not.i.18.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.lcssa.i.i.i.i = phi i64 [ %i.ec, %bb.ap ], [ %i.ef, %bb.aq ], [ %i.ei, %bb.ar ], [ %i.el, %bb.as ], [ %i.eo, %bb.at ], [ %i.er, %bb.au ], [ %i.eu, %bb.av ], [ %i.ex, %bb.aw ], [ %i.fa, %bb.ax ], [ %i.fd, %bb.ay ], [ %i.fg, %bb.az ], [ %i.fj, %bb.ba ], [ %i.fm, %bb.bb ], [ %i.fp, %bb.bc ], [ %i.fs, %bb.bd ], [ %i.fv, %bb.be ], [ %i.fy, %bb.bf ], [ %i.gb, %bb.bg ], [ %i.ge, %bb.bh ]
  %.sroa.515.0.copyload.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !73649
  %.sroa.616.0.copyload.i.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !73649 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73649
  %i.gf = ptrtoint ptr %.sroa.515.0.copyload.i.i.i.i.i to i64 ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i.i = trunc i64 %i.gf to i32
  %.sroa.11.sroa.7.0.extract.shift.i.i = lshr i64 %i.gf, 32
  %.sroa.11.sroa.7.0.extract.trunc.i.i = trunc nuw i64 %.sroa.11.sroa.7.0.extract.shift.i.i to i32
  %.sroa.14.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.616.0.copyload.i.i.i.i.i to i32
  %.sroa.14.sroa.7.0.extract.shift.i.i = lshr i64 %.sroa.616.0.copyload.i.i.i.i.i, 32
  %.sroa.14.sroa.7.0.extract.trunc.i.i = trunc i64 %.sroa.14.sroa.7.0.extract.shift.i.i to i16
  %.sroa.14.sroa.8.0.extract.shift.i.i = lshr i64 %.sroa.616.0.copyload.i.i.i.i.i, 48
  %.sroa.14.sroa.8.0.extract.trunc.i.i = trunc nuw i64 %.sroa.14.sroa.8.0.extract.shift.i.i to i16
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread76.i

bb.bj:                                            ; preds = %bb.bh
  %i.gg = load i64, ptr %i.eb, align 8, !noalias !73649, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !73649
  %.sroa.0.0.copyload2.i22.i.i = load i64, ptr %i.d, align 16, !noalias !73653 ; 3 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload2.i23.i.i = load i64, ptr %.sroa_idx.i.i, align 8, !noalias !73653 ; 3 uses
  %.sroa.7.0.copyload6.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx3.i.i.i, align 16, !noalias !73650 ; 7 uses
  %.sroa.8.0.copyload10.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx7.i.i.i, align 4, !noalias !73650 ; 7 uses
  %.sroa.9.0.copyload14.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 8, !noalias !73650 ; 7 uses
  %.sroa.10.0.copyload18.i.i.i = load i16, ptr %.sroa.10.0..sroa_idx15.i.i.i, align 4, !noalias !73650 ; 3 uses
  %.sroa.11.0.copyload22.i.i.i = load i16, ptr %.sroa.11.0..sroa_idx19.i.i.i, align 2, !noalias !73650 ; 3 uses
  %.sroa.12.0.copyload26.i.i.i = load i16, ptr %.sroa.12.0..sroa_idx23.i.i.i, align 16, !noalias !73650 ; 4 uses
  %.sroa.13.0.copyload30.i.i.i = load i8, ptr %.sroa.13.0..sroa_idx27.i.i.i, align 2, !noalias !73650 ; 3 uses
  %.sroa.14.0.copyload34.i.i.i = load i8, ptr %.sroa.14.0..sroa_idx31.i.i.i, align 1, !noalias !73650 ; 3 uses
  %.sroa.15.0.copyload38.i.i.i = load i8, ptr %.sroa.15.0..sroa_idx35.i.i.i, align 4, !noalias !73650 ; 3 uses
  %.sroa.16.0.copyload42.i.i.i = load i8, ptr %.sroa.16.0..sroa_idx39.i.i.i, align 1, !noalias !73650 ; 3 uses
  %.sroa.17.0.copyload46.i.i.i = load i8, ptr %.sroa.17.0..sroa_idx43.i.i.i, align 2, !noalias !73650 ; 3 uses
  %.sroa.18.0.copyload50.i.i.i = load i8, ptr %.sroa.18.0..sroa_idx47.i.i.i, align 1, !noalias !73650 ; 5 uses
  %.sroa.19.0.copyload54.i.i.i = load i8, ptr %.sroa.19.0..sroa_idx51.i.i.i, align 8, !noalias !73650 ; 5 uses
  %.sroa.20.0.copyload58.i.i.i = load i8, ptr %.sroa.20.0..sroa_idx55.i.i.i, align 1, !noalias !73650 ; 6 uses
  %.sroa.21.0.copyload62.i.i.i = load i8, ptr %.sroa.21.0..sroa_idx59.i.i.i, align 2, !noalias !73650 ; 4 uses
  %.sroa.22.0.copyload66.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx63.i.i.i, align 1, !noalias !73650 ; 5 uses
  %.sroa.23.0.copyload70.i.i.i = load i8, ptr %.sroa.23.0..sroa_idx67.i.i.i, align 4, !noalias !73650 ; 9 uses
  %.sroa.24.0.copyload74.i.i.i = load i8, ptr %.sroa.24.0..sroa_idx71.i.i.i, align 1, !noalias !73650 ; 5 uses
  %.sroa.25.0.copyload78.i.i.i = load i8, ptr %.sroa.25.0..sroa_idx75.i.i.i, align 2, !noalias !73650 ; 5 uses
  %.sroa.26.0.copyload82.i.i.i = load i8, ptr %.sroa.26.0..sroa_idx79.i.i.i, align 1, !noalias !73650 ; 5 uses
  %.sroa.27.0.copyload86.i.i.i = load i8, ptr %.sroa.27.0..sroa_idx83.i.i.i, align 16, !noalias !73650 ; 5 uses
  %.sroa.28.0.copyload90.i.i.i = load i8, ptr %.sroa.28.0..sroa_idx87.i.i.i, align 1, !noalias !73650 ; 2 uses
  %.sroa.29.0.copyload94.i.i.i = load i8, ptr %.sroa.29.0..sroa_idx91.i.i.i, align 2, !noalias !73650
  %.sroa.30.0.copyload98.i.i.i = load i8, ptr %.sroa.30.0..sroa_idx95.i.i.i, align 1, !noalias !73650
  %.sroa.31.0.copyload102.i.i.i = load i8, ptr %.sroa.31.0..sroa_idx99.i.i.i, align 4, !noalias !73650
  %.sroa.32.0.copyload106.i.i.i = load i8, ptr %.sroa.32.0..sroa_idx103.i.i.i, align 1, !noalias !73650 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !73649
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h7f50edd0d2f36659E.exit.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread76.i

_ZN4time7parsing8parsable6sealed6Sealed5parse17h7f50edd0d2f36659E.exit.i.i: ; preds = %bb.bj
  %i.gi = icmp eq i8 %.sroa.32.0.copyload106.i.i.i, 2
  br i1 %i.gi, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h7f50edd0d2f36659E.exit.i.i
  %.sroa.011.sroa.0.0.insert.ext.i.i = zext i64 %.sroa.0.0.copyload2.i22.i.i to i128
  %.sroa.011.sroa.0.8.insert.ext.i.i = zext i64 %.sroa.0.0.copyload2.i23.i.i to i128
  %.sroa.011.sroa.0.8.insert.shift.i.i = shl nuw i128 %.sroa.011.sroa.0.8.insert.ext.i.i, 64 ; 2 uses
  %.sroa.011.sroa.0.8.insert.insert.i.i = or disjoint i128 %.sroa.011.sroa.0.8.insert.shift.i.i, %.sroa.011.sroa.0.0.insert.ext.i.i ; 4 uses
  %i.gj = icmp eq i128 %.sroa.011.sroa.0.8.insert.insert.i.i, -170141183460469231731687303715884105728
  br i1 %i.gj, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gk = icmp sgt i128 %.sroa.011.sroa.0.8.insert.insert.i.i, -377705116800000000001
  call void @llvm.assume(i1 %i.gk), !noalias !73592
  %i.gl = icmp slt i128 %.sroa.011.sroa.0.8.insert.insert.i.i, 253402300800000000000
  call void @llvm.assume(i1 %i.gl), !noalias !73592
  %.sroa.011.sroa.0.8.insert.insert.i.i.frozen = freeze i128 %.sroa.011.sroa.0.8.insert.insert.i.i ; 2 uses
  %i.gm = sdiv i128 %.sroa.011.sroa.0.8.insert.insert.i.i.frozen, 1000000000 ; 2 uses
  %i.gn = mul i128 %i.gm, 1000000000
  %.decomposed = sub i128 %.sroa.011.sroa.0.8.insert.insert.i.i.frozen, %i.gn ; 4 uses
  %i.go = icmp eq i128 %.decomposed, 0
  %i.gp = ashr i128 %.sroa.011.sroa.0.8.insert.shift.i.i, 127
  %i.gq = select i1 %i.go, i128 0, i128 %i.gp
  %.sroa.0.0.off0.v.i.i.i.i = add nsw i128 %i.gq, %i.gm
  %.sroa.0.0.off0.i.i.i.i = trunc nsw i128 %.sroa.0.0.off0.v.i.i.i.i to i64 ; 4 uses
  %or.cond.i.i.i.i.i = icmp slt i64 %.sroa.0.0.off0.i.i.i.i, -377705116800
  br i1 %or.cond.i.i.i.i.i, label %bb.bn, label %bb.bo, !prof !66

bb.bm:                                            ; preds = %bb.bk
  %i.gr = trunc nuw i8 %.sroa.32.0.copyload106.i.i.i to i1
  br i1 %i.gr, label %2, label %6

bb.bn:                                            ; preds = %bb.bl
  %.sroa.01.sroa.12.0.extract.shift12.i.i = lshr i64 ptrtoint (ptr @1148 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.bo:                                            ; preds = %bb.bl
  %i.gs = sdiv i64 %.sroa.0.0.off0.i.i.i.i, 86400
  %i.gt = srem i64 %.sroa.0.0.off0.i.i.i.i, 86400 ; 4 uses
  %i.gu = icmp eq i64 %i.gt, 0
  %i.gv = ashr i64 %.sroa.0.0.off0.i.i.i.i, 63
  %i.gw = select i1 %i.gu, i64 0, i64 %i.gv
  %.sroa.03.0.i.i.i.i.i = add nsw i64 %i.gw, %i.gs
  %i.gx = trunc nsw i64 %.sroa.03.0.i.i.i.i.i to i32
  %i.gy = add nsw i32 %i.gx, 869850581            ; 2 uses
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = mul nuw nsw i64 %i.gz, 3853261555       ; 2 uses
  %i.hb = lshr i64 %i.ha, 15
  %i.hc = lshr i64 %i.ha, 47
  %i.hd = trunc nuw nsw i64 %i.hc to i32          ; 3 uses
  %i.he = trunc i64 %i.hb to i32
  %i.hf = icmp ugt i32 %i.he, 42920275
  %i.hg = and i32 %i.hd, 3
  %i.hh = icmp eq i32 %i.hg, 0
  %.sroa.0.0.i.i.i.i.i.i = or i1 %i.hf, %i.hh     ; 2 uses
  %i.hi = lshr i32 %i.hd, 2
  %i.hj = add nuw nsw i32 %i.gy, %i.hd
  %i.hk = sub nuw nsw i32 %i.hj, %i.hi
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = mul nuw nsw i64 %i.hl, 3010298776       ; 2 uses
  %i.hn = lshr i64 %i.hm, 8
  %i.ho = lshr i64 %i.hm, 40
  %i.hp = trunc nuw nsw i64 %i.ho to i32          ; 2 uses
  %i.hq = and i64 %i.hn, 4294967295
  %i.hr = mul nuw nsw i64 %i.hq, 1461
  %i.hs = lshr i64 %i.hr, 34
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = zext i1 %.sroa.0.0.i.i.i.i.i.i to i32
  %i.hv = add nuw nsw i32 %i.ht, %i.hu
  %i.hw = and i32 %i.hp, 3
  %i.hx = icmp eq i32 %i.hw, 0
  %i.hy = and i1 %.sroa.0.0.i.i.i.i.i.i, %i.hx
  %i.hz = shl nuw i32 %i.hp, 10
  %i.ia = add nsw i32 %i.hz, 1858256896
  %i.ib = select i1 %i.hy, i32 512, i32 0
  %i.ic = or disjoint i32 %i.ib, %i.ia
  %i.id = or i32 %i.ic, %i.hv                     ; 2 uses
  %i.ie = icmp ne i32 %i.id, 0
  call void @llvm.assume(i1 %i.ie), !noalias !73592
  %i.if = icmp slt i64 %i.gt, 0
  %i.ig = add nsw i64 %i.gt, 86400
  %spec.select.i.i.i.i.i.i = select i1 %i.if, i64 %i.ig, i64 %i.gt ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %spec.select.i.i.i.i.i.i to i32 ; 3 uses
  %i.ih = udiv i32 %.lhs.trunc.i.i.i.i.i, 3600
  %i.ii = urem i32 %.lhs.trunc.i.i.i.i.i, 3600
  %.lhs.trunc20.i.i.i.i.i = trunc nuw nsw i32 %i.ii to i16
  %i.ij = udiv i16 %.lhs.trunc20.i.i.i.i.i, 60
  %i.ik = urem i32 %.lhs.trunc.i.i.i.i.i, 60
  %i.il = icmp ult i64 %spec.select.i.i.i.i.i.i, 86400
  call void @llvm.assume(i1 %i.il), !noalias !73592
  %i.im = icmp slt i128 %.decomposed, 0
  %i.in = add nsw i128 %.decomposed, 1000000000
  %spec.select.i.i.i.i.i = select i1 %i.im, i128 %i.in, i128 %.decomposed
  %i.io = trunc nuw nsw i128 %spec.select.i.i.i.i.i to i32 ; 2 uses
  %i.ip = icmp samesign ult i32 %i.io, 1000000000
  call void @llvm.assume(i1 %i.ip), !noalias !73592
  %i.iq = shl nuw nsw i32 %i.ih, 16
  %i.ir = shl nuw nsw i16 %i.ij, 8
  %i.is = zext nneg i16 %i.ir to i32
  %.sroa.3.0.insert.insert.i.i.i155.i.i = or disjoint i32 %i.iq, %i.is
  %.sroa.2.0.insert.insert.i.i.i156.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i.i155.i.i, %i.ik
  %i.it = icmp eq i32 %.sroa.9.0.copyload14.i.i.i, -1
  %.sroa.6255.0.i.i.i = zext i32 %i.id to i64
  %.sroa.01.sroa.0.0.extract.trunc.i.i = select i1 %i.it, i32 %i.io, i32 %.sroa.9.0.copyload14.i.i.i
  %i.iu = zext nneg i32 %.sroa.2.0.insert.insert.i.i.i156.i.i to i64
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread.i

2:                                                ; preds = %bb.bm
  %cond.i.i.i = icmp eq i8 %.sroa.22.0.copyload66.i.i.i, -1
  br i1 %cond.i.i.i, label %6, label %3

3:                                                ; preds = %2
  %4 = icmp ult i8 %.sroa.22.0.copyload66.i.i.i, 61
  call void @llvm.assume(i1 %4), !noalias !73592
  %5 = icmp eq i8 %.sroa.22.0.copyload66.i.i.i, 60
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %3, %2, %bb.bm
  %.sroa.1957.0.i.i = phi i8 [ -1, %2 ], [ 59, %7 ], [ %.sroa.22.0.copyload66.i.i.i, %3 ], [ %.sroa.22.0.copyload66.i.i.i, %bb.bm ] ; 6 uses
  %.sroa.4.0.i.i = phi i32 [ %.sroa.9.0.copyload14.i.i.i, %2 ], [ 999999999, %7 ], [ %.sroa.9.0.copyload14.i.i.i, %3 ], [ %.sroa.9.0.copyload14.i.i.i, %bb.bm ] ; 4 uses
  %.sroa.023.0.i.i.i = phi i1 [ false, %2 ], [ true, %7 ], [ false, %3 ], [ false, %bb.bm ]
  %.not294.i.i.i.i = icmp ne i32 %.sroa.7.0.copyload6.i.i.i, -2147483648 ; 2 uses
  br i1 %.not294.i.i.i.i, label %bb.bp, label %.thread.i.i.i.i

bb.bp:                                            ; preds = %6
  %i.iv = icmp sgt i32 %.sroa.7.0.copyload6.i.i.i, -10000
  call void @llvm.assume(i1 %i.iv), !noalias !73592
  %i.iw = icmp slt i32 %.sroa.7.0.copyload6.i.i.i, 10000
  call void @llvm.assume(i1 %i.iw), !noalias !73592
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bp, %6
  %.not295.i.i.i.i = icmp eq i16 %.sroa.10.0.copyload18.i.i.i, -32768
  %spec.select.i.i.i = select i1 %.not295.i.i.i.i, i8 2, i8 %.sroa.30.0.copyload98.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.13.0.copyload30.i.i.i, -1
  br i1 %.not.i.i.i.i, label %.thread391.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.thread.i.i.i.i
  %i.ix = icmp ult i8 %.sroa.13.0.copyload30.i.i.i, 100
  call void @llvm.assume(i1 %i.ix), !noalias !73592
  %.not296.i.i.i.i = icmp eq i8 %spec.select.i.i.i, 2
  %or.cond325.i.i.i.i = or i1 %.not294.i.i.i.i, %.not296.i.i.i.i
  br i1 %or.cond325.i.i.i.i, label %.thread391.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.iy = trunc nuw i8 %spec.select.i.i.i to i1
  %i.iz = sext i16 %.sroa.10.0.copyload18.i.i.i to i32
  %i.ja = mul nsw i32 %i.iz, 100
  %i.jb = zext nneg i8 %.sroa.13.0.copyload30.i.i.i to i32 ; 2 uses
  %i.jc = sub nsw i32 0, %i.jb
  %.sroa.07.0.p.i.i.i.i = select i1 %i.iy, i32 %i.jc, i32 %i.jb
  %.sroa.07.0.i.i.i.i = add nsw i32 %.sroa.07.0.p.i.i.i.i, %i.ja ; 2 uses
  %i.jd = add nsw i32 %.sroa.07.0.i.i.i.i, 9999
  %or.cond.i.i.i.i2 = icmp ult i32 %i.jd, 19999
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i2, i32 %.sroa.07.0.i.i.i.i, i32 -2147483648
  br label %.thread391.i.i.i.i

.thread391.i.i.i.i:                               ; preds = %bb.br, %bb.bq, %.thread.i.i.i.i
  %i.je = phi i32 [ %.sroa.7.0.copyload6.i.i.i, %.thread.i.i.i.i ], [ %.sroa.7.0.copyload6.i.i.i, %bb.bq ], [ %spec.select.i.i.i.i, %bb.br ] ; 18 uses
  %.not298.i.i.i.i = icmp ne i32 %.sroa.8.0.copyload10.i.i.i, -2147483648 ; 2 uses
  br i1 %.not298.i.i.i.i, label %bb.bs, label %.thread397.i.i.i.i

bb.bs:                                            ; preds = %.thread391.i.i.i.i
  %i.jf = icmp sgt i32 %.sroa.8.0.copyload10.i.i.i, -10000
  call void @llvm.assume(i1 %i.jf), !noalias !73592
  %i.jg = icmp slt i32 %.sroa.8.0.copyload10.i.i.i, 10000
  call void @llvm.assume(i1 %i.jg), !noalias !73592
  br label %.thread397.i.i.i.i

.thread397.i.i.i.i:                               ; preds = %bb.bs, %.thread391.i.i.i.i
  %.not299.i.i.i.i = icmp eq i16 %.sroa.11.0.copyload22.i.i.i, -32768
  %spec.select368.i.i.i = select i1 %.not299.i.i.i.i, i8 2, i8 %.sroa.31.0.copyload102.i.i.i ; 2 uses
  %.not297.i.i.i.i = icmp eq i8 %.sroa.14.0.copyload34.i.i.i, -1
  br i1 %.not297.i.i.i.i, label %.thread398.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.thread397.i.i.i.i
  %i.jh = icmp ult i8 %.sroa.14.0.copyload34.i.i.i, 100
  call void @llvm.assume(i1 %i.jh), !noalias !73592
  %.not300.i.i.i.i = icmp eq i8 %spec.select368.i.i.i, 2
  %or.cond328.i.i.i.i = or i1 %.not298.i.i.i.i, %.not300.i.i.i.i
  br i1 %or.cond328.i.i.i.i, label %.thread398.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ji = trunc nuw i8 %spec.select368.i.i.i to i1
  %i.jj = sext i16 %.sroa.11.0.copyload22.i.i.i to i32
  %i.jk = mul nsw i32 %i.jj, 100
  %i.jl = zext nneg i8 %.sroa.14.0.copyload34.i.i.i to i32 ; 2 uses
  %i.jm = sub nsw i32 0, %i.jl
  %.sroa.019.0.p.i.i.i.i = select i1 %i.ji, i32 %i.jm, i32 %i.jl
  %.sroa.019.0.i.i.i.i = add nsw i32 %.sroa.019.0.p.i.i.i.i, %i.jk ; 2 uses
  %i.jn = add nsw i32 %.sroa.019.0.i.i.i.i, 9999
  %or.cond1.i.i.i.i = icmp ult i32 %i.jn, 19999
  %spec.select339.i.i.i.i = select i1 %or.cond1.i.i.i.i, i32 %.sroa.019.0.i.i.i.i, i32 -2147483648
  br label %.thread398.i.i.i.i

.thread398.i.i.i.i:                               ; preds = %bb.bu, %bb.bt, %.thread397.i.i.i.i
  %i.jo = phi i32 [ %.sroa.8.0.copyload10.i.i.i, %.thread397.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i, %bb.bt ], [ %spec.select339.i.i.i.i, %bb.bu ] ; 4 uses
  %.not301.i.i.i.i = icmp eq i32 %i.je, -2147483648 ; 6 uses
  br i1 %.not301.i.i.i.i, label %.critedge.i.i.i.i, label %.thread511.i.i.i.i

.thread511.i.i.i.i:                               ; preds = %.thread398.i.i.i.i
  %i.jp = icmp sgt i32 %i.je, -10000
  call void @llvm.assume(i1 %i.jp), !noalias !73592
  %i.jq = icmp slt i32 %i.je, 10000
  call void @llvm.assume(i1 %i.jq), !noalias !73592
  %i.jr = icmp eq i16 %.sroa.12.0.copyload26.i.i.i, 0
  br i1 %i.jr, label %.critedge.i.i.i.i, label %bb.bv, !prof !27

bb.bv:                                            ; preds = %.thread511.i.i.i.i
  %i.js = icmp ult i16 %.sroa.12.0.copyload26.i.i.i, 367
  call void @llvm.assume(i1 %i.js), !noalias !73592
  %.sroa.010.0.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.je, i1 true)
  %i.jt = mul i32 %.sroa.010.0.i.i.i.i.i, 33555415
  %i.ju = and i32 %i.jt, 100695055
  %i.jv = icmp samesign ult i32 %i.ju, 31745      ; 2 uses
  %or.cond1.i.i.i.i.i = icmp samesign ult i16 %.sroa.12.0.copyload26.i.i.i, 366
  br i1 %or.cond1.i.i.i.i.i, label %bb.by, label %bb.bw, !prof !60

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.jv, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.sroa.0191.sroa.15.0.extract.shift.i.i.i = lshr i64 ptrtoint (ptr @1154 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %i.jw = shl nsw i32 %i.je, 10
  %i.jx = select i1 %i.jv, i32 512, i32 0
  %i.jy = or disjoint i32 %i.jx, %i.jw
  %i.jz = zext nneg i16 %.sroa.12.0.copyload26.i.i.i to i32
  %i.ka = or disjoint i32 %i.jy, %i.jz
  br label %bb.da

.critedge.i.i.i.i:                                ; preds = %.thread398.i.i.i.i, %.thread511.i.i.i.i
  %i.kb = icmp eq i8 %.sroa.18.0.copyload50.i.i.i, 0
  br i1 %i.kb, label %.thread423.i.i.i.i, label %bb.bz, !prof !27

bb.bz:                                            ; preds = %.critedge.i.i.i.i
  %i.kc = icmp ult i8 %.sroa.18.0.copyload50.i.i.i, 32
  call void @llvm.assume(i1 %i.kc), !noalias !73592
  %.not304.i.i.i.i = icmp eq i8 %.sroa.26.0.copyload82.i.i.i, 0
  %or.cond331.i.i.i.i = or i1 %.not304.i.i.i.i, %.not301.i.i.i.i
  br i1 %or.cond331.i.i.i.i, label %.thread423.i.i.i.i, label %bb.ca

.thread423.i.i.i.i:                               ; preds = %bb.bz, %.critedge.i.i.i.i
  %.not306.i.i.i.i = icmp eq i32 %i.jo, -2147483648 ; 2 uses
  br i1 %.not306.i.i.i.i, label %bb.cg, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.kd = add i32 %i.je, -10000
  %or.cond.i340.i.i.i.i = icmp ult i32 %i.kd, -19999
  br i1 %or.cond.i340.i.i.i.i, label %bb.cd, label %bb.cb, !prof !66

bb.cb:                                            ; preds = %bb.ca
  %.sroa.012.0.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.je, i1 true)
  %i.ke = mul i32 %.sroa.012.0.i.i.i.i.i, 33555415
  %i.kf = and i32 %i.ke, 100695055
  %i.kg = icmp samesign ult i32 %i.kf, 31745      ; 3 uses
  %or.cond1.i341.i.i.i.i = icmp samesign ult i8 %.sroa.18.0.copyload50.i.i.i, 29
  br i1 %or.cond1.i341.i.i.i.i, label %bb.ce, label %bb.cc, !prof !60

bb.cc:                                            ; preds = %bb.cb
  %i.kh = icmp eq i8 %.sroa.26.0.copyload82.i.i.i, 2
  %i.ki = lshr i8 %.sroa.26.0.copyload82.i.i.i, 3
  %i.kj = xor i8 %i.ki, %.sroa.26.0.copyload82.i.i.i
  %i.kk = or i8 %i.kj, 30
  %..i.i.i.i.i = select i1 %i.kg, i8 29, i8 28
  %.sroa.05.0.i.i.i.i.i = select i1 %i.kh, i8 %..i.i.i.i.i, i8 %i.kk
  %.not.i.i.i26.i.i = icmp samesign ugt i8 %.sroa.18.0.copyload50.i.i.i, %.sroa.05.0.i.i.i.i.i
  br i1 %.not.i.i.i26.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %.sroa.0370.0.ph.i.i.i.i = phi ptr [ @1155, %bb.cc ], [ @1129, %bb.ca ]
  %.sroa.8371.0.ph.i.i.i.i = phi i64 [ 3, %bb.cc ], [ 4, %bb.ca ]
  %.sink.i342.ph.i.i.i.i = phi i8 [ 1, %bb.cc ], [ 0, %bb.ca ]
  %i.kl = ptrtoint ptr %.sroa.0370.0.ph.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.kl to i32
  %.sroa.0191.sroa.15.0.extract.shift197.i.i.i = lshr i64 %i.kl, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  %i.km = zext nneg i8 %.sroa.26.0.copyload82.i.i.i to i64
  %.sroa.sel.i.i.i.i.i = select i1 %i.kg, ptr getelementptr inbounds nuw (i8, ptr @1156, i64 24), ptr @1156
  %i.kn = getelementptr [2 x i8], ptr %.sroa.sel.i.i.i.i.i, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 -2
  %i.kp = load i16, ptr %i.ko, align 2, !noalias !73654, !noundef !24
  %i.kq = zext nneg i8 %.sroa.18.0.copyload50.i.i.i to i16
  %i.kr = add i16 %i.kp, %i.kq
  %i.ks = shl nsw i32 %i.je, 10
  %i.kt = select i1 %i.kg, i32 512, i32 0
  %i.ku = or disjoint i32 %i.kt, %i.ks
  %i.kv = zext i16 %i.kr to i32
  %i.kw = or i32 %i.ku, %i.kv                     ; 2 uses
  %i.kx = icmp ne i32 %i.kw, 0
  call void @llvm.assume(i1 %i.kx), !noalias !73592
  br label %bb.da

bb.cf:                                            ; preds = %.thread423.i.i.i.i
  %i.ky = icmp sgt i32 %i.jo, -10000
  call void @llvm.assume(i1 %i.ky), !noalias !73592
  %i.kz = icmp slt i32 %i.jo, 10000
  call void @llvm.assume(i1 %i.kz), !noalias !73592
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.thread423.i.i.i.i
  %i.la = icmp eq i8 %.sroa.17.0.copyload46.i.i.i, 0
  br i1 %i.la, label %.thread444.i.i.i.i, label %bb.ch, !prof !27

.thread444.i.i.i.i:                               ; preds = %bb.cg
  %.not308448.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i, 7
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.lb = icmp ult i8 %.sroa.17.0.copyload46.i.i.i, 54
  call void @llvm.assume(i1 %i.lb), !noalias !73592
  %.not308.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i, 7 ; 2 uses
  %or.cond334.i.i.i.i = or i1 %.not308.i.i.i.i, %.not306.i.i.i.i
  br i1 %or.cond334.i.i.i.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %.thread444.i.i.i.i
  %.not308450.i.i.i.i = phi i1 [ %.not308448.i.i.i.i, %.thread444.i.i.i.i ], [ %.not308.i.i.i.i, %bb.ch ] ; 2 uses
  br i1 %.not301.i.i.i.i, label %bb.cn, label %bb.cm

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73655
  call void @_ZN4time4date4Date18from_iso_week_date17h82d4ed19514e9fc5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.jo, i8 noundef %.sroa.17.0.copyload46.i.i.i, i8 noundef %.sroa.27.0.copyload86.i.i.i), !noalias !73656
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ld = load i8, ptr %i.lc, align 8, !range !41, !noalias !73655, !noundef !24 ; 2 uses
  %.not319.i.i.i.i = icmp eq i8 %i.ld, 2
  %i.le = load i32, ptr %i.b, align 8, !noalias !73655 ; 2 uses
  br i1 %.not319.i.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.sroa.4183.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.0191.sroa.15.4.copyload203.i.i.i = load i32, ptr %.sroa.4183.0..sroa_idx.i.i.i.i, align 4, !noalias !73657
  %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.17.4.copyload193.i.i.i = load i64, ptr %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !73657
  %.sroa.6185.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.34.i.i.sroa.0.0.copyload.i = load i24, ptr %.sroa.6185.0..sroa_idx.i.i.i.i, align 1, !noalias !73653
  %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.34.i.i.sroa.4.0.copyload.i = load i16, ptr %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i, align 4, !noalias !73653
  %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %.sroa.34.i.i.sroa.5.0.copyload.i = load i16, ptr %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i, align 2, !noalias !73653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73655
  %i.lf = zext i32 %.sroa.0191.sroa.15.4.copyload203.i.i.i to i64
  %i.lg = zext i24 %.sroa.34.i.i.sroa.0.0.copyload.i to i32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73655
  br label %bb.da

bb.cm:                                            ; preds = %bb.ci
  %i.lh = icmp sgt i32 %i.je, -10000
  call void @llvm.assume(i1 %i.lh), !noalias !73592
  %i.li = icmp slt i32 %i.je, 10000
  call void @llvm.assume(i1 %i.li), !noalias !73592
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ci
  %.not309.i.i.i.i = icmp eq i8 %.sroa.15.0.copyload38.i.i.i, -1
  br i1 %.not309.i.i.i.i, label %.thread456.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lj = icmp ult i8 %.sroa.15.0.copyload38.i.i.i, 54
  call void @llvm.assume(i1 %i.lj), !noalias !73592
  %or.cond336.i.i.i.i = or i1 %.not301.i.i.i.i, %.not308450.i.i.i.i
  br i1 %or.cond336.i.i.i.i, label %.thread456.i.i.i.i, label %switch.lookup

.thread456.i.i.i.i:                               ; preds = %bb.co, %bb.cn
  br i1 %.not301.i.i.i.i, label %bb.cu, label %bb.ct

switch.lookup:                                    ; preds = %bb.co
  %i.lk = zext nneg i8 %.sroa.15.0.copyload38.i.i.i to i16
  %i.ll = mul nuw nsw i16 %i.lk, 7
  %i.lm = zext nneg i8 %.sroa.27.0.copyload86.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE", i64 %i.lm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.ln = add nuw nsw i16 %i.ll, %switch.ext
  %i.lo = shl i32 %i.je, 10                       ; 2 uses
  %i.lp = ashr exact i32 %i.lo, 10
  %i.lq = add nsw i32 %i.lp, 999999               ; 3 uses
  %.neg.i.i.i.i.i.i = sdiv i32 %i.lq, -100
  %i.lr = add nsw i32 %.neg.i.i.i.i.i.i, -363521074
  %i.ls = sdiv i32 %i.lq, 400
  %i.lt = add nsw i32 %i.lr, %i.ls
  %i.lu = sext i32 %i.lq to i64
  %i.lv = mul nsw i64 %i.lu, 1461
  %i.lw = sdiv i64 %i.lv, 4
  %i.lx = trunc nsw i64 %i.lw to i32
  %i.ly = add nsw i32 %i.lt, %i.lx
  %i.lz = srem i32 %i.ly, 7
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr [2 x i8], ptr @"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE.3096", i64 %i.ma
  %switch.gep246 = getelementptr i8, ptr %i.mb, i64 12
  %switch.load247 = load i16, ptr %switch.gep246, align 2
  %i.mc = add nsw i16 %i.ln, %switch.load247      ; 2 uses
  %i.md = add nsw i16 %i.mc, 1                    ; 2 uses
  %i.me = add i32 %i.je, -10000
  %or.cond.i344.i.i.i.i = icmp ult i32 %i.me, -19999
  br i1 %or.cond.i344.i.i.i.i, label %bb.cr, label %bb.cp, !prof !66

bb.cp:                                            ; preds = %switch.lookup
  %.sroa.010.0.i345.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.je, i1 true)
  %i.mf = mul i32 %.sroa.010.0.i345.i.i.i.i, 33555415
  %i.mg = and i32 %i.mf, 100695055
  %i.mh = icmp samesign ult i32 %i.mg, 31745      ; 2 uses
  %or.cond1.i346.i.i.i.i = icmp ult i16 %i.mc, 365
  br i1 %or.cond1.i346.i.i.i.i, label %bb.cs, label %bb.cq, !prof !60

bb.cq:                                            ; preds = %bb.cp
  %i.mi = icmp eq i16 %i.md, 366
  %brmerge.not.i347.i.i.i.i = and i1 %i.mh, %i.mi
  br i1 %brmerge.not.i347.i.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %switch.lookup
  %.sroa.0377.0.ph.i.i.i.i = phi ptr [ @1154, %bb.cq ], [ @1129, %switch.lookup ]
  %.sroa.8378.0.ph.i.i.i.i = phi i64 [ 7, %bb.cq ], [ 4, %switch.lookup ]
  %.sink.i349.ph.i.i.i.i = phi i8 [ 1, %bb.cq ], [ 0, %switch.lookup ]
  %i.mj = ptrtoint ptr %.sroa.0377.0.ph.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc195.i.i.i = trunc i64 %i.mj to i32
  %.sroa.0191.sroa.15.0.extract.shift199.i.i.i = lshr i64 %i.mj, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.mk = select i1 %i.mh, i32 512, i32 0
  %i.ml = zext nneg i16 %i.md to i32
  %i.mm = or i32 %i.mk, %i.ml
  %i.mn = or i32 %i.mm, %i.lo                     ; 2 uses
  %i.mo = icmp ne i32 %i.mn, 0
  call void @llvm.assume(i1 %i.mo), !noalias !73592
  br label %bb.da

bb.ct:                                            ; preds = %.thread456.i.i.i.i
  %i.mp = icmp sgt i32 %i.je, -10000
  call void @llvm.assume(i1 %i.mp), !noalias !73592
  %i.mq = icmp slt i32 %i.je, 10000
  call void @llvm.assume(i1 %i.mq), !noalias !73592
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.thread456.i.i.i.i
  %.not312.i.i.i.i = icmp eq i8 %.sroa.16.0.copyload42.i.i.i, -1
  br i1 %.not312.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mr = icmp ult i8 %.sroa.16.0.copyload42.i.i.i, 54
  call void @llvm.assume(i1 %i.mr), !noalias !73592
  %or.cond338.i.i.i.i = or i1 %.not301.i.i.i.i, %.not308450.i.i.i.i
  br i1 %or.cond338.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i, label %switch.lookup241

switch.lookup241:                                 ; preds = %bb.cv
  %i.ms = zext nneg i8 %.sroa.16.0.copyload42.i.i.i to i16
  %i.mt = mul nuw nsw i16 %i.ms, 7
  %i.mu = zext nneg i8 %.sroa.27.0.copyload86.i.i.i to i16
  %i.mv = add nuw nsw i16 %i.mt, %i.mu
  %i.mw = shl i32 %i.je, 10                       ; 2 uses
  %i.mx = ashr exact i32 %i.mw, 10
  %i.my = add nsw i32 %i.mx, 999999               ; 3 uses
  %.neg.i.i353.i.i.i.i = sdiv i32 %i.my, -100
  %i.mz = add nsw i32 %.neg.i.i353.i.i.i.i, -363521074
  %i.na = sdiv i32 %i.my, 400
  %i.nb = add nsw i32 %i.mz, %i.na
  %i.nc = sext i32 %i.my to i64
  %i.nd = mul nsw i64 %i.nc, 1461
  %i.ne = sdiv i64 %i.nd, 4
  %i.nf = trunc nsw i64 %i.ne to i32
  %i.ng = add nsw i32 %i.nb, %i.nf
  %i.nh = srem i32 %i.ng, 7
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr [2 x i8], ptr @"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE.3096", i64 %i.ni
  %switch.gep242 = getelementptr i8, ptr %i.nj, i64 12
  %switch.load243 = load i16, ptr %switch.gep242, align 2
  %i.nk = add nsw i16 %i.mv, %switch.load243      ; 2 uses
  %i.nl = add nsw i16 %i.nk, 1                    ; 2 uses
  %i.nm = add i32 %i.je, -10000
  %or.cond.i358.i.i.i.i = icmp ult i32 %i.nm, -19999
  br i1 %or.cond.i358.i.i.i.i, label %bb.cy, label %bb.cw, !prof !66

bb.cw:                                            ; preds = %switch.lookup241
  %.sroa.010.0.i359.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.je, i1 true)
  %i.nn = mul i32 %.sroa.010.0.i359.i.i.i.i, 33555415
  %i.no = and i32 %i.nn, 100695055
  %i.np = icmp samesign ult i32 %i.no, 31745      ; 2 uses
  %or.cond1.i360.i.i.i.i = icmp ult i16 %i.nk, 365
  br i1 %or.cond1.i360.i.i.i.i, label %bb.cz, label %bb.cx, !prof !60

bb.cx:                                            ; preds = %bb.cw
  %i.nq = icmp eq i16 %i.nl, 366
  %brmerge.not.i361.i.i.i.i = and i1 %i.np, %i.nq
  br i1 %brmerge.not.i361.i.i.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %switch.lookup241
  %.sroa.0384.0.ph.i.i.i.i = phi ptr [ @1154, %bb.cx ], [ @1129, %switch.lookup241 ]
  %.sroa.8385.0.ph.i.i.i.i = phi i64 [ 7, %bb.cx ], [ 4, %switch.lookup241 ]
  %.sink.i363.ph.i.i.i.i = phi i8 [ 1, %bb.cx ], [ 0, %switch.lookup241 ]
  %i.nr = ptrtoint ptr %.sroa.0384.0.ph.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc196.i.i.i = trunc i64 %i.nr to i32
  %.sroa.0191.sroa.15.0.extract.shift201.i.i.i = lshr i64 %i.nr, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  %i.ns = select i1 %i.np, i32 512, i32 0
  %i.nt = zext nneg i16 %i.nl to i32
  %i.nu = or i32 %i.ns, %i.nt
  %i.nv = or i32 %i.nu, %i.mw                     ; 2 uses
  %i.nw = icmp ne i32 %i.nv, 0
  call void @llvm.assume(i1 %i.nw), !noalias !73592
  br label %bb.da

7:                                                ; preds = %3
  br label %6

bb.da:                                            ; preds = %bb.cz, %bb.cs, %bb.cl, %bb.ce, %bb.by
  %.sroa.0191.sroa.0.0.i.i.i = phi i32 [ %i.le, %bb.cl ], [ %i.kw, %bb.ce ], [ %i.nv, %bb.cz ], [ %i.ka, %bb.by ], [ %i.mn, %bb.cs ] ; 5 uses
  %.not.not.i.i.i.i = icmp eq i8 %.sroa.19.0.copyload54.i.i.i, -1 ; 2 uses
  br i1 %.not.not.i.i.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nx = icmp ult i8 %.sroa.19.0.copyload54.i.i.i, 24
  call void @llvm.assume(i1 %i.nx), !noalias !73592
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.not.i168.i.i.i = icmp eq i8 %.sroa.20.0.copyload58.i.i.i, 0 ; 2 uses
  br i1 %.not.i168.i.i.i, label %bb.de, label %bb.dd, !prof !27

bb.dd:                                            ; preds = %bb.dc
  %i.ny = icmp ult i8 %.sroa.20.0.copyload58.i.i.i, 13
  call void @llvm.assume(i1 %i.ny), !noalias !73592
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  br i1 %.not.not.i.i.i.i, label %bb.df, label %.thread313.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %.not233.i.i.i.i = icmp eq i8 %.sroa.28.0.copyload90.i.i.i, 2
  %or.cond.i170.i.i.i = or i1 %.not.i168.i.i.i, %.not233.i.i.i.i
  br i1 %or.cond.i170.i.i.i, label %bb.dw, label %.critedge.i171.i.i.i

.critedge.i171.i.i.i:                             ; preds = %bb.df
  %i.nz = trunc nuw i8 %.sroa.28.0.copyload90.i.i.i to i1
  %i.oa = icmp eq i8 %.sroa.20.0.copyload58.i.i.i, 12 ; 2 uses
  %i.ob = add nuw nsw i8 %.sroa.20.0.copyload58.i.i.i, 12
  %spec.select.i172.i.i.i = select i1 %i.oa, i8 12, i8 %i.ob
  %..sroa.011.0.i.i.i.i = select i1 %i.oa, i8 0, i8 %.sroa.20.0.copyload58.i.i.i
  %.sroa.0.0.ph.i.i.i.i = select i1 %i.nz, i8 %spec.select.i172.i.i.i, i8 %..sroa.011.0.i.i.i.i ; 3 uses
  %i.oc = icmp samesign ult i8 %.sroa.20.0.copyload58.i.i.i, 13
  call void @llvm.assume(i1 %i.oc), !noalias !73592
  %.not235.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i, -1
  br i1 %.not235.i.i.i.i, label %.critedge252.i.i.i.i, label %.thread313.thread360.i.i.i.i

.thread313.i.i.i.i:                               ; preds = %bb.de
  %i.od = icmp samesign ult i8 %.sroa.19.0.copyload54.i.i.i, 24
  call void @llvm.assume(i1 %i.od), !noalias !73592
  %.not238.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i, -1
  br i1 %.not238.i.i.i.i, label %.thread313.thread.i.i.i.i, label %bb.dh

.thread313.thread360.i.i.i.i:                     ; preds = %.critedge.i171.i.i.i
  %i.oe = icmp ult i8 %.sroa.21.0.copyload62.i.i.i, 60
  call void @llvm.assume(i1 %i.oe), !noalias !73592
  br label %bb.dh

.critedge252.i.i.i.i:                             ; preds = %.critedge.i171.i.i.i
  %.not236.i.i.i.i = icmp eq i8 %.sroa.1957.0.i.i, -1
  %.not237.i.i.i.i = icmp eq i32 %.sroa.4.0.i.i, -1
  %or.cond = select i1 %.not236.i.i.i.i, i1 %.not237.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.dg, label %.thread313.thread.i.i.i.i

bb.dg:                                            ; preds = %.critedge252.i.i.i.i
  %.sroa.0.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0.ph.i.i.i.i to i64
  %.sroa.0.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i.i.i, 48
  br label %bb.dx

bb.dh:                                            ; preds = %.thread313.thread360.i.i.i.i, %.thread313.i.i.i.i
  %.sroa.0.0312363.i.i.i.i = phi i8 [ %.sroa.0.0.ph.i.i.i.i, %.thread313.thread360.i.i.i.i ], [ %.sroa.19.0.copyload54.i.i.i, %.thread313.i.i.i.i ]
  %i.of = zext nneg i8 %.sroa.21.0.copyload62.i.i.i to i64
  %i.og = shl nuw nsw i64 %i.of, 40
  br label %.thread313.thread.i.i.i.i

.thread313.thread.i.i.i.i:                        ; preds = %bb.dh, %.critedge252.i.i.i.i, %.thread313.i.i.i.i
  %.not238359.i.i.i.i = phi i1 [ true, %.thread313.i.i.i.i ], [ false, %bb.dh ], [ true, %.critedge252.i.i.i.i ]
  %.sroa.0.0312358.i.i.i.i = phi i8 [ %.sroa.19.0.copyload54.i.i.i, %.thread313.i.i.i.i ], [ %.sroa.0.0312363.i.i.i.i, %bb.dh ], [ %.sroa.0.0.ph.i.i.i.i, %.critedge252.i.i.i.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i.i.i.i = phi i64 [ 280375465082880, %.thread313.i.i.i.i ], [ %i.og, %bb.dh ], [ 280375465082880, %.critedge252.i.i.i.i ] ; 3 uses
  %.not239.i.i.i.i = icmp ne i8 %.sroa.1957.0.i.i, -1 ; 3 uses
  br i1 %.not239.i.i.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.thread313.thread.i.i.i.i
  %i.oh = icmp ult i8 %.sroa.1957.0.i.i, 61
  call void @llvm.assume(i1 %i.oh), !noalias !73592
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.thread313.thread.i.i.i.i
  %.not244.i.i.i.i = icmp ne i32 %.sroa.4.0.i.i, -1 ; 4 uses
  br i1 %.not244.i.i.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.oi = icmp ult i32 %.sroa.4.0.i.i, 1000000000
  call void @llvm.assume(i1 %i.oi), !noalias !73592
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  br i1 %.not238359.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  br i1 %.not239.i.i.i.i, label %bb.dp, label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %brmerge.i.i.i.i = or i1 %.not239.i.i.i.i, %.not244.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %bb.dw, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.sroa.0294.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0294.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i.i.i.i, 48
  br label %bb.dx

bb.dp:                                            ; preds = %bb.dm
  %i.oj = icmp samesign ugt i8 %.sroa.1957.0.i.i, 59 ; 2 uses
  br i1 %.not244.i.i.i.i, label %bb.ds, label %bb.dt

bb.dq:                                            ; preds = %bb.dm
  br i1 %.not244.i.i.i.i, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.sroa.0299.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0299.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i.i.i.i, 48
  %.sroa.0299.6.insert.insert.i.i.i.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i.i.i.i, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dp
  br i1 %i.oj, label %bb.dw, label %bb.dv, !prof !66

bb.dt:                                            ; preds = %bb.dp
  br i1 %i.oj, label %bb.dw, label %bb.du, !prof !66

bb.du:                                            ; preds = %bb.dt
  %.sroa.0302.4.insert.ext.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i to i64
  %.sroa.0302.4.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i.i.i.i, 32
  %.sroa.0302.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0302.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i.i.i.i, 48
  %i.ok = or disjoint i64 %.sroa.0302.6.insert.shift.i.i.i.i, %.sroa.0302.4.insert.shift.i.i.i.i
  %.sroa.0302.6.insert.insert.i.i.i.i = or i64 %i.ok, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.dx

bb.dv:                                            ; preds = %bb.ds
  %.sroa.0306.0.insert.ext.i.i.i.i = zext nneg i32 %.sroa.4.0.i.i to i64
  %.sroa.0306.4.insert.ext.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i to i64
  %.sroa.0306.4.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i.i.i.i, 32
  %i.ol = or disjoint i64 %.sroa.0306.4.insert.shift.i.i.i.i, %.sroa.0306.0.insert.ext.i.i.i.i
  %.sroa.0306.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0306.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i.i.i.i, 48
  %i.om = or disjoint i64 %.sroa.0306.6.insert.shift.i.i.i.i, %i.ol
  %.sroa.0306.6.insert.insert.i.i.i.i = or i64 %i.om, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dt, %bb.ds, %bb.dq, %bb.dn, %bb.df
  %.sink365.i.i.i.i = phi i8 [ 2, %bb.dq ], [ 0, %bb.dt ], [ 2, %bb.df ], [ 0, %bb.ds ], [ 2, %bb.dn ]
  %.sroa.01.sroa.12.0.extract.shift16.i.i = lshr i64 ptrtoint (ptr @1157 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.dx:                                            ; preds = %bb.dv, %bb.du, %bb.dr, %bb.do, %bb.dg
  %.sroa.0214.0.ph.i.i.i = phi i64 [ %.sroa.0302.6.insert.insert.i.i.i.i, %bb.du ], [ %.sroa.0299.6.insert.insert.i.i.i.i, %bb.dr ], [ %.sroa.0306.6.insert.insert.i.i.i.i, %bb.dv ], [ %.sroa.0294.6.insert.shift.i.i.i.i, %bb.do ], [ %.sroa.0.6.insert.shift.i.i.i.i, %bb.dg ] ; 7 uses
  %i.on = icmp eq i8 %.sroa.23.0.copyload70.i.i.i, -128
  br i1 %i.on, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.oo = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i, -24
  call void @llvm.assume(i1 %i.oo), !noalias !73592
  %i.op = icmp slt i8 %.sroa.23.0.copyload70.i.i.i, 24
  call void @llvm.assume(i1 %i.op), !noalias !73592
  %.not.i173.i.i.i = icmp eq i8 %.sroa.24.0.copyload74.i.i.i, -128
  br i1 %.not.i173.i.i.i, label %.thread51.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.oq = icmp sgt i8 %.sroa.24.0.copyload74.i.i.i, -60
  call void @llvm.assume(i1 %i.oq), !noalias !73592
  %i.or = icmp slt i8 %.sroa.24.0.copyload74.i.i.i, 60
  call void @llvm.assume(i1 %i.or), !noalias !73592
  %i.os = trunc nuw i8 %.sroa.29.0.copyload94.i.i.i to i1 ; 2 uses
  %i.ot = sub nsw i8 0, %.sroa.24.0.copyload74.i.i.i
  %spec.select.i.i174.i.i.i = select i1 %i.os, i8 %i.ot, i8 %.sroa.24.0.copyload74.i.i.i ; 4 uses
  %.not65.i.i.i.i = icmp eq i8 %.sroa.25.0.copyload78.i.i.i, -128
  br i1 %.not65.i.i.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ou = icmp sgt i8 %.sroa.25.0.copyload78.i.i.i, -60
  call void @llvm.assume(i1 %i.ou), !noalias !73592
  %i.ov = icmp slt i8 %.sroa.25.0.copyload78.i.i.i, 60
  call void @llvm.assume(i1 %i.ov), !noalias !73592
  %i.ow = sub nsw i8 0, %.sroa.25.0.copyload78.i.i.i
  %spec.select.i19.i.i.i.i = select i1 %i.os, i8 %i.ow, i8 %.sroa.25.0.copyload78.i.i.i
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %spec.select.i175.i.i.i = phi i8 [ 0, %bb.dz ], [ %spec.select.i19.i.i.i.i, %bb.ea ] ; 3 uses
  %i.ox = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i, 0 ; 2 uses
  %i.oy = icmp slt i8 %spec.select.i.i174.i.i.i, 0
  %or.cond40.i.i.i.i.i.i = and i1 %i.ox, %i.oy
  br i1 %or.cond40.i.i.i.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oz = icmp slt i8 %.sroa.23.0.copyload70.i.i.i, 0
  %i.pa = icmp sgt i8 %spec.select.i.i174.i.i.i, 0
  %or.cond41.i.i.i.i.i.i = and i1 %i.oz, %i.pa
  br i1 %or.cond41.i.i.i.i.i.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.pb = sub nsw i8 0, %spec.select.i.i174.i.i.i
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.0.1.i.i.i.i.i.i = phi i8 [ %spec.select.i.i174.i.i.i, %bb.ec ], [ %i.pb, %bb.ed ] ; 2 uses
  %i.pc = icmp slt i8 %spec.select.i175.i.i.i, 0  ; 2 uses
  %or.cond42.i.i.i.i.i.i = and i1 %i.ox, %i.pc
  br i1 %or.cond42.i.i.i.i.i.i, label %bb.ef, label %.thread51.i.i.i.i

bb.ef:                                            ; preds = %.thread51.i.i.i.i, %bb.ee
  %.sroa.0.1.i.i59.i.i.i.i = phi i8 [ %.sroa.0.1.i.i57.i.i.i.i, %.thread51.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.ee ]
  %.sroa.05.030374256.i.i.i.i = phi i8 [ %.sroa.05.030374255.i.i.i.i, %.thread51.i.i.i.i ], [ %spec.select.i175.i.i.i, %bb.ee ]
  %i.pd = sub nsw i8 0, %.sroa.05.030374256.i.i.i.i
  br label %bb.eg

.thread51.i.i.i.i:                                ; preds = %bb.ee, %bb.dy
  %i.pe = phi i1 [ %i.pc, %bb.ee ], [ false, %bb.dy ]
  %.sroa.0.1.i.i57.i.i.i.i = phi i8 [ %.sroa.0.1.i.i.i.i.i.i, %bb.ee ], [ 0, %bb.dy ] ; 4 uses
  %.sroa.05.030374255.i.i.i.i = phi i8 [ %spec.select.i175.i.i.i, %bb.ee ], [ 0, %bb.dy ] ; 3 uses
  %i.pf = icmp slt i8 %.sroa.23.0.copyload70.i.i.i, 0
  %i.pg = icmp sgt i8 %.sroa.05.030374255.i.i.i.i, 0 ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %i.pf, %i.pg
  %i.ph = icmp sgt i8 %.sroa.0.1.i.i57.i.i.i.i, 0
  %or.cond38.i.i.i.i.i.i = and i1 %i.pe, %i.ph
  %i.pi = icmp slt i8 %.sroa.0.1.i.i57.i.i.i.i, 0
  %or.cond39.i.i.i.i.i.i = and i1 %i.pi, %i.pg
  %i.pj = or i1 %or.cond38.i.i.i.i.i.i, %or.cond39.i.i.i.i.i.i
  %or.cond44.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.pj
  br i1 %or.cond44.i.i.i.i.i.i, label %bb.ef, label %bb.eg

bb.eg:                                            ; preds = %.thread51.i.i.i.i, %bb.ef
  %.sroa.0.1.i.i58.i.i.i.i = phi i8 [ %.sroa.0.1.i.i59.i.i.i.i, %bb.ef ], [ %.sroa.0.1.i.i57.i.i.i.i, %.thread51.i.i.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i.i.i = phi i8 [ %i.pd, %bb.ef ], [ %.sroa.05.030374255.i.i.i.i, %.thread51.i.i.i.i ] ; 3 uses
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.23.0.copyload70.i.i.i to i64
  %.sroa.2.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.0.1.i.i58.i.i.i.i to i64
  %.sroa.012.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.06.0.i.i.i.i.i.i to i64
  %.sroa.0332.0.extract.trunc.i.i.i = trunc i64 %.sroa.0214.0.ph.i.i.i to i32 ; 3 uses
  br i1 %.sroa.023.0.i.i.i, label %bb.eh, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i, %bb.eg
  %.sroa.01.sroa.0.0.extract.trunc6.pre-phi.i.i = phi i32 [ 999999999, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i ], [ %.sroa.0332.0.extract.trunc.i.i.i, %bb.eg ]
  %.sroa.01.sroa.12.0.extract.shift14.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 32
  %.sroa.13.8.insert.ext.i.i = zext i32 %.sroa.0191.sroa.0.0.i.i.i to i64
  %i.pk = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i, 40
  %i.pl = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i.i.i.i, 48
  %i.pm = shl nuw nsw i64 %.sroa.012.0.insert.ext.i.i.i.i.i.i, 32
  %i.pn = or disjoint i64 %i.pm, %i.pl
  %.sroa.13.12.insert.shift.i.i = or disjoint i64 %i.pn, %i.pk
  %.sroa.13.12.insert.insert.i.i = or disjoint i64 %.sroa.13.12.insert.shift.i.i, %.sroa.13.8.insert.ext.i.i
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread.i

bb.eh:                                            ; preds = %bb.eg
  %i.po = icmp ult i32 %.sroa.0332.0.extract.trunc.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.po), !noalias !73592
  %i.pp = icmp eq i32 %.sroa.0332.0.extract.trunc.i.i.i, 999999999
  br i1 %i.pp, label %bb.ei, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.pq = or i8 %.sroa.0.1.i.i58.i.i.i.i, %.sroa.23.0.copyload70.i.i.i
  %i.pr = or i8 %i.pq, %.sroa.06.0.i.i.i.i.i.i
  %i.ps = icmp eq i8 %i.pr, 0
  br i1 %i.ps, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %.sroa.0332.4.extract.shift.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 32
  %.sroa.0332.4.extract.trunc.i.i.i = trunc i64 %.sroa.0332.4.extract.shift.i.i.i to i8 ; 2 uses
  %i.pt = icmp ult i8 %.sroa.0332.4.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.pt), !noalias !73592
  %i.pu = sub nsw i8 %.sroa.0332.4.extract.trunc.i.i.i, %.sroa.06.0.i.i.i.i.i.i ; 5 uses
  %i.pv = icmp sgt i8 %i.pu, -1
  br i1 %i.pv, label %bb.em, label %bb.el, !prof !25

bb.ek:                                            ; preds = %bb.ei
  %i.pw = ashr i32 %.sroa.0191.sroa.0.0.i.i.i, 10
  %i.px = trunc i32 %.sroa.0191.sroa.0.0.i.i.i to i16
  %i.py = and i16 %i.px, 511
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i

bb.el:                                            ; preds = %bb.ej
  %i.pz = add nsw i8 %i.pu, 60
  br label %bb.en

bb.em:                                            ; preds = %bb.ej
  %i.qa = icmp samesign ult i8 %i.pu, 60
  br i1 %i.qa, label %bb.en, label %bb.eo, !prof !25

bb.en:                                            ; preds = %bb.eo, %bb.em, %bb.el
  %.sroa.030.0.i.i.i.i.i = phi i8 [ -1, %bb.el ], [ 1, %bb.eo ], [ 0, %bb.em ]
  %.sroa.029.0.i.i.i.i.i = phi i8 [ %i.pz, %bb.el ], [ %i.qf, %bb.eo ], [ %i.pu, %bb.em ]
  %.sroa.0332.5.extract.shift.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 40
  %.sroa.0332.5.extract.trunc.i.i.i = trunc i64 %.sroa.0332.5.extract.shift.i.i.i to i8 ; 2 uses
  %i.qb = icmp ult i8 %.sroa.0332.5.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.qb), !noalias !73592
  %i.qc = sub nsw i8 %.sroa.0332.5.extract.trunc.i.i.i, %.sroa.0.1.i.i58.i.i.i.i
  %i.qd = add nsw i8 %.sroa.030.0.i.i.i.i.i, %i.qc ; 5 uses
  %i.qe = icmp sgt i8 %i.qd, -1
  br i1 %i.qe, label %bb.eq, label %bb.ep, !prof !25

bb.eo:                                            ; preds = %bb.em
  %i.qf = add nsw i8 %i.pu, -60
  br label %bb.en

bb.ep:                                            ; preds = %bb.en
  %i.qg = add nsw i8 %i.qd, 60
  br label %bb.er

bb.eq:                                            ; preds = %bb.en
  %i.qh = icmp samesign ult i8 %i.qd, 60
  br i1 %i.qh, label %bb.er, label %bb.es, !prof !25

bb.er:                                            ; preds = %bb.es, %bb.eq, %bb.ep
  %.sroa.031.0.i.i.i.i.i = phi i8 [ %i.qg, %bb.ep ], [ %i.qm, %bb.es ], [ %i.qd, %bb.eq ]
  %.sroa.032.0.i.i.i.i.i = phi i8 [ -1, %bb.ep ], [ 1, %bb.es ], [ 0, %bb.eq ]
  %.sroa.0332.6.extract.shift.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 48
  %.sroa.0332.6.extract.trunc.i.i.i = trunc nuw nsw i64 %.sroa.0332.6.extract.shift.i.i.i to i8
  %i.qi = icmp samesign ult i64 %.sroa.0214.0.ph.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.qi), !noalias !73592
  %i.qj = sub nsw i8 %.sroa.0332.6.extract.trunc.i.i.i, %.sroa.23.0.copyload70.i.i.i
  %i.qk = add nsw i8 %.sroa.032.0.i.i.i.i.i, %i.qj ; 5 uses
  %i.ql = icmp sgt i8 %i.qk, -1
  br i1 %i.ql, label %bb.et, label %bb.eu, !prof !25

bb.es:                                            ; preds = %bb.eq
  %i.qm = add nsw i8 %i.qd, -60
  br label %bb.er

bb.et:                                            ; preds = %bb.er
  %i.qn = icmp samesign ult i8 %i.qk, 24
  br i1 %i.qn, label %bb.ev, label %bb.ew, !prof !25

bb.eu:                                            ; preds = %bb.er
  %i.qo = add nsw i8 %i.qk, 24
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ew, %bb.eu, %bb.et
  %.sroa.033.0.i.i.i.i.i = phi i8 [ %i.qk, %bb.et ], [ %i.qx, %bb.ew ], [ %i.qo, %bb.eu ]
  %.sroa.034.0.i.i.i.i.i = phi i16 [ 0, %bb.et ], [ 1, %bb.ew ], [ -1, %bb.eu ]
  %i.qp = ashr i32 %.sroa.0191.sroa.0.0.i.i.i, 10 ; 6 uses
  %i.qq = trunc i32 %.sroa.0191.sroa.0.0.i.i.i to i16
  %i.qr = and i16 %i.qq, 511
  %i.qs = add nsw i16 %.sroa.034.0.i.i.i.i.i, %i.qr ; 5 uses
  %.sroa.026.0.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.qp, i1 true)
  %i.qt = mul i32 %.sroa.026.0.i.i.i.i.i, 33555415
  %i.qu = and i32 %i.qt, 100695055
  %i.qv = icmp samesign ult i32 %i.qu, 31745
  %.sroa.016.0.i.i.i.i.i = select i1 %i.qv, i16 366, i16 365 ; 2 uses
  %i.qw = icmp sgt i16 %i.qs, %.sroa.016.0.i.i.i.i.i
  br i1 %i.qw, label %bb.ex, label %bb.ey, !prof !27

bb.ew:                                            ; preds = %bb.et
  %i.qx = add nsw i8 %i.qk, -24
  br label %bb.ev

bb.ex:                                            ; preds = %bb.ev
  %i.qy = sub nuw nsw i16 %i.qs, %.sroa.016.0.i.i.i.i.i
  %i.qz = add nsw i32 %i.qp, 1
  br label %bb.fa

bb.ey:                                            ; preds = %bb.ev
  %i.ra = icmp slt i16 %i.qs, 1
  br i1 %i.ra, label %bb.ez, label %bb.fa, !prof !27

bb.ez:                                            ; preds = %bb.ey
  %i.rb = add nsw i32 %i.qp, -1                   ; 2 uses
  %i.rc = icmp slt i32 %i.qp, 1
  %i.rd = sub nsw i32 1, %i.qp
  %.sroa.027.0.i.i.i.i.i = select i1 %i.rc, i32 %i.rd, i32 %i.rb
  %i.re = mul i32 %.sroa.027.0.i.i.i.i.i, 33555415
  %i.rf = and i32 %i.re, 100695055
  %i.rg = icmp samesign ult i32 %i.rf, 31745
  %.sroa.017.0.i.i.i.i.i = select i1 %i.rg, i16 366, i16 365
  %i.rh = add nsw i16 %i.qs, %.sroa.017.0.i.i.i.i.i
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ex
  %.sroa.011.0.i.i.i.i.i = phi i16 [ %i.qy, %bb.ex ], [ %i.rh, %bb.ez ], [ %i.qs, %bb.ey ]
  %.sroa.06.0.i.i.i.i.i = phi i32 [ %i.qz, %bb.ex ], [ %i.rb, %bb.ez ], [ %i.qp, %bb.ey ]
  %.sroa.4.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %.sroa.033.0.i.i.i.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i177.i.i.i = zext nneg i8 %.sroa.031.0.i.i.i.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i178.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i177.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i178.i.i.i
  %.sroa.2.0.insert.ext.i.i.i179.i.i.i = zext nneg i8 %.sroa.029.0.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i180.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i179.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i181.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i180.i.i.i
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i

_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i: ; preds = %bb.fa, %bb.ek
  %.sroa.06.0.sink.i.i.i.i.i = phi i32 [ %.sroa.06.0.i.i.i.i.i, %bb.fa ], [ %i.pw, %bb.ek ] ; 3 uses
  %.sroa.011.0.sink.i.i.i.i.i = phi i16 [ %.sroa.011.0.i.i.i.i.i, %bb.fa ], [ %i.py, %bb.ek ] ; 3 uses
  %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i181.i.i.i, %bb.fa ], [ %.sroa.0214.0.ph.i.i.i, %bb.ek ] ; 4 uses
  %.sroa.611.12.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 32
  %.sroa.611.12.extract.trunc.i.i.i.i = trunc i64 %.sroa.611.12.extract.shift.i.i.i.i to i8 ; 2 uses
  %.sroa.611.13.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 40
  %.sroa.611.13.extract.trunc.i.i.i.i = trunc i64 %.sroa.611.13.extract.shift.i.i.i.i to i8 ; 2 uses
  %i.ri = add nsw i32 %.sroa.06.0.sink.i.i.i.i.i, -10000
  %or.cond.i.i182.i.i.i = icmp ult i32 %i.ri, -19999
  br i1 %or.cond.i.i182.i.i.i, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i, label %bb.fb, !prof !66

bb.fb:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i
  %.sroa.010.0.i.i183.i.i.i = call i32 @llvm.abs.i32(i32 %.sroa.06.0.sink.i.i.i.i.i, i1 true) ; 2 uses
  %i.rj = mul i32 %.sroa.010.0.i.i183.i.i.i, 33555415
  %i.rk = and i32 %i.rj, 100695055
  %i.rl = icmp samesign ult i32 %i.rk, 31745      ; 2 uses
  %i.rm = add nsw i16 %.sroa.011.0.sink.i.i.i.i.i, -1
  %or.cond1.i.i184.i.i.i = icmp ult i16 %i.rm, 365
  br i1 %or.cond1.i.i184.i.i.i, label %bb.fd, label %bb.fc, !prof !60

bb.fc:                                            ; preds = %bb.fb
  %i.rn = icmp eq i16 %.sroa.011.0.sink.i.i.i.i.i, 366
  %brmerge.not.i.i.i.i.i = and i1 %i.rn, %i.rl
  br i1 %brmerge.not.i.i.i.i.i, label %bb.fd, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.ro = shl nsw i32 %.sroa.06.0.sink.i.i.i.i.i, 10
  %i.rp = select i1 %i.rl, i32 512, i32 0
  %i.rq = or disjoint i32 %i.rp, %i.ro
  %i.rr = zext nneg i16 %.sroa.011.0.sink.i.i.i.i.i to i32 ; 3 uses
  %i.rs = or i32 %i.rq, %i.rr                     ; 2 uses
  %i.rt = icmp ne i32 %i.rs, 0
  call void @llvm.assume(i1 %i.rt), !noalias !73592
  %i.ru = icmp samesign ult i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.ru), !noalias !73592
  %.sroa.611.14.extract.shift.i.mask.i.i.i = and i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 8725724278030336
  %i.rv = icmp eq i64 %.sroa.611.14.extract.shift.i.mask.i.i.i, 6473924464345088
  br i1 %i.rv, label %bb.fe, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.rw = icmp ult i8 %.sroa.611.13.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.rw), !noalias !73592
  %i.rx = icmp eq i8 %.sroa.611.13.extract.trunc.i.i.i.i, 59
  br i1 %i.rx, label %bb.ff, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.ff:                                            ; preds = %bb.fe
  %i.ry = icmp ult i8 %.sroa.611.12.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.ry), !noalias !73592
  %i.rz = icmp eq i8 %.sroa.611.12.extract.trunc.i.i.i.i, 59
  br i1 %i.rz, label %bb.fg, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i
end_hunk_0
