Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki13import_export7service94_$LT$impl$u20$anki..services..ImportExportService$u20$for$u20$anki..collection..Collection$GT$19export_anki_package17h9d55ad31a8f99e67E":bb.a
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.514.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.012.0.copyload.sink = phi i64 [ %.sroa.012.0.copyload, %bb.d ], [ 4, %bb.c ]
  store i64 %.sroa.012.0.copyload.sink, ptr %i.au, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2743
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !2741, !noalias !2744, !nonnull !3, !noundef !3 ; 2 uses
  %i.bh = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8, !noalias !2745
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN4anki8progress34ThrottlingProgressHandler$LT$P$GT$3new17h314fa0b60bf61d78E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noundef nonnull %i.bg)
          to label %bb.k unwind label %bb.h, !noalias !2746

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ExportProgress$GT$$GT$17he5133d487d0fe478E.exit.i": ; preds = %bb.i, %.body312.i, %bb.h
  %.sroa.095.0.i = phi i8 [ %.sroa.095.1.i, %bb.h ], [ %.sroa.095.2.i, %bb.i ], [ %.sroa.095.2.i, %.body312.i ]
  %.pn255.i = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %.pn253.i, %bb.i ], [ %.pn253.i, %.body312.i ] ; 2 uses
  %i.bj = trunc nuw i8 %.sroa.095.0.i to i1
  br i1 %i.bj, label %bb.fu, label %.body

bb.h:                                             ; preds = %bb.fk, %bb.dn, %bb.f
  %.sroa.095.1.i = phi i8 [ %.sroa.095.9.i, %bb.fk ], [ 0, %bb.dn ], [ 1, %bb.f ]
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ExportProgress$GT$$GT$17he5133d487d0fe478E.exit.i"

.body312.i:                                       ; preds = %bb.fr, %bb.fq, %.body302.i, %bb.j
  %.sroa.095.2.i = phi i8 [ %.sroa.095.4.i, %.body302.i ], [ %.sroa.095.4.i, %bb.fr ], [ 1, %bb.j ], [ %.sroa.095.10.i, %bb.fq ] ; 2 uses
  %.pn253.i = phi { ptr, i32 } [ %.pn251.i, %.body302.i ], [ %.pn251.i, %bb.fr ], [ %i.bp, %bb.j ], [ %i.kl, %bb.fq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  call void @llvm.experimental.noalias.scope.decl(metadata !2749)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !2750, !noalias !2743, !nonnull !3, !noundef !3
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !2751
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.i, label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ExportProgress$GT$$GT$17he5133d487d0fe478E.exit.i"

bb.i:                                             ; preds = %.body312.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf3b6b4601f44977fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ExportProgress$GT$$GT$17he5133d487d0fe478E.exit.i" unwind label %bb.do, !noalias !2746

bb.j:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body312.i

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2743
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !2742, !noalias !2752, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val1.i.i = load i64, ptr %i.br, align 8, !alias.scope !2742, !noalias !2752, !noundef !3 ; 2 uses
  invoke void @_ZN7anki_io25new_tempfile_in_parent_of17h53bcd70dfbd7425eE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.l unwind label %bb.j, !noalias !2746

bb.l:                                             ; preds = %bb.k
  %i.bs = load i64, ptr %i.ar, align 8, !range !8, !noalias !2743, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.bs, -9223372036854775808
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !noalias !2743 ; 2 uses
  %.sroa.6.i.sroa.8.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bv = load <2 x i64>, ptr %.sroa.6.i.sroa.8.0..sroa_idx50, align 8, !noalias !2743 ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.32.sroa.10.8.copyload = load i64, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !2753
  %.sroa.34.48..sroa.6104.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %.sroa.34.48.copyload = load ptr, ptr %.sroa.34.48..sroa.6104.0..sroa_idx.i.sroa_idx, align 8, !noalias !2753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2743
  br label %bb.fj

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2743
  %.sroa.6.i.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  store <2 x i64> %i.bu, ptr %i.as, align 16, !noalias !2743
  %.sroa.6.i.sroa.8.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.6.i.sroa.9.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store <2 x i64> %i.bv, ptr %.sroa.6.i.sroa.8.0..sroa_idx52, align 16, !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2743
  invoke void @_ZN7anki_io12new_tempfile17h5312034dec42e124E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ap)
          to label %bb.p unwind label %bb.o, !noalias !2746

