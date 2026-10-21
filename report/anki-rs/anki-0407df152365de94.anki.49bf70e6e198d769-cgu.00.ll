Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki13import_export4text3csv6import46_$LT$impl$u20$anki..collection..Collection$GT$10import_csv17h8980340221fc5794E":bb.a

bb.v:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$anki..import_export..text..ForeignNote$GT$$GT$17h64b9f85131c162ceE.exit": ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %i.d, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  invoke void @"_ZN4anki13import_export4text6import56_$LT$impl$u20$anki..import_export..text..ForeignData$GT$6import17hd763b2b38a92620cE"(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$anki..import_export..text..ForeignNote$GT$$GT$17h64b9f85131c162ceE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0483871e8d53029cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd3d67c2bb86336eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body.i78 unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd3d67c2bb86336eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E.exit.i81" unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i78

.body.i78:                                        ; preds = %bb.ab, %bb.y
  %eh.lpad-body.i79 = phi { ptr, i32 } [ %i.au, %bb.ab ], [ %i.as, %bb.y ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd5cd0656d8a17dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av)
          to label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88.thread" unwind label %bb.ac

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E.exit.i81": ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd5cd0656d8a17dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw)
          to label %"_ZN4core3ptr74drop_in_place$LT$anki..import_export..text..csv..import..ColumnContext$GT$17h563e1b034aba1a56E.exit86" unwind label %.thread114

bb.ac:                                            ; preds = %.body.i78
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr74drop_in_place$LT$anki..import_export..text..csv..import..ColumnContext$GT$17h563e1b034aba1a56E.exit86": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E.exit.i81"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit", %"_ZN4core3ptr74drop_in_place$LT$anki..import_export..text..csv..import..ColumnContext$GT$17h563e1b034aba1a56E.exit86"
  ret void

bb.ae:                                            ; preds = %bb.w, %bb.t
  %eh.lpad-body77 = phi { ptr, i32 } [ %i.aq, %bb.w ], [ %i.ao, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE"(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #27
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.an, %bb.ao, %bb.aj, %.critedge73, %bb.ai, %.thread134, %.critedge.thread, %bb.ag, %bb.ae, %.critedge74.thread
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..import_export..text..NameOrId$GT$17ha3a3b9158792309dE"(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #27
          to label %.critedge.thread unwind label %bb.af

bb.ah:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$anki..import_export..text..ForeignNote$GT$$GT$17h64b9f85131c162ceE.exit"
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.critedge74.thread

.critedge.thread:                                 ; preds = %bb.ag
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$anki..import_export..text..ForeignNote$GT$$GT$17h64b9f85131c162ceE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %.thread134 unwind label %bb.af

.thread134:                                       ; preds = %.critedge.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$anki..import_export..text..ForeignNotetype$GT$$GT$17h9d947f9777e7b48dE"(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #27
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %.thread134
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #27
          to label %.critedge73 unwind label %bb.af

.critedge73:                                      ; preds = %bb.ai
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.be) #27
          to label %.critedge74.thread unwind label %bb.af

bb.aj:                                            ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$anki..import_export..text..ForeignNote$GT$$GT$17h64b9f85131c162ceE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #27
          to label %.critedge74.thread unwind label %bb.af

"_ZN4core3ptr74drop_in_place$LT$anki..import_export..text..csv..import..ColumnContext$GT$17h563e1b034aba1a56E.exit": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.h, %"_ZN4core3ptr74drop_in_place$LT$anki..import_export..text..csv..import..ColumnContext$GT$17h563e1b034aba1a56E.exit", %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !2049, !nonnull !3, !noundef !3
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !2049
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.al, label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit"

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf3b6b4601f44977fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit" unwind label %.thread

bb.am:                                            ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bk = call noundef i32 @close(i32 noundef %i.u) #29 ; 0 uses
  br label %.thread101.thread

"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit": ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki_proto..import_export..CsvMetadata$GT$17h2757133359ab9788E"(ptr noalias noundef align 8 dereferenceable(176) %4)
  br label %bb.ad

