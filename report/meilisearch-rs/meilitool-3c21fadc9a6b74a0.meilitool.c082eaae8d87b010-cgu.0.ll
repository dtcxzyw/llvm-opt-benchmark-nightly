Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE":bb.a

bb.as:                                            ; preds = %bb.ar
  %i.ej = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.ek = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ej, i64 noundef %i.ek), !noalias !71496, !inline_history !16
  %i.el = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.3.i.i.i.i = icmp eq i64 %i.el, 3
  br i1 %.not.i.3.i.i.i.i, label %bb.at, label %bb.bi

bb.at:                                            ; preds = %bb.as
  %i.em = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.en = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.em, i64 noundef %i.en), !noalias !71496, !inline_history !16
  %i.eo = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.4.i.i.i.i = icmp eq i64 %i.eo, 3
  br i1 %.not.i.4.i.i.i.i, label %bb.au, label %bb.bi

bb.au:                                            ; preds = %bb.at
  %i.ep = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.eq = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 120), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ep, i64 noundef %i.eq), !noalias !71496, !inline_history !16
  %i.er = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.5.i.i.i.i = icmp eq i64 %i.er, 3
  br i1 %.not.i.5.i.i.i.i, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %bb.au
  %i.es = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.et = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 144), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.es, i64 noundef %i.et), !noalias !71496, !inline_history !16
  %i.eu = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.6.i.i.i.i = icmp eq i64 %i.eu, 3
  br i1 %.not.i.6.i.i.i.i, label %bb.aw, label %bb.bi

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.ew = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 168), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ev, i64 noundef %i.ew), !noalias !71496, !inline_history !16
  %i.ex = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.7.i.i.i.i = icmp eq i64 %i.ex, 3
  br i1 %.not.i.7.i.i.i.i, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.ey = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.ez = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 192), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ey, i64 noundef %i.ez), !noalias !71496, !inline_history !16
  %i.fa = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.8.i.i.i.i = icmp eq i64 %i.fa, 3
  br i1 %.not.i.8.i.i.i.i, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.fc = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 216), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fb, i64 noundef %i.fc), !noalias !71496, !inline_history !16
  %i.fd = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.9.i.i.i.i = icmp eq i64 %i.fd, 3
  br i1 %.not.i.9.i.i.i.i, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.fe = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.ff = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 240), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff), !noalias !71496, !inline_history !16
  %i.fg = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.10.i.i.i.i = icmp eq i64 %i.fg, 3
  br i1 %.not.i.10.i.i.i.i, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.fh = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.fi = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 264), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fh, i64 noundef %i.fi), !noalias !71496, !inline_history !16
  %i.fj = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.11.i.i.i.i = icmp eq i64 %i.fj, 3
  br i1 %.not.i.11.i.i.i.i, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fk = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.fl = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 288), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fk, i64 noundef %i.fl), !noalias !71496, !inline_history !16
  %i.fm = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.12.i.i.i.i = icmp eq i64 %i.fm, 3
  br i1 %.not.i.12.i.i.i.i, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.fn = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.fo = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 312), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fo), !noalias !71496, !inline_history !16
  %i.fp = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.13.i.i.i.i = icmp eq i64 %i.fp, 3
  br i1 %.not.i.13.i.i.i.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.fq = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.fr = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 336), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fq, i64 noundef %i.fr), !noalias !71496, !inline_history !16
  %i.fs = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.14.i.i.i.i = icmp eq i64 %i.fs, 3
  br i1 %.not.i.14.i.i.i.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.ft = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.fu = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 360), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ft, i64 noundef %i.fu), !noalias !71496, !inline_history !16
  %i.fv = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.15.i.i.i.i = icmp eq i64 %i.fv, 3
  br i1 %.not.i.15.i.i.i.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fw = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.fx = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 384), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fw, i64 noundef %i.fx), !noalias !71496, !inline_history !16
  %i.fy = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.16.i.i.i.i = icmp eq i64 %i.fy, 3
  br i1 %.not.i.16.i.i.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.ga = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 408), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fz, i64 noundef %i.ga), !noalias !71496, !inline_history !16
  %i.gb = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.17.i.i.i.i = icmp eq i64 %i.gb, 3
  br i1 %.not.i.17.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gc = load ptr, ptr %i.ea, align 8, !noalias !71493, !nonnull !23, !align !33, !noundef !23
  %i.gd = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71493
  call fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @212, i64 432), ptr noalias noundef align 16 dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gc, i64 noundef %i.gd), !noalias !71496, !inline_history !16
  %i.ge = load i64, ptr %i.c, align 8, !range !61, !noalias !71493, !noundef !23 ; 2 uses
  %.not.i.18.i.i.i.i = icmp eq i64 %i.ge, 3
  br i1 %.not.i.18.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.lcssa.i.i.i.i = phi i64 [ %i.ec, %bb.ap ], [ %i.ef, %bb.aq ], [ %i.ei, %bb.ar ], [ %i.el, %bb.as ], [ %i.eo, %bb.at ], [ %i.er, %bb.au ], [ %i.eu, %bb.av ], [ %i.ex, %bb.aw ], [ %i.fa, %bb.ax ], [ %i.fd, %bb.ay ], [ %i.fg, %bb.az ], [ %i.fj, %bb.ba ], [ %i.fm, %bb.bb ], [ %i.fp, %bb.bc ], [ %i.fs, %bb.bd ], [ %i.fv, %bb.be ], [ %i.fy, %bb.bf ], [ %i.gb, %bb.bg ], [ %i.ge, %bb.bh ]
  %.sroa.515.0.copyload.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !71493
  %.sroa.616.0.copyload.i.i.i.i.i = load i64, ptr %i.eb, align 8, !noalias !71493 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !71493
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
  %i.gg = load i64, ptr %i.eb, align 8, !noalias !71493, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71493
  %.sroa.0.0.copyload2.i22.i.i = load i64, ptr %i.d, align 16, !noalias !71497 ; 3 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload2.i23.i.i = load i64, ptr %.sroa_idx.i.i, align 8, !noalias !71497 ; 3 uses
  %.sroa.7.0.copyload6.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx3.i.i.i, align 16, !noalias !71494 ; 7 uses
  %.sroa.8.0.copyload10.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx7.i.i.i, align 4, !noalias !71494 ; 7 uses
  %.sroa.9.0.copyload14.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 8, !noalias !71494 ; 7 uses
  %.sroa.10.0.copyload18.i.i.i = load i16, ptr %.sroa.10.0..sroa_idx15.i.i.i, align 4, !noalias !71494 ; 3 uses
  %.sroa.11.0.copyload22.i.i.i = load i16, ptr %.sroa.11.0..sroa_idx19.i.i.i, align 2, !noalias !71494 ; 3 uses
  %.sroa.12.0.copyload26.i.i.i = load i16, ptr %.sroa.12.0..sroa_idx23.i.i.i, align 16, !noalias !71494 ; 4 uses
  %.sroa.13.0.copyload30.i.i.i = load i8, ptr %.sroa.13.0..sroa_idx27.i.i.i, align 2, !noalias !71494 ; 3 uses
  %.sroa.14.0.copyload34.i.i.i = load i8, ptr %.sroa.14.0..sroa_idx31.i.i.i, align 1, !noalias !71494 ; 3 uses
  %.sroa.15.0.copyload38.i.i.i = load i8, ptr %.sroa.15.0..sroa_idx35.i.i.i, align 4, !noalias !71494 ; 3 uses
  %.sroa.16.0.copyload42.i.i.i = load i8, ptr %.sroa.16.0..sroa_idx39.i.i.i, align 1, !noalias !71494 ; 3 uses
  %.sroa.17.0.copyload46.i.i.i = load i8, ptr %.sroa.17.0..sroa_idx43.i.i.i, align 2, !noalias !71494 ; 3 uses
  %.sroa.18.0.copyload50.i.i.i = load i8, ptr %.sroa.18.0..sroa_idx47.i.i.i, align 1, !noalias !71494 ; 5 uses
  %.sroa.19.0.copyload54.i.i.i = load i8, ptr %.sroa.19.0..sroa_idx51.i.i.i, align 8, !noalias !71494 ; 5 uses
  %.sroa.20.0.copyload58.i.i.i = load i8, ptr %.sroa.20.0..sroa_idx55.i.i.i, align 1, !noalias !71494 ; 6 uses
  %.sroa.21.0.copyload62.i.i.i = load i8, ptr %.sroa.21.0..sroa_idx59.i.i.i, align 2, !noalias !71494 ; 4 uses
  %.sroa.22.0.copyload66.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx63.i.i.i, align 1, !noalias !71494 ; 5 uses
  %.sroa.23.0.copyload70.i.i.i = load i8, ptr %.sroa.23.0..sroa_idx67.i.i.i, align 4, !noalias !71494 ; 8 uses
  %.sroa.24.0.copyload74.i.i.i = load i8, ptr %.sroa.24.0..sroa_idx71.i.i.i, align 1, !noalias !71494 ; 5 uses
  %.sroa.25.0.copyload78.i.i.i = load i8, ptr %.sroa.25.0..sroa_idx75.i.i.i, align 2, !noalias !71494 ; 5 uses
  %.sroa.26.0.copyload82.i.i.i = load i8, ptr %.sroa.26.0..sroa_idx79.i.i.i, align 1, !noalias !71494 ; 5 uses
  %.sroa.27.0.copyload86.i.i.i = load i8, ptr %.sroa.27.0..sroa_idx83.i.i.i, align 16, !noalias !71494 ; 5 uses
  %.sroa.28.0.copyload90.i.i.i = load i8, ptr %.sroa.28.0..sroa_idx87.i.i.i, align 1, !noalias !71494 ; 2 uses
  %.sroa.29.0.copyload94.i.i.i = load i8, ptr %.sroa.29.0..sroa_idx91.i.i.i, align 2, !noalias !71494
  %.sroa.30.0.copyload98.i.i.i = load i8, ptr %.sroa.30.0..sroa_idx95.i.i.i, align 1, !noalias !71494
  %.sroa.31.0.copyload102.i.i.i = load i8, ptr %.sroa.31.0..sroa_idx99.i.i.i, align 4, !noalias !71494
  %.sroa.32.0.copyload106.i.i.i = load i8, ptr %.sroa.32.0..sroa_idx103.i.i.i, align 1, !noalias !71494 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !71493
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
  call void @llvm.assume(i1 %i.gk), !noalias !71436
  %i.gl = icmp slt i128 %.sroa.011.sroa.0.8.insert.insert.i.i, 253402300800000000000
  call void @llvm.assume(i1 %i.gl), !noalias !71436
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
  br i1 %or.cond.i.i.i.i.i, label %bb.bn, label %bb.bo, !prof !65