.body302.i:                                       ; preds = %bb.fh, %.body.i, %bb.o
  %.sroa.095.4.i = phi i8 [ %.sroa.095.6.i, %.body.i ], [ %.sroa.095.5.i, %bb.o ], [ %.sroa.095.8.i, %bb.fh ] ; 2 uses
  %.sroa.091.0.i = phi i8 [ %.sroa.091.2.i, %.body.i ], [ %.sroa.095.5.i, %bb.o ], [ %.sroa.091.11.i, %bb.fh ]
  %.pn251.i = phi { ptr, i32 } [ %.pn249.i, %.body.i ], [ %i.bx, %bb.o ], [ %i.jx, %bb.fh ] ; 2 uses
  %i.bw = trunc nuw i8 %.sroa.091.0.i to i1
  br i1 %i.bw, label %bb.fr, label %.body312.i

bb.o:                                             ; preds = %bb.dl, %bb.n
  %.sroa.095.5.i = phi i8 [ 1, %bb.n ], [ 0, %bb.dl ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body302.i

bb.p:                                             ; preds = %bb.n
  %i.by = load i64, ptr %i.ap, align 8, !range !8, !noalias !2743, !noundef !3 ; 2 uses
  %.not219.i = icmp eq i64 %i.by, -9223372036854775808
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ca = load <2 x i64>, ptr %i.bz, align 8, !noalias !2743 ; 4 uses
  %.sroa.614.i.sroa.8.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cb = load <2 x i64>, ptr %.sroa.614.i.sroa.8.0..sroa_idx76, align 8, !noalias !2743 ; 2 uses
  br i1 %.not219.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.6118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.32.sroa.10.8.copyload69 = load i64, ptr %.sroa.6118.0..sroa_idx.i, align 8, !noalias !2753
  %.sroa.34.48..sroa.6118.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.34.48.copyload42 = load ptr, ptr %.sroa.34.48..sroa.6118.0..sroa_idx.i.sroa_idx, align 8, !noalias !2753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2743
  br label %bb.fl

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2743
  %.sroa.614.i.sroa.7.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store <2 x i64> %i.ca, ptr %i.aq, align 16, !noalias !2743
  %.sroa.614.i.sroa.8.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.614.i.sroa.9.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  store <2 x i64> %i.cb, ptr %.sroa.614.i.sroa.8.0..sroa_idx78, align 16, !noalias !2743
  %i.cc = extractelement <2 x i64> %i.ca, i64 0
  %i.cd = inttoptr i64 %i.cc to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2743
  %i.ce = extractelement <2 x i64> %i.ca, i64 1
  invoke void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cd, i64 noundef %i.ce)
          to label %bb.t unwind label %bb.s, !noalias !2746

.body.i:                                          ; preds = %bb.fb, %bb.fa, %bb.eu, %.body292.i, %bb.er, %bb.di, %.body.thread.i.i, %.body.i.i, %bb.s
  %.sroa.095.6.i = phi i8 [ 0, %bb.di ], [ 0, %.body292.i ], [ 0, %bb.er ], [ 0, %bb.eu ], [ 0, %bb.fa ], [ %.sroa.095.7.i, %bb.s ], [ 0, %.body.thread.i.i ], [ 0, %.body.i.i ], [ 0, %bb.fb ]
  %.sroa.091.2.i = phi i8 [ 0, %bb.di ], [ %.sroa.091.9.i, %.body292.i ], [ %.sroa.091.9.i, %bb.er ], [ %.sroa.091.9.i, %bb.eu ], [ %.sroa.091.4.i, %bb.fa ], [ %.sroa.091.3.i, %bb.s ], [ 1, %.body.thread.i.i ], [ 1, %.body.i.i ], [ %.sroa.091.4.i, %bb.fb ]
  %.pn249.i = phi { ptr, i32 } [ %.pn235.i, %bb.di ], [ %eh.lpad-body293.i, %.body292.i ], [ %.pn245.i, %bb.er ], [ %.pn24795.i, %bb.eu ], [ %.pn237.i, %bb.fa ], [ %i.cf, %bb.s ], [ %.pn89115.i.i, %.body.thread.i.i ], [ %.pn89.i.i, %.body.i.i ], [ %.pn237.i, %bb.fb ]
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE"(ptr noalias noundef align 8 dereferenceable(32) %i.aq) #27
          to label %.body302.i unwind label %bb.do, !noalias !2746

