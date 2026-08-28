Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.00?download=true
inline.NumInlined: 525
inline.NumDeleted: 290
begin_hunk_0_@"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE":bb.a
bb.k:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !945, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.a, %bb.n
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.n ], [ undef, %bb.a ], [ undef, %bb.k ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.n ], [ null, %bb.a ], [ null, %bb.k ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.m:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !946, !noalias !949
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.n

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  %i.aw = sub nuw i64 %i.av, %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.as, %bb.m ], [ %i.aw, %.loopexit ]
  %.pn = phi i64 [ %i.ai, %bb.m ], [ %i.at, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN6runner7archive15archive_command17hf20b0702604fbe41E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [664 x i8], align 8               ; 4 uses
  %i.c = alloca [216 x i8], align 8               ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = alloca [664 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  store i8 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN5tokio7runtime7builder7Builder16new_multi_thread17h0d76071f6d3f849cE(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.c)
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.b:                                             ; preds = %.body
  br i1 %.sroa.0.2, label %bb.p, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 205
  store i8 1, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.j, align 2
  invoke void @_ZN5tokio7runtime7builder7Builder5build17h19a1fa5f28a68cb7E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(216) %i.c)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.g, %bb.d, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.k, %bb.d ], [ %i.p, %bb.g ] ; 2 uses
  %.sroa.0.2 = phi i1 [ false, %bb.k ], [ %.sroa.0.3, %bb.d ], [ true, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$tokio..runtime..builder..Builder$GT$17hdd13253069b68076E"(ptr noalias noundef align 8 dereferenceable(216) %i.c) #15
          to label %bb.b unwind label %bb.n

bb.d:                                             ; preds = %bb.l, %bb.c
  %.sroa.0.3 = phi i1 [ false, %bb.l ], [ true, %bb.c ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.l = load i64, ptr %i.d, align 8, !range !57, !alias.scope !955, !noalias !952, !noundef !4
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.f, label %bb.j, !prof !957

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !958
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !955, !noalias !952, !nonnull !4, !noundef !4
  store ptr %i.o, ptr %i.a, align 8, !noalias !958
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 27, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
          to label %bb.h unwind label %bb.g, !noalias !958

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %.body unwind label %bb.i, !noalias !958

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14, !noalias !958
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.d, i64 80, i1 false), !alias.scope !958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.b, ptr noundef nonnull align 8 dereferenceable(664) %i.f, i64 664, i1 false)
  %i.r = invoke noundef ptr @_ZN5tokio7runtime7runtime7Runtime8block_on17h84c06026e884b464E(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(664) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$tokio..runtime..runtime..Runtime$GT$17h720df39c4a2bf364E"(ptr noalias noundef align 8 dereferenceable(80) %i.e) #15
          to label %.body unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$tokio..runtime..runtime..Runtime$GT$17h720df39c4a2bf364E"(ptr noalias noundef align 8 dereferenceable(80) %i.e)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$tokio..runtime..builder..Builder$GT$17hdd13253069b68076E"(ptr noalias noundef align 8 dereferenceable(216) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.r

bb.n:                                             ; preds = %bb.p, %bb.k, %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

bb.o:                                             ; preds = %bb.p, %bb.b
  %.pn35 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn36, %bb.p ]
  resume { ptr, i32 } %.pn35

bb.p:                                             ; preds = %.split.thread, %bb.b
  %.pn36 = phi { ptr, i32 } [ %i.h, %.split.thread ], [ %.pn, %bb.b ]
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$runner..archive..archive_command..$u7b$$u7b$closure$u7d$$u7d$$GT$17h37688b58b1cf74feE"(ptr noundef nonnull align 8 %i.f) #15
          to label %bb.o unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN6runner7archive15extract_archive17h1c9482adf27d196bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [176 x i8], align 8               ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [184 x i8], align 8               ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [200 x i8], align 8               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [176 x i8], align 8               ; 7 uses
  %.sroa.5110 = alloca [48 x i8], align 8         ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 9 uses
  %i.w = alloca [48 x i8], align 8                ; 11 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 14 uses
  %i.ab = alloca [184 x i8], align 8              ; 12 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [200 x i8], align 8              ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 12 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 19 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [4 x i8], align 4                ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 4 uses
  %i.ak = alloca [48 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [48 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [72 x i8], align 8               ; 17 uses
  %i.aq = tail call { ptr, i64 } @_ZN3std4path4Path9file_name17hce417f450fb6c4b1E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !957

bb.b:                                             ; preds = %bb.a
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.as, ptr %.sroa.4150.0..sroa_idx, align 8
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ar, ptr %.sroa.5151.0..sroa_idx, align 8
  %.sroa.5151.sroa.4.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.as, ptr %.sroa.5151.sroa.4.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.5.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 0, ptr %.sroa.5151.sroa.5.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.6.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %i.as, ptr %.sroa.5151.sroa.6.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.7.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 46, ptr %.sroa.5151.sroa.7.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.8.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  store i32 46, ptr %.sroa.5151.sroa.8.0..sroa.5151.0..sroa_idx.sroa_idx, align 4
  %.sroa.5151.sroa.9.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i8 1, ptr %.sroa.5151.sroa.9.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.6152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i8 1, ptr %.sroa.6152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 65
  store i8 0, ptr %.sroa.7153.0..sroa_idx, align 1
  %i.at = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 13 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %.not255 = icmp eq ptr %i.au, null
  br i1 %.not255, label %bb.e, label %bb.d, !prof !957

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  switch i64 %i.av, label %bb.s [
    i64 3, label %bb.f
    i64 4, label %bb.h
    i64 2, label %bb.k
  ], !prof !959

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aw = load i16, ptr %i.au, align 1
  %i.ax = xor i16 %i.aw, 29562
  %i.ay = getelementptr i8, ptr %i.au, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 116
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bg = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 2 uses
  %.not264 = icmp eq ptr %i.bh, null
  br i1 %.not264, label %bb.i, label %bb.j, !prof !957

bb.h:                                             ; preds = %bb.d
  %i.bi = load i32, ptr %i.au, align 1
  %i.bj = icmp ne i32 %i.bi, 1685353338
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.s

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

bb.j:                                             ; preds = %bb.o, %bb.l, %bb.g
  %.sroa.0229.0 = phi i64 [ 1, %bb.l ], [ 0, %bb.g ], [ 2, %bb.o ]
  %.pn = phi { ptr, i64 } [ %i.bq, %bb.l ], [ %i.bg, %bb.g ], [ %i.bw, %bb.o ]
  %.sroa.017.0 = phi ptr [ %i.br, %bb.l ], [ %i.bh, %bb.g ], [ %i.bx, %bb.o ] ; 2 uses
  %.sroa.8.0 = extractvalue { ptr, i64 } %.pn, 1  ; 2 uses
  %cond = icmp eq i64 %.sroa.8.0, 3
  br i1 %cond, label %.thread, label %bb.w, !prof !960

bb.k:                                             ; preds = %bb.d
  %i.bm = load i16, ptr %i.au, align 1
  %i.bn = icmp ne i16 %i.bm, 31335
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 0      ; 2 uses
  %.not259 = icmp eq ptr %i.br, null
  br i1 %.not259, label %bb.m, label %bb.j, !prof !957

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.bs = load i16, ptr %i.au, align 1
  %i.bt = icmp ne i16 %i.bs, 31352
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bw = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0      ; 2 uses
  %.not258 = icmp eq ptr %i.bx, null
  br i1 %.not258, label %bb.p, label %bb.j, !prof !957

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
  unreachable

bb.q:                                             ; preds = %bb.f
  %i.by = load i16, ptr %i.au, align 1
  %i.bz = xor i16 %i.by, 26484
  %i.ca = getelementptr i8, ptr %i.au, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i16
  %i.cd = xor i16 %i.cc, 122
  %i.ce = or i16 %i.bz, %i.cd
  %i.cf = icmp ne i16 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load i16, ptr %i.au, align 1
  %i.cj = xor i16 %i.ci, 27002
  %i.ck = getelementptr i8, ptr %i.au, i64 2
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i16
  %i.cn = xor i16 %i.cm, 112
  %i.co = or i16 %i.cj, %i.cn
  %i.cp = icmp ne i16 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.thread, label %bb.s, !prof !961

bb.s:                                             ; preds = %bb.h, %bb.n, %bb.d, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.au, ptr %i.ao, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.av, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.ao, ptr %i.am, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h119398b619542a0dE", ptr %.sroa.4158.0..sroa_idx, align 8
  store ptr @19, ptr %i.an, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.am, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 1, ptr %i.cw, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #17
  unreachable

.thread:                                          ; preds = %bb.r, %bb.q, %bb.j
  %.sroa.017.0361 = phi ptr [ %.sroa.017.0, %bb.j ], [ %i.au, %bb.q ], [ %i.au, %bb.r ] ; 7 uses
  %.sroa.0229.0357 = phi i64 [ %.sroa.0229.0, %bb.j ], [ 1, %bb.q ], [ 3, %bb.r ]
  %i.cx = load i16, ptr %.sroa.017.0361, align 1
  %i.cy = xor i16 %i.cx, 24948
  %i.cz = getelementptr i8, ptr %.sroa.017.0361, i64 2
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i16
  %i.dc = xor i16 %i.db, 114
  %i.dd = or i16 %i.cy, %i.dc
  %i.de = icmp ne i16 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.dh = load i16, ptr %.sroa.017.0361, align 1
  %i.di = xor i16 %i.dh, 26484
  %i.dj = getelementptr i8, ptr %.sroa.017.0361, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i16
  %i.dm = xor i16 %i.dl, 122
  %i.dn = or i16 %i.di, %i.dm
  %i.do = icmp ne i16 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %.thread, %bb.t
  %.sroa.028.0 = phi i1 [ false, %.thread ], [ false, %bb.t ], [ true, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_ZN3std2fs4File4open17h559e2d2e4539114bE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  %i.dr = load i32, ptr %i.ah, align 8, !range !962, !noundef !4
  %i.ds = trunc nuw i32 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !range !814 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %i.ds, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dx = load i16, ptr %.sroa.017.0361, align 1
  %i.dy = xor i16 %i.dx, 27002
  %i.dz = getelementptr i8, ptr %.sroa.017.0361, i64 2
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i16
  %i.ec = xor i16 %i.eb, 112
  %i.ed = or i16 %i.dy, %i.ec
  %i.ee = icmp ne i16 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.u, label %bb.w, !prof !961

bb.w:                                             ; preds = %bb.j, %bb.v
  %.sroa.017.0360 = phi ptr [ %.sroa.017.0, %bb.j ], [ %.sroa.017.0361, %bb.v ]
  %.sroa.8.0358 = phi i64 [ %.sroa.8.0, %bb.j ], [ 3, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %.sroa.017.0360, ptr %i.al, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.8.0358, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.al, ptr %i.aj, align 8
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h119398b619542a0dE", ptr %.sroa.4162.0..sroa_idx, align 8
  store ptr @16, ptr %i.ak, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 1, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr null, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aj, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 1, ptr %i.el, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.em = call noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.du)
  br label %bb.dv

bb.y:                                             ; preds = %bb.u
  store i32 %i.dw, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  switch i64 %.sroa.0229.0357, label %default.unreachable457 [
    i64 0, label %bb.z
    i64 1, label %bb.aa
    i64 2, label %bb.ab
    i64 3, label %bb.ac
  ]

default.unreachable457:                           ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_ZN4zstd6stream9functions10decode_all17h0301b4e1aa46ea5bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN6flate29bufreader18BufReader$LT$R$GT$3new17he1d65912329a223dE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %bb.ak unwind label %.thread382

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN3std2io8buffered9bufreader18BufReader$LT$R$GT$13with_capacity17h5dcaa829e621edc3E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, i64 noundef 8192, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %bb.ay unwind label %.thread393

bb.ac:                                            ; preds = %bb.y
  store i64 0, ptr %i.ag, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.es, align 8
  br label %bb.ah

.body:                                            ; preds = %bb.ef, %bb.ad, %.body316
  %.sroa.0138.0 = phi i8 [ %.sroa.0138.3, %.body316 ], [ %.sroa.0138.1, %bb.ad ], [ %.sroa.0138.9, %bb.ef ]
  %.pn297 = phi { ptr, i32 } [ %.pn295, %.body316 ], [ %i.eu, %bb.ad ], [ %i.ja, %bb.ef ] ; 2 uses
  %i.et = trunc nuw i8 %.sroa.0138.0 to i1
  br i1 %i.et, label %.thread363, label %bb.ej

bb.ad:                                            ; preds = %bb.eg, %bb.bi, %bb.au, %bb.ds, %bb.af, %bb.z
  %.sroa.0138.1 = phi i8 [ 1, %bb.af ], [ %.sroa.0138.9, %bb.eg ], [ %.sroa.0138.7, %bb.ds ], [ 1, %bb.z ], [ 1, %bb.au ], [ 1, %bb.bi ]
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.z
  %i.ev = load i64, ptr %i.af, align 8, !range !222, !noundef !4 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, -9223372036854775808
  %i.ex = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  br i1 %i.ew, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ez = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.ey)
          to label %.thread371 unwind label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %4 = load i64, ptr %.sroa.5163.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i64 %i.ev, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %4, ptr %.sroa.539.0..sroa_idx, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit", %bb.aq, %bb.ag, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_ZN3std2fs8metadata17hdd952ddc7d999df8E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.bl unwind label %bb.bk

.thread371:                                       ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit314", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit", %bb.af
  %.sroa.0.0.ph = phi ptr [ %i.ez, %bb.af ], [ %i.fg, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit" ], [ %i.fp, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit314" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ei

bb.ai:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.fa = trunc nuw i8 %.sroa.0138.9 to i1
  br i1 %i.fa, label %bb.ei, label %bb.dv

.thread382:                                       ; preds = %bb.ar, %bb.ak, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread377

bb.aj:                                            ; preds = %bb.ap
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread363

bb.ak:                                            ; preds = %bb.aa
  invoke void @"_ZN6flate22gz7bufread18GzDecoder$LT$R$GT$3new17h8ab3f97a0e1f2b6fE"(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.al unwind label %.thread382

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ad, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fb = invoke { i64, ptr } @_ZN3std2io19default_read_to_end17hf59c13b41cfab51fE(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 0, i64 undef)
          to label %bb.an unwind label %bb.am     ; 2 uses

bb.am:                                            ; preds = %bb.ao, %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$flate2..gz..read..GzDecoder$LT$$RF$std..fs..File$GT$$GT$17h941c8e12e2e7ecf9E"(ptr noalias noundef align 8 dereferenceable(200) %i.ad) #15
          to label %.thread377 unwind label %bb.aw

bb.an:                                            ; preds = %bb.al
  %i.fd = extractvalue { i64, ptr } %i.fb, 0
  %i.fe = trunc nuw i64 %i.fd to i1
  br i1 %i.fe, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ff = extractvalue { i64, ptr } %i.fb, 1
  %i.fg = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.ff)
          to label %bb.ar unwind label %bb.am

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$flate2..gz..read..GzDecoder$LT$$RF$std..fs..File$GT$$GT$17h941c8e12e2e7ecf9E"(ptr noalias noundef align 8 dereferenceable(200) %i.ad)
          to label %bb.aq unwind label %bb.aj

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ao
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$flate2..gz..read..GzDecoder$LT$$RF$std..fs..File$GT$$GT$17h941c8e12e2e7ecf9E"(ptr noalias noundef align 8 dereferenceable(200) %i.ad)
          to label %bb.as unwind label %.thread382

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.thread363 unwind label %bb.av

bb.au:                                            ; preds = %bb.as
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit" unwind label %bb.ad

bb.av:                                            ; preds = %bb.at
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit": ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.thread371

bb.aw:                                            ; preds = %.thread396, %bb.dd, %bb.cy, %bb.co, %.body316, %.thread385, %bb.ba, %.thread377, %bb.am
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

.thread377:                                       ; preds = %bb.am, %.thread382
  %.pn269380 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread382 ], [ %i.fc, %bb.am ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #15
          to label %.thread363 unwind label %bb.aw

.thread393:                                       ; preds = %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308", %bb.ay, %bb.ab
  %lpad.thr_comm391 = landingpad { ptr, i32 }
          cleanup
  br label %.thread385

bb.ax:                                            ; preds = %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i"
  %lpad.thr_comm.split-lp392 = landingpad { ptr, i32 }
          cleanup
  br label %.thread363

bb.ay:                                            ; preds = %bb.ab
  invoke void @"_ZN3xz27bufread18XzDecoder$LT$R$GT$3new17hf312d6c6cceb205fE"(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.az unwind label %.thread393

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ab, ptr noundef nonnull align 8 dereferenceable(184) %i.i, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fk = invoke { i64, ptr } @_ZN3std2io19default_read_to_end17hb1c4e00def073a5eE(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef 0, i64 undef)
          to label %bb.bb unwind label %bb.ba     ; 2 uses

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E"(ptr noalias noundef align 8 dereferenceable(184) %i.ab) #15
          to label %.thread385 unwind label %bb.aw

bb.bb:                                            ; preds = %bb.az
  %i.fm = extractvalue { i64, ptr } %i.fk, 0
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fo = extractvalue { i64, ptr } %i.fk, 1
  %i.fp = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.fo)
          to label %bb.bf unwind label %bb.ba

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i = load i64, ptr %i.fq, align 8, !alias.scope !969, !noundef !4 ; 2 uses
  %i.fr = icmp eq i64 %.val1.i.i, 0
  br i1 %i.fr, label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !969, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #16, !noalias !969
  br label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i"

"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i": ; preds = %bb.be, %bb.bd
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke void @"_ZN61_$LT$xz2..stream..Stream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h71a39eaf8c74dd2eE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.fs)
          to label %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit" unwind label %bb.ax

"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit": ; preds = %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ah

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i306 = load i64, ptr %i.ft, align 8, !alias.scope !976, !noundef !4 ; 2 uses
  %i.fu = icmp eq i64 %.val1.i.i306, 0
  br i1 %i.fu, label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i307 = load ptr, ptr %i.ab, align 8, !alias.scope !976, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i307, i64 noundef range(i64 1, 0) %.val1.i.i306, i64 noundef 1) #16, !noalias !976
  br label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308"

"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308": ; preds = %bb.bg, %bb.bf
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke void @"_ZN61_$LT$xz2..stream..Stream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h71a39eaf8c74dd2eE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.fv)
          to label %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309" unwind label %.thread393

"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309": ; preds = %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309"
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread363 unwind label %bb.bj

bb.bi:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit314" unwind label %bb.ad

bb.bj:                                            ; preds = %bb.bh
  %i.fx = landingpad { ptr, i32 }
end_hunk_0