bb.bm:                                            ; preds = %bb.bk
  %i.gr = trunc nuw i8 %.sroa.32.0.copyload106.i.i.i to i1
  br i1 %i.gr, label %bb.bp, label %bb.br

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
  call void @llvm.assume(i1 %i.ie), !noalias !71436
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
  call void @llvm.assume(i1 %i.il), !noalias !71436
  %i.im = icmp slt i128 %.decomposed, 0
  %i.in = add nsw i128 %.decomposed, 1000000000
  %spec.select.i.i.i.i.i = select i1 %i.im, i128 %i.in, i128 %.decomposed
  %i.io = trunc nuw nsw i128 %spec.select.i.i.i.i.i to i32 ; 2 uses
  %i.ip = icmp samesign ult i32 %i.io, 1000000000
  call void @llvm.assume(i1 %i.ip), !noalias !71436
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

bb.bp:                                            ; preds = %bb.bm
  %cond.i.i.i = icmp eq i8 %.sroa.22.0.copyload66.i.i.i, -1
  br i1 %cond.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iv = icmp ult i8 %.sroa.22.0.copyload66.i.i.i, 61
  call void @llvm.assume(i1 %i.iv), !noalias !71436
  %i.iw = icmp eq i8 %.sroa.22.0.copyload66.i.i.i, 60
  br i1 %i.iw, label %bb.dd, label %bb.br