bb.s:                                             ; preds = %bb.et, %bb.dk, %bb.cf, %bb.t, %bb.r
  %.sroa.095.7.i = phi i8 [ 0, %bb.et ], [ 0, %bb.dk ], [ 0, %bb.cf ], [ 1, %bb.t ], [ 1, %bb.r ]
  %.sroa.091.3.i = phi i8 [ %.sroa.091.9.i, %bb.et ], [ 0, %bb.dk ], [ 1, %bb.cf ], [ 1, %bb.t ], [ 1, %bb.r ]
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %bb.r
  %i.cg = load i64, ptr %i.ae, align 8, !range !7, !noalias !2743, !noundef !3
  %i.ch = trunc nuw i64 %i.cg to i1               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !2743, !nonnull !3, !align !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !2743
  %.sroa.5.0.i = select i1 %i.ch, i64 undef, i64 %i.cl
  %.sroa.037.0.i = select i1 %i.ch, ptr null, ptr %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2743
  invoke void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$snafu..OptionExt$LT$T$GT$$GT$16whatever_context17hcd206b0e1916d0abE"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ad, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.037.0.i, i64 %.sroa.5.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @67, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
          to label %bb.u unwind label %bb.s, !noalias !2746

bb.u:                                             ; preds = %bb.t
  %i.cm = load i64, ptr %i.ad, align 8, !range !27, !noalias !2743, !noundef !3 ; 2 uses
  %.not220.not.i = icmp eq i64 %i.cm, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noalias !2753 ; 5 uses
  br i1 %.not220.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = load <2 x i64>, ptr %i.cn, align 8
  %.sroa.31.24..sroa.5133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.cr = load <2 x i64>, ptr %.sroa.31.24..sroa.5133.0..sroa_idx.i.sroa_idx, align 8, !noalias !2753
  %.sroa.32.sroa.10.0..sroa.32.24..sroa.5133.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.32.sroa.10.0.copyload67 = load i64, ptr %.sroa.32.sroa.10.0..sroa.32.24..sroa.5133.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !noalias !2753
  %.sroa.34.24..sroa.5133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.34.24.copyload = load ptr, ptr %.sroa.34.24..sroa.5133.0..sroa_idx.i.sroa_idx, align 8, !noalias !2753
  %.sroa.35.24..sroa.5133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.35, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.35.24..sroa.5133.0..sroa_idx.i.sroa_idx, i64 32, i1 false), !noalias !2753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2743
  %i.cs = insertelement <2 x i64> %i.cq, i64 %i.cp, i64 1
  br label %bb.fc

bb.w:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %i.cn, align 8, !noalias !2743, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2743
  %3 = lshr i32 %.sroa.7.0, 24
  %4 = and i32 %3, 1
  %..i = xor i32 %4, 3                            ; 2 uses
  store i32 %..i, ptr %i.ao, align 4, !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.644.sroa.8.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.i.sroa.26)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.32.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !2754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2755
  call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2757
  store i64 0, ptr %i.o, align 8, !noalias !2757
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cu, align 8, !noalias !2757
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.cv, align 8, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2757
  store i64 0, ptr %i.n, align 8, !noalias !2757
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cw, align 8, !noalias !2757
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.cx, align 8, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2757
  store i64 0, ptr %i.m, align 8, !noalias !2757
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cy, align 8, !noalias !2757
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.cz, align 8, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2757
  store i64 0, ptr %i.l, align 8, !noalias !2757
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.da, align 8, !noalias !2757
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.db, align 8, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2757
  store i64 0, ptr %i.k, align 8, !noalias !2757
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !noalias !2757
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.dd, align 8, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2757
  store i64 0, ptr %i.j, align 8, !noalias !2757
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8, !noalias !2757
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.df, align 8, !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2757
  invoke void @"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hb197e84d80051f5bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.af unwind label %bb.x, !noalias !2758

