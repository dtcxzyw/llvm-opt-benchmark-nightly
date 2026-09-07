Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4jiff3fmt7strtime7printer12write_offset17haf4eeb25cf4ded75E:bb.a
  br i1 %i.ca, label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit.thread, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49._ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45_crit_edge

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49._ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45_crit_edge: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49
  %.pre73 = load i64, ptr %i.as, align 8, !alias.scope !4305, !noalias !4306
  %.pre74 = load i16, ptr %i.ao, align 8, !alias.scope !4305, !noalias !4306 ; 2 uses
  %.pre76 = zext i16 %.pre74 to i64
  br label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49._ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45_crit_edge, %bb.o
  %.pre-phi77 = phi i64 [ %.pre76, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49._ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45_crit_edge ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cb = phi i16 [ %.pre74, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49._ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45_crit_edge ], [ %i.bs, %bb.o ]
  %i.cc = phi i64 [ %.pre73, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49._ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45_crit_edge ], [ %i.bv, %bb.o ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4305)
  %i.cd = sub nuw i64 %i.cc, %.pre-phi77
  %i.ce = icmp ugt i64 %i.cd, 1
  br i1 %i.ce, label %bb.v, label %bb.p, !prof !16

bb.p:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45, !noalias !4307
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cf = load i64, ptr %i.as, align 8, !noalias !4308, !noundef !11
  %i.cg = zext i16 %i.bo to i64                   ; 2 uses
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.r, label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit55, !prof !23

bb.r:                                             ; preds = %bb.q
  %i.ci = tail call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %4) ; 2 uses
  %i.cj = extractvalue { i64, ptr } %i.ci, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pre71 = load i64, ptr %i.as, align 8, !alias.scope !4309, !noalias !4308
  %.pre72 = load i16, ptr %i.ao, align 8, !alias.scope !4309, !noalias !4308 ; 2 uses
  %.pre75 = zext i16 %.pre72 to i64               ; 2 uses
  %i.cl = icmp eq i64 %.pre71, %.pre75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4309)
  br i1 %i.cl, label %bb.t, label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit55, !prof !67

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !4310
  unreachable

_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit55: ; preds = %bb.q, %bb.s
  %i.cm = phi i16 [ %.pre72, %bb.s ], [ %i.bo, %bb.q ]
  %.pre-phi101 = phi i64 [ %.pre75, %bb.s ], [ %i.cg, %bb.q ]
  %i.cn = load ptr, ptr %i.an, align 8, !alias.scope !4309, !noalias !4308, !nonnull !11, !align !13, !noundef !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.pre-phi101
  store i8 58, ptr %i.co, align 1, !noalias !4310
  %i.cp = add i16 %i.cm, 1                        ; 2 uses
  store i16 %i.cp, ptr %i.ao, align 8, !alias.scope !4309, !noalias !4308
  br label %bb.o

bb.u:                                             ; preds = %bb.r
  %i.cq = extractvalue { i64, ptr } %i.ci, 1
  br label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit.thread

bb.v:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i45
  %i.cr = load ptr, ptr %i.an, align 8, !alias.scope !4305, !noalias !4306, !nonnull !11, !align !13, !noundef !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.pre-phi77 ; 2 uses
  %i.ct = shl nuw nsw i32 %i.e, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @134, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !4307, !noundef !11
  store i8 %i.cw, ptr %i.cs, align 1, !noalias !4307
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !4307, !noundef !11
  store i8 %i.cz, ptr %i.cx, align 1, !noalias !4307
  %i.da = add i16 %i.cb, 2
  store i16 %i.da, ptr %i.ao, align 8, !alias.scope !4305, !noalias !4306
  %or.cond3.not = or i1 %i.bp, %3
  br i1 %or.cond3.not, label %bb.w, label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit.thread

bb.w:                                             ; preds = %bb.v
  br i1 %1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.db = tail call fastcc { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter14write_int_pad217h917dffc59ba07129E(ptr noalias noundef align 8 dereferenceable(24) %4, i8 noundef %i.g) ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0      ; 2 uses
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = extractvalue { i64, ptr } %i.db, 1
  %spec.select = select i1 %i.dd, ptr %i.de, ptr undef
  br label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.df = tail call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i8 noundef 58) ; 2 uses
  %i.dg = extractvalue { i64, ptr } %i.df, 0
  %i.dh = trunc nuw i64 %i.dg to i1
  br i1 %i.dh, label %bb.z, label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.di = extractvalue { i64, ptr } %i.df, 1
  br label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit.thread

_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit.thread: ; preds = %bb.g, %bb.c, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i, %bb.x, %bb.m, %bb.v, %bb.u, %bb.z
  %.sroa.8.0 = phi ptr [ %i.bz, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49 ], [ undef, %bb.v ], [ undef, %bb.m ], [ %i.cq, %bb.u ], [ %i.ax, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i ], [ %i.di, %bb.z ], [ %spec.select, %bb.x ], [ %i.ah, %bb.g ], [ %i.r, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i49 ], [ 0, %bb.v ], [ 0, %bb.m ], [ 1, %bb.u ], [ 1, %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i ], [ 1, %bb.z ], [ %i.dc, %bb.x ], [ 1, %bb.g ], [ 1, %bb.c ]
  %i.dj = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.dk = insertvalue { i64, ptr } %i.dj, ptr %.sroa.8.0, 1
  ret { i64, ptr } %i.dk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$16fmt_month_abbrev17ha95669ebf8fdc6aeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.24.val, i64 92
  %i.f = load i8, ptr %i.e, align 4, !range !21, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %.24.val, i64 93
  %i.i = load i8, ptr %i.h, align 1
  br i1 %i.g, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4325
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime7to_date17hf8614c6855a6894eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.24.val)
  %i.j = load i16, ptr %i.d, align 8, !range !62, !noalias !4325, !noundef !11
  %i.k = trunc nuw i16 %i.j to i1
  br i1 %i.k, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4326)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4327)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4328, !noalias !4325, !noundef !11 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !4329
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l), !noalias !4325, !inline_history !0
  br label %bb.g

"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit": ; preds = %bb.b
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.63.0.copyload.i.i = load i8, ptr %.sroa.63.0..sroa_idx.i.i, align 4, !noalias !4325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4325
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit.thread": ; preds = %bb.a, %"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit"
  %.pn3.i3 = phi i8 [ %.sroa.63.0.copyload.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit" ], [ %i.i, %bb.a ] ; 2 uses
  %switch.tableidx = add i8 %.pn3.i3, -1          ; 2 uses
  %i.q = icmp ult i8 %switch.tableidx, 12
  br i1 %i.q, label %switch.lookup, label %bb.f, !prof !63

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.pn3.i3, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.43.0..sroa_idx.i, align 8
  store ptr @213, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.u, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #45
  unreachable

switch.lookup:                                    ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h08e95605c4a63d70E.exit.thread"
  %i.v = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$16fmt_month_abbrev17ha95669ebf8fdc6aeE", i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4325
  %i.w = tail call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0)
  store ptr %i.w, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %.sink = phi i8 [ 3, %bb.g ], [ 0, %switch.lookup ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.x, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define range(i64 1536, 4785070309115904) i64 @"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$20utf8_decode_and_bump17hc14e020fee076472E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 8 uses
  %i.e = tail call i64 @_ZN4jiff4util4utf86decode17h97ece18b6d229b67E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d) ; 7 uses
  %.sroa.511.0.extract.shift = lshr i64 %i.e, 32
  %i.f = and i64 %i.e, 255
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @254, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #45
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.i = load i8, ptr %i.h, align 1, !range !21, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i64 %i.e, 549755813888
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i64 %i.e, 8796093022208
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp samesign ult i64 %i.e, 281474976710656
  %. = select i1 %i.m, i64 3, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.08.0 = phi i64 [ 2, %bb.f ], [ %., %bb.g ], [ 1, %bb.e ] ; 3 uses
  %i.n = icmp ugt i64 %.sroa.08.0, %i.d
  br i1 %i.n, label %bb.j, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.o = and i64 %i.e, 9007194959773696
  %i.p = or disjoint i64 %i.o, 1536
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.08.0, i64 noundef %i.d, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #45
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.i
  %.sroa.08.0.pn = phi i64 [ %.sroa.08.0, %bb.i ], [ %i.q, %bb.l ] ; 2 uses
  %.sroa.51.0 = phi i64 [ %i.p, %bb.i ], [ 281462091810304, %bb.l ]
  %storemerge = sub nuw i64 %i.d, %.sroa.08.0.pn
  %storemerge18 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.08.0.pn
  store ptr %storemerge18, ptr %i.a, align 8
  store i64 %storemerge, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.q = and i64 %.sroa.511.0.extract.shift, 255  ; 3 uses
  %i.r = icmp ugt i64 %i.q, %i.d
  br i1 %i.r, label %bb.n, label %bb.k, !prof !23