.thread101.thread:                                ; preds = %.body.i, %bb.am, %.thread95, %.thread101
  %.pn68100 = phi { ptr, i32 } [ %i.r, %.thread95 ], [ %.pn68, %.thread101 ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.split-lp, %bb.am ] ; 2 uses
  %.sroa.033.199 = phi i8 [ 1, %.thread95 ], [ %.sroa.033.1, %.thread101 ], [ 1, %.body.i ], [ 1, %bb.am ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !2053, !nonnull !3, !noundef !3
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !2053
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.an, label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88"

bb.an:                                            ; preds = %.thread101.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf3b6b4601f44977fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88" unwind label %bb.af

"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88.thread": ; preds = %.body.i78, %bb.ao, %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88"
  %.pn7093 = phi { ptr, i32 } [ %.pn7094, %bb.ao ], [ %.pn70, %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88" ], [ %eh.lpad-body.i79, %.body.i78 ]
  resume { ptr, i32 } %.pn7093

bb.ao:                                            ; preds = %.thread, %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88"
  %.pn7094 = phi { ptr, i32 } [ %i.p, %.thread ], [ %.pn70, %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88" ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki_proto..import_export..CsvMetadata$GT$17h2757133359ab9788E"(ptr noalias noundef align 8 dereferenceable(176) %4) #27
          to label %"_ZN4core3ptr105drop_in_place$LT$anki..progress..ThrottlingProgressHandler$LT$anki..import_export..ImportProgress$GT$$GT$17h5e8453693b3383e4E.exit88.thread" unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4anki13import_export4text3csv8metadata46_$LT$impl$u20$anki..collection..Collection$GT$10parse_line17h3b25acde414fc100E"(ptr noalias noundef nonnull align 8 dereferenceable(728) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(176) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 35, ptr %i.n, align 4
  %i.o = call noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hd671bd7262d5b917E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef 1) ; 2 uses
  %i.p = add i64 %2, -1                           ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.o, label %.preheader, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hda5393399a9b2fe1E.exit.thread"

.preheader:                                       ; preds = %bb.a, %bb.e
  %i.r = phi i64 [ %i.ag, %bb.e ], [ 0, %bb.a ]   ; 4 uses
  %i.s = sub nuw i64 %i.p, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.preheader
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.preheader
  %i.v = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.s), !noalias !2131
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.s, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.ab, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !2132, !noalias !2133, !noundef !3
  %i.aa = icmp eq i8 %i.z, 58
  br i1 %i.aa, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i ], [ %i.v, %bb.b ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hda5393399a9b2fe1E.exit.thread"

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %.not14.i.i = icmp ugt i64 %i.ag, %i.p
  %i.ah = add i64 %i.ae, %i.r                     ; 3 uses
  %or.cond.i.not.i = icmp ult i64 %i.ah, %i.p
  br i1 %or.cond.i.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  br i1 %.not14.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hda5393399a9b2fe1E.exit.thread", label %.preheader

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ah
  %lhsc.i = load i8, ptr %i.ai, align 1, !alias.scope !2134
  %i.aj = icmp eq i8 %lhsc.i, 58
  br i1 %i.aj, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.ak = sub nuw i64 %i.p, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ag
  %i.am = call { ptr, i64 } @_ZN4anki13import_export4text3csv8metadata17strip_line_ending17h709f09340e5cbbaeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.al, i64 noundef %i.ak) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 27 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 8 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.ar, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hae260b7f6c663834E.exit.thread226.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i8, ptr %i.an, align 1, !alias.scope !2135, !noalias !2137, !noundef !3 ; 3 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i": ; preds = %bb.h
  %i.au = icmp samesign ne i64 %i.ao, 1
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.aw = icmp samesign ugt i8 %i.as, -33
  br i1 %i.aw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i"

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"
  %i.ay = icmp samesign ne i64 %i.ao, 2
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp samesign ugt i8 %i.as, -17
  %spec.select.v = select i1 %i.az, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %i.an, i64 %spec.select.v
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", %bb.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"
  %.sroa.0.0.i5 = phi ptr [ %i.ax, %bb.i ], [ %i.av, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i" ], [ %spec.select, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i" ] ; 6 uses
  %i.ba = ptrtoint ptr %.sroa.0.0.i5 to i64
  %i.bb = sub i64 %i.ba, %i.aq                    ; 6 uses
  %i.bc = icmp eq ptr %.sroa.0.0.i5, %i.ap
  br i1 %i.bc, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hae260b7f6c663834E.exit.thread226.i, label %bb.j