bb.x:                                             ; preds = %bb.w
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$anki..deckconfig..DeckConfig$GT$$GT$17hbdcae7ede4179255E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #27
          to label %bb.z unwind label %bb.y, !noalias !2759

bb.y:                                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !2759
  unreachable

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$anki..revlog..RevlogEntry$GT$$GT$17hc5ecab00a88ddd35E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #27
          to label %bb.aa unwind label %bb.y, !noalias !2759

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #27
          to label %bb.ab unwind label %bb.y, !noalias !2759

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$anki..card..Card$GT$$GT$17ha4317dec3b4de08eE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #27
          to label %bb.ac unwind label %bb.y, !noalias !2759

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..Note$GT$$GT$17h7d33d9e13c7cded0E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #27
          to label %bb.ad unwind label %bb.y, !noalias !2759

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$anki..decks..Deck$GT$$GT$17hb1f6e273cb9cf4fcE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #27
          to label %.body.thread.i.i unwind label %bb.y, !noalias !2759

.body.i.i:                                        ; preds = %.body91.i.i, %bb.ae
  %.sroa.040.0.i.i = phi i8 [ %.sroa.040.2.i.i, %.body91.i.i ], [ %.sroa.040.4.i.i, %bb.ae ]
  %.pn89.i.i = phi { ptr, i32 } [ %.pn87.i.i, %.body91.i.i ], [ %i.dj, %bb.ae ] ; 2 uses
  %i.di = trunc nuw i8 %.sroa.040.0.i.i to i1
  br i1 %i.di, label %.body.thread.i.i, label %.body.i

bb.ae:                                            ; preds = %bb.cd
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.af:                                            ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !2755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !2755
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2755
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !2755
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2755
  %i.do = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2755
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ab, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !2755
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  store i32 0, ptr %i.dq, align 8, !alias.scope !2756, !noalias !2755
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 144 ; 2 uses
  store i32 0, ptr %i.dr, align 8, !alias.scope !2756, !noalias !2755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2755
  invoke void @"_ZN4anki8progress34ThrottlingProgressHandler$LT$P$GT$6update17h94f22fd6f86ffc17E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at, i1 noundef zeroext false, i64 noundef 1, i64 undef)
          to label %bb.ah unwind label %bb.ag, !noalias !2760