bb.m:                                             ; preds = %bb.d, %bb.k
  %.sroa.0.0.insert.insert = phi i64 [ %.sroa.51.0, %bb.k ], [ 1537, %bb.d ]
  ret i64 %.sroa.0.0.insert.insert

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.q, i64 noundef %i.d, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #45
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, ptr } @"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E"(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [100 x i8], align 1               ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [100 x i8], align 1               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [100 x i8], align 1               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [100 x i8], align 1               ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [40 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [100 x i8], align 1              ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [40 x i8], align 8               ; 9 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [100 x i8], align 1              ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [48 x i8], align 8               ; 7 uses
  %i.ap = alloca [1 x i8], align 1                ; 3 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [16 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [16 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [16 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 8               ; 7 uses
  %i.br = alloca [16 x i8], align 8               ; 7 uses
  %i.bs = alloca [16 x i8], align 8               ; 7 uses
  %i.bt = alloca [16 x i8], align 8               ; 7 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [16 x i8], align 8               ; 7 uses
  %i.bx = alloca [16 x i8], align 8               ; 7 uses
  %i.by = alloca [16 x i8], align 8               ; 3 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 6 uses
  %i.cd = alloca [12 x i8], align 4               ; 6 uses
  %i.ce = alloca [48 x i8], align 8               ; 8 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [10 x i8], align 1               ; 5 uses
  %i.ch = alloca [8 x i8], align 8                ; 4 uses
  %i.ci = alloca [4 x i8], align 4                ; 5 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
  %i.ck = alloca [32 x i8], align 8               ; 11 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [24 x i8], align 8               ; 6 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [24 x i8], align 8               ; 6 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  %i.cs = alloca [24 x i8], align 8               ; 6 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [24 x i8], align 8               ; 6 uses
  %i.cv = alloca [24 x i8], align 8               ; 6 uses
  %i.cw = alloca [24 x i8], align 8               ; 6 uses
  %i.cx = alloca [24 x i8], align 8               ; 6 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 6 uses
  %i.db = alloca [24 x i8], align 8               ; 6 uses
  %i.dc = alloca [24 x i8], align 8               ; 6 uses
  %i.dd = alloca [24 x i8], align 8               ; 6 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [24 x i8], align 8               ; 6 uses
  %i.dg = alloca [24 x i8], align 8               ; 6 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [24 x i8], align 8               ; 6 uses
  %i.dj = alloca [24 x i8], align 8               ; 6 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [24 x i8], align 8               ; 6 uses
  %i.dm = alloca [24 x i8], align 8               ; 6 uses
  %i.dn = alloca [24 x i8], align 8               ; 6 uses
  %i.do = alloca [24 x i8], align 8               ; 6 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [24 x i8], align 8               ; 6 uses
  %i.dr = alloca [24 x i8], align 8               ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4jiff4span9SpanTotal5total17h175a92fa97d17efcE:bb.a
  %.sroa.045.0.copyload = load i64, ptr %i.ca, align 8 ; 2 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.446.0.copyload = load i32, ptr %.sroa.446.0..sroa_idx, align 8 ; 2 uses
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.749.0.copyload = load i32, ptr %.sroa.749.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cf = invoke fastcc { i64, i32 } @"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE"(i64 noundef %.sroa.648.0.copyload, i32 noundef %.sroa.749.0.copyload, i64 noundef %.sroa.045.0.copyload, i32 noundef %.sroa.446.0.copyload)
          to label %bb.z unwind label %bb.u       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cg = extractvalue { i64, i32 } %i.cf, 0
  %i.ch = extractvalue { i64, i32 } %i.cf, 1
  %i.ci = sext i64 %i.cg to i128
  %i.cj = mul nsw i128 %i.ci, 1000000000
  %i.ck = sext i32 %i.ch to i128
  %i.cl = add nsw i128 %i.cj, %i.ck
  %i.cm = sitofp i128 %i.cl to double
  switch i64 %.sroa.065.0, label %bb.ac [
    i64 2, label %bb.aa
    i64 0, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i64, ptr %.sroa.567.0..sroa_idx68, align 8, !noundef !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cp = load i32, ptr %i.co, align 8, !noundef !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.530.0 = phi i32 [ %i.cu, %bb.ad ], [ %i.cp, %bb.aa ]
  %.sroa.029.0 = phi i64 [ %i.cs, %bb.ad ], [ %i.cn, %bb.aa ]
  %i.cq = invoke fastcc { i64, i32 } @"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE"(i64 noundef %.sroa.029.0, i32 noundef %.sroa.530.0, i64 noundef %.sroa.045.0.copyload, i32 noundef %.sroa.446.0.copyload)
          to label %bb.ae unwind label %bb.u      ; 2 uses

bb.ac:                                            ; preds = %bb.z
  %i.cr = load ptr, ptr %.sroa.567.0..sroa_idx68, align 8, !nonnull !11, !align !12, !noundef !11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  %.sroa.051.0 = phi ptr [ %i.cr, %bb.ac ], [ %.sroa.567.0..sroa_idx68, %bb.z ] ; 2 uses
  %i.cs = load i64, ptr %.sroa.051.0, align 8, !noundef !11
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !noundef !11
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ab
  %i.cv = call fastcc noundef i64 @_ZN4jiff4span4Span8get_unit17ha7eddf39c7f7e735E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bo, i8 noundef %i.l)
  %i.cw = extractvalue { i64, i32 } %i.cq, 0
  %i.cx = sext i64 %i.cw to i128
  %i.cy = mul nsw i128 %i.cx, 1000000000
  %i.cz = extractvalue { i64, i32 } %i.cq, 1
  %i.da = sext i32 %i.cz to i128
  %i.db = add nsw i128 %i.cy, %i.da
  %i.dc = sitofp i128 %i.db to double
  %i.dd = sitofp i64 %i.cv to double
  %i.de = fdiv double %i.dc, %i.cm
  %i.df = sitofp i8 %i.br to double
  %i.dg = fmul double %i.de, %i.df
  %i.dh = fadd double %i.dg, %i.dd
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.dh, ptr %i.di, align 8
  store i64 0, ptr %0, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val105 = load ptr, ptr %i.dj, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %.sroa.065.0, ptr %.val105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val101 = load ptr, ptr %i.dk, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %i.ar, ptr %.val101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.an, %bb.af, %bb.e, %switch.lookup, %bb.k, %bb.ae
  ret void

bb.af:                                            ; preds = %switch.lookup153, %bb.x
  %.sroa.032.3 = phi i1 [ true, %switch.lookup153 ], [ %.sroa.032.2, %bb.x ]
  %.not88 = icmp ne i64 %i.ar, 2
  %brmerge.not = and i1 %.not88, %.sroa.032.3
  br i1 %brmerge.not, label %bb.ag, label %.critedge

switch.lookup153:                                 ; preds = %bb.n
  %i.dl = zext nneg i8 %i.l to i64
  %switch.gep154 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.646, i64 %i.dl
  %switch.load155 = load i32, ptr %switch.gep154, align 4
  %i.dm = zext nneg i8 %i.l to i64
  %switch.gep156 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4jiff4span9SpanTotal5total17h175a92fa97d17efcE.643, i64 %i.dm
  %switch.load157 = load i64, ptr %switch.gep156, align 8
  %i.dn = extractvalue { i64, i32 } %i.bp, 0
  %i.do = sext i64 %i.dn to i128
  %i.dp = mul nsw i128 %i.do, 1000000000
  %i.dq = extractvalue { i64, i32 } %i.bp, 1
  %i.dr = sext i32 %i.dq to i128
  %i.ds = add nsw i128 %i.dp, %i.dr
  %i.dt = sitofp i128 %i.ds to double
  %i.du = zext nneg i64 %switch.load157 to i128
  %i.dv = zext nneg i32 %switch.load155 to i128
  %i.dw = add nuw nsw i128 %i.du, %i.dv
  %i.dx = uitofp nneg i128 %i.dw to double
  %i.dy = fdiv double %i.dt, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.dy, ptr %i.dz, align 8
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val97 = load ptr, ptr %i.ea, align 8          ; 3 uses
  %i.eb = icmp eq i64 %i.ar, 0
  br i1 %i.eb, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.ec = ptrtoint ptr %.val97 to i64
  %i.ed = and i64 %i.ec, 7
  switch i64 %i.ed, label %bb.ai [
    i64 1, label %bb.an
    i64 2, label %bb.an
    i64 3, label %bb.an
    i64 0, label %bb.an
    i64 4, label %bb.aj
    i64 5, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9983
  %i.ee = getelementptr i8, ptr %.val97, i64 -20  ; 2 uses
  store ptr %i.ee, ptr %i.b, align 8, !noalias !9983
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !9984
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.ak, label %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0a3f70bfa2a38bd6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !noalias !9983
  br label %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9983
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9983
  %i.eh = getelementptr i8, ptr %.val97, i64 -21  ; 2 uses
  store ptr %i.eh, ptr %i.a, align 8, !noalias !9983
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !9985
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.am, label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i"

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc66d1eb56d3b66d3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !9983
  br label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i": ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9983
  br label %bb.an

bb.an:                                            ; preds = %bb.ag, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i"
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val94 = load i64, ptr %i.ek, align 8, !range !53, !noundef !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val95 = load ptr, ptr %i.el, align 8
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$jiff..span..RelativeZoned$GT$17h5b1b81c4426d6711E"(i64 %.val94, ptr %.val95)
  br label %.critedge

bb.ao:                                            ; preds = %bb.ap, %bb.p
  resume { ptr, i32 } %.pn85

bb.ap:                                            ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val91 = load ptr, ptr %i.em, align 8
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$jiff..span..RelativeZoned$GT$17h5b1b81c4426d6711E"(i64 %i.ar, ptr %.val91) #47
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val = load i64, ptr %i.en, align 8, !range !53, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val89 = load ptr, ptr %i.eo, align 8
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$jiff..span..RelativeZoned$GT$17h5b1b81c4426d6711E"(i64 %.val, ptr %.val89) #47
  br label %bb.ao
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @"_ZN4jiff4util1b102_$LT$impl$u20$core..convert..From$LT$jiff..util..b..BoundsError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h1864ecdf257f5c1dE"(i8 noundef range(i8 0, 52) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @"_ZN4jiff4util1b109_$LT$impl$u20$core..convert..From$LT$jiff..util..b..SpecialBoundsError$GT$$u20$for$u20$jiff..error..Error$GT$4from17he6f9c2aee0cd9036E"(i8 noundef range(i8 0, 4) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4jiff5error5Error14special_bounds17h6a430a2de9cef607E(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 6400, -4294959104) i64 @_ZN4jiff4util1b10SpanMonths11checked_add17hb891e4cd14f7afcdE(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_add17hc125ea3836743cdfE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -239977
  %narrow.i.i = icmp ult i32 %i.d, -479953
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 6400
  br label %_ZN4jiff4util1b6Bounds11checked_add17hc125ea3836743cdfE.exit

_ZN4jiff4util1b6Bounds11checked_add17hc125ea3836743cdfE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 6401, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 6400, -4294959104) i64 @_ZN4jiff4util1b10SpanMonths11checked_mul17hee0889978bf91a30E(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_mul17h4e77631e6ebfbed2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -239977
  %narrow.i.i = icmp ult i32 %i.d, -479953
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 6400
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h4e77631e6ebfbed2E.exit

_ZN4jiff4util1b6Bounds11checked_mul17h4e77631e6ebfbed2E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 6401, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b11SpanMinutes11checked_mul17hc367dac1e2ece5a5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, 10518456960
  %or.cond.i.i = icmp ult i64 %i.d, 21036913921
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 29, ptr %i.e, align 1, !alias.scope !9990
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !9990
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 29, ptr %i.g, align 1, !alias.scope !9991
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit

_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !9991
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b11SpanSeconds11checked_mul17heaec23c93bbca5d2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, 631107417600
  %or.cond.i.i = icmp ult i64 %i.d, 1262214835201
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 30, ptr %i.e, align 1, !alias.scope !9996
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hbbb05c902c03a621E.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !9996
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hbbb05c902c03a621E.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 30, ptr %i.g, align 1, !alias.scope !9997
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hbbb05c902c03a621E.exit

_ZN4jiff4util1b6Bounds11checked_mul17hbbb05c902c03a621E.exit: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !9997
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b11UnixSeconds11checked_add17h7c033ed204d1e754E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, 377705023201
  %or.cond.i.i = icmp ult i64 %i.d, 631107230402
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 40, ptr %i.e, align 1, !alias.scope !10002
  br label %_ZN4jiff4util1b6Bounds11checked_add17hec9854c1106d8c5aE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !10002
  br label %_ZN4jiff4util1b6Bounds11checked_add17hec9854c1106d8c5aE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 40, ptr %i.g, align 1, !alias.scope !10003
  br label %_ZN4jiff4util1b6Bounds11checked_add17hec9854c1106d8c5aE.exit

_ZN4jiff4util1b6Bounds11checked_add17hec9854c1106d8c5aE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !10003
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 9472, -4294950912) i64 @_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_add17ha5d51641ae2c33a7E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -2932897
  %narrow.i.i = icmp ult i32 %i.d, -7304484
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 9472
  br label %_ZN4jiff4util1b6Bounds11checked_add17ha5d51641ae2c33a7E.exit

_ZN4jiff4util1b6Bounds11checked_add17ha5d51641ae2c33a7E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 9473, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 9472, -4294950912) i64 @_ZN4jiff4util1b13UnixEpochDays11checked_sub17hb21b2a799e3f9535E(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_sub17he8326c56b47b37edE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -2932897
  %narrow.i.i = icmp ult i32 %i.d, -7304484
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 9472
  br label %_ZN4jiff4util1b6Bounds11checked_sub17he8326c56b47b37edE.exit

_ZN4jiff4util1b6Bounds11checked_sub17he8326c56b47b37edE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 9473, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b15SpanNanoseconds11checked_mul17h797b7cf6f288f733E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 34, ptr %i.d, align 1, !alias.scope !10008
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h8ee9f8cde29fd1afE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.e, align 8, !alias.scope !10008
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h8ee9f8cde29fd1afE.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 34, ptr %i.f, align 1, !alias.scope !10009
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h8ee9f8cde29fd1afE.exit

_ZN4jiff4util1b6Bounds11checked_mul17h8ee9f8cde29fd1afE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !10009
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b16SpanMicroseconds11checked_mul17h8c177da5cdd6667dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, 631107417600000000
  %or.cond.i.i = icmp ult i64 %i.d, 1262214835200000001
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 32, ptr %i.e, align 1, !alias.scope !10014
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hfb90848f520d5988E.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !10014
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hfb90848f520d5988E.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 32, ptr %i.g, align 1, !alias.scope !10015
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hfb90848f520d5988E.exit

_ZN4jiff4util1b6Bounds11checked_mul17hfb90848f520d5988E.exit: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !10015
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b16SpanMilliseconds11checked_mul17h9303b64a8d643494E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, 631107417600000
  %or.cond.i.i = icmp ult i64 %i.d, 1262214835200001
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 31, ptr %i.e, align 1, !alias.scope !10020
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h46bbbd3871edf370E.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !10020
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h46bbbd3871edf370E.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 31, ptr %i.g, align 1, !alias.scope !10021
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h46bbbd3871edf370E.exit

_ZN4jiff4util1b6Bounds11checked_mul17h46bbbd3871edf370E.exit: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !10021
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_ZN4jiff4util1b16next_multiple_of17h8e16351890c13ff9E(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.d [
    i64 -1, label %bb.b
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.g
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.g ], [ %0, %bb.a ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #45
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.a = srem i64 %0, %1                          ; 4 uses
  %i.b = icmp sgt i64 %i.a, 0
  %i.c = icmp slt i64 %1, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = icmp slt i64 %i.a, 0
  %i.e = icmp sgt i64 %1, 0
  %or.cond1 = and i1 %i.e, %i.d
  br i1 %or.cond1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = add i64 %i.a, %1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.02.0 = phi i64 [ %i.f, %bb.f ], [ %i.a, %bb.e ] ; 2 uses
  %i.g = icmp eq i64 %.sroa.02.0, 0
  %i.h = sub i64 %1, %.sroa.02.0
  %i.i = select i1 %i.g, i64 0, i64 %i.h
  %.sroa.0.1 = add i64 %i.i, %0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 11776, -49152) i32 @_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE(i16 noundef %0, i16 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %0, i16 %1) ; 2 uses
  %i.b = extractvalue { i16, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_add17h26828f30f8f67341E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i16, i1 } %i.a, 0         ; 2 uses
  %i.d = add i16 %i.c, -10000
  %narrow.i.i = icmp ult i16 %i.d, -19999
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i32
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.c to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw i32 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, 11776
  br label %_ZN4jiff4util1b6Bounds11checked_add17h26828f30f8f67341E.exit

_ZN4jiff4util1b6Bounds11checked_add17h26828f30f8f67341E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i32 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 11777, %bb.a ]
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 11776, -49152) i32 @_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE(i16 noundef %0, i16 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %0, i16 %1) ; 2 uses
  %i.b = extractvalue { i16, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_sub17h40cd997af5fc04e0E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i16, i1 } %i.a, 0         ; 2 uses
  %i.d = add i16 %i.c, -10000
  %narrow.i.i = icmp ult i16 %i.d, -19999
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i32
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.c to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw i32 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, 11776
  br label %_ZN4jiff4util1b6Bounds11checked_sub17h40cd997af5fc04e0E.exit

_ZN4jiff4util1b6Bounds11checked_sub17h40cd997af5fc04e0E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i32 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 11777, %bb.a ]
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 6912, -4294959104) i64 @_ZN4jiff4util1b8SpanDays11checked_mul17h23b56108a19042e1E(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_mul17ha0eb687cb9b4aafaE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -7304485
  %narrow.i.i = icmp ult i32 %i.d, -14608969
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 6912
  br label %_ZN4jiff4util1b6Bounds11checked_mul17ha0eb687cb9b4aafaE.exit

_ZN4jiff4util1b6Bounds11checked_mul17ha0eb687cb9b4aafaE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 6913, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 7168, -4294959104) i64 @_ZN4jiff4util1b9SpanHours11checked_mul17hd1c7d916c0c27292E(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_mul17h01f7ae15151cecc6E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -175307617
  %narrow.i.i = icmp ult i32 %i.d, -350615233
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 7168
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h01f7ae15151cecc6E.exit

_ZN4jiff4util1b6Bounds11checked_mul17h01f7ae15151cecc6E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 7169, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 6656, -4294959104) i64 @_ZN4jiff4util1b9SpanWeeks11checked_mul17h218987d5d21ad98bE(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_mul17he76e0694188e44d2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -1043498
  %narrow.i.i = icmp ult i32 %i.d, -2086995
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 6656
  br label %_ZN4jiff4util1b6Bounds11checked_mul17he76e0694188e44d2E.exit

_ZN4jiff4util1b6Bounds11checked_mul17he76e0694188e44d2E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 6657, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 6144, -57344) i32 @_ZN4jiff4util1b9SpanYears11checked_mul17hcb6e2bdbbf72b03eE(i16 noundef %0, i16 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %0, i16 %1) ; 2 uses
  %i.b = extractvalue { i16, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_mul17hc000025fd6d4c56dE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i16, i1 } %i.a, 0         ; 2 uses
  %i.d = add i16 %i.c, -19999
  %narrow.i.i = icmp ult i16 %i.d, 25539
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i32
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.c to i32
  %.sroa.4.0.insert.shift.i.i = shl nuw i32 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, 6144
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hc000025fd6d4c56dE.exit

_ZN4jiff4util1b6Bounds11checked_mul17hc000025fd6d4c56dE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i32 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 6145, %bb.a ]
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 4785070309113860) i64 @_ZN4jiff4util4utf86decode17h97ece18b6d229b67E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.n, %bb.i
  %.sroa.4.sroa.0.0 = phi i64 [ %.sroa.4.1.insert.ext, %bb.i ], [ %.sroa.49.4.insert.shift, %bb.n ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.n ], [ 2, %bb.a ]
  %.sroa.4.0.insert.ext = shl nuw nsw i64 %.sroa.4.sroa.0.0, 8
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 4)
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %.sroa.0.0.i)
  %i.e = load i64, ptr %i.c, align 8, !range !53, !noundef !11
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.g, align 8, !noundef !11 ; 4 uses
  %.not16 = icmp eq i64 %i.h, 0
  br i1 %.not16, label %bb.i, label %bb.j, !prof !23

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !11, !align !13, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !11
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit", %bb.e
  %.sroa.6.0 = phi i64 [ %i.ba, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit" ], [ %i.k, %bb.e ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.ay, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit" ], [ %i.i, %bb.e ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = icmp samesign eq i64 %.sroa.6.0, 0
  br i1 %i.l, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %.sroa.04.0, align 1, !noalias !10027, !noundef !11 ; 5 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i": ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 1
  %i.p = and i8 %i.m, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp samesign ne i64 %.sroa.6.0, 1
  call void @llvm.assume(i1 %i.r)
  %i.s = load i8, ptr %i.o, align 1, !noalias !10027, !noundef !11
  %i.t = shl nuw nsw i32 %i.q, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = icmp samesign ugt i8 %i.m, -33
  br i1 %i.x, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i", label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i8 %i.m to i32
  br label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i"
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 2
  %i.aa = icmp samesign ne i64 %.sroa.6.0, 2
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.z, align 1, !noalias !10027, !noundef !11
  %i.ac = shl nuw nsw i32 %i.v, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = shl nuw nsw i32 %i.q, 12
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = icmp samesign ugt i8 %i.m, -17
  br i1 %i.ai, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i", label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 3
  %i.ak = icmp samesign ne i64 %.sroa.6.0, 3
  call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.aj, align 1, !noalias !10027, !noundef !11
  %i.am = shl nuw nsw i32 %i.q, 18
  %i.an = and i32 %i.am, 1835008
  %i.ao = shl nuw nsw i32 %i.af, 6
  %i.ap = and i8 %i.al, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = or disjoint i32 %i.ar, %i.an
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.1.0.copyload = load i8, ptr %.sroa.1.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 1
  %i.at = call fastcc i32 @_ZN4jiff4util4utf89Utf8Error3new17h5a5b5e6262d9ed0bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i8 %.sroa.1.0.copyload, i8 %.sroa.2.0.copyload)
  %.sroa.4.1.insert.ext = zext nneg i32 %i.at to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not17 = icmp ugt i64 %i.h, %1
  br i1 %.not17, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.h, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #45
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !10028)
  %i.au = load i64, ptr %i.b, align 8, !range !53, !alias.scope !10028, !noalias !10029, !noundef !11
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.m, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit", !prof !23

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10030
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !10029
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #45, !noalias !10028
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit": ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !10028, !noalias !10029, !nonnull !11, !align !13, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10028, !noalias !10029, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.n:                                             ; preds = %bb.h, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i"
  %.sroa.4.0.i.ph = phi i32 [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i" ], [ %i.as, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i" ], [ %i.w, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i" ], [ %i.y, %bb.h ] ; 2 uses
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.bb)
  %.sroa.49.4.insert.ext = zext nneg i32 %.sroa.4.0.i.ph to i64
  %.sroa.49.4.insert.shift = shl nuw nsw i64 %.sroa.49.4.insert.ext, 24
  br label %bb.b