bb.br:                                            ; preds = %bb.dd, %bb.bq, %bb.bp, %bb.bm
  %.sroa.1957.0.i.i = phi i8 [ -1, %bb.bp ], [ 59, %bb.dd ], [ %.sroa.22.0.copyload66.i.i.i, %bb.bq ], [ %.sroa.22.0.copyload66.i.i.i, %bb.bm ] ; 6 uses
  %.sroa.4.0.i.i = phi i32 [ %.sroa.9.0.copyload14.i.i.i, %bb.bp ], [ 999999999, %bb.dd ], [ %.sroa.9.0.copyload14.i.i.i, %bb.bq ], [ %.sroa.9.0.copyload14.i.i.i, %bb.bm ] ; 4 uses
  %.sroa.023.0.i.i.i = phi i1 [ false, %bb.bp ], [ true, %bb.dd ], [ false, %bb.bq ], [ false, %bb.bm ]
  %.not294.i.i.i.i = icmp ne i32 %.sroa.7.0.copyload6.i.i.i, -2147483648 ; 2 uses
  br i1 %.not294.i.i.i.i, label %bb.bs, label %.thread.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.ix = icmp sgt i32 %.sroa.7.0.copyload6.i.i.i, -10000
  call void @llvm.assume(i1 %i.ix), !noalias !71436
  %i.iy = icmp slt i32 %.sroa.7.0.copyload6.i.i.i, 10000
  call void @llvm.assume(i1 %i.iy), !noalias !71436
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bs, %bb.br
  %.not295.i.i.i.i = icmp eq i16 %.sroa.10.0.copyload18.i.i.i, -32768
  %spec.select.i.i.i = select i1 %.not295.i.i.i.i, i8 2, i8 %.sroa.30.0.copyload98.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.13.0.copyload30.i.i.i, -1
  br i1 %.not.i.i.i.i, label %.thread391.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.thread.i.i.i.i
  %i.iz = icmp ult i8 %.sroa.13.0.copyload30.i.i.i, 100
  call void @llvm.assume(i1 %i.iz), !noalias !71436
  %.not296.i.i.i.i = icmp eq i8 %spec.select.i.i.i, 2
  %or.cond325.i.i.i.i = or i1 %.not294.i.i.i.i, %.not296.i.i.i.i
  br i1 %or.cond325.i.i.i.i, label %.thread391.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ja = trunc nuw i8 %spec.select.i.i.i to i1
  %i.jb = sext i16 %.sroa.10.0.copyload18.i.i.i to i32
  %i.jc = mul nsw i32 %i.jb, 100
  %i.jd = zext nneg i8 %.sroa.13.0.copyload30.i.i.i to i32 ; 2 uses
  %i.je = sub nsw i32 0, %i.jd
  %.sroa.07.0.p.i.i.i.i = select i1 %i.ja, i32 %i.je, i32 %i.jd
  %.sroa.07.0.i.i.i.i = add nsw i32 %.sroa.07.0.p.i.i.i.i, %i.jc ; 2 uses
  %i.jf = add nsw i32 %.sroa.07.0.i.i.i.i, 9999
  %or.cond.i.i.i.i2 = icmp ult i32 %i.jf, 19999
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i2, i32 %.sroa.07.0.i.i.i.i, i32 -2147483648
  br label %.thread391.i.i.i.i

.thread391.i.i.i.i:                               ; preds = %bb.bu, %bb.bt, %.thread.i.i.i.i
  %i.jg = phi i32 [ %.sroa.7.0.copyload6.i.i.i, %.thread.i.i.i.i ], [ %.sroa.7.0.copyload6.i.i.i, %bb.bt ], [ %spec.select.i.i.i.i, %bb.bu ] ; 18 uses
  %.not298.i.i.i.i = icmp ne i32 %.sroa.8.0.copyload10.i.i.i, -2147483648 ; 2 uses
  br i1 %.not298.i.i.i.i, label %bb.bv, label %.thread397.i.i.i.i

bb.bv:                                            ; preds = %.thread391.i.i.i.i
  %i.jh = icmp sgt i32 %.sroa.8.0.copyload10.i.i.i, -10000
  call void @llvm.assume(i1 %i.jh), !noalias !71436
  %i.ji = icmp slt i32 %.sroa.8.0.copyload10.i.i.i, 10000
  call void @llvm.assume(i1 %i.ji), !noalias !71436
  br label %.thread397.i.i.i.i

.thread397.i.i.i.i:                               ; preds = %bb.bv, %.thread391.i.i.i.i
  %.not299.i.i.i.i = icmp eq i16 %.sroa.11.0.copyload22.i.i.i, -32768
  %spec.select368.i.i.i = select i1 %.not299.i.i.i.i, i8 2, i8 %.sroa.31.0.copyload102.i.i.i ; 2 uses
  %.not297.i.i.i.i = icmp eq i8 %.sroa.14.0.copyload34.i.i.i, -1
  br i1 %.not297.i.i.i.i, label %.thread398.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.thread397.i.i.i.i
  %i.jj = icmp ult i8 %.sroa.14.0.copyload34.i.i.i, 100
  call void @llvm.assume(i1 %i.jj), !noalias !71436
  %.not300.i.i.i.i = icmp eq i8 %spec.select368.i.i.i, 2
  %or.cond328.i.i.i.i = or i1 %.not298.i.i.i.i, %.not300.i.i.i.i
  br i1 %or.cond328.i.i.i.i, label %.thread398.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jk = trunc nuw i8 %spec.select368.i.i.i to i1
  %i.jl = sext i16 %.sroa.11.0.copyload22.i.i.i to i32
  %i.jm = mul nsw i32 %i.jl, 100
end_hunk_0
begin_hunk_1_@"_ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE":bb.a
  br i1 %or.cond.i170.i.i.i, label %bb.ea, label %.critedge.i171.i.i.i

.critedge.i171.i.i.i:                             ; preds = %bb.dj
  %i.ob = trunc nuw i8 %.sroa.28.0.copyload90.i.i.i to i1
  %i.oc = icmp eq i8 %.sroa.20.0.copyload58.i.i.i, 12 ; 2 uses
  %i.od = add nuw nsw i8 %.sroa.20.0.copyload58.i.i.i, 12
  %spec.select.i172.i.i.i = select i1 %i.oc, i8 12, i8 %i.od
  %..sroa.011.0.i.i.i.i = select i1 %i.oc, i8 0, i8 %.sroa.20.0.copyload58.i.i.i
  %.sroa.0.0.ph.i.i.i.i = select i1 %i.ob, i8 %spec.select.i172.i.i.i, i8 %..sroa.011.0.i.i.i.i ; 3 uses
  %i.oe = icmp samesign ult i8 %.sroa.20.0.copyload58.i.i.i, 13
  call void @llvm.assume(i1 %i.oe), !noalias !71436
  %.not235.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i, -1
  br i1 %.not235.i.i.i.i, label %.critedge252.i.i.i.i, label %.thread313.thread360.i.i.i.i

.thread313.i.i.i.i:                               ; preds = %bb.di
  %i.of = icmp samesign ult i8 %.sroa.19.0.copyload54.i.i.i, 24
  call void @llvm.assume(i1 %i.of), !noalias !71436
  %.not238.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i, -1
  br i1 %.not238.i.i.i.i, label %.thread313.thread.i.i.i.i, label %bb.dl

.thread313.thread360.i.i.i.i:                     ; preds = %.critedge.i171.i.i.i
  %i.og = icmp ult i8 %.sroa.21.0.copyload62.i.i.i, 60
  call void @llvm.assume(i1 %i.og), !noalias !71436
  br label %bb.dl

.critedge252.i.i.i.i:                             ; preds = %.critedge.i171.i.i.i
  %.not236.i.i.i.i = icmp eq i8 %.sroa.1957.0.i.i, -1
  %.not237.i.i.i.i = icmp eq i32 %.sroa.4.0.i.i, -1
  %or.cond = select i1 %.not236.i.i.i.i, i1 %.not237.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.dk, label %.thread313.thread.i.i.i.i