bb.j:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i"
  %i.bd = load i8, ptr %.sroa.0.0.i5, align 1, !alias.scope !2135, !noalias !2138, !noundef !3 ; 3 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.k, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i": ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 1
  %i.bg = icmp ne ptr %i.bf, %i.ap
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ugt i8 %i.bd, -33
  br i1 %i.bh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i", label %bb.k

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 2
  %i.bj = icmp ne ptr %i.bi, %i.ap
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp samesign ugt i8 %i.bd, -17
  br i1 %i.bk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i", label %bb.k

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i"
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 3
  %i.bm = icmp ne ptr %i.bl, %i.ap
  call void @llvm.assume(i1 %i.bm)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i"
  %.not.i.i.i6 = icmp ult i64 %i.bb, %i.ao
  br i1 %.not.i.i.i6, label %bb.l, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.k
  %i.bn = icmp eq i64 %i.bb, %i.ao
  br i1 %i.bn, label %bb.m, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bb
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !2139, !noundef !3
  %i.bq = icmp sgt i8 %i.bp, -65
  br i1 %i.bq, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l, %.split.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bb
  br label %bb.n

bb.n:                                             ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4cc6d4bbf4f5905fE.exit.i.i.i.i.i", %bb.m
  %i.bs = phi i64 [ %i.dh, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4cc6d4bbf4f5905fE.exit.i.i.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %i.bt = phi ptr [ %i.dd, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4cc6d4bbf4f5905fE.exit.i.i.i.i.i" ], [ %i.br, %bb.m ] ; 7 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %.not.not.not.not.i.not.i.i = icmp eq ptr %i.bt, %i.ap
  br i1 %.not.not.not.not.i.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hae260b7f6c663834E.exit.thread226.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  %i.bw = load i8, ptr %i.bt, align 1, !alias.scope !2140, !noalias !2141, !noundef !3 ; 5 uses
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.p, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %i.by = and i8 %i.bw, 31
  %i.bz = zext nneg i8 %i.by to i32               ; 3 uses
  %i.ca = icmp ne ptr %i.bv, %i.ap
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2 ; 3 uses
  %i.cc = load i8, ptr %i.bv, align 1, !alias.scope !2140, !noalias !2141, !noundef !3
  %i.cd = shl nuw nsw i32 %i.bz, 6
  %i.ce = and i8 %i.cc, 63
  %i.cf = zext nneg i8 %i.ce to i32               ; 2 uses
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = icmp samesign ugt i8 %i.bw, -33
  br i1 %i.ch, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4cc6d4bbf4f5905fE.exit.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.ci = zext nneg i8 %i.bw to i32
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4cc6d4bbf4f5905fE.exit.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"
  %i.cj = icmp ne ptr %i.cb, %i.ap
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 3 ; 3 uses
  %i.cl = load i8, ptr %i.cb, align 1, !alias.scope !2140, !noalias !2141, !noundef !3
  %i.cm = shl nuw nsw i32 %i.cf, 6
  %i.cn = and i8 %i.cl, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cm, %i.co            ; 2 uses
  %i.cq = shl nuw nsw i32 %i.bz, 12
  %i.cr = or disjoint i32 %i.cp, %i.cq
  %i.cs = icmp samesign ugt i8 %i.bw, -17
  br i1 %i.cs, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.i.i", label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4cc6d4bbf4f5905fE.exit.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i"
  %i.ct = icmp ne ptr %i.ck, %i.ap
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cv = load i8, ptr %i.ck, align 1, !alias.scope !2140, !noalias !2141, !noundef !3
  %i.cw = shl nuw nsw i32 %i.bz, 18
  %i.cx = and i32 %i.cw, 1835008
  %i.cy = shl nuw nsw i32 %i.cp, 6
  %i.cz = and i8 %i.cv, 63
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = or disjoint i32 %i.cy, %i.da
  %i.dc = or disjoint i32 %i.db, %i.cx
  br label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h4cc6d4bbf4f5905fE.exit.i.i.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$17answer_card_inner17ha71794b44c3b337aE":bb.a
  %i.ay = load <4 x i32>, ptr %i.as, align 4, !alias.scope !13200
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 132
  %i.ba = load <2 x i32>, ptr %i.az, align 4, !alias.scope !13200
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 140
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !13200, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !13200, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 150
  %i.bg = load i8, ptr %i.bf, align 2, !alias.scope !13200, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !13200
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.bm = load i32, ptr %i.bl, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 108
  %.sroa.53.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i, align 4, !alias.scope !13200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.bq = load float, ptr %i.bp, align 4, !alias.scope !13200
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bs = load i32, ptr %i.br, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.bu = load float, ptr %i.bt, align 4, !alias.scope !13200
  %i.bv = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13200
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.k, %bb.f, %.thread243.thread, %.thread243
  %.sroa.0110.0 = phi i8 [ 0, %.thread243 ], [ %.sroa.0110.2296, %.thread243.thread ], [ %.sroa.0110.1, %bb.f ], [ %.sroa.0110.4, %bb.k ]
  %.pn225 = phi { ptr, i32 } [ %.pn223, %.thread243 ], [ %.pn223297, %.thread243.thread ], [ %i.bz, %bb.f ], [ %i.df, %bb.k ] ; 2 uses
  %i.by = trunc nuw i8 %.sroa.0110.0 to i1
  br i1 %i.by, label %bb.ch, label %common.resume

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.e
  %.sroa.0110.1 = phi i8 [ %.sroa.0110.4, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" ], [ 1, %bb.e ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.ca = trunc nuw i64 %i.ak to i1
  %.sroa.511.0.i = select i1 %i.ca, i64 %i.bv, i64 undef
  %i.cb = trunc nuw i32 %i.bs to i1
  %.sroa.59.0.i = select i1 %i.cb, float %i.bu, float undef
  %i.cc = trunc nuw i32 %i.bo to i1
  %.sroa.57.0.i = select i1 %i.cc, float %i.bq, float undef
  %i.cd = trunc nuw i32 %i.bm to i1
  %.sroa.53.0.i = select i1 %i.cd, i64 %.sroa.53.0.copyload.i, i64 undef
  %i.ce = trunc nuw i32 %i.bi to i1
  %.sroa.5.0.i = select i1 %i.ce, i32 %i.bk, i32 undef
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store <2 x i64> %i.ao, ptr %i.cf, align 8, !alias.scope !13199
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  store <2 x i64> %i.ar, ptr %i.cg, align 8, !alias.scope !13199
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 148
  store i8 %i.au, ptr %i.cj, align 4, !alias.scope !13199
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 149 ; 2 uses
  store i8 %i.aw, ptr %i.ck, align 1, !alias.scope !13199
  store <2 x i16> %i.ax, ptr %i.ch, align 8, !alias.scope !13199
  store <4 x i32> %i.ay, ptr %i.ci, align 4, !alias.scope !13199
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 132
  store <2 x i32> %i.ba, ptr %i.cl, align 4, !alias.scope !13199
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 140
  store i32 %i.bc, ptr %i.cm, align 4, !alias.scope !13199
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i64 %i.be, ptr %i.cn, align 8, !alias.scope !13199
  %i.co = getelementptr inbounds nuw i8, ptr %i.z, i64 150
  store i8 %i.bg, ptr %i.co, align 2, !alias.scope !13199
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 %i.bi, ptr %i.cp, align 8, !alias.scope !13199
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  store i32 %.sroa.5.0.i, ptr %i.cq, align 4, !alias.scope !13199
  %i.cr = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store i32 %i.bm, ptr %i.cr, align 8, !alias.scope !13199
  %.sroa.53.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.z, i64 108
  store i64 %.sroa.53.0.i, ptr %.sroa.53.0..sroa_idx4.i, align 4, !alias.scope !13199
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i32 %i.bo, ptr %i.cs, align 8, !alias.scope !13199
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  store float %.sroa.57.0.i, ptr %i.ct, align 4, !alias.scope !13199
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i32 %i.bs, ptr %i.cu, align 8, !alias.scope !13199
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  store float %.sroa.59.0.i, ptr %i.cv, align 4, !alias.scope !13199
  store i64 %i.ak, ptr %i.z, align 8, !alias.scope !13199
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.511.0.i, ptr %i.cw, align 8, !alias.scope !13199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.cy = load i8, ptr %i.cx, align 8, !range !6, !noalias !13201, !noundef !3
  %i.cz = trunc nuw i8 %i.cy to i1
  invoke void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.y, ptr noundef nonnull align 8 %i.ae, i1 noundef zeroext %i.cz)
          to label %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit unwind label %.thread243.thread311

.thread243:                                       ; preds = %bb.ay, %bb.p
  %.sroa.0108.0 = phi i8 [ %.sroa.0108.3.ph, %bb.p ], [ %.sroa.0108.5, %bb.ay ]
  %.pn223 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.p ], [ %.pn, %bb.ay ] ; 2 uses
  %i.da = trunc nuw i8 %.sroa.0108.0 to i1
  br i1 %i.da, label %.thread243.thread, label %.body

.thread243.thread311:                             ; preds = %bb.i, %bb.cc, %bb.g
  %.sroa.0110.3 = phi i8 [ 0, %bb.cc ], [ 0, %bb.i ], [ 1, %bb.g ]
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.thread243.thread

_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit: ; preds = %bb.g
  %i.dc = load i64, ptr %i.y, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dc, -9223372036854775773
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.de = load i32, ptr %i.dd, align 8            ; 4 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.6129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.6129.0..sroa_idx130, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.6123.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 %i.dc, ptr %0, align 8
  %.sroa.4126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.de, ptr %.sroa.4126.0..sroa_idx127, align 8
  br label %bb.j

bb.i:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.v, ptr noundef nonnull align 8 dereferenceable(152) %i.ad, i64 152, i1 false)
  invoke fastcc void @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$18card_state_updater17h295847f53401a1acE"(ptr noalias noundef align 8 captures(address) dereferenceable(1032) %i.w, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.v)
          to label %bb.m unwind label %.thread243.thread311