bb.o:                                             ; preds = %bb.f
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #45
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc range(i32 0, 67108864) i32 @_ZN4jiff4util4utf89Utf8Error3new17h5a5b5e6262d9ed0bE(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef range(i64 1, 0) %1, i8 %.8.val, i8 %.9.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca i24, align 4                  ; 5 uses
  %i.a = trunc nuw i8 %.8.val to i1
  %i.b = zext i8 %.9.val to i64
  %.sroa.0.0 = select i1 %i.a, i64 %i.b, i64 %1   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.0, i8 0, i64 3, i1 false)
  %i.c = icmp ult i64 %.sroa.0.0, 4
  br i1 %i.c, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @328) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %.sroa.0.0, %1
  br i1 %.not, label %bb.e, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr nonnull readonly align 1 %0, i64 %.sroa.0.0, i1 false), !alias.scope !10035, !noalias !10036
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.05.0.copyload = load i24, ptr %.sroa.0, align 4
  %i.d = trunc nuw nsw i64 %.sroa.0.0 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %i.d, 24
  %.sroa.0.0.insert.ext = zext i24 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.05.0.copyload to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff4util5round9Increment10for_limits17h85c6ade5a369d533E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef range(i64 6, 8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext nneg i8 %1 to i64                   ; 2 uses
  %i.b = icmp samesign ugt i64 %4, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.013.1.insert.ext = zext nneg i8 %1 to i24
  %.sroa.013.1.insert.shift = shl nuw nsw i24 %.sroa.013.1.insert.ext, 8
  %.sroa.013.1.insert.insert = or disjoint i24 %.sroa.013.1.insert.shift, 8
  %i.c = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.013.1.insert.insert)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !range !32, !noundef !11 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4jiff5civil4date14DateArithmetic11checked_add17h0d983f9344ba4ef7E:bb.a
  %i.nr = add nsw i32 %i.ne, -1000000000
  br label %bb.ch