bb.dk:                                            ; preds = %.critedge252.i.i.i.i
  %.sroa.0.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0.ph.i.i.i.i to i64
  %.sroa.0.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i.i.i, 48
  br label %bb.eb

bb.dl:                                            ; preds = %.thread313.thread360.i.i.i.i, %.thread313.i.i.i.i
  %.sroa.0.0312363.i.i.i.i = phi i8 [ %.sroa.0.0.ph.i.i.i.i, %.thread313.thread360.i.i.i.i ], [ %.sroa.19.0.copyload54.i.i.i, %.thread313.i.i.i.i ]
  %i.oh = zext nneg i8 %.sroa.21.0.copyload62.i.i.i to i64
  %i.oi = shl nuw nsw i64 %i.oh, 40
  br label %.thread313.thread.i.i.i.i

.thread313.thread.i.i.i.i:                        ; preds = %bb.dl, %.critedge252.i.i.i.i, %.thread313.i.i.i.i
  %.not238359.i.i.i.i = phi i1 [ true, %.thread313.i.i.i.i ], [ false, %bb.dl ], [ true, %.critedge252.i.i.i.i ]
  %.sroa.0.0312358.i.i.i.i = phi i8 [ %.sroa.19.0.copyload54.i.i.i, %.thread313.i.i.i.i ], [ %.sroa.0.0312363.i.i.i.i, %bb.dl ], [ %.sroa.0.0.ph.i.i.i.i, %.critedge252.i.i.i.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i.i.i.i = phi i64 [ 280375465082880, %.thread313.i.i.i.i ], [ %i.oi, %bb.dl ], [ 280375465082880, %.critedge252.i.i.i.i ] ; 3 uses
  %.not239.i.i.i.i = icmp ne i8 %.sroa.1957.0.i.i, -1 ; 3 uses
  br i1 %.not239.i.i.i.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.thread313.thread.i.i.i.i
  %i.oj = icmp ult i8 %.sroa.1957.0.i.i, 61
  call void @llvm.assume(i1 %i.oj), !noalias !71436
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.thread313.thread.i.i.i.i
  %.not244.i.i.i.i = icmp ne i32 %.sroa.4.0.i.i, -1 ; 4 uses
  br i1 %.not244.i.i.i.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ok = icmp ult i32 %.sroa.4.0.i.i, 1000000000
  call void @llvm.assume(i1 %i.ok), !noalias !71436
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br i1 %.not238359.i.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not239.i.i.i.i, label %bb.dt, label %bb.du

bb.dr:                                            ; preds = %bb.dp
  %brmerge.i.i.i.i = or i1 %.not239.i.i.i.i, %.not244.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.sroa.0294.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0294.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i.i.i.i, 48
  br label %bb.eb

bb.dt:                                            ; preds = %bb.dq
  %i.ol = icmp samesign ugt i8 %.sroa.1957.0.i.i, 59 ; 2 uses
  br i1 %.not244.i.i.i.i, label %bb.dw, label %bb.dx

bb.du:                                            ; preds = %bb.dq
  br i1 %.not244.i.i.i.i, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.sroa.0299.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0299.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i.i.i.i, 48
  %.sroa.0299.6.insert.insert.i.i.i.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i.i.i.i, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.eb

bb.dw:                                            ; preds = %bb.dt
  br i1 %i.ol, label %bb.ea, label %bb.dz, !prof !65

bb.dx:                                            ; preds = %bb.dt
  br i1 %i.ol, label %bb.ea, label %bb.dy, !prof !65

bb.dy:                                            ; preds = %bb.dx
  %.sroa.0302.4.insert.ext.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i to i64
  %.sroa.0302.4.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i.i.i.i, 32
  %.sroa.0302.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0302.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i.i.i.i, 48
  %i.om = or disjoint i64 %.sroa.0302.6.insert.shift.i.i.i.i, %.sroa.0302.4.insert.shift.i.i.i.i
  %.sroa.0302.6.insert.insert.i.i.i.i = or i64 %i.om, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dw
  %.sroa.0306.0.insert.ext.i.i.i.i = zext nneg i32 %.sroa.4.0.i.i to i64
  %.sroa.0306.4.insert.ext.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i to i64
  %.sroa.0306.4.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i.i.i.i, 32
  %i.on = or disjoint i64 %.sroa.0306.4.insert.shift.i.i.i.i, %.sroa.0306.0.insert.ext.i.i.i.i
  %.sroa.0306.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0306.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i.i.i.i, 48
  %i.oo = or disjoint i64 %.sroa.0306.6.insert.shift.i.i.i.i, %i.on
  %.sroa.0306.6.insert.insert.i.i.i.i = or i64 %i.oo, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx, %bb.dw, %bb.du, %bb.dr, %bb.dj
  %.sink365.i.i.i.i = phi i8 [ 2, %bb.du ], [ 0, %bb.dx ], [ 2, %bb.dj ], [ 0, %bb.dw ], [ 2, %bb.dr ]
  %.sroa.01.sroa.12.0.extract.shift16.i.i = lshr i64 ptrtoint (ptr @1157 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.eb:                                            ; preds = %bb.dz, %bb.dy, %bb.dv, %bb.ds, %bb.dk
  %.sroa.0214.0.ph.i.i.i = phi i64 [ %.sroa.0302.6.insert.insert.i.i.i.i, %bb.dy ], [ %.sroa.0299.6.insert.insert.i.i.i.i, %bb.dv ], [ %.sroa.0306.6.insert.insert.i.i.i.i, %bb.dz ], [ %.sroa.0294.6.insert.shift.i.i.i.i, %bb.ds ], [ %.sroa.0.6.insert.shift.i.i.i.i, %bb.dk ] ; 7 uses
  %i.op = icmp eq i8 %.sroa.23.0.copyload70.i.i.i, -128
  br i1 %i.op, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oq = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i, -24
  call void @llvm.assume(i1 %i.oq), !noalias !71436
  %i.or = icmp slt i8 %.sroa.23.0.copyload70.i.i.i, 24
  call void @llvm.assume(i1 %i.or), !noalias !71436
  %.not.i173.i.i.i = icmp eq i8 %.sroa.24.0.copyload74.i.i.i, -128
  br i1 %.not.i173.i.i.i, label %.thread51.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.os = icmp sgt i8 %.sroa.24.0.copyload74.i.i.i, -60
  call void @llvm.assume(i1 %i.os), !noalias !71436
  %i.ot = icmp slt i8 %.sroa.24.0.copyload74.i.i.i, 60
  call void @llvm.assume(i1 %i.ot), !noalias !71436
  %i.ou = trunc nuw i8 %.sroa.29.0.copyload94.i.i.i to i1 ; 2 uses
  %i.ov = sub nsw i8 0, %.sroa.24.0.copyload74.i.i.i
  %spec.select.i.i174.i.i.i = select i1 %i.ou, i8 %i.ov, i8 %.sroa.24.0.copyload74.i.i.i ; 4 uses
  %.not65.i.i.i.i = icmp eq i8 %.sroa.25.0.copyload78.i.i.i, -128
  br i1 %.not65.i.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ow = icmp sgt i8 %.sroa.25.0.copyload78.i.i.i, -60
  call void @llvm.assume(i1 %i.ow), !noalias !71436
  %i.ox = icmp slt i8 %.sroa.25.0.copyload78.i.i.i, 60
  call void @llvm.assume(i1 %i.ox), !noalias !71436
  %i.oy = sub nsw i8 0, %.sroa.25.0.copyload78.i.i.i
  %spec.select.i19.i.i.i.i = select i1 %i.ou, i8 %i.oy, i8 %.sroa.25.0.copyload78.i.i.i
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %spec.select.i175.i.i.i = phi i8 [ 0, %bb.ed ], [ %spec.select.i19.i.i.i.i, %bb.ee ] ; 3 uses
  %i.oz = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i, 0 ; 2 uses
  %i.pa = icmp slt i8 %spec.select.i.i174.i.i.i, 0
  %or.cond40.i.i.i.i.i.i = and i1 %i.oz, %i.pa
  br i1 %or.cond40.i.i.i.i.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pb = icmp slt i8 %.sroa.23.0.copyload70.i.i.i, 0
  %i.pc = icmp sgt i8 %spec.select.i.i174.i.i.i, 0
  %or.cond41.i.i.i.i.i.i = and i1 %i.pb, %i.pc
  br i1 %or.cond41.i.i.i.i.i.i, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.pd = sub nsw i8 0, %spec.select.i.i174.i.i.i
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.sroa.0.1.i.i.i.i.i.i = phi i8 [ %spec.select.i.i174.i.i.i, %bb.eg ], [ %i.pd, %bb.eh ] ; 2 uses
  %i.pe = icmp slt i8 %spec.select.i175.i.i.i, 0  ; 2 uses
  %or.cond42.i.i.i.i.i.i = and i1 %i.oz, %i.pe
  br i1 %or.cond42.i.i.i.i.i.i, label %bb.ej, label %.thread51.i.i.i.i

bb.ej:                                            ; preds = %.thread51.i.i.i.i, %bb.ei
  %.sroa.0.1.i.i59.i.i.i.i = phi i8 [ %.sroa.0.1.i.i57.i.i.i.i, %.thread51.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.ei ]
  %.sroa.05.030374256.i.i.i.i = phi i8 [ %.sroa.05.030374255.i.i.i.i, %.thread51.i.i.i.i ], [ %spec.select.i175.i.i.i, %bb.ei ]
  %i.pf = sub nsw i8 0, %.sroa.05.030374256.i.i.i.i
  br label %bb.ek

.thread51.i.i.i.i:                                ; preds = %bb.ei, %bb.ec
  %i.pg = phi i1 [ %i.pe, %bb.ei ], [ false, %bb.ec ]
  %.sroa.0.1.i.i57.i.i.i.i = phi i8 [ %.sroa.0.1.i.i.i.i.i.i, %bb.ei ], [ 0, %bb.ec ] ; 4 uses
  %.sroa.05.030374255.i.i.i.i = phi i8 [ %spec.select.i175.i.i.i, %bb.ei ], [ 0, %bb.ec ] ; 3 uses
  %i.ph = icmp slt i8 %.sroa.23.0.copyload70.i.i.i, 0
  %i.pi = icmp sgt i8 %.sroa.05.030374255.i.i.i.i, 0 ; 2 uses
  %or.cond.i.i.i.i.i.i = and i1 %i.ph, %i.pi
  %i.pj = icmp sgt i8 %.sroa.0.1.i.i57.i.i.i.i, 0
  %or.cond38.i.i.i.i.i.i = and i1 %i.pg, %i.pj
  %i.pk = icmp slt i8 %.sroa.0.1.i.i57.i.i.i.i, 0
  %or.cond39.i.i.i.i.i.i = and i1 %i.pk, %i.pi
  %i.pl = or i1 %or.cond38.i.i.i.i.i.i, %or.cond39.i.i.i.i.i.i
  %or.cond44.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.pl
  br i1 %or.cond44.i.i.i.i.i.i, label %bb.ej, label %bb.ek

bb.ek:                                            ; preds = %.thread51.i.i.i.i, %bb.ej
  %.sroa.0.1.i.i58.i.i.i.i = phi i8 [ %.sroa.0.1.i.i59.i.i.i.i, %bb.ej ], [ %.sroa.0.1.i.i57.i.i.i.i, %.thread51.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.i = phi i8 [ %i.pf, %bb.ej ], [ %.sroa.05.030374255.i.i.i.i, %.thread51.i.i.i.i ] ; 3 uses
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.23.0.copyload70.i.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i.i.i.i, 16
  %.sroa.2.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.0.1.i.i58.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i, 8
  %.sroa.2.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i.i.i.i ; 2 uses
  %.sroa.012.0.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.06.0.i.i.i.i.i.i to i64
  %.sroa.012.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i.i.i.i, %.sroa.012.0.insert.ext.i.i.i.i.i.i
  %.sroa.0332.0.extract.trunc.i.i.i = trunc i64 %.sroa.0214.0.ph.i.i.i to i32 ; 3 uses
  br i1 %.sroa.023.0.i.i.i, label %bb.el, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i, %bb.ek
  %.sroa.01.sroa.0.0.extract.trunc6.pre-phi.i.i = phi i32 [ 999999999, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i ], [ %.sroa.0332.0.extract.trunc.i.i.i, %bb.ek ]
  %.sroa.01.sroa.12.0.extract.shift14.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 32
  %.sroa.13.8.insert.ext.i.i = zext i32 %.sroa.0191.sroa.0.0.i.i.i to i64
  %i.pm = shl nuw nsw i64 %.sroa.012.0.insert.insert.i.i.i.i.i.i, 32
  %.sroa.13.12.insert.insert.i.i = or disjoint i64 %i.pm, %.sroa.13.8.insert.ext.i.i
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread.i

bb.el:                                            ; preds = %bb.ek
  %i.pn = icmp ult i32 %.sroa.0332.0.extract.trunc.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.pn), !noalias !71436
  %i.po = icmp eq i32 %.sroa.0332.0.extract.trunc.i.i.i, 999999999
  br i1 %i.po, label %bb.em, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.em:                                            ; preds = %bb.el
  %.sroa.11336.13.extract.shift369.i.i.i = lshr exact i64 %.sroa.2.0.insert.insert.i.i.i.i.i.i, 8 ; 2 uses
  %.sroa.11336.13.extract.trunc.i.i.i = trunc nuw i64 %.sroa.11336.13.extract.shift369.i.i.i to i16
  %2 = trunc i64 %.sroa.11336.13.extract.shift369.i.i.i to i8 ; 3 uses
  %3 = icmp sgt i8 %2, -60
  call void @llvm.assume(i1 %3), !noalias !71436
  %4 = icmp slt i8 %2, 60
  call void @llvm.assume(i1 %4), !noalias !71436
  %5 = zext i8 %.sroa.06.0.i.i.i.i.i.i to i16
  %6 = or i16 %.sroa.11336.13.extract.trunc.i.i.i, %5
  %i.pp = icmp eq i16 %6, 0
  br i1 %i.pp, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.sroa.0332.4.extract.shift.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 32
  %.sroa.0332.4.extract.trunc.i.i.i = trunc i64 %.sroa.0332.4.extract.shift.i.i.i to i8 ; 2 uses
  %i.pq = icmp ult i8 %.sroa.0332.4.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.pq), !noalias !71436
  %i.pr = sub nsw i8 %.sroa.0332.4.extract.trunc.i.i.i, %.sroa.06.0.i.i.i.i.i.i ; 5 uses
  %i.ps = icmp sgt i8 %i.pr, -1
  br i1 %i.ps, label %bb.eq, label %bb.ep, !prof !24

bb.eo:                                            ; preds = %bb.em
  %i.pt = ashr i32 %.sroa.0191.sroa.0.0.i.i.i, 10
  %i.pu = trunc i32 %.sroa.0191.sroa.0.0.i.i.i to i16
  %i.pv = and i16 %i.pu, 511
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.pw = add nsw i8 %i.pr, 60
  br label %bb.er

bb.eq:                                            ; preds = %bb.en
  %i.px = icmp samesign ult i8 %i.pr, 60
  br i1 %i.px, label %bb.er, label %bb.es, !prof !24

bb.er:                                            ; preds = %bb.es, %bb.eq, %bb.ep
  %.sroa.030.0.i.i.i.i.i = phi i8 [ -1, %bb.ep ], [ 1, %bb.es ], [ 0, %bb.eq ]
  %.sroa.029.0.i.i.i.i.i = phi i8 [ %i.pw, %bb.ep ], [ %i.qc, %bb.es ], [ %i.pr, %bb.eq ]
  %.sroa.0332.5.extract.shift.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 40
  %.sroa.0332.5.extract.trunc.i.i.i = trunc i64 %.sroa.0332.5.extract.shift.i.i.i to i8 ; 2 uses
  %i.py = icmp ult i8 %.sroa.0332.5.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.py), !noalias !71436
  %i.pz = sub nsw i8 %.sroa.0332.5.extract.trunc.i.i.i, %2
  %i.qa = add nsw i8 %.sroa.030.0.i.i.i.i.i, %i.pz ; 5 uses
  %i.qb = icmp sgt i8 %i.qa, -1
  br i1 %i.qb, label %bb.eu, label %bb.et, !prof !24