bb.j:                                             ; preds = %.thread290, %bb.cb, %bb.h
  %.sroa.0110.4 = phi i8 [ 1, %bb.h ], [ 0, %bb.cb ], [ 0, %.thread290 ] ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.j
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit" unwind label %bb.f

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.dh = load i64, ptr %i.w, align 8, !range !25, !noundef !3 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.731, ptr noundef nonnull align 8 dereferenceable(112) %i.dj, i64 112, i1 false)
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.731, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.731)
  br label %.thread290

bb.o:                                             ; preds = %bb.m
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(912) %.sroa.5133.0..sroa_idx, i64 912, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.731, i64 112, i1 false)
  store i64 %i.dh, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.731)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 552
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 872
  %i.dm = load i32, ptr %i.dl, align 8, !noundef !3
  invoke void @_ZN4anki9scheduler9answering10CardAnswer15cap_answer_secs17h6062025305e3eac0E(ptr noalias noundef nonnull align 8 dereferenceable(168) %2, i32 noundef %i.dm)
          to label %bb.q unwind label %bb.cd

bb.p:                                             ; preds = %bb.ap, %bb.bd, %bb.bq
  %.sroa.0108.3.ph = phi i8 [ 1, %bb.ap ], [ 0, %bb.bq ], [ %.sroa.0108.7, %bb.bd ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread243

bb.q:                                             ; preds = %bb.o
  invoke void @"_ZN4anki9scheduler9answering7current62_$LT$impl$u20$anki..scheduler..answering..CardStateUpdater$GT$18current_card_state17hdc90cc5c8ce27d4cE"(ptr noalias noundef nonnull sret([60 x i8]) align 4 captures(address) dereferenceable(60) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1032) %i.x)
          to label %bb.r unwind label %bb.cd

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13202)
  call void @llvm.experimental.noalias.scope.decl(metadata !13203)
  %i.do = load i32, ptr %i.u, align 4, !range !16, !alias.scope !13202, !noundef !3 ; 3 uses
  %i.dp = trunc nuw i32 %i.do to i1               ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 4 uses
  br i1 %i.dp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dr = load i32, ptr %i.dq, align 4, !range !38, !alias.scope !13202, !noundef !3 ; 2 uses
  %.not13.i = icmp eq i32 %i.dr, 5
  %.pre298 = load i32, ptr %i.dn, align 8, !range !16 ; 3 uses
  br i1 %.not13.i, label %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit.thread316", label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ds = load i32, ptr %i.dn, align 8, !range !16, !alias.scope !13203, !noundef !3 ; 2 uses
  %i.dt = trunc nuw i32 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dv = load i32, ptr %i.du, align 4, !range !38, !alias.scope !13203 ; 2 uses
  %.not.i = icmp eq i32 %i.dv, 5
  %or.cond.i = select i1 %i.dt, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread", label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.dq, align 4, !range !38, !alias.scope !13202
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.v
  %i.dw = phi i32 [ %.pre298, %bb.v ], [ %i.ds, %._crit_edge ]
  %i.dx = phi i32 [ %i.ef, %bb.v ], [ %i.dv, %._crit_edge ] ; 2 uses
  %i.dy = phi i32 [ %i.dr, %bb.v ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.dz = add nsw i32 %i.dy, -2
  %i.ea = icmp samesign ugt i32 %i.dy, 1
  %narrow.i = select i1 %i.ea, i32 %i.dz, i32 3
  switch i32 %narrow.i, label %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit" [
    i32 1, label %bb.w
    i32 3, label %bb.x
  ]