bb.cj:                                            ; preds = %bb.ch
  %i.ns = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i12.i.i, i64 0)
  %i.nt = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i11.i.i, i32 0)
  %.not.i14.i.i = icmp eq i64 %i.ns, %i.nt
  br i1 %.not.i14.i.i, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nu = icmp slt i64 %.sroa.0.1.i12.i.i, 0
  br i1 %i.nu, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nv = add nsw i64 %.sroa.0.1.i12.i.i, -1
  %i.nw = add nsw i32 %.sroa.010.1.i11.i.i, 1000000000
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.nx = add nsw i64 %.sroa.0.1.i12.i.i, 1
  %i.ny = add nsw i32 %.sroa.010.1.i11.i.i, -1000000000
  br label %bb.cn

_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit10.i.i: ; preds = %bb.bt
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @55, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #45, !noalias !10110
  unreachable

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.cj, %bb.ch, %bb.cb
  %.sroa.637.0.ph.i.i = phi i32 [ %.sroa.010.1.i11.i.i, %bb.cj ], [ %i.nw, %bb.cl ], [ %i.ny, %bb.cm ], [ %.sroa.010.1.i11.i.i, %bb.ch ], [ 0, %bb.cb ]
  %.sroa.436.0.ph.i.i = phi i64 [ %.sroa.0.1.i12.i.i, %bb.cj ], [ %i.nv, %bb.cl ], [ %i.nx, %bb.cm ], [ %.sroa.0.1.i12.i.i, %bb.ch ], [ %i.na, %bb.cb ]
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !10109, !noalias !10098, !noundef !11
  %i.ob = mul i64 %i.oa, %i.lf                    ; 2 uses
  %i.oc = sdiv i64 %i.ob, 1000000000
  %i.od = srem i64 %i.ob, 1000000000
  %i.oe = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.436.0.ph.i.i, i64 %i.oc) ; 2 uses
  %i.of = extractvalue { i64, i1 } %i.oe, 0       ; 4 uses
  %i.og = extractvalue { i64, i1 } %i.oe, 1
  br i1 %i.og, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit26.i.i, label %bb.co, !prof !23

bb.co:                                            ; preds = %bb.cn
  %i.oh = trunc nsw i64 %i.od to i32
  %i.oi = add i32 %.sroa.637.0.ph.i.i, %i.oh      ; 6 uses
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ok = icmp sgt i32 %i.oi, 999999999
  br i1 %i.ok, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ol = icmp slt i32 %i.oi, -999999999
  br i1 %i.ol, label %bb.cs, label %bb.cu

bb.cr:                                            ; preds = %bb.cp
  %i.om = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.of, i64 1) ; 2 uses
  %i.on = extractvalue { i64, i1 } %i.om, 1
  br i1 %i.on, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit26.i.i, label %bb.cv, !prof !23

bb.cs:                                            ; preds = %bb.cq
  %i.oo = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.of, i64 -1) ; 2 uses
  %i.op = extractvalue { i64, i1 } %i.oo, 1
  br i1 %i.op, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit26.i.i, label %bb.ct, !prof !23

bb.ct:                                            ; preds = %bb.cs
  %i.oq = extractvalue { i64, i1 } %i.oo, 0
  %i.or = add nsw i32 %i.oi, 1000000000
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %bb.ct, %bb.cq
  %.sroa.010.1.i19.i.i = phi i32 [ %i.ov, %bb.cv ], [ %i.or, %bb.ct ], [ %i.oi, %bb.cq ] ; 2 uses
  %.sroa.0.1.i20.i.i = phi i64 [ %i.ou, %bb.cv ], [ %i.oq, %bb.ct ], [ %i.of, %bb.cq ] ; 7 uses
  %i.os = icmp eq i64 %.sroa.0.1.i20.i.i, 0
  %i.ot = icmp eq i32 %.sroa.010.1.i19.i.i, 0
  %or.cond.i21.i.i = select i1 %i.os, i1 true, i1 %i.ot
  br i1 %or.cond.i21.i.i, label %_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i, label %bb.cw

bb.cv:                                            ; preds = %bb.cr
  %i.ou = extractvalue { i64, i1 } %i.om, 0
  %i.ov = add nsw i32 %i.oi, -1000000000
  br label %bb.cu

bb.cw:                                            ; preds = %bb.cu
  %i.ow = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i20.i.i, i64 0)
  %i.ox = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i19.i.i, i32 0)
  %.not.i22.i.i = icmp eq i64 %i.ow, %i.ox
  br i1 %.not.i22.i.i, label %_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.oy = icmp slt i64 %.sroa.0.1.i20.i.i, 0
  br i1 %i.oy, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oz = add nsw i64 %.sroa.0.1.i20.i.i, -1
  br label %_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.pa = add nsw i64 %.sroa.0.1.i20.i.i, 1
  br label %_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i

_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit18.i.i: ; preds = %bb.cf, %bb.ce, %bb.ca
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @55, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #45, !noalias !10110
  unreachable

_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit26.i.i: ; preds = %bb.cs, %bb.cr, %bb.cn
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @55, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #45, !noalias !10110
  unreachable