.body91.i.i:                                      ; preds = %bb.cc, %bb.bz, %bb.bv, %bb.au, %bb.aq, %.body.i.i.i.i, %bb.ag
  %.sroa.040.2.i.i = phi i8 [ 0, %.body.i.i.i.i ], [ 0, %bb.cc ], [ %.sroa.040.3.i.i, %bb.ag ], [ 0, %bb.au ], [ 0, %bb.aq ], [ 0, %bb.bz ], [ 0, %bb.bv ]
  %.pn87.i.i = phi { ptr, i32 } [ %i.en, %.body.i.i.i.i ], [ %i.gv, %bb.cc ], [ %i.ds, %bb.ag ], [ %i.ex, %bb.au ], [ %i.er, %bb.aq ], [ %i.gp, %bb.bz ], [ %i.gk, %bb.bv ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$anki..import_export..gather..ExchangeData$GT$17h8df3bf630dea9145E"(ptr noalias noundef align 8 dereferenceable(208) %i.ab) #27
          to label %.body.i.i unwind label %bb.ca, !noalias !2761

bb.ag:                                            ; preds = %.critedge.i.i, %bb.ba, %bb.ay, %bb.as, %bb.aj, %bb.af
  %.sroa.040.3.i.i = phi i8 [ 0, %.critedge.i.i ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 0, %bb.aj ], [ 1, %bb.af ], [ 0, %bb.as ]
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i.i

bb.ah:                                            ; preds = %bb.af
  %i.dt = load i64, ptr %i.aa, align 8, !range !13, !noalias !2755, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dt, -9223372036854775773
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.27.8..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.27.8.copyload15.i = load i64, ptr %.sroa.27.8..sroa_idx14.i, align 8, !noalias !2762
  %.sroa.31.8..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.du = load <2 x i64>, ptr %.sroa.31.8..sroa_idx27.i, align 8, !noalias !2762
  %.sroa.31.i.sroa.18.0..sroa.31.8..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.dv = load <2 x i64>, ptr %.sroa.31.i.sroa.18.0..sroa.31.8..sroa_idx27.i.sroa_idx, align 8, !noalias !2762
  %.sroa.31.i.sroa.22.0..sroa.31.8..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.31.i.sroa.22.0.copyload = load i64, ptr %.sroa.31.i.sroa.22.0..sroa.31.8..sroa_idx27.i.sroa_idx, align 8, !noalias !2762
  %.sroa.31.i.sroa.24.0..sroa.31.8..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.31.i.sroa.24.0.copyload = load ptr, ptr %.sroa.31.i.sroa.24.0..sroa.31.8..sroa_idx27.i.sroa_idx, align 8, !noalias !2762
  %.sroa.31.i.sroa.26.0..sroa.31.8..sroa_idx27.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.31.i.sroa.26, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.31.i.sroa.26.0..sroa.31.8..sroa_idx27.i.sroa_idx, i64 48, i1 false), !noalias !2762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2755
  br label %bb.cd

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !2763
  %i.dw = trunc i32 %.sroa.7.0 to i1
  %i.dx = and i32 %.sroa.7.0, 256
  %i.dy = icmp ne i32 %i.dx, 0
  invoke void @_ZN4anki13import_export6gather12ExchangeData11gather_data17h033ea4702b5b270fE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.y, i1 noundef zeroext %i.dw, i1 noundef zeroext %i.dy)
          to label %bb.ak unwind label %bb.ag, !noalias !2760

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2755
  %i.dz = load i64, ptr %i.z, align 8, !range !13, !noalias !2755, !noundef !3 ; 2 uses
  %.not74.i.i = icmp eq i64 %i.dz, -9223372036854775773
  br i1 %.not74.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.27.8..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.27.8.copyload17.i = load i64, ptr %.sroa.27.8..sroa_idx16.i, align 8, !noalias !2762
  %.sroa.31.8..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ea = load <2 x i64>, ptr %.sroa.31.8..sroa_idx28.i, align 8, !noalias !2762
  %.sroa.31.i.sroa.18.0..sroa.31.8..sroa_idx28.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.eb = load <2 x i64>, ptr %.sroa.31.i.sroa.18.0..sroa.31.8..sroa_idx28.i.sroa_idx, align 8, !noalias !2762
  %.sroa.31.i.sroa.22.0..sroa.31.8..sroa_idx28.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.31.i.sroa.22.0.copyload142 = load i64, ptr %.sroa.31.i.sroa.22.0..sroa.31.8..sroa_idx28.i.sroa_idx, align 8, !noalias !2762
  %.sroa.31.i.sroa.24.0..sroa.31.8..sroa_idx28.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.31.i.sroa.24.0.copyload152 = load ptr, ptr %.sroa.31.i.sroa.24.0..sroa.31.8..sroa_idx28.i.sroa_idx, align 8, !noalias !2762
  %.sroa.31.i.sroa.26.0..sroa.31.8..sroa_idx28.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.31.i.sroa.26, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.31.i.sroa.26.0..sroa.31.8..sroa_idx28.i.sroa_idx, i64 48, i1 false), !noalias !2762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2755
  br label %bb.cd

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2755
  %i.ec = and i32 %.sroa.7.0, 65536
  %.not75.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not75.i.i, label %bb.an, label %bb.ba

bb.an:                                            ; preds = %bb.bd, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2755
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.sroa.8.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.795.i.sroa.10.i.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2764
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.sroa.7.i.sroa.11)
end_hunk_0