.sink.split.i:                                    ; preds = %bb.x, %bb.w
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.w ], [ %.sink.i.sroa.gep233, %bb.x ]
  %.sink2.i = phi i64 [ 28, %bb.w ], [ 24, %bb.x ]
  %i.eb = load i32, ptr %.sink.i.sroa.phi, align 4, !alias.scope !13202, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sink2.i
  store i32 %i.eb, ptr %i.ec, align 4, !alias.scope !13203
  br label %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit"

bb.v:                                             ; preds = %bb.s
  %i.ed = trunc nuw i32 %.pre298 to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ef = load i32, ptr %i.ee, align 4, !range !38, !alias.scope !13203 ; 2 uses
  %.not15.i = icmp eq i32 %i.ef, 5
  %i.eg = select i1 %i.ed, i1 %.not15.i, i1 false
  br i1 %i.eg, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !range !38, !alias.scope !13204, !noundef !3
  %i.ej = icmp eq i32 %i.ei, 5
  br i1 %i.ej, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread", label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ek = icmp eq i32 %i.dx, 3
  br i1 %i.ek, label %.sink.split.i, label %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit"

bb.x:                                             ; preds = %bb.u
  %i.el = icmp samesign ult i32 %i.dx, 2
  br i1 %i.el, label %.sink.split.i, label %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit"