_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i: ; preds = %bb.cz, %bb.cy, %bb.cw, %bb.cu, %bb.co
  %.sroa.440.0.ph.i.i = phi i64 [ %.sroa.0.1.i20.i.i, %bb.cw ], [ %i.oz, %bb.cy ], [ %i.pa, %bb.cz ], [ %.sroa.0.1.i20.i.i, %bb.cu ], [ %i.of, %bb.co ]
  %i.pb = sdiv i64 %.sroa.440.0.ph.i.i, 86400     ; 2 uses
  %i.pc = add nsw i64 %i.pb, -2932897
  %or.cond.i187.i = icmp ult i64 %i.pc, -7304484
  %i.pd = shl nsw i64 %i.pb, 32
  %.sroa.0.0.insert.insert.i.i19 = select i1 %or.cond.i187.i, i64 9473, i64 %i.pd ; 2 uses
  %i.pe = trunc i64 %.sroa.0.0.insert.insert.i.i19 to i1
  br i1 %i.pe, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i
  %i.pf = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 37), !noalias !10106
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pf, ptr %i.pg, align 8, !alias.scope !10098, !noalias !10099
  br label %_ZN4jiff5civil4date4Date20checked_add_duration17h4a538deee8061079E.exit

bb.db:                                            ; preds = %_ZN4jiff4span4Span31to_invariant_duration_time_only17h8a93e55f8eda2b42E.exit.i
  %.sroa.6124.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.insert.i.i19, 32
  %.sroa.6124.0.extract.trunc.i = trunc nuw i64 %.sroa.6124.0.extract.shift.i to i32
  %i.ph = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.665.0.i, i32 %.sroa.6124.0.extract.trunc.i) ; 2 uses
  %i.pi = extractvalue { i32, i1 } %i.ph, 1
  %i.pj = extractvalue { i32, i1 } %i.ph, 0       ; 2 uses
  %i.pk = add i32 %i.pj, -2932897
  %narrow.i.i.i188.i = icmp ult i32 %i.pk, -7304484
  %or.cond.i = or i1 %i.pi, %narrow.i.i.i188.i
  br i1 %or.cond.i, label %_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit195.thread.i, label %bb.bo

_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit195.thread.i: ; preds = %bb.db
  %i.pl = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 37), !noalias !10106
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pl, ptr %i.pm, align 8, !alias.scope !10098, !noalias !10099
  br label %_ZN4jiff5civil4date4Date20checked_add_duration17h4a538deee8061079E.exit