bb.es:                                            ; preds = %bb.eq
  %i.qc = add nsw i8 %i.pr, -60
  br label %bb.er

bb.et:                                            ; preds = %bb.er
  %i.qd = add nsw i8 %i.qa, 60
  br label %bb.ev

bb.eu:                                            ; preds = %bb.er
  %i.qe = icmp samesign ult i8 %i.qa, 60
  br i1 %i.qe, label %bb.ev, label %bb.ew, !prof !24

bb.ev:                                            ; preds = %bb.ew, %bb.eu, %bb.et
  %.sroa.031.0.i.i.i.i.i = phi i8 [ %i.qd, %bb.et ], [ %i.qj, %bb.ew ], [ %i.qa, %bb.eu ]
  %.sroa.032.0.i.i.i.i.i = phi i8 [ -1, %bb.et ], [ 1, %bb.ew ], [ 0, %bb.eu ]
  %.sroa.0332.6.extract.shift.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i, 48
  %.sroa.0332.6.extract.trunc.i.i.i = trunc nuw nsw i64 %.sroa.0332.6.extract.shift.i.i.i to i8
  %i.qf = icmp samesign ult i64 %.sroa.0214.0.ph.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.qf), !noalias !71436
  %i.qg = sub nsw i8 %.sroa.0332.6.extract.trunc.i.i.i, %.sroa.23.0.copyload70.i.i.i
  %i.qh = add nsw i8 %.sroa.032.0.i.i.i.i.i, %i.qg ; 5 uses
  %i.qi = icmp sgt i8 %i.qh, -1
  br i1 %i.qi, label %bb.ex, label %bb.ey, !prof !24