"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit": ; preds = %bb.x, %bb.w, %.sink.split.i, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !13205)
  call void @llvm.experimental.noalias.scope.decl(metadata !13204)
  %i.em = icmp eq i32 %i.do, %i.dw
  br i1 %i.em, label %bb.y, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit.thread316": ; preds = %bb.s
  %i.en = icmp eq i32 %i.do, %.pre298
  br i1 %i.en, label %.thread317, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

.thread317:                                       ; preds = %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit.thread316"
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ep = load i32, ptr %i.eo, align 4, !range !38, !alias.scope !13204, !noundef !3
  %i.eq = icmp eq i32 %i.ep, 5
  br i1 %i.eq, label %.thread321, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

bb.y:                                             ; preds = %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit"
  br i1 %i.dp, label %bb.z, label %.split255

bb.z:                                             ; preds = %bb.y
  %i.er = icmp ne i32 %i.dy, 5                    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !range !38, !alias.scope !13204, !noundef !3
  %i.eu = icmp eq i32 %i.et, 5
  %i.ev = xor i1 %i.er, %i.eu
  br i1 %i.ev, label %bb.aa, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

.split255:                                        ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ex = call fastcc noundef zeroext i1 @"_ZN85_$LT$anki..scheduler..states..normal..NormalState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h99c8e7a4730ab750E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(56) %i.dq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(56) %i.ew)
  br i1 %i.ex, label %bb.ab, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.ey = phi ptr [ %i.eh, %.thread ], [ %i.es, %bb.z ]
  %i.ez = phi i1 [ true, %.thread ], [ %i.er, %bb.z ]
  br i1 %i.ez, label %.split, label %.thread321

.split:                                           ; preds = %bb.aa
  %i.fa = call fastcc noundef zeroext i1 @"_ZN85_$LT$anki..scheduler..states..normal..NormalState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h99c8e7a4730ab750E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(56) %i.dq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(56) %i.ey)
  br i1 %i.fa, label %bb.ab, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