_ZN4jiff5civil4date4Date20checked_add_duration17h4a538deee8061079E.exit: ; preds = %_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit195.thread.i, %bb.da, %bb.bo, %.thread220.i, %bb.bi, %.thread.i, %bb.aw, %_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit.thread.i55, %bb.au, %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.thread.i.i29, %.thread23.i.i23, %bb.ap, %bb.an, %bb.ak, %_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.thread.i.i42, %bb.ah, %bb.ab, %bb.z, %_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit.thread.i, %bb.x, %bb.w, %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.thread.i.i, %.thread23.i.i, %bb.r, %bb.p, %bb.m, %_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.thread.i.i, %bb.j, %bb.g, %bb.d
  %.sink.i.sink = phi i16 [ 1, %bb.d ], [ 0, %bb.r ], [ 1, %bb.x ], [ 1, %_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit.thread.i ], [ 0, %bb.z ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.p ], [ 0, %bb.m ], [ 1, %_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.thread.i.i ], [ 0, %.thread23.i.i ], [ 0, %bb.w ], [ 1, %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.thread.i.i ], [ 1, %.thread220.i ], [ 1, %_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit195.thread.i ], [ 1, %bb.da ], [ 1, %.thread.i ], [ 1, %bb.bi ], [ 1, %_ZN4jiff4util1b13UnixEpochDays11checked_add17h8a2bbf09dbbcde82E.exit.thread.i55 ], [ 0, %bb.ab ], [ 0, %bb.aw ], [ 0, %bb.ah ], [ 0, %bb.bo ], [ 0, %bb.an ], [ 0, %bb.ak ], [ 1, %_ZN4jiff4util1b4Year11checked_sub17hadbc62a0b4ade9fdE.exit.thread.i.i42 ], [ 0, %.thread23.i.i23 ], [ 0, %bb.au ], [ 1, %_ZN4jiff4util1b4Year11checked_add17h9fb00f33f2a92d1cE.exit.thread.i.i29 ], [ 0, %bb.ap ]
  store i16 %.sink.i.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i8, i16 } @_ZN4jiff5civil4date21month_add_overflowing17h7c2ce386b4a3d9eeE(i8 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = sext i8 %0 to i32
  %i.b = add nsw i32 %i.a, -1
  %i.c = add i32 %i.b, %1                         ; 2 uses
  %i.d = sdiv i32 %i.c, 12
  %i.e = srem i32 %i.c, 12                        ; 3 uses
  %.lobit.i = ashr i32 %i.e, 31
  %.sroa.0.0.i = add nsw i32 %.lobit.i, %i.d
  %i.f = icmp slt i32 %i.e, 0
  %i.g = select i1 %i.f, i32 12, i32 0
  %spec.select.i = add nsw i32 %i.g, %i.e
  %i.h = trunc nuw nsw i32 %spec.select.i to i8
  %i.i = add nuw nsw i8 %i.h, 1
  %i.j = trunc i32 %.sroa.0.0.i to i16
  %i.k = insertvalue { i8, i16 } poison, i8 %i.i, 0
  %i.l = insertvalue { i8, i16 } %i.k, i16 %i.j, 1
  ret { i8, i16 } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 -12688701, 11249032) i32 @_ZN4jiff5civil4date24iso_week_start_from_year17h8f77259cc384b1a9E(i16 noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = sext i16 %0 to i32
  %i.b = add nsw i32 %i.a, 32799                  ; 3 uses
  %i.c = udiv i32 %i.b, 100
  %i.d = mul nuw nsw i32 %i.b, 1461
  %i.e = lshr i32 %i.d, 2                         ; 2 uses
  %i.f = udiv i32 %i.b, 400
  %reass.sub = sub nsw i32 %i.f, %i.c             ; 2 uses
  %i.g = add nsw i32 %reass.sub, -12699110
  %i.h = add nsw i32 %i.g, %i.e
  %i.i = srem i32 %i.h, 7                         ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  %i.k = select i1 %i.j, i32 7, i32 0
  %spec.select.i.i.i = add nsw i32 %i.k, %i.i
  %spec.select.i.i.i.fr = freeze i32 %spec.select.i.i.i
  %i.l = trunc i32 %spec.select.i.i.i.fr to i8    ; 3 uses
  %.urem = add i8 %i.l, -7
  %.cmp = icmp ult i8 %i.l, 7
  %i.m = select i1 %.cmp, i8 %i.l, i8 %.urem      ; 3 uses
  %i.n = icmp slt i8 %i.m, 0
  %i.o = add nuw nsw i8 %i.m, 7
  %spec.select.i = select i1 %i.n, i8 %i.o, i8 %i.m
  %i.p = zext nneg i8 %spec.select.i to i32
  %i.q = add nsw i32 %reass.sub, -12699113
  %i.r = add nsw i32 %i.q, %i.e
  %i.s = sub nsw i32 %i.r, %i.p
  ret i32 %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i32 16777216, 239075328) i32 @_ZN4jiff5civil4date4Date13iso_week_date17h9b3eef013f4844cdE(i32 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %0, 16    ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %sext.i = shl i32 %.sroa.4.0.extract.shift.i, 24
  %i.c = ashr exact i32 %sext.i, 24               ; 2 uses
  %i.d = icmp ult i8 %.sroa.4.0.extract.trunc.i, 3 ; 2 uses
  %i.e = or disjoint i32 %i.c, 12
  %.sroa.0.0.i.i = select i1 %i.d, i32 %i.e, i32 %i.c
  %sext2.i = shl i32 %0, 16                       ; 3 uses
  %i.f = ashr exact i32 %sext2.i, 16              ; 2 uses
  %i.g = add nsw i32 %i.f, 32800
  %.neg.i.i = sext i1 %i.d to i32
  %i.h = add nsw i32 %i.g, %.neg.i.i              ; 3 uses
  %i.i = ashr i32 %0, 24
  %i.j = udiv i32 %i.h, 100
  %i.k = mul nuw nsw i32 %i.h, 1461
  %i.l = lshr i32 %i.k, 2
  %i.m = udiv i32 %i.h, 400
  %i.n = mul nsw i32 %.sroa.0.0.i.i, 979
  %i.o = add nsw i32 %i.n, -2919
  %i.p = lshr i32 %i.o, 5
  %i.q = add nsw i32 %i.i, -12699423
  %i.r = sub nuw nsw i32 %i.q, %i.j
  %i.s = add nuw nsw i32 %i.r, %i.m
  %i.t = add nsw i32 %i.s, %i.l
  %i.u = add nsw i32 %i.t, %i.p                   ; 4 uses
  %i.v = add nsw i32 %i.f, 32799                  ; 3 uses
  %i.w = udiv i32 %i.v, 100
  %i.x = mul nuw nsw i32 %i.v, 1461
  %i.y = lshr i32 %i.x, 2
  %i.z = udiv i32 %i.v, 400
  %reass.sub.i = sub nsw i32 %i.z, %i.w
  %i.aa = add nsw i32 %i.y, %reass.sub.i          ; 2 uses
  %i.ab = add nsw i32 %i.aa, -12699110
  %i.ac = srem i32 %i.ab, 7                       ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = select i1 %i.ad, i32 7, i32 0
  %spec.select.i.i.i.i = add nsw i32 %i.ae, %i.ac
  %spec.select.i.i.i.fr.i = freeze i32 %spec.select.i.i.i.i
  %i.af = trunc i32 %spec.select.i.i.i.fr.i to i8 ; 3 uses
  %.urem.i = add i8 %i.af, -7
  %.cmp.i = icmp ult i8 %i.af, 7
  %i.ag = select i1 %.cmp.i, i8 %i.af, i8 %.urem.i ; 3 uses
  %i.ah = icmp slt i8 %i.ag, 0
  %i.ai = add nuw nsw i8 %i.ag, 7
  %spec.select.i.i = select i1 %i.ah, i8 %i.ai, i8 %i.ag
  %i.aj = zext nneg i8 %spec.select.i.i to i32
  %i.ak = add nsw i32 %i.aa, -12699113
  %i.al = sub nsw i32 %i.ak, %i.aj                ; 3 uses
  %i.am = icmp slt i32 %i.u, %i.al
  br i1 %i.am, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0.extract.trunc = trunc i32 %0 to i16
  %i.an = icmp slt i16 %.sroa.04.0.extract.trunc, 9999
  br i1 %i.an, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %sext48 = add i32 %sext2.i, -65536
  %i.ao = ashr exact i32 %sext48, 16
  %i.ap = add nsw i32 %i.ao, 32799                ; 3 uses
  %i.aq = udiv i32 %i.ap, 100
  %i.ar = mul nuw nsw i32 %i.ap, 1461
  %i.as = lshr i32 %i.ar, 2
  %i.at = udiv i32 %i.ap, 400
  %reass.sub.i23 = sub nsw i32 %i.at, %i.aq
  %i.au = add nsw i32 %i.as, %reass.sub.i23       ; 2 uses
  %i.av = add nsw i32 %i.au, -12699110
  %i.aw = srem i32 %i.av, 7                       ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = select i1 %i.ax, i32 7, i32 0
  %spec.select.i.i.i.i24 = add nsw i32 %i.ay, %i.aw
  %spec.select.i.i.i.fr.i25 = freeze i32 %spec.select.i.i.i.i24
  %i.az = trunc i32 %spec.select.i.i.i.fr.i25 to i8 ; 3 uses
  %.urem.i26 = add i8 %i.az, -7
  %.cmp.i27 = icmp ult i8 %i.az, 7
  %i.ba = select i1 %.cmp.i27, i8 %i.az, i8 %.urem.i26 ; 3 uses
  %i.bb = icmp slt i8 %i.ba, 0
  %i.bc = add nuw nsw i8 %i.ba, 7
  %spec.select.i.i28 = select i1 %i.bb, i8 %i.bc, i8 %i.ba
  %i.bd = zext nneg i8 %spec.select.i.i28 to i32
  %i.be = add nsw i32 %i.au, -12699113
  %i.bf = sub nsw i32 %i.be, %i.bd
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %sext47 = add i32 %sext2.i, 65536
  %i.bg = ashr exact i32 %sext47, 16
  %i.bh = add nsw i32 %i.bg, 32799                ; 2 uses
  %.lhs.trunc44 = trunc i32 %i.bh to i16          ; 2 uses
  %i.bi = udiv i16 %.lhs.trunc44, 100
  %.zext = zext nneg i16 %i.bi to i32
  %i.bj = mul nuw nsw i32 %i.bh, 1461
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = udiv i16 %.lhs.trunc44, 400
  %.zext46 = zext nneg i16 %i.bl to i32
  %reass.sub.i29 = sub nsw i32 %.zext46, %.zext
  %i.bm = add nsw i32 %reass.sub.i29, %i.bk       ; 2 uses
  %i.bn = add nsw i32 %i.bm, -12699110
  %i.bo = srem i32 %i.bn, 7                       ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  %i.bq = select i1 %i.bp, i32 7, i32 0
  %spec.select.i.i.i.i30 = add nsw i32 %i.bq, %i.bo
  %spec.select.i.i.i.fr.i31 = freeze i32 %spec.select.i.i.i.i30
  %i.br = trunc i32 %spec.select.i.i.i.fr.i31 to i8 ; 3 uses
  %.urem.i32 = add i8 %i.br, -7
  %.cmp.i33 = icmp ult i8 %i.br, 7
  %i.bs = select i1 %.cmp.i33, i8 %i.br, i8 %.urem.i32 ; 3 uses
  %i.bt = icmp slt i8 %i.bs, 0
  %i.bu = add nuw nsw i8 %i.bs, 7
  %spec.select.i.i34 = select i1 %i.bt, i8 %i.bu, i8 %i.bs
  %i.bv = zext nneg i8 %spec.select.i.i34 to i32
  %i.bw = add nsw i32 %i.bm, -12699113
  %i.bx = sub nsw i32 %i.bw, %i.bv                ; 2 uses
  %.not = icmp slt i32 %i.u, %i.bx
  %spec.select = select i1 %.not, i32 %i.al, i32 %i.bx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.06.0 = phi i32 [ %i.bf, %bb.c ], [ %i.al, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %i.by = add nsw i32 %i.u, 3
  %i.bz = srem i32 %i.by, 7                       ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = select i1 %i.ca, i32 7, i32 0
  %spec.select.i.i35 = add nsw i32 %i.cb, %i.bz   ; 2 uses
  %i.cc = sub nsw i32 %i.u, %.sroa.06.0           ; 2 uses
  %i.cd = add nsw i32 %i.cc, -889
  %or.cond = icmp ult i32 %i.cd, -1798
  br i1 %or.cond, label %bb.f, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0ff3d04f101deff0E.exit"

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #45
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0ff3d04f101deff0E.exit": ; preds = %bb.e
  %.lhs.trunc = trunc nsw i32 %i.cc to i16
  %i.ce = sdiv i16 %.lhs.trunc, 7
  %i.cf = trunc i16 %i.ce to i8                   ; 2 uses
  %i.cg = add nuw nsw i8 %i.cf, 1                 ; 3 uses
  %i.ch = shl nsw i32 %.sroa.06.0, 2
  %i.ci = add nsw i32 %i.ch, 50797703             ; 2 uses
  %i.cj = urem i32 %i.ci, 146097
  %i.ck = or i32 %i.cj, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cl, 2939745          ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = icmp ugt i32 %i.cn, -696719417
  %i.cp = udiv i32 %i.ci, 146097
  %i.cq = mul nuw nsw i32 %i.cp, 100
  %i.cr = lshr i64 %i.cm, 32
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = zext i1 %i.co to i32
  %i.cu = add nuw nsw i32 %i.cq, 32736
  %i.cv = add nuw nsw i32 %i.cu, %i.cs
  %i.cw = add nuw nsw i32 %i.cv, %i.ct            ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i32 %i.cw to i16
  %i.cx = add i16 %.sroa.017.0.extract.trunc, -10000
  %or.cond.i.i = icmp ult i16 %i.cx, -19999
  %i.cy = shl i32 %i.cw, 16
  %.sroa.0.0.insert.insert.i.i36 = select i1 %or.cond.i.i, i32 2049, i32 %i.cy ; 2 uses
  %.sroa.516.0.extract.shift.i = lshr i32 %.sroa.0.0.insert.insert.i.i36, 16 ; 3 uses
  %.sroa.516.0.extract.trunc.i = trunc nuw i32 %.sroa.516.0.extract.shift.i to i16
  %i.cz = trunc i32 %.sroa.0.0.insert.insert.i.i36 to i1
  br i1 %i.cz, label %bb.k, label %bb.g

bb.g:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0ff3d04f101deff0E.exit"
  %or.cond.i17.i = icmp ugt i8 %i.cf, 52
  br i1 %or.cond.i17.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = icmp eq i8 %i.cg, 53
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.db = tail call noundef zeroext i1 @_ZN4jiff5civil13iso_week_date12is_long_year17h430f203f9134266eE(i16 noundef %.sroa.516.0.extract.trunc.i), !noalias !10123
  br i1 %i.db, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h0cded9fe28f093cdE.exit", label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.h
  %i.dc = icmp eq i32 %.sroa.516.0.extract.shift.i, 9999
  %i.dd = icmp eq i8 %i.cg, 52
  %or.cond.i = and i1 %i.dd, %i.dc
  %i.de = icmp ugt i32 %spec.select.i.i35, 4
  %or.cond2.i = and i1 %i.de, %or.cond.i
  br i1 %or.cond2.i, label %bb.k, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h0cded9fe28f093cdE.exit", !prof !64

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0ff3d04f101deff0E.exit"
  %.sink = phi i8 [ 8, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h0ff3d04f101deff0E.exit" ], [ 7, %bb.i ], [ 7, %bb.g ], [ 43, %bb.j ]
  %i.df = tail call fastcc noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef %.sink), !noalias !10123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10124
  store ptr %i.df, ptr %i.b, align 8, !noalias !10124
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @346, i64 noundef 44, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #45
          to label %bb.o unwind label %bb.l, !noalias !10124

bb.l:                                             ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10125)
  %i.dh = load ptr, ptr %i.b, align 8, !alias.scope !10126, !noalias !10124, !noundef !11 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4jiff6shared4util5itime5IDate16checked_add_days17h881065ec0ca4a71dE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 2, !alias.scope !11416, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2, !alias.scope !11416, !noundef !11 ; 2 uses
  %i.d = sext i8 %i.c to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !11416, !noundef !11
  %i.g = icmp ult i8 %i.c, 3                      ; 2 uses
  %i.h = or disjoint i32 %i.d, 12
  %.sroa.0.0.i = select i1 %i.g, i32 %i.h, i32 %i.d
  %i.i = sext i16 %i.a to i32
  %i.j = add nsw i32 %i.i, 32800
  %.neg.i = sext i1 %i.g to i32
  %i.k = add nsw i32 %i.j, %.neg.i                ; 3 uses
  %i.l = sext i8 %i.f to i32
  %i.m = udiv i32 %i.k, 100
  %i.n = mul nuw nsw i32 %i.k, 1461
  %i.o = lshr i32 %i.n, 2
  %i.p = udiv i32 %i.k, 400
  %i.q = mul nsw i32 %.sroa.0.0.i, 979
  %i.r = add nsw i32 %i.q, -2919
  %i.s = lshr i32 %i.r, 5
  %i.t = add nsw i32 %1, -12699423
  %i.u = add nsw i32 %i.t, %i.l
  %i.v = sub nsw i32 %i.u, %i.m
  %i.w = add nsw i32 %i.v, %i.p
  %i.x = add nsw i32 %i.w, %i.o
  %i.y = add nsw i32 %i.x, %i.s                   ; 2 uses
  %i.z = add nsw i32 %i.y, 4371587
  %or.cond.i = icmp ult i32 %i.z, 7304484
  br i1 %or.cond.i, label %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load i32, ptr %0, align 2
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.07.0.copyload = load i32, ptr %0, align 2 ; 5 uses
  %.sroa.04.0.extract.trunc.i = trunc i32 %.sroa.07.0.copyload to i16 ; 3 uses
  %.sroa.45.0.extract.shift.i = lshr i32 %.sroa.07.0.copyload, 16
  %.sroa.45.0.extract.trunc.i = trunc i32 %.sroa.45.0.extract.shift.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.mask.i = and i32 %.sroa.07.0.copyload, -16777216
  %i.aa = icmp eq i32 %.sroa.5.0.extract.shift.mask.i, 16777216
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp eq i8 %.sroa.45.0.extract.trunc.i, 1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.sroa.020.0.insert.insert.i = add i32 %.sroa.07.0.copyload, -16777216
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = add i16 %.sroa.04.0.extract.trunc.i, -1 ; 2 uses
  %i.ad = icmp slt i16 %i.ac, -9999
  br i1 %i.ad, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ae = add i8 %.sroa.45.0.extract.trunc.i, -1  ; 4 uses
  %i.af = icmp eq i8 %i.ae, 2
  br i1 %i.af, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.sroa.013.0.insert.ext.i = zext i16 %i.ac to i32
  %.sroa.013.0.insert.insert.i = or disjoint i32 %.sroa.013.0.insert.ext.i, 520880128
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = srem i16 %.sroa.04.0.extract.trunc.i, 25
  %i.ah = icmp eq i16 %i.ag, 0
  %..i.i = select i1 %i.ah, i16 15, i16 3
  %i.ai = and i16 %..i.i, %.sroa.04.0.extract.trunc.i
  %i.aj = icmp eq i16 %i.ai, 0
  %..i = select i1 %i.aj, i32 486539264, i32 469762048
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ak = ashr i8 %i.ae, 3
  %i.al = xor i8 %i.ak, %i.ae
  %i.am = or i8 %i.al, 30
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw i32 %i.an, 24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.016.0.i = phi i32 [ %i.ao, %bb.k ], [ %..i, %bb.j ]
  %.sroa.418.0.insert.ext.i = zext i8 %i.ae to i32
  %.sroa.418.0.insert.shift.i = shl nuw nsw i32 %.sroa.418.0.insert.ext.i, 16
  %.sroa.418.0.insert.insert.i = or disjoint i32 %.sroa.016.0.i, %.sroa.418.0.insert.shift.i
  %.sroa.017.0.insert.ext.i = and i32 %.sroa.07.0.copyload, 65535
  %.sroa.017.0.insert.insert.i = or disjoint i32 %.sroa.418.0.insert.insert.i, %.sroa.017.0.insert.ext.i
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.m:                                             ; preds = %bb.a
  %.sroa.09.0.copyload = load i32, ptr %0, align 2 ; 7 uses
  %.sroa.03.0.extract.trunc.i = trunc i32 %.sroa.09.0.copyload to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.09.0.copyload, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 4 uses
  %.sroa.54.0.extract.shift.i = lshr i32 %.sroa.09.0.copyload, 24
  %.sroa.54.0.extract.trunc.i = trunc nuw i32 %.sroa.54.0.extract.shift.i to i8 ; 3 uses
  %i.ap = icmp sgt i8 %.sroa.54.0.extract.trunc.i, 27
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.p, %bb.m
  %i.aq = and i32 %.sroa.09.0.copyload, -16777216
  %.sroa.521.0.insert.shift.i = add i32 %i.aq, 16777216
  %i.ar = and i32 %.sroa.09.0.copyload, 16777215
  %.sroa.019.0.insert.insert.i = or disjoint i32 %.sroa.521.0.insert.shift.i, %i.ar
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.o:                                             ; preds = %bb.m
  %i.as = icmp eq i8 %.sroa.4.0.extract.trunc.i, 2
  br i1 %i.as, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = ashr i8 %.sroa.4.0.extract.trunc.i, 3
  %i.au = xor i8 %i.at, %.sroa.4.0.extract.trunc.i
  %i.av = or i8 %i.au, 30
  %i.aw = icmp eq i8 %i.av, %.sroa.54.0.extract.trunc.i
  br i1 %i.aw, label %bb.q, label %bb.n

.thread.i:                                        ; preds = %bb.o
  %i.ax = srem i16 %.sroa.03.0.extract.trunc.i, 25
  %i.ay = icmp eq i16 %i.ax, 0
  %..i.i28 = select i1 %i.ay, i16 15, i16 3
  %i.az = and i16 %..i.i28, %.sroa.03.0.extract.trunc.i
  %i.ba = icmp eq i16 %i.az, 0
  %..i29 = select i1 %i.ba, i8 29, i8 28
  %i.bb = icmp eq i8 %..i29, %.sroa.54.0.extract.trunc.i
  br i1 %i.bb, label %.thread23.i, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.bc = icmp eq i8 %.sroa.4.0.extract.trunc.i, 12
  br i1 %i.bc, label %bb.r, label %.thread23.i

bb.r:                                             ; preds = %bb.q
  %i.bd = add i16 %.sroa.03.0.extract.trunc.i, 1  ; 2 uses
  %i.be = icmp sgt i16 %i.bd, 9999
  br i1 %i.be, label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit, label %bb.s

.thread23.i:                                      ; preds = %bb.q, %.thread.i
  %.sroa.417.0.insert.ext.i = add i32 %.sroa.09.0.copyload, 65536
  %.sroa.417.0.insert.shift.i = and i32 %.sroa.417.0.insert.ext.i, 16711680
  %.sroa.016.0.insert.ext.i = and i32 %.sroa.09.0.copyload, 65535
  %.sroa.417.0.insert.insert.i = or disjoint i32 %.sroa.016.0.insert.ext.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.insert.i = or disjoint i32 %.sroa.417.0.insert.insert.i, 16777216
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.013.0.insert.ext.i26 = zext i16 %i.bd to i32
  %.sroa.013.0.insert.insert.i27 = or disjoint i32 %.sroa.013.0.insert.ext.i26, 16842752
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit

_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit: ; preds = %bb.b, %bb.s, %.thread23.i, %bb.r, %bb.n, %bb.l, %bb.i, %bb.g, %bb.f, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit, %bb.c
  %.sroa.6.0 = phi i32 [ 11, %bb.g ], [ %.sroa.06.0.copyload, %bb.c ], [ %.sroa.0.0.insert.insert.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit ], [ 8, %bb.r ], [ %.sroa.020.0.insert.insert.i, %bb.f ], [ %.sroa.013.0.insert.insert.i, %bb.i ], [ %.sroa.017.0.insert.insert.i, %bb.l ], [ %.sroa.019.0.insert.insert.i, %bb.n ], [ %.sroa.013.0.insert.insert.i27, %bb.s ], [ %.sroa.016.0.insert.insert.i, %.thread23.i ], [ 5, %bb.b ]
  %.sroa.0.0 = phi i16 [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit ], [ 1, %bb.r ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %.thread23.i ], [ 1, %bb.b ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit: ; preds = %bb.b
  %i.bf = shl nsw i32 %i.y, 2
  %i.bg = add nsw i32 %i.bf, 50797691             ; 2 uses
  %i.bh = urem i32 %i.bg, 146097
  %i.bi = or i32 %i.bh, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = mul nuw nsw i64 %i.bj, 2939745          ; 2 uses
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = udiv i32 %i.bl, 11758980
  %i.bn = mul nuw nsw i32 %i.bm, 2141
  %i.bo = add nuw nsw i32 %i.bn, 197913           ; 3 uses
  %i.bp = and i32 %i.bo, 4128768
  %i.bq = icmp ugt i32 %i.bl, -696719417          ; 2 uses
  %i.br = udiv i32 %i.bg, 146097
  %i.bs = mul nuw nsw i32 %i.br, 100
  %i.bt = lshr i64 %i.bk, 32
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = zext i1 %i.bq to i32
  %i.bw = add nuw nsw i32 %i.bs, 32736
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %i.by = add nuw nsw i32 %i.bx, %i.bv
  %.lhs.trunc.i = trunc i32 %i.bo to i16
  %i.bz = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.bz to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.ca = add nuw nsw i32 %i.bp, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bq, i32 %i.ca, i32 %i.bo
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.by, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_ZN4jiff6shared4util5itime5IDate9yesterday17h76797f4329835d97E.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc range(i48 131072, -65534) i48 @_ZN4jiff6shared4util5itime5IDate20nth_weekday_of_month17h606984929501b6ceE(i16 %.0.val, i8 %.2.val, i8 noundef range(i8 6, 5) %0, i8 noundef range(i8 1, 8) %1) unnamed_addr #16 {
bb.a:
  %i.a = icmp ne i8 %0, 0
  %i.b = add i8 %0, 5
  %i.c = icmp ult i8 %i.b, 11
  %or.cond1 = and i1 %i.a, %i.c
  br i1 %or.cond1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i8 %0, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.k, %bb.p, %bb.a, %bb.e, %bb.j
  %.sroa.7.0 = phi i32 [ 7, %bb.a ], [ %.sroa.019.0.insert.insert, %bb.e ], [ %.sroa.09.0.insert.insert, %bb.j ], [ %.sroa.023.0.insert.insert, %bb.p ], [ %.sroa.026.0.insert.insert, %bb.k ]
  %.sroa.0.0 = phi i16 [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %bb.j ], [ 1, %bb.p ], [ 0, %bb.k ]
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i48
  %.sroa.7.0.insert.shift = shl nuw i48 %.sroa.7.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i8 %.2.val, 2                    ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.f = sext i8 %.2.val to i32                   ; 2 uses
  %i.g = icmp ult i8 %.2.val, 3                   ; 2 uses
  %i.h = or disjoint i32 %i.f, 12
  %.sroa.0.0.i = select i1 %i.g, i32 %i.h, i32 %i.f
  %i.i = sext i16 %.0.val to i32
  %i.j = add nsw i32 %i.i, 32800
  %.neg.i = sext i1 %i.g to i32
  %i.k = add nsw i32 %i.j, %.neg.i                ; 3 uses
  %i.l = udiv i32 %i.k, 100
  %i.m = mul nuw nsw i32 %i.k, 1461
  %i.n = lshr i32 %i.m, 2
  %i.o = udiv i32 %i.k, 400
  %i.p = mul nsw i32 %.sroa.0.0.i, 979
  %i.q = add nsw i32 %i.p, -2919
  %i.r = lshr i32 %i.q, 5
  %reass.sub9 = sub nsw i32 %i.o, %i.l
  %i.s = add nsw i32 %reass.sub9, -12699419
  %i.t = add nsw i32 %i.s, %i.n
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = srem i32 %i.u, 7                         ; 2 uses
  %.inv = icmp sgt i32 %i.v, -1
  %i.w = select i1 %.inv, i32 -1, i32 248
  %i.x = sub nsw i32 %i.w, %i.v
  %.neg4 = trunc i32 %i.x to i8
  %i.y = add i8 %1, %.neg4
  %i.z = srem i8 %i.y, 7                          ; 3 uses
  %i.aa = icmp slt i8 %i.z, 0
  %i.ab = add nsw i8 %i.z, 7
  %spec.select.i = select i1 %i.aa, i8 %i.ab, i8 %i.z
  %i.ac = mul nuw nsw i8 %0, 7
  %i.ad = add nsw i8 %i.ac, -6
  %i.ae = add nsw i8 %i.ad, %spec.select.i
  %.sroa.521.0.insert.ext = zext nneg i8 %i.ae to i32
  %.sroa.521.0.insert.shift = shl nuw nsw i32 %.sroa.521.0.insert.ext, 24
  %.sroa.420.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.420.0.insert.shift = shl nuw nsw i32 %.sroa.420.0.insert.ext, 16
  %.sroa.420.0.insert.insert = or disjoint i32 %.sroa.521.0.insert.shift, %.sroa.420.0.insert.shift
  %.sroa.019.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.019.0.insert.insert = or disjoint i32 %.sroa.420.0.insert.insert, %.sroa.019.0.insert.ext
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.af = srem i16 %.0.val, 25
  %i.ag = icmp eq i16 %i.af, 0
  %..i = select i1 %i.ag, i16 15, i16 3
  %i.ah = and i16 %..i, %.0.val
  %i.ai = icmp eq i16 %i.ah, 0
  %. = select i1 %i.ai, i8 29, i8 28
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aj = ashr i8 %.2.val, 3
  %i.ak = xor i8 %i.aj, %.2.val
  %i.al = or i8 %i.ak, 30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.014.0 = phi i8 [ %i.al, %bb.g ], [ %., %bb.f ] ; 2 uses
  %i.am = sext i8 %.2.val to i32                  ; 2 uses
  %i.an = icmp ult i8 %.2.val, 3                  ; 2 uses
  %i.ao = or disjoint i32 %i.am, 12
  %.sroa.0.0.i35 = select i1 %i.an, i32 %i.ao, i32 %i.am
  %i.ap = sext i16 %.0.val to i32
  %i.aq = add nsw i32 %i.ap, 32800
  %.neg.i36 = sext i1 %i.an to i32
  %i.ar = add nsw i32 %i.aq, %.neg.i36            ; 3 uses
  %i.as = sext i8 %.sroa.014.0 to i32
  %i.at = udiv i32 %i.ar, 100
  %i.au = mul nuw nsw i32 %i.ar, 1461
  %i.av = lshr i32 %i.au, 2
  %i.aw = udiv i32 %i.ar, 400
  %i.ax = mul nsw i32 %.sroa.0.0.i35, 979
  %i.ay = add nsw i32 %i.ax, -2919
  %i.az = lshr i32 %i.ay, 5
  %reass.sub = sub nsw i32 %i.aw, %i.at
  %i.ba = add nsw i32 %reass.sub, -12699420
  %i.bb = add nsw i32 %i.ba, %i.av
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = add nsw i32 %i.bc, %i.as
  %i.be = srem i32 %i.bd, 7                       ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = select i1 %i.bf, i32 7, i32 0
  %spec.select.i.i37 = add nsw i32 %i.bg, %i.be
  %i.bh = trunc nuw nsw i32 %spec.select.i.i37 to i8
  %reass.sub8 = sub nsw i8 %i.bh, %1
  %i.bi = add nsw i8 %reass.sub8, 1
  %i.bj = srem i8 %i.bi, 7                        ; 3 uses
  %i.bk = icmp slt i8 %i.bj, 0
  %i.bl = add nsw i8 %i.bj, 7
  %spec.select.i38 = select i1 %i.bk, i8 %i.bl, i8 %i.bj
  %i.bm = sub nuw nsw i8 %.sroa.014.0, %spec.select.i38
  %i.bn = xor i8 %0, -1
  %.neg = mul nsw i8 %i.bn, -7
  %i.bo = add i8 %i.bm, %.neg                     ; 4 uses
  %i.bp = icmp slt i8 %i.bo, 1
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp samesign ugt i8 %i.bo, 28
  br i1 %i.bq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.5.0.insert.shift = shl nuw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.4.0.insert.ext10 = zext i8 %.2.val to i32
  %.sroa.4.0.insert.shift11 = shl nuw nsw i32 %.sroa.4.0.insert.ext10, 8
  %.sroa.4.0.insert.insert13 = or disjoint i32 %.sroa.4.0.insert.shift11, %.sroa.5.0.insert.shift
  %.sroa.09.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert13, 2
  br label %bb.c

bb.k:                                             ; preds = %bb.o, %bb.i
  %.sroa.528.0.insert.ext = zext nneg i8 %i.bo to i32
  %.sroa.528.0.insert.shift = shl nuw nsw i32 %.sroa.528.0.insert.ext, 24
  %.sroa.427.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.427.0.insert.shift = shl nuw nsw i32 %.sroa.427.0.insert.ext, 16
  %.sroa.427.0.insert.insert = or disjoint i32 %.sroa.528.0.insert.shift, %.sroa.427.0.insert.shift
  %.sroa.026.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.026.0.insert.insert = or disjoint i32 %.sroa.427.0.insert.insert, %.sroa.026.0.insert.ext
  br label %bb.c

bb.l:                                             ; preds = %bb.i
  br i1 %i.e, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = srem i16 %.0.val, 25
  %i.bs = icmp eq i16 %i.br, 0
  %..i39 = select i1 %i.bs, i16 15, i16 3
  %i.bt = and i16 %..i39, %.0.val
  %i.bu = icmp eq i16 %i.bt, 0
  %.34 = select i1 %i.bu, i8 29, i8 28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bv = ashr i8 %.2.val, 3
  %i.bw = xor i8 %i.bv, %.2.val
  %i.bx = or i8 %i.bw, 30
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.022.0 = phi i8 [ %i.bx, %bb.n ], [ %.34, %bb.m ]
  %i.by = icmp sgt i8 %i.bo, %.sroa.022.0
  br i1 %i.by, label %bb.p, label %bb.k

bb.p:                                             ; preds = %bb.o
  %.sroa.525.0.insert.ext = zext i16 %.0.val to i32
  %.sroa.525.0.insert.shift = shl nuw i32 %.sroa.525.0.insert.ext, 16
  %.sroa.424.0.insert.ext = zext i8 %.2.val to i32
  %.sroa.424.0.insert.shift = shl nuw nsw i32 %.sroa.424.0.insert.ext, 8
  %.sroa.424.0.insert.insert = or disjoint i32 %.sroa.424.0.insert.shift, %.sroa.525.0.insert.shift
  %.sroa.023.0.insert.insert = or disjoint i32 %.sroa.424.0.insert.insert, 2
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i48 65536, 35184372023298) i48 @_ZN4jiff6shared4util5itime5IDate24from_day_of_year_no_leap17hc4209b8f4e04ba66E(i16 noundef %0, i16 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = add i16 %1, -1
  %or.cond = icmp ult i16 %i.b, 365
  br i1 %or.cond, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcef25793c996049dE.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i16 %1, 59
  br i1 %i.c, label %bb.c, label %bb.d

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcef25793c996049dE.exit": ; preds = %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i, %bb.a
  %.sroa.3.0 = phi i32 [ 1, %bb.a ], [ %.sroa.0.0.insert.insert.i.i, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i ]
  %.sroa.06.0 = phi i16 [ 1, %bb.a ], [ 0, %_ZN4jiff6shared4util5itime9IEpochDay11checked_add17h784528d60a7c525aE.exit.i ]
  %.sroa.3.0.insert.ext = zext nneg i32 %.sroa.3.0 to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 16
  %.sroa.06.0.insert.ext = zext nneg i16 %.sroa.06.0 to i48
  %.sroa.06.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.06.0.insert.ext
  ret i48 %.sroa.06.0.insert.insert

bb.c:                                             ; preds = %bb.b
end_hunk_3