bb.ew:                                            ; preds = %bb.eu
  %i.qj = add nsw i8 %i.qa, -60
  br label %bb.ev

bb.ex:                                            ; preds = %bb.ev
  %i.qk = icmp samesign ult i8 %i.qh, 24
  br i1 %i.qk, label %bb.ez, label %bb.fa, !prof !24

bb.ey:                                            ; preds = %bb.ev
  %i.ql = add nsw i8 %i.qh, 24
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fa, %bb.ey, %bb.ex
  %.sroa.033.0.i.i.i.i.i = phi i8 [ %i.qh, %bb.ex ], [ %i.qu, %bb.fa ], [ %i.ql, %bb.ey ]
  %.sroa.034.0.i.i.i.i.i = phi i16 [ 0, %bb.ex ], [ 1, %bb.fa ], [ -1, %bb.ey ]
  %i.qm = ashr i32 %.sroa.0191.sroa.0.0.i.i.i, 10 ; 6 uses
  %i.qn = trunc i32 %.sroa.0191.sroa.0.0.i.i.i to i16
  %i.qo = and i16 %i.qn, 511
  %i.qp = add nsw i16 %.sroa.034.0.i.i.i.i.i, %i.qo ; 5 uses
  %.sroa.026.0.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.qm, i1 true)
  %i.qq = mul i32 %.sroa.026.0.i.i.i.i.i, 33555415
  %i.qr = and i32 %i.qq, 100695055
  %i.qs = icmp samesign ult i32 %i.qr, 31745
  %.sroa.016.0.i.i.i.i.i = select i1 %i.qs, i16 366, i16 365 ; 2 uses
  %i.qt = icmp sgt i16 %i.qp, %.sroa.016.0.i.i.i.i.i
  br i1 %i.qt, label %bb.fb, label %bb.fc, !prof !26