.thread321:                                       ; preds = %.thread317, %bb.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !alias.scope !13205, !noundef !3
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fe = load i32, ptr %i.fd, align 8, !alias.scope !13204, !noundef !3
  %i.ff = icmp eq i32 %i.fc, %i.fe
  br i1 %i.ff, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit", label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit": ; preds = %.thread321
  %i.fg = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.fh = load i8, ptr %i.fg, align 4, !range !6, !alias.scope !13205, !noundef !3
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fj = load i8, ptr %i.fi, align 4, !range !6, !alias.scope !13204, !noundef !3
  %i.fk = icmp eq i8 %i.fh, %i.fj
  br i1 %i.fk, label %bb.ab, label %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"

"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread": ; preds = %.thread, %.thread317, %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit.thread316", %bb.t, %.thread321, %"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$22set_elapsed_secs_equal17hcf47531e09d811c5E.exit", %bb.z, %.split255, %.split, %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.u, ptr %i.r, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN71_$LT$anki..scheduler..states..CardState$u20$as$u20$core..fmt..Debug$GT$3fmt17hb75b5ffa51ffc324E", ptr %.sroa.4137.0..sroa_idx, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.dn, ptr %i.fl, align 8
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @"_ZN71_$LT$anki..scheduler..states..CardState$u20$as$u20$core..fmt..Debug$GT$3fmt17hb75b5ffa51ffc324E", ptr %.sroa.4141.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13206
  store ptr @391, ptr %i.a, align 8, !noalias !13207
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4234.0..sroa_idx, align 8, !noalias !13207
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.r, ptr %.sroa.5235.0..sroa_idx, align 8, !noalias !13207
  %.sroa.6236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6236.0..sroa_idx, align 8, !noalias !13207
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @392, ptr %.sroa.7237.0..sroa_idx, align 8, !noalias !13207
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13207
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ac unwind label %bb.cd

bb.ab:                                            ; preds = %.split255, %.split, %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.p, ptr noundef nonnull align 4 dereferenceable(60) %i.fm, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.b, ptr noundef nonnull align 4 dereferenceable(60) %i.u, i64 60, i1 false)
  invoke void @_ZN4anki9scheduler9answering16CardStateUpdater17apply_study_state17he0a095090f0c2c55E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(1032) %i.x, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(60) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(60) %i.p)
          to label %bb.ae unwind label %bb.cd

bb.ac:                                            ; preds = %"_ZN75_$LT$anki..scheduler..states..CardState$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5a2050187953aadcE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394)
          to label %bb.ad unwind label %bb.cd

bb.ad:                                            ; preds = %bb.ac
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.cc

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.fn = load i64, ptr %i.q, align 8, !range !13, !noundef !3 ; 2 uses
  %.not197 = icmp eq i64 %i.fn, -9223372036854775773
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743, ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 24, i1 false)
  br i1 %.not197, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.3150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5147.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.2149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743, i64 24, i1 false)
  store i64 %i.fn, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743)
  br label %bb.cc

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$18add_partial_revlog17h875ceb778feed276E"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.n, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef align 4 captures(address) dereferenceable(24) %i.o, i32 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %2)
          to label %bb.ah unwind label %bb.cd

bb.ah:                                            ; preds = %bb.ag
  %i.fp = load i64, ptr %i.n, align 8, !range !13, !noundef !3 ; 2 uses
  %.not199 = icmp eq i64 %i.fp, -9223372036854775773
  br i1 %.not199, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2156.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4154.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.fp, ptr %0, align 8
  br label %bb.cc

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fq = load i8, ptr %i.ck, align 1, !range !24, !noundef !3
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.val = load i32, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.x, i64 336
  %.val228 = load i64, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.x, i64 960
  %.val229 = load i32, ptr %i.ft, align 8
  invoke fastcc void @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$29update_deck_stats_from_answer17hc99dda91819f6dcfE"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.m, ptr noalias noundef align 8 dereferenceable(728) %1, i32 noundef %i.de, i32 %.val, i64 %.val228, i32 %.val229, i8 noundef %i.fq)
          to label %bb.ak unwind label %bb.cd

bb.ak:                                            ; preds = %bb.aj
  %i.fu = load i64, ptr %i.m, align 8, !range !13, !noundef !3 ; 2 uses
  %.not201 = icmp eq i64 %i.fu, -9223372036854775773
  br i1 %.not201, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2162.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4160.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.fu, ptr %0, align 8
  br label %bb.cc

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
end_hunk_1