bb.fa:                                            ; preds = %bb.ex
  %i.qu = add nsw i8 %i.qh, -24
  br label %bb.ez

bb.fb:                                            ; preds = %bb.ez
  %i.qv = sub nuw nsw i16 %i.qp, %.sroa.016.0.i.i.i.i.i
  %i.qw = add nsw i32 %i.qm, 1
  br label %bb.fe

bb.fc:                                            ; preds = %bb.ez
  %i.qx = icmp slt i16 %i.qp, 1
  br i1 %i.qx, label %bb.fd, label %bb.fe, !prof !26

bb.fd:                                            ; preds = %bb.fc
  %i.qy = add nsw i32 %i.qm, -1                   ; 2 uses
  %i.qz = icmp slt i32 %i.qm, 1
  %i.ra = sub nsw i32 1, %i.qm
  %.sroa.027.0.i.i.i.i.i = select i1 %i.qz, i32 %i.ra, i32 %i.qy
  %i.rb = mul i32 %.sroa.027.0.i.i.i.i.i, 33555415
  %i.rc = and i32 %i.rb, 100695055
  %i.rd = icmp samesign ult i32 %i.rc, 31745
  %.sroa.017.0.i.i.i.i.i = select i1 %i.rd, i16 366, i16 365
  %i.re = add nsw i16 %i.qp, %.sroa.017.0.i.i.i.i.i
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb
  %.sroa.011.0.i.i.i.i.i = phi i16 [ %i.qv, %bb.fb ], [ %i.re, %bb.fd ], [ %i.qp, %bb.fc ]
  %.sroa.06.0.i.i.i.i.i = phi i32 [ %i.qw, %bb.fb ], [ %i.qy, %bb.fd ], [ %i.qm, %bb.fc ]
  %.sroa.4.0.insert.ext.i.i.i.i.i.i = zext nneg i8 %.sroa.033.0.i.i.i.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i177.i.i.i = zext nneg i8 %.sroa.031.0.i.i.i.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i178.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i177.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i178.i.i.i
  %.sroa.2.0.insert.ext.i.i.i179.i.i.i = zext nneg i8 %.sroa.029.0.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i180.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i179.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i181.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i180.i.i.i
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i

_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i: ; preds = %bb.fe, %bb.eo
  %.sroa.06.0.sink.i.i.i.i.i = phi i32 [ %.sroa.06.0.i.i.i.i.i, %bb.fe ], [ %i.pt, %bb.eo ] ; 3 uses
  %.sroa.011.0.sink.i.i.i.i.i = phi i16 [ %.sroa.011.0.i.i.i.i.i, %bb.fe ], [ %i.pv, %bb.eo ] ; 3 uses
  %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i181.i.i.i, %bb.fe ], [ %.sroa.0214.0.ph.i.i.i, %bb.eo ] ; 4 uses
  %.sroa.611.12.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 32
  %.sroa.611.12.extract.trunc.i.i.i.i = trunc i64 %.sroa.611.12.extract.shift.i.i.i.i to i8 ; 2 uses
  %.sroa.611.13.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 40
  %.sroa.611.13.extract.trunc.i.i.i.i = trunc i64 %.sroa.611.13.extract.shift.i.i.i.i to i8 ; 2 uses
  %i.rf = add nsw i32 %.sroa.06.0.sink.i.i.i.i.i, -10000
  %or.cond.i.i182.i.i.i = icmp ult i32 %i.rf, -19999
  br i1 %or.cond.i.i182.i.i.i, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i, label %bb.ff, !prof !65

bb.ff:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i
  %.sroa.010.0.i.i183.i.i.i = call i32 @llvm.abs.i32(i32 %.sroa.06.0.sink.i.i.i.i.i, i1 true) ; 2 uses
  %i.rg = mul i32 %.sroa.010.0.i.i183.i.i.i, 33555415
  %i.rh = and i32 %i.rg, 100695055
  %i.ri = icmp samesign ult i32 %i.rh, 31745      ; 2 uses
  %i.rj = add nsw i16 %.sroa.011.0.sink.i.i.i.i.i, -1
  %or.cond1.i.i184.i.i.i = icmp ult i16 %i.rj, 365
  br i1 %or.cond1.i.i184.i.i.i, label %bb.fh, label %bb.fg, !prof !59

bb.fg:                                            ; preds = %bb.ff
  %i.rk = icmp eq i16 %.sroa.011.0.sink.i.i.i.i.i, 366
  %brmerge.not.i.i.i.i.i = and i1 %i.rk, %i.ri
  br i1 %brmerge.not.i.i.i.i.i, label %bb.fh, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.rl = shl nsw i32 %.sroa.06.0.sink.i.i.i.i.i, 10
  %i.rm = select i1 %i.ri, i32 512, i32 0
  %i.rn = or disjoint i32 %i.rm, %i.rl
  %i.ro = zext nneg i16 %.sroa.011.0.sink.i.i.i.i.i to i32 ; 3 uses
  %i.rp = or i32 %i.rn, %i.ro                     ; 2 uses
  %i.rq = icmp ne i32 %i.rp, 0
  call void @llvm.assume(i1 %i.rq), !noalias !71436
  %i.rr = icmp samesign ult i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.rr), !noalias !71436
  %.sroa.611.14.extract.shift.i.mask.i.i.i = and i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i, 8725724278030336
  %i.rs = icmp eq i64 %.sroa.611.14.extract.shift.i.mask.i.i.i, 6473924464345088
  br i1 %i.rs, label %bb.fi, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.rt = icmp ult i8 %.sroa.611.13.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.rt), !noalias !71436
  %i.ru = icmp eq i8 %.sroa.611.13.extract.trunc.i.i.i.i, 59
  br i1 %i.ru, label %bb.fj, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.rv = icmp ult i8 %.sroa.611.12.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.rv), !noalias !71436
  %i.rw = icmp eq i8 %.sroa.611.12.extract.trunc.i.i.i.i, 59
  br i1 %i.rw, label %bb.fk, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

bb.fk:                                            ; preds = %bb.fj
  %i.rx = lshr i32 %i.rp, 9
  %.lobit.i.i.i.i.i = and i32 %i.rx, 1
  %i.ry = add nuw nsw i32 %.lobit.i.i.i.i.i, 59   ; 2 uses
  %.not.i.i185.i.i.i = icmp samesign ult i32 %i.ry, %i.ro ; 2 uses
  %..i.i186.i.i.i = select i1 %.not.i.i185.i.i.i, i32 %i.ry, i32 0
  %i.rz = sub nsw i32 %i.ro, %..i.i186.i.i.i      ; 2 uses
  %i.sa = mul nsw i32 %i.rz, 268
  %i.sb = add nsw i32 %i.sa, 8028
  %i.sc = lshr i32 %i.sb, 13                      ; 2 uses
  %i.sd = mul nuw nsw i32 %i.sc, 3917
  %i.se = add nuw nsw i32 %i.sd, 28902
  %i.sf = lshr i32 %i.se, 7
  %i.sg = sub nsw i32 %i.rz, %i.sf
  %i.sh = trunc i32 %i.sg to i8
  %..i10.i.i.i.i = select i1 %.not.i.i185.i.i.i, i32 2, i32 0
  %i.si = add nuw nsw i32 %i.sc, %..i10.i.i.i.i
  %i.sj = trunc i32 %i.si to i8                   ; 4 uses
  %i.sk = icmp ne i8 %i.sj, 0
  call void @llvm.assume(i1 %i.sk), !noalias !71436
  %i.sl = icmp eq i8 %i.sj, 2
  br i1 %i.sl, label %bb.fl, label %bb.fm, !prof !26

bb.fl:                                            ; preds = %bb.fk
  %.sroa.06.0.i.i.i.i3 = zext nneg i32 %.sroa.010.0.i.i183.i.i.i to i64
  %i.sm = mul i64 %.sroa.06.0.i.i.i.i3, 4611686019114582671
  %i.sn = and i64 %i.sm, -4611685951855394801
  %i.so = icmp ult i64 %i.sn, 66571993089
  %..i.i.i.i = select i1 %i.so, i8 29, i8 28
  br label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i

bb.fm:                                            ; preds = %bb.fk
  %i.sp = lshr i8 %i.sj, 3
  %i.sq = xor i8 %i.sp, %i.sj
  %i.sr = or i8 %i.sq, 30
  br label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i

_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i: ; preds = %bb.fm, %bb.fl
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.sr, %bb.fm ], [ %..i.i.i.i, %bb.fl ]
  %i.ss = icmp eq i8 %.sroa.01.0.i.i.i.i, %i.sh
  br i1 %i.ss, label %._crit_edge.i.i, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i

_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i: ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i, %bb.el
  %.sroa.01.sroa.12.0.extract.shift.i.i = lshr i64 ptrtoint (ptr @1157 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i: ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i, %bb.eb, %bb.ea, %bb.db, %bb.cy, %bb.cx, %bb.cu, %bb.cn, %bb.cg, %bb.ca, %bb.bn
  %.sroa.34.i.i.sroa.5.0.i = phi i16 [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.db ], [ undef, %bb.ea ], [ undef, %bb.eb ], [ undef, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i ], [ undef, %bb.cu ], [ %.sroa.34.i.i.sroa.5.0.copyload.i, %bb.cn ], [ undef, %bb.cg ], [ undef, %bb.ca ], [ undef, %bb.bn ]
  %.sroa.34.i.i.sroa.4.0.i = phi i16 [ undef, %bb.cx ], [ undef, %bb.cy ], [ undef, %bb.db ], [ undef, %bb.ea ], [ undef, %bb.eb ], [ undef, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i ], [ undef, %bb.cu ], [ %.sroa.34.i.i.sroa.4.0.copyload.i, %bb.cn ], [ undef, %bb.cg ], [ undef, %bb.ca ], [ undef, %bb.bn ]
  %.sroa.34.i.i.sroa.0.0.i = phi i32 [ 0, %bb.cx ], [ 0, %bb.cy ], [ 0, %bb.db ], [ 0, %bb.ea ], [ 0, %bb.eb ], [ 0, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i ], [ 0, %bb.cu ], [ %i.li, %bb.cn ], [ 0, %bb.cg ], [ 0, %bb.ca ], [ 0, %bb.bn ]
  %.sroa.01.sroa.12.0.ph.i.i = phi i64 [ 0, %bb.cx ], [ 0, %bb.cy ], [ %.sroa.0191.sroa.15.0.extract.shift201.i.i.i, %bb.db ], [ %.sroa.01.sroa.12.0.extract.shift16.i.i, %bb.ea ], [ 0, %bb.eb ], [ %.sroa.01.sroa.12.0.extract.shift.i.i, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i ], [ %.sroa.0191.sroa.15.0.extract.shift199.i.i.i, %bb.cu ], [ %i.lh, %bb.cn ], [ %.sroa.0191.sroa.15.0.extract.shift197.i.i.i, %bb.cg ], [ %.sroa.0191.sroa.15.0.extract.shift.i.i.i, %bb.ca ], [ %.sroa.01.sroa.12.0.extract.shift12.i.i, %bb.bn ]
  %.sroa.01.sroa.0.0.ph.i.i = phi i32 [ undef, %bb.cx ], [ undef, %bb.cy ], [ %.sroa.0191.sroa.0.0.extract.trunc196.i.i.i, %bb.db ], [ ptrtoint (ptr @1157 to i32), %bb.ea ], [ undef, %bb.eb ], [ ptrtoint (ptr @1157 to i32), %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i ], [ %.sroa.0191.sroa.0.0.extract.trunc195.i.i.i, %bb.cu ], [ %i.lg, %bb.cn ], [ %.sroa.0191.sroa.0.0.extract.trunc.i.i.i, %bb.cg ], [ ptrtoint (ptr @1154 to i32), %bb.ca ], [ ptrtoint (ptr @1148 to i32), %bb.bn ]
  %.sroa.20.0.ph.i.i = phi i8 [ 2, %bb.cx ], [ 2, %bb.cy ], [ %.sink.i363.ph.i.i.i.i, %bb.db ], [ %.sink365.i.i.i.i, %bb.ea ], [ 2, %bb.eb ], [ 1, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i ], [ %.sink.i349.ph.i.i.i.i, %bb.cu ], [ %i.lf, %bb.cn ], [ %.sink.i342.ph.i.i.i.i, %bb.cg ], [ 1, %bb.ca ], [ 0, %bb.bn ]
  %.sroa.13.0.ph.i.i = phi i64 [ undef, %bb.cx ], [ undef, %bb.cy ], [ %.sroa.8385.0.ph.i.i.i.i, %bb.db ], [ 6, %bb.ea ], [ undef, %bb.eb ], [ 6, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i ], [ %.sroa.8378.0.ph.i.i.i.i, %bb.cu ], [ %.sroa.17.4.copyload193.i.i.i, %bb.cn ], [ %.sroa.8371.0.ph.i.i.i.i, %bb.cg ], [ 7, %bb.ca ], [ 9, %bb.bn ] ; 2 uses
  %.sroa.01.sroa.12.0.insert.shift19.i.i = shl nuw i64 %.sroa.01.sroa.12.0.ph.i.i, 32
end_hunk_1
