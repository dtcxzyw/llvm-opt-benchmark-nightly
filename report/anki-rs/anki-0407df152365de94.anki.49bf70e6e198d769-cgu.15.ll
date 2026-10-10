Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$10start_file17h1fc13f3b563a0ee6E":bb.a
  %i.bj = trunc nuw i64 %i.bg to i1
  %i.bk = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.bi, i64 0
  br i1 %i.bj, label %bb.cw, label %bb.j

.thread212.i:                                     ; preds = %bb.ai
  %lpad.thr_comm.split-lp244.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread186.i

bb.i:                                             ; preds = %bb.z, %.invoke.i, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread186.i

bb.j:                                             ; preds = %.noexc27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false), !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1800
  store i64 0, ptr %i.aa, align 8, !noalias !1800
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bm, align 8, !noalias !1800
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  store i64 0, ptr %i.bn, align 8, !noalias !1800
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 66
  %i.bp = load i8, ptr %i.bo, align 2, !range !16, !alias.scope !1799, !noalias !1803, !noundef !6 ; 2 uses
  %i.bq = shl nuw nsw i8 %i.bp, 4
  %.sroa.0.2.i.i = zext nneg i8 %i.bq to i16      ; 2 uses
  %i.br = icmp ugt ptr %i.bh, inttoptr (i64 4294967294 to ptr) ; 2 uses
  %i.bs = or disjoint i16 %.sroa.0.2.i.i, 8
  %.sroa.0.3.i.i = select i1 %i.br, i16 %i.bs, i16 %.sroa.0.2.i.i ; 2 uses
  %i.bt = icmp eq i16 %.sroa.0.3.i.i, 0
  br i1 %i.bt, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i: ; preds = %bb.j
  %.sroa.011.0.i.i = zext i1 %i.br to i64
  %.sroa.06.2.i.i = zext nneg i8 %i.bp to i64     ; 2 uses
  store i64 %.sroa.06.2.i.i, ptr %i.z, align 8, !noalias !1800
  %.sroa.5.0..sroa_idx181.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx181.i, align 8, !noalias !1800
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.06.2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1800
  %.sroa.7182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %.sroa.7182.0..sroa_idx.i, align 8, !noalias !1800
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %.sroa.011.0.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1800
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.bi, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !1800
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i16 1, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !1800
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 50
  store i16 %.sroa.0.3.i.i, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1800
  %i.bu = invoke { ptr, i64 } @_ZN3zip5types20Zip64ExtraFieldBlock9serialize17hc68b135dfcb507aaE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.z)
          to label %bb.l unwind label %bb.i, !noalias !1802 ; 2 uses

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.bw = load i16, ptr %i.bv, align 8, !range !35, !alias.scope !1799, !noalias !1803, !noundef !6
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.by = load i16, ptr %i.bx, align 2, !alias.scope !1799, !noalias !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1800
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.bz = icmp slt i64 %3, 0
  br i1 %i.bz, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i: ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.ca = icmp eq i64 %3, 0
  br i1 %i.ca, label %bb.t, label %bb.k

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1806
  %i.cb = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1806 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.invoke.i, label %bb.t

bb.l:                                             ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.cd = extractvalue { ptr, i64 } %i.bu, 0      ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.bu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  store i64 %i.ce, ptr %i.y, align 8, !alias.scope !1807, !noalias !1800
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.cf, align 8, !alias.scope !1807, !noalias !1800
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  store i64 %i.ce, ptr %i.cg, align 8, !alias.scope !1807, !noalias !1800
  call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.ch = load ptr, ptr %i.bm, align 8, !alias.scope !1809, !noalias !1810, !nonnull !6, !noundef !6
  %i.ci = load i64, ptr %i.bn, align 8, !alias.scope !1809, !noalias !1810, !noundef !6 ; 3 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.ci)
          to label %bb.m unwind label %bb.r, !noalias !1802

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i": ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1800
  br label %.thread186.i

bb.m:                                             ; preds = %bb.l
  %i.cj = load i64, ptr %i.cg, align 8, !alias.scope !1811, !noalias !1812, !noundef !6 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  call void @llvm.assume(i1 %i.ck)
  %i.cl = load ptr, ptr %i.cf, align 8, !alias.scope !1811, !noalias !1812, !nonnull !6, !noundef !6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull readonly align 1 %i.ch, i64 %i.ci, i1 false), !noalias !1813
  %i.cn = load i64, ptr %i.cg, align 8, !alias.scope !1811, !noalias !1812, !noundef !6
  %i.co = add i64 %i.cn, %i.ci
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !1811, !noalias !1812
  store i64 0, ptr %i.bn, align 8, !alias.scope !1809, !noalias !1810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1800
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.p unwind label %bb.n, !noalias !1802

bb.n:                                             ; preds = %bb.m
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.aa, align 8, !alias.scope !1814, !noalias !1800 ; 2 uses
  %i.cq = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cq, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val3.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !1815, !noalias !1800, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1816
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i"

bb.p:                                             ; preds = %bb.m
  %.val.i.i = load i64, ptr %i.aa, align 8, !alias.scope !1814, !noalias !1800 ; 2 uses
  %i.cr = icmp eq i64 %.val.i.i, 0
  br i1 %i.cr, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !1815, !noalias !1800, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1817
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1800
  br label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i

bb.r:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.y) #51
          to label %.thread186.i unwind label %bb.s, !noalias !1802

bb.s:                                             ; preds = %bb.cm, %bb.cl, %bb.r
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body38

.body38:                                          ; preds = %bb.cs, %bb.ct, %bb.s
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1802
  unreachable

bb.t:                                             ; preds = %bb.k, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i ], [ %i.cb, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !1818
  store i64 %3, ptr %i.w, align 8, !alias.scope !1819, !noalias !1800
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1819, !noalias !1800
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1819, !noalias !1800
  %i.cu = add nuw i64 %3, 30
  %i.cv = add i64 %i.cu, %i.bi                    ; 2 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.w unwind label %bb.u, !noalias !1802

bb.u:                                             ; preds = %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1820, !noalias !1800 ; 2 uses
  %i.cx = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.cx, label %.thread186.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1821, !noalias !1800, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1822
  br label %.thread186.i

bb.w:                                             ; preds = %bb.t
  %.val.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1820, !noalias !1800 ; 2 uses
  %i.cy = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cy, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1821, !noalias !1800, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1823
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1800
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.da = load i16, ptr %i.cz, align 8, !alias.scope !1799, !noalias !1803, !noundef !6 ; 3 uses
  %i.db = icmp ugt i16 %i.da, 1
  %.pre250.i = load i64, ptr %i.bn, align 8, !noalias !1800 ; 4 uses
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.dc = icmp sgt i64 %.pre250.i, -1
  call void @llvm.assume(i1 %i.dc)
  %i.dd = zext i16 %i.da to i64                   ; 8 uses
  %i.de = add i64 %.pre250.i, %i.cv
  %i.df = urem i64 %i.de, %i.dd                   ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.ag, %bb.y, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.dh = phi i64 [ %.pre250.i, %bb.y ], [ %.pre.i, %bb.ag ], [ %.pre250.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" ] ; 3 uses
  store i64 %i.dh, ptr %i.t, align 8, !noalias !1800
  %i.di = icmp sgt i64 %i.dh, -1
  call void @llvm.assume(i1 %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1800
  %i.dj = load ptr, ptr %i.bm, align 8, !noalias !1800, !nonnull !6, !noundef !6
  invoke fastcc void @_ZN3zip5types11ZipFileData22initialize_local_block17hb9ba992954de7836E(ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.af, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ab, i64 noundef %i.bi, i16 noundef %i.bw, i16 %i.by, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dj, i64 noundef %i.dh)
          to label %bb.ah unwind label %bb.i

bb.aa:                                            ; preds = %bb.y
  %i.dk = sub nuw nsw i64 %i.dd, %i.df            ; 3 uses
  %i.dl = icmp samesign ult i64 %i.dk, 6
  br i1 %i.dl, label %5, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

5:                                                ; preds = %bb.aa
  %6 = add nuw nsw i64 %i.dk, %i.dd               ; 3 uses
  %7 = icmp samesign ult i64 %6, 6
  br i1 %7, label %8, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

8:                                                ; preds = %5
  %9 = add nuw nsw i64 %6, %i.dd                  ; 3 uses
  %10 = icmp samesign ult i64 %9, 6
  br i1 %10, label %11, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

11:                                               ; preds = %8
  %12 = add nuw nsw i64 %9, %i.dd                 ; 3 uses
  %13 = icmp samesign ult i64 %12, 6
  br i1 %13, label %bb.ab, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.ab:                                            ; preds = %11
  %i.dm = add nuw nsw i64 %12, %i.dd              ; 3 uses
  %i.dn = icmp samesign ult i64 %i.dm, 6
  br i1 %i.dn, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.do = add nuw nsw i64 %i.dm, %i.dd            ; 3 uses
  %i.dp = icmp samesign ult i64 %i.do, 6
  %i.dq = add nuw nsw i64 %i.do, %i.dd
  %spec.select = select i1 %i.dp, i64 %i.dq, i64 %i.do
  br label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %11, %8, %5, %bb.aa
  %.sroa.014.0.i.lcssa = phi i64 [ %i.dk, %bb.aa ], [ %6, %5 ], [ %9, %8 ], [ %12, %11 ], [ %i.dm, %bb.ab ], [ %spec.select, %bb.ac ]
  %i.dr = add nsw i64 %.sroa.014.0.i.lcssa, -4    ; 4 uses
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1824
  %i.ds = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 -65536, 65537) %i.dr, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1824 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.invoke.i, label %bb.ad

.invoke.i:                                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, %bb.k, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.du = phi i64 [ 0, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ 1, %bb.k ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  %i.dv = phi i64 [ %3, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ %3, %bb.k ], [ %i.dr, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.du, i64 %i.dv) #50
          to label %.cont.i unwind label %bb.i, !noalias !1802

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  store i16 %i.da, ptr %i.ds, align 1, !noalias !1802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1800
  store i64 %i.dr, ptr %i.u, align 8, !noalias !1800
  %.sroa.5.0..sroa_idx248.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ds, ptr %.sroa.5.0..sroa_idx248.i, align 8, !noalias !1800
  %.sroa.7249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.dr, ptr %.sroa.7249.0..sroa_idx.i, align 8, !noalias !1800
  %i.dw = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.ae unwind label %.thread201.i, !noalias !1802 ; 2 uses

.thread201.i:                                     ; preds = %bb.ae, %bb.ad
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread186.i

bb.ae:                                            ; preds = %bb.ad
  %i.dx = extractvalue { ptr, i64 } %i.dw, 0
  %i.dy = extractvalue { ptr, i64 } %i.dw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1800
  invoke void @_ZN3zip5write19ExtendedFileOptions24add_extra_data_unchecked17haa17d3d5f1909adaE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i16 noundef -24290, ptr noalias noundef nonnull align 1 %i.dx, i64 noundef %i.dy)
          to label %bb.af unwind label %.thread201.i, !noalias !1802

bb.af:                                            ; preds = %bb.ae
  %i.dz = load i64, ptr %i.v, align 8, !range !34, !noalias !1800, !noundef !6 ; 2 uses
  %.not146.i = icmp eq i64 %i.dz, -9223372036854775802
  br i1 %.not146.i, label %bb.ag, label %.critedge.i

.critedge.i:                                      ; preds = %bb.af
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ea = load <2 x i64>, ptr %.sroa.493.0..sroa_idx.i, align 8, !noalias !1801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1800
  br label %bb.cn

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1800
  %.pre.i = load i64, ptr %i.bn, align 8, !noalias !1800
  br label %bb.z

bb.ah:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 291
  %i.ec = load i8, ptr %i.eb, align 1, !range !16, !alias.scope !1798, !noalias !1802, !noundef !6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 204
  %i.ee = xor i8 %i.ec, 1
  store i8 %i.ee, ptr %i.ed, align 4, !noalias !1800
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 207 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !1800, !noundef !6
  %i.eh = invoke noundef i16 @_ZN3zip5types11ZipFileData14version_needed17h5ef384831db9eb5dE(ptr noundef nonnull align 8 %i.s)
          to label %bb.ai unwind label %bb.cm, !noalias !1802

bb.ai:                                            ; preds = %bb.ah
  %i.ei = trunc i16 %i.eh to i8
  %.sroa.0.0.i.i = call noundef i8 @llvm.umax.i8(i8 %i.ei, i8 %i.eg)
  store i8 %.sroa.0.0.i.i, ptr %i.ef, align 1, !noalias !1800
  %i.ej = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1, ptr %i.ej, align 8, !noalias !1800
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.cv, ptr %i.ek, align 8, !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.s, i64 208, i1 false), !noalias !1800
  invoke fastcc void @"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$16insert_file_data17hdadd1eee56eb82b5E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.p)
          to label %bb.aj unwind label %.thread212.i, !noalias !1802

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1800
  %i.el = load i64, ptr %i.q, align 8, !range !34, !noalias !1800, !noundef !6 ; 2 uses
  %.sroa.4112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.em = load <2 x i64>, ptr %.sroa.4112.0..sroa_idx.i, align 8, !noalias !1800
  %.sroa.4112.0.copyload.i = load i64, ptr %.sroa.4112.0..sroa_idx.i, align 8, !noalias !1800 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1800
  %.not149.not.i = icmp eq i64 %i.el, -9223372036854775802
  br i1 %.not149.not.i, label %bb.ak, label %bb.ck

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.4112.0.copyload.i, ptr %i.r, align 8, !noalias !1800
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i8 1, ptr %i.en, align 8, !alias.scope !1798, !noalias !1802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !1800
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ah, ptr %i.eo, align 8, !noalias !1800
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %1, ptr %i.ep, align 8, !noalias !1800
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.r, ptr %i.eq, align 8, !noalias !1800
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.t, ptr %i.er, align 8, !noalias !1800
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1827
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !1826, !noalias !1828, !nonnull !6, !noundef !6 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !1826, !noalias !1828, !noundef !6 ; 2 uses
  invoke void @_ZN3zip5write19ExtendedFileOptions19validate_extra_data17h03ecd3415d5a1a3dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.et, i64 noundef %i.ev, i1 noundef zeroext false)
          to label %bb.al unwind label %bb.bq, !noalias !1829

bb.al:                                            ; preds = %bb.ak
  %i.ew = load i64, ptr %i.e, align 8, !range !34, !noalias !1827, !noundef !6
  %.not.i.i = icmp eq i64 %i.ew, -9223372036854775802
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1827
  br label %bb.bl

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1827
  %i.ex = load i64, ptr %i.r, align 8, !noalias !1827, !noundef !6
  %i.ey = invoke noundef align 8 dereferenceable(208) ptr @"_ZN100_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17ha29d8cabadae090aE"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, i64 noundef %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92)
          to label %bb.ao unwind label %bb.bq, !noalias !1829 ; 4 uses

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN3zip5types11ZipFileData11local_block17hfba6eca050775567E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.ey)
          to label %bb.ap unwind label %bb.bq, !noalias !1829

bb.ap:                                            ; preds = %bb.ao
  %i.ez = load i8, ptr %i.d, align 8, !range !16, !noalias !1827, !noundef !6
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 24, i1 false), !noalias !1830
  br label %bb.bl

bb.ar:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.fd = load i64, ptr %i.ah, align 8, !range !33, !alias.scope !1798, !noalias !1829, !noundef !6
  %i.fe = icmp eq i64 %i.fd, -9223372036854775807
  br i1 %i.fe, label %bb.as, label %bb.at, !prof !19

bb.as:                                            ; preds = %bb.ar
  %i.ff = load i64, ptr %i.bc, align 8, !range !7, !alias.scope !1798, !noalias !1829, !noundef !6
  %.not18.i.i = icmp eq i64 %i.ff, -9223372036854775808
  br i1 %.not18.i.i, label %bb.au, label %bb.at, !prof !19

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1827
  store ptr @88, ptr %i.c, align 8, !noalias !1827
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fg, align 8, !noalias !1827
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.fh, align 8, !noalias !1827
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fi, align 8, !noalias !1827
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.fj, align 8, !noalias !1827
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #50
          to label %bb.bk unwind label %bb.bq, !noalias !1829

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.a, ptr noundef nonnull align 1 dereferenceable(30) %i.fc, i64 30, i1 false), !noalias !1827
  %i.fk = invoke noundef ptr @_ZN3std2io5Write9write_all17h55ae749b4115d4deE(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.be, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 30)
          to label %.noexc.i.i unwind label %bb.bq, !noalias !1829 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.au
  %.not.i.i.i = icmp eq ptr %i.fk, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1831
  br i1 %.not.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc.i.i
  store i64 -9223372036854775807, ptr %i.o, align 8, !alias.scope !1825, !noalias !1830
  %.sroa.236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.fk, ptr %.sroa.236.0..sroa_idx.i.i, align 8, !alias.scope !1825, !noalias !1830
  br label %bb.bl

bb.aw:                                            ; preds = %.noexc.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !1829, !nonnull !6, !noundef !6
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !1829, !noundef !6
  %i.fp = invoke noundef ptr @_ZN3std2io5Write9write_all17h55ae749b4115d4deE(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.be, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fm, i64 noundef %i.fo)
          to label %bb.ax unwind label %bb.bq, !noalias !1829 ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %.not20.i.i = icmp eq ptr %i.fp, null
  br i1 %.not20.i.i, label %bb.az, label %bb.ay

end_hunk_0
begin_hunk_1_@"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$10start_file17h702da4b820999033E":bb.a
  %lpad.thr_comm.split-lp255.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread198.i

bb.i:                                             ; preds = %bb.av, %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h40fe510b8f4be8deE.exit.i.i", %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.thread198.i

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i: ; preds = %bb.h
  %.sroa.011.0.i.i = zext i1 %i.bt to i64
  %.sroa.06.2.i.i = zext nneg i8 %.sroa.14.0.copyload to i64 ; 2 uses
  store i64 %.sroa.06.2.i.i, ptr %i.aj, align 8, !noalias !1954
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 0, ptr %.sroa.5193.0..sroa_idx.i, align 8, !noalias !1954
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.06.2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1954
  %.sroa.7194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 0, ptr %.sroa.7194.0..sroa_idx.i, align 8, !noalias !1954
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %.sroa.011.0.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1954
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %.val.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !1954
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i16 1, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !1954
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 50
  store i16 %.sroa.0.3.i.i, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1954
  %i.bx = invoke { ptr, i64 } @_ZN3zip5types20Zip64ExtraFieldBlock9serialize17hc68b135dfcb507aaE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.aj)
          to label %bb.m unwind label %bb.i, !noalias !1956 ; 2 uses

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1957
  store i64 0, ptr %i.o, align 8, !noalias !1957
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1957
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !1957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1957
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 -536870880, ptr %i.by, align 8, !noalias !1957
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !1957
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !1957
  store ptr %i.o, ptr %i.n, align 8, !noalias !1957
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @120, ptr %i.bz, align 8, !noalias !1957
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !1958, !noalias !1959, !nonnull !6, !noundef !6 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1958, !noalias !1959, !noundef !6 ; 2 uses
  %i.ce = invoke noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cb, i64 noundef %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i" unwind label %bb.j, !noalias !1960

bb.j:                                             ; preds = %bb.k, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #51
          to label %.thread198.i unwind label %bb.l, !noalias !1960

"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i": ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  br i1 %i.ce, label %bb.k, label %bb.u, !prof !14

bb.k:                                             ; preds = %"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i"
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @121, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @562, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #50
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !1960

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1960
  unreachable

bb.m:                                             ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.ch = extractvalue { ptr, i64 } %i.bx, 0      ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.bx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  store i64 %i.ci, ptr %i.ai, align 8, !alias.scope !1961, !noalias !1954
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.cj, align 8, !alias.scope !1961, !noalias !1954
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  store i64 %i.ci, ptr %i.ck, align 8, !alias.scope !1961, !noalias !1954
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  %i.cl = load ptr, ptr %i.bq, align 8, !alias.scope !1963, !noalias !1964, !nonnull !6, !noundef !6
  %i.cm = load i64, ptr %i.br, align 8, !alias.scope !1963, !noalias !1964, !noundef !6 ; 3 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.cm)
          to label %bb.n unwind label %bb.s, !noalias !1956

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i": ; preds = %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1954
  br label %.thread198.i

bb.n:                                             ; preds = %bb.m
  %i.cn = load i64, ptr %i.ck, align 8, !alias.scope !1965, !noalias !1966, !noundef !6 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = load ptr, ptr %i.cj, align 8, !alias.scope !1965, !noalias !1966, !nonnull !6, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull readonly align 1 %i.cl, i64 %i.cm, i1 false), !noalias !1967
  %i.cr = load i64, ptr %i.ck, align 8, !alias.scope !1965, !noalias !1966, !noundef !6
  %i.cs = add i64 %i.cr, %i.cm
  store i64 %i.cs, ptr %i.ck, align 8, !alias.scope !1965, !noalias !1966
  store i64 0, ptr %i.br, align 8, !alias.scope !1963, !noalias !1964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !1954
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.q unwind label %bb.o, !noalias !1956

bb.o:                                             ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !1968, !noalias !1954 ; 2 uses
  %i.cu = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val3.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !1969, !noalias !1954, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1970
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i"

bb.q:                                             ; preds = %bb.n
  %.val.i.i = load i64, ptr %i.ak, align 8, !alias.scope !1968, !noalias !1954 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i, 0
  br i1 %i.cv, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !1969, !noalias !1954, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1971
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.r, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1954
  br label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i

bb.s:                                             ; preds = %bb.m
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #51
          to label %.thread198.i unwind label %bb.t, !noalias !1956

bb.t:                                             ; preds = %.thread198.i, %bb.db, %bb.da, %bb.s
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1956
  unreachable

bb.u:                                             ; preds = %"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1957
  %i.cy = add i64 %.val.i, 30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noalias !1954, !noundef !6 ; 2 uses
  %i.db = icmp sgt i64 %i.da, -1
  call void @llvm.assume(i1 %i.db)
  %i.dc = add i64 %i.cy, %i.da                    ; 2 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.x unwind label %bb.v, !noalias !1956

bb.v:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1972, !noalias !1954 ; 2 uses
  %i.de = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.de, label %.thread198.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val3.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !1973, !noalias !1954, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1974
  br label %.thread198.i

bb.x:                                             ; preds = %bb.u
  %.val.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1972, !noalias !1954 ; 2 uses
  %i.dg = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !1973, !noalias !1954, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1975
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1954
  %i.di = icmp ugt i16 %.sroa.13.0.copyload, 1
  %.pre262.i = load i64, ptr %i.br, align 8, !noalias !1954 ; 4 uses
  br i1 %i.di, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.dj = icmp sgt i64 %.pre262.i, -1
  call void @llvm.assume(i1 %i.dj)
  %i.dk = zext i16 %.sroa.13.0.copyload to i64    ; 8 uses
  %i.dl = add i64 %.pre262.i, %i.dc
  %i.dm = urem i64 %i.dl, %i.dk                   ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.aa, label %bb.as

bb.aa:                                            ; preds = %bb.az, %bb.z, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.do = phi i64 [ %.pre262.i, %bb.z ], [ %.pre.i, %bb.az ], [ %.pre262.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" ] ; 8 uses
  store i64 %i.do, ptr %i.ad, align 8, !noalias !1954
  %i.dp = icmp sgt i64 %i.do, -1
  call void @llvm.assume(i1 %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1954
  %i.dq = load ptr, ptr %i.bq, align 8, !noalias !1954, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1954
  %i.dr = trunc nuw i32 %.sroa.544.0.copyload to i1
  %i.ds = shl i32 %.sroa.6.0.copyload, 16
  %.sroa.03.0.i.i = select i1 %i.dr, i32 %i.ds, i32 -2119958528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1976
  store i64 0, ptr %i.h, align 8, !noalias !1976
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1976
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1976
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 -536870880, ptr %i.dt, align 8, !noalias !1976
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !1976
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !1976
  store ptr %i.h, ptr %i.g, align 8, !noalias !1976
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @120, ptr %i.du, align 8, !noalias !1976
  %i.dv = invoke noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cb, i64 noundef %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i.i" unwind label %bb.ab, !noalias !1977

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #51
          to label %.thread198.i unwind label %bb.ad, !noalias !1977

"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i.i": ; preds = %bb.aa
  br i1 %i.dv, label %bb.ac, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h40fe510b8f4be8deE.exit.i.i", !prof !14

bb.ac:                                            ; preds = %"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i.i"
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @121, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @562, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #50
          to label %.noexc.i.i.i.i unwind label %bb.ab, !noalias !1977

.noexc.i.i.i.i:                                   ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1977
  unreachable

common.resume.sink.split.i.i:                     ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i", %bb.ae
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i" ], [ %i.ed, %bb.ae ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dz, i64 noundef %i.ea, i64 noundef 1) #52, !noalias !1978
  br label %.thread198.i

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h40fe510b8f4be8deE.exit.i.i": ; preds = %"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69f5bc7605bd58edE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1976
  %i.dy = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc.i unwind label %bb.i, !noalias !1956 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h40fe510b8f4be8deE.exit.i.i"
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0      ; 6 uses
  %i.ea = extractvalue { ptr, i64 } %i.dy, 1      ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1979
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  %i.ec = invoke { ptr, i64 } @"_ZN5alloc5boxed4iter117_$LT$impl$u20$core..iter..traits..collect..FromIterator$LT$I$GT$$u20$for$u20$alloc..boxed..Box$LT$$u5b$I$u5d$$GT$$GT$9from_iter17h51febc81f69415a4E"(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.eb)
          to label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i unwind label %bb.ae, !noalias !1978 ; 2 uses

bb.ae:                                            ; preds = %.noexc.i
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = icmp eq i64 %i.ea, 0
  br i1 %i.ee, label %.thread198.i, label %common.resume.sink.split.i.i

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i: ; preds = %.noexc.i
  %i.ef = extractvalue { ptr, i64 } %i.ec, 0      ; 3 uses
  %i.eg = extractvalue { ptr, i64 } %i.ec, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1979
  %i.eh = call fastcc noundef zeroext i1 @_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dz, i64 noundef %i.ea), !noalias !1978
  %i.ei = xor i1 %i.eh, true
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1979
  %i.ej = icmp eq i64 %i.do, 0
  br i1 %i.ej, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1980
  %i.ek = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1980 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 %i.do) #50
          to label %.noexc.i.i unwind label %bb.ah, !noalias !1978

.noexc.i.i:                                       ; preds = %bb.ag
  unreachable

.body.i.i:                                        ; preds = %bb.an, %bb.am, %bb.ak, %bb.ah
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.es, %bb.ak ], [ %i.en, %bb.ah ], [ %i.eu, %bb.an ], [ %i.eu, %bb.am ] ; 2 uses
  %i.em = icmp eq i64 %i.eg, 0
  br i1 %i.em, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i": ; preds = %.body.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef %i.eg, i64 noundef 1) #52, !noalias !1978
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i"

bb.ah:                                            ; preds = %bb.ag
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ai:                                            ; preds = %bb.af, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i ], [ %i.ek, %bb.af ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.dq, i64 %i.do, i1 false), !noalias !1981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1979
  store i64 1, ptr %i.j, align 8, !noalias !1979
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.eo, align 8, !noalias !1979
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.do, ptr %i.ep, align 8, !noalias !1979
  %.sroa.4.0..sroa_idx.i170.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i170.i, align 8, !noalias !1979
  %.sroa.561.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.do, ptr %.sroa.561.0..sroa_idx.i.i, align 8, !noalias !1979
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1982
  %i.eq = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1982 ; 5 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.aj, label %bb.ao, !prof !24

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #50
          to label %.noexc39.i.i unwind label %bb.ak, !noalias !1978

.noexc39.i.i:                                     ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..ArcInner$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17he0e96128dfc6e0ddE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #51
          to label %.body.i.i unwind label %bb.al, !noalias !1978

bb.al:                                            ; preds = %bb.ak
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1978
  unreachable

bb.am:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !1983
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.an, label %.body.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h201a8d4bcd9d0331E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.body.i.i unwind label %bb.ar, !noalias !1978

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !1978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1979
  store ptr %i.eq, ptr %i.l, align 8, !noalias !1979
  store i64 0, ptr %i.i, align 8, !noalias !1979
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ex, align 8, !noalias !1979
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.ey, align 8, !noalias !1979
  %i.ez = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ap unwind label %bb.am, !noalias !1978 ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0      ; 2 uses
  %i.fb = extractvalue { ptr, i64 } %i.ez, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 206
  store i8 3, ptr %i.fc, align 2, !noalias !1979
  %i.fd = getelementptr inbounds nuw i8, ptr %i.m, i64 207 ; 2 uses
  store i8 45, ptr %i.fd, align 1, !noalias !1979
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 202
  %i.ff = trunc nuw nsw i32 %.sroa.745.0.copyload to i8
  store i8 %i.ff, ptr %i.fe, align 2, !noalias !1979
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 203
  %i.fh = zext i1 %i.ei to i8
  store i8 %i.fh, ptr %i.fg, align 1, !noalias !1979
  %i.fi = getelementptr inbounds nuw i8, ptr %i.m, i64 204
  store i8 0, ptr %i.fi, align 4, !noalias !1979
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  store <2 x i16> %i.bh, ptr %i.fj, align 8, !noalias !1979
  store <2 x i64> %i.bg, ptr %i.m, align 16, !noalias !1979
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 196
  store i16 1, ptr %i.fk, align 4, !noalias !1979
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 198
  store <2 x i16> %i.bi, ptr %.sroa.47.0..sroa_idx.i.i, align 2, !noalias !1979
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 188
  store i32 0, ptr %i.fl, align 4, !noalias !1979
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false)
  store ptr %i.dz, ptr %i.fn, align 16, !noalias !1979
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i64 %i.ea, ptr %i.fo, align 8, !noalias !1979
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.ef, ptr %i.fp, align 16, !noalias !1979
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 %i.eg, ptr %i.fq, align 8, !noalias !1979
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.eq, ptr %i.fr, align 16, !noalias !1979
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr null, ptr %i.fs, align 8, !noalias !1979
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.fa, ptr %i.ft, align 16, !noalias !1979
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store i64 %i.fb, ptr %i.fu, align 8, !noalias !1979
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i64 %.val.i, ptr %i.fv, align 16, !noalias !1979
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.fw, align 16, !noalias !1979
  %i.fx = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store i64 0, ptr %i.fx, align 8, !noalias !1979
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i32 3, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !1979
  %i.fy = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  store i32 %.sroa.03.0.i.i, ptr %i.fy, align 16, !noalias !1979
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 205
  store i8 %.sroa.14.0.copyload, ptr %i.fz, align 1, !noalias !1979
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 0, ptr %i.ga, align 8, !noalias !1979
  %i.gb = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  store i64 0, ptr %i.gb, align 16, !noalias !1979
  %i.gc = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 0, ptr %i.gc, align 16, !noalias !1979
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !1979
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 0, ptr %.sroa.515.0..sroa_idx.i.i, align 16, !noalias !1979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1979
  %i.gd = invoke noundef i16 @_ZN3zip5types11ZipFileData14version_needed17h5ef384831db9eb5dE(ptr noundef nonnull align 8 %i.m)
          to label %bb.ba unwind label %bb.aq, !noalias !1978

bb.aq:                                            ; preds = %bb.ap
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.m) #51
          to label %.thread198.i unwind label %bb.ar, !noalias !1978

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1978
  unreachable

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i", %.body.i.i
  %i.gg = icmp eq i64 %i.ea, 0
  br i1 %i.gg, label %.thread198.i, label %common.resume.sink.split.i.i

bb.as:                                            ; preds = %bb.z
  %i.gh = sub nuw nsw i64 %i.dk, %i.dm            ; 3 uses
  %i.gi = icmp samesign ult i64 %i.gh, 6
  br i1 %i.gi, label %4, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

4:                                                ; preds = %bb.as
  %5 = add nuw nsw i64 %i.gh, %i.dk               ; 3 uses
  %6 = icmp samesign ult i64 %5, 6
  br i1 %6, label %7, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

7:                                                ; preds = %4
  %8 = add nuw nsw i64 %5, %i.dk                  ; 3 uses
  %9 = icmp samesign ult i64 %8, 6
  br i1 %9, label %10, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %8, %i.dk                 ; 3 uses
  %12 = icmp samesign ult i64 %11, 6
  br i1 %12, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.at:                                            ; preds = %10
  %i.gj = add nuw nsw i64 %11, %i.dk              ; 3 uses
  %i.gk = icmp samesign ult i64 %i.gj, 6
  br i1 %i.gk, label %bb.au, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.gl = add nuw nsw i64 %i.gj, %i.dk            ; 3 uses
  %i.gm = icmp samesign ult i64 %i.gl, 6
  %i.gn = add nuw nsw i64 %i.gl, %i.dk
  %spec.select = select i1 %i.gm, i64 %i.gn, i64 %i.gl
  br label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.au, %bb.at, %10, %7, %4, %bb.as
  %.sroa.014.0.i.lcssa = phi i64 [ %i.gh, %bb.as ], [ %5, %4 ], [ %8, %7 ], [ %11, %10 ], [ %i.gj, %bb.at ], [ %spec.select, %bb.au ]
  %i.go = add nsw i64 %.sroa.014.0.i.lcssa, -4    ; 4 uses
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1984
  %i.gp = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 -65536, 65537) %i.go, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1984 ; 3 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 range(i64 -65536, 65537) %i.go) #50
          to label %.noexc174.i unwind label %bb.i, !noalias !1956

.noexc174.i:                                      ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  store i16 %.sroa.13.0.copyload, ptr %i.gp, align 1, !noalias !1956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1954
  store i64 %i.go, ptr %i.ae, align 8, !noalias !1954
  %.sroa.5.0..sroa_idx259.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.gp, ptr %.sroa.5.0..sroa_idx259.i, align 8, !noalias !1954
  %.sroa.7261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.go, ptr %.sroa.7261.0..sroa_idx.i, align 8, !noalias !1954
  %i.gr = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae)
          to label %bb.ax unwind label %.thread212.i, !noalias !1956 ; 2 uses

.thread212.i:                                     ; preds = %bb.ax, %bb.aw
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread198.i

bb.ax:                                            ; preds = %bb.aw
  %i.gs = extractvalue { ptr, i64 } %i.gr, 0
  %i.gt = extractvalue { ptr, i64 } %i.gr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1954
  invoke void @_ZN3zip5write19ExtendedFileOptions24add_extra_data_unchecked17haa17d3d5f1909adaE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak, i16 noundef -24290, ptr noalias noundef nonnull align 1 %i.gs, i64 noundef %i.gt)
          to label %bb.ay unwind label %.thread212.i, !noalias !1956

bb.ay:                                            ; preds = %bb.ax
  %i.gu = load i64, ptr %i.af, align 8, !range !34, !noalias !1954, !noundef !6 ; 2 uses
  %.not146.i = icmp eq i64 %i.gu, -9223372036854775802
  br i1 %.not146.i, label %bb.az, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ay
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gv = load <2 x i64>, ptr %.sroa.493.0..sroa_idx.i, align 8, !noalias !1955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1954
  br label %bb.dc

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1954
  %.pre.i = load i64, ptr %i.br, align 8, !noalias !1954
  br label %bb.aa

bb.ba:                                            ; preds = %bb.ap
  %i.gw = trunc i16 %i.gd to i8
  store i8 %i.gw, ptr %i.fd, align 1, !noalias !1979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ac, ptr noundef nonnull align 16 dereferenceable(208) %i.m, i64 208, i1 false), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1954
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.gy = load i8, ptr %i.gx, align 1, !range !16, !alias.scope !1952, !noalias !1956, !noundef !6
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ac, i64 204
  %i.ha = xor i8 %i.gy, 1
  store i8 %i.ha, ptr %i.gz, align 4, !noalias !1954
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ac, i64 207 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !1954, !noundef !6
  %i.hd = invoke noundef i16 @_ZN3zip5types11ZipFileData14version_needed17h5ef384831db9eb5dE(ptr noundef nonnull align 8 %i.ac)
          to label %bb.bb unwind label %bb.db, !noalias !1956

bb.bb:                                            ; preds = %bb.ba
  %i.he = trunc i16 %i.hd to i8
  %.sroa.0.0.i.i = call noundef i8 @llvm.umax.i8(i8 %i.he, i8 %i.hc)
  store i8 %.sroa.0.0.i.i, ptr %i.hb, align 1, !noalias !1954
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 1, ptr %i.hf, align 8, !noalias !1954
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.dc, ptr %i.hg, align 8, !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.z, ptr noundef nonnull align 8 dereferenceable(208) %i.ac, i64 208, i1 false), !noalias !1954
  invoke fastcc void @"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$16insert_file_data17h9baff45f288ae661E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(328) %1, ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.z)
          to label %bb.bc unwind label %.thread223.i, !noalias !1956

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1954
  %i.hh = load i64, ptr %i.aa, align 8, !range !34, !noalias !1954, !noundef !6 ; 2 uses
  %.sroa.4112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.hi = load <2 x i64>, ptr %.sroa.4112.0..sroa_idx.i, align 8, !noalias !1954
  %.sroa.4112.0.copyload.i = load i64, ptr %.sroa.4112.0..sroa_idx.i, align 8, !noalias !1954 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1954
  %.not149.not.i = icmp eq i64 %i.hh, -9223372036854775802
  br i1 %.not149.not.i, label %bb.bd, label %bb.cz

bb.bd:                                            ; preds = %bb.bc
  store i64 %.sroa.4112.0.copyload.i, ptr %i.ab, align 8, !noalias !1954
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 1, ptr %i.hj, align 8, !alias.scope !1952, !noalias !1956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !1954
  %i.hk = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.ap, ptr %i.hk, align 8, !noalias !1954
  %i.hl = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %1, ptr %i.hl, align 8, !noalias !1954
  %i.hm = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.ab, ptr %i.hm, align 8, !noalias !1954
  %i.hn = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.ad, ptr %i.hn, align 8, !noalias !1954
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1988
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !1987, !noalias !1989, !nonnull !6, !noundef !6 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !1987, !noalias !1989, !noundef !6 ; 2 uses
  invoke void @_ZN3zip5write19ExtendedFileOptions19validate_extra_data17h03ecd3415d5a1a3dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hp, i64 noundef %i.hr, i1 noundef zeroext false)
          to label %bb.be unwind label %bb.cj, !noalias !1990

bb.be:                                            ; preds = %bb.bd
  %i.hs = load i64, ptr %i.f, align 8, !range !34, !noalias !1988, !noundef !6
  %.not.i.i = icmp eq i64 %i.hs, -9223372036854775802
  br i1 %.not.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1988
  br label %bb.ce

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1988
  %i.ht = load i64, ptr %i.ab, align 8, !noalias !1988, !noundef !6
  %i.hu = invoke noundef align 8 dereferenceable(208) ptr @"_ZN100_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17ha29d8cabadae090aE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %1, i64 noundef %i.ht, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92)
          to label %bb.bh unwind label %bb.cj, !noalias !1990 ; 4 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN3zip5types11ZipFileData11local_block17hfba6eca050775567E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.hu)
          to label %bb.bi unwind label %bb.cj, !noalias !1990

bb.bi:                                            ; preds = %bb.bh
  %i.hv = load i8, ptr %i.e, align 8, !range !16, !noalias !1988, !noundef !6
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.hx, i64 24, i1 false), !noalias !1991
  br label %bb.ce

bb.bk:                                            ; preds = %bb.bi
  %i.hy = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.hz = load i64, ptr %i.ap, align 8, !range !33, !alias.scope !1952, !noalias !1990, !noundef !6
  %i.ia = icmp eq i64 %i.hz, -9223372036854775807
  br i1 %i.ia, label %bb.bl, label %bb.bm, !prof !19

bb.bl:                                            ; preds = %bb.bk
  %i.ib = load i64, ptr %i.bn, align 8, !range !7, !alias.scope !1952, !noalias !1990, !noundef !6
  %.not18.i.i = icmp eq i64 %i.ib, -9223372036854775808
  br i1 %.not18.i.i, label %bb.bn, label %bb.bm, !prof !19

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1988
  store ptr @88, ptr %i.d, align 8, !noalias !1988
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ic, align 8, !noalias !1988
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.id, align 8, !noalias !1988
  %i.ie = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ie, align 8, !noalias !1988
  %i.if = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.if, align 8, !noalias !1988
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #50
          to label %bb.cd unwind label %bb.cj, !noalias !1990

bb.bn:                                            ; preds = %bb.bl
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.b, ptr noundef nonnull align 1 dereferenceable(30) %i.hy, i64 30, i1 false), !noalias !1988
  %i.ih = invoke noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17hc264c1d46bb67e1cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ig, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 30)
          to label %.noexc.i177.i unwind label %bb.cj, !noalias !1990 ; 2 uses

.noexc.i177.i:                                    ; preds = %bb.bn
  %.not.i.i.i = icmp eq ptr %i.ih, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1992
  br i1 %.not.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.noexc.i177.i
  store i64 -9223372036854775807, ptr %i.y, align 8, !alias.scope !1986, !noalias !1991
  %.sroa.236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ih, ptr %.sroa.236.0..sroa_idx.i.i, align 8, !alias.scope !1986, !noalias !1991
  br label %bb.ce

bb.bp:                                            ; preds = %.noexc.i177.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hu, i64 80
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !1990, !nonnull !6, !noundef !6
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hu, i64 88
  %i.il = load i64, ptr %i.ik, align 8, !noalias !1990, !noundef !6
  %i.im = invoke noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17hc264c1d46bb67e1cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ig, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ij, i64 noundef %i.il)
          to label %bb.bq unwind label %bb.cj, !noalias !1990 ; 2 uses

end_hunk_1
begin_hunk_2_@"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$10start_file17h761d37f0ca603d57E":bb.a
  br label %.thread196.i

bb.i:                                             ; preds = %bb.z, %.invoke.i, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %.sroa.076.2.i = phi i8 [ 1, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i ], [ 0, %bb.z ], [ 1, %.invoke.i ]
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread196.i

bb.j:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.val165.i = load i64, ptr %i.bm, align 8, !alias.scope !2120, !noalias !2124, !noundef !6 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false), !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2123
  store i64 0, ptr %i.ab, align 8, !noalias !2123
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 8 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bn, align 8, !noalias !2123
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  store i64 0, ptr %i.bo, align 8, !noalias !2123
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 66
  %i.bq = load i8, ptr %i.bp, align 2, !range !16, !alias.scope !2122, !noalias !2126, !noundef !6 ; 2 uses
  %i.br = shl nuw nsw i8 %i.bq, 4
  %.sroa.0.2.i.i = zext nneg i8 %i.br to i16      ; 2 uses
  %i.bs = icmp ugt i64 %.val165.i, 4294967294     ; 2 uses
  %i.bt = or disjoint i16 %.sroa.0.2.i.i, 8
  %.sroa.0.3.i.i = select i1 %i.bs, i16 %i.bt, i16 %.sroa.0.2.i.i ; 2 uses
  %i.bu = icmp eq i16 %.sroa.0.3.i.i, 0
  br i1 %i.bu, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i: ; preds = %bb.j
  %.sroa.011.0.i.i = zext i1 %i.bs to i64
  %.sroa.06.2.i.i = zext nneg i8 %i.bq to i64     ; 2 uses
  store i64 %.sroa.06.2.i.i, ptr %i.aa, align 8, !noalias !2123
  %.sroa.5.0..sroa_idx191.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx191.i, align 8, !noalias !2123
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.06.2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.7192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %.sroa.7192.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sroa.011.0.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %.val165.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i16 1, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 50
  store i16 %.sroa.0.3.i.i, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2123
  %i.bv = invoke { ptr, i64 } @_ZN3zip5types20Zip64ExtraFieldBlock9serialize17hc68b135dfcb507aaE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.aa)
          to label %bb.l unwind label %bb.i, !noalias !2124 ; 2 uses

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.bx = load i16, ptr %i.bw, align 8, !range !35, !alias.scope !2122, !noalias !2126, !noundef !6
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.bz = load i16, ptr %i.by, align 2, !alias.scope !2122, !noalias !2126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2123
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val166.i = load ptr, ptr %i.ca, align 8, !alias.scope !2121, !noalias !2127, !nonnull !6, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val167.i = load i64, ptr %i.cb, align 8, !alias.scope !2121, !noalias !2127, !noundef !6 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  %i.cc = icmp slt i64 %.val167.i, 0
  br i1 %i.cc, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i: ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.cd = icmp eq i64 %.val167.i, 0
  br i1 %i.cd, label %bb.t, label %bb.k

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !2130
  %i.ce = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %.val167.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2130 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.invoke.i, label %bb.t

bb.l:                                             ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.cg = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  store i64 %i.ch, ptr %i.z, align 8, !alias.scope !2131, !noalias !2123
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.ci, align 8, !alias.scope !2131, !noalias !2123
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store i64 %i.ch, ptr %i.cj, align 8, !alias.scope !2131, !noalias !2123
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %i.ck = load ptr, ptr %i.bn, align 8, !alias.scope !2133, !noalias !2134, !nonnull !6, !noundef !6
  %i.cl = load i64, ptr %i.bo, align 8, !alias.scope !2133, !noalias !2134, !noundef !6 ; 3 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.cl)
          to label %bb.m unwind label %bb.r, !noalias !2124

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i": ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2123
  br label %.thread196.i

bb.m:                                             ; preds = %bb.l
  %i.cm = load i64, ptr %i.cj, align 8, !alias.scope !2135, !noalias !2136, !noundef !6 ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  %i.co = load ptr, ptr %i.ci, align 8, !alias.scope !2135, !noalias !2136, !nonnull !6, !noundef !6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull readonly align 1 %i.ck, i64 %i.cl, i1 false), !noalias !2137
  %i.cq = load i64, ptr %i.cj, align 8, !alias.scope !2135, !noalias !2136, !noundef !6
  %i.cr = add i64 %i.cq, %i.cl
  store i64 %i.cr, ptr %i.cj, align 8, !alias.scope !2135, !noalias !2136
  store i64 0, ptr %i.bo, align 8, !alias.scope !2133, !noalias !2134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2123
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.p unwind label %bb.n, !noalias !2124

bb.n:                                             ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.ab, align 8, !alias.scope !2138, !noalias !2123 ; 2 uses
  %i.ct = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ct, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val3.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !2139, !noalias !2123, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2140
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i"

bb.p:                                             ; preds = %bb.m
  %.val.i.i = load i64, ptr %i.ab, align 8, !alias.scope !2138, !noalias !2123 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i, 0
  br i1 %i.cu, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !2139, !noalias !2123, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2141
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2123
  br label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i

bb.r:                                             ; preds = %bb.l
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.z) #51
          to label %.thread196.i unwind label %bb.s, !noalias !2124

bb.s:                                             ; preds = %bb.cj, %bb.ci, %bb.r
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body49

.body49:                                          ; preds = %bb.cy, %bb.cz, %bb.cp, %bb.cq, %bb.s
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !2142
  unreachable

bb.t:                                             ; preds = %bb.k, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i ], [ %i.ce, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val166.i, i64 %.val167.i, i1 false), !noalias !2143
  store i64 %.val167.i, ptr %i.x, align 8, !alias.scope !2144, !noalias !2123
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2144, !noalias !2123
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.val167.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2144, !noalias !2123
  %i.cx = add i64 %.val165.i, 30
  %i.cy = add i64 %i.cx, %.val167.i               ; 2 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.w unwind label %bb.u, !noalias !2124

bb.u:                                             ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !2145, !noalias !2123 ; 2 uses
  %i.da = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.da, label %.thread196.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2146, !noalias !2123, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2147
  br label %.thread196.i

bb.w:                                             ; preds = %bb.t
  %.val.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !2145, !noalias !2123 ; 2 uses
  %i.db = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.db, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2146, !noalias !2123, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2148
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2123
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.dd = load i16, ptr %i.dc, align 8, !alias.scope !2122, !noalias !2126, !noundef !6 ; 3 uses
  %i.de = icmp ugt i16 %i.dd, 1
  %.pre275.i = load i64, ptr %i.bo, align 8, !noalias !2123 ; 4 uses
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.df = icmp sgt i64 %.pre275.i, -1
  call void @llvm.assume(i1 %i.df)
  %i.dg = zext i16 %i.dd to i64                   ; 8 uses
  %i.dh = add i64 %.pre275.i, %i.cy
  %i.di = urem i64 %i.dh, %i.dg                   ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.ah, %bb.y, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.dk = phi i64 [ %.pre275.i, %bb.y ], [ %.pre.i, %bb.ah ], [ %.pre275.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" ] ; 3 uses
  store i64 %i.dk, ptr %i.u, align 8, !noalias !2123
  %i.dl = icmp sgt i64 %i.dk, -1
  call void @llvm.assume(i1 %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !2127
  %i.dm = load ptr, ptr %i.bn, align 8, !noalias !2123, !nonnull !6, !noundef !6
  invoke fastcc void @_ZN3zip5types11ZipFileData22initialize_local_block17h1889ea97cf3a9a18E(ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ag, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ac, i64 noundef %.val165.i, i16 noundef %i.bx, i16 %i.bz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dm, i64 noundef %i.dk)
          to label %bb.aj unwind label %bb.i

bb.aa:                                            ; preds = %bb.h
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.dn = sub nuw nsw i64 %i.dg, %i.di            ; 3 uses
  %i.do = icmp samesign ult i64 %i.dn, 6
  br i1 %i.do, label %4, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

4:                                                ; preds = %bb.ab
  %5 = add nuw nsw i64 %i.dn, %i.dg               ; 3 uses
  %6 = icmp samesign ult i64 %5, 6
  br i1 %6, label %7, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

7:                                                ; preds = %4
  %8 = add nuw nsw i64 %5, %i.dg                  ; 3 uses
  %9 = icmp samesign ult i64 %8, 6
  br i1 %9, label %10, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %8, %i.dg                 ; 3 uses
  %12 = icmp samesign ult i64 %11, 6
  br i1 %12, label %bb.ac, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.ac:                                            ; preds = %10
  %i.dp = add nuw nsw i64 %11, %i.dg              ; 3 uses
  %i.dq = icmp samesign ult i64 %i.dp, 6
  br i1 %i.dq, label %bb.ad, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = add nuw nsw i64 %i.dp, %i.dg            ; 3 uses
  %i.ds = icmp samesign ult i64 %i.dr, 6
  %i.dt = add nuw nsw i64 %i.dr, %i.dg
  %spec.select = select i1 %i.ds, i64 %i.dt, i64 %i.dr
  br label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.ad, %bb.ac, %10, %7, %4, %bb.ab
  %.sroa.014.0.i.lcssa = phi i64 [ %i.dn, %bb.ab ], [ %5, %4 ], [ %8, %7 ], [ %11, %10 ], [ %i.dp, %bb.ac ], [ %spec.select, %bb.ad ]
  %i.du = add nsw i64 %.sroa.014.0.i.lcssa, -4    ; 4 uses
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !2149
  %i.dv = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 -65536, 65537) %i.du, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2149 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.invoke.i, label %bb.ae

.invoke.i:                                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, %bb.k, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.dx = phi i64 [ 0, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ 1, %bb.k ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  %i.dy = phi i64 [ %.val167.i, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ %.val167.i, %bb.k ], [ %i.du, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.dx, i64 %i.dy) #50
          to label %.cont.i unwind label %bb.i, !noalias !2124

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  store i16 %i.dd, ptr %i.dv, align 1, !noalias !2124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2123
  store i64 %i.du, ptr %i.v, align 8, !noalias !2123
  %.sroa.5.0..sroa_idx273.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.dv, ptr %.sroa.5.0..sroa_idx273.i, align 8, !noalias !2123
  %.sroa.7274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.du, ptr %.sroa.7274.0..sroa_idx.i, align 8, !noalias !2123
  %i.dz = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.af unwind label %.thread211.i, !noalias !2124 ; 2 uses

.thread211.i:                                     ; preds = %bb.af, %bb.ae
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread196.i

bb.af:                                            ; preds = %bb.ae
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2123
  invoke void @_ZN3zip5write19ExtendedFileOptions24add_extra_data_unchecked17haa17d3d5f1909adaE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i16 noundef -24290, ptr noalias noundef nonnull align 1 %i.ea, i64 noundef %i.eb)
          to label %bb.ag unwind label %.thread211.i, !noalias !2124

bb.ag:                                            ; preds = %bb.af
  %i.ec = load i64, ptr %i.w, align 8, !range !34, !noalias !2123, !noundef !6 ; 2 uses
  %.not147.i = icmp eq i64 %i.ec, -9223372036854775802
  br i1 %.not147.i, label %bb.ah, label %.thread217.i

.thread217.i:                                     ; preds = %bb.ag
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ed = load <2 x i64>, ptr %.sroa.494.0..sroa_idx.i, align 8, !noalias !2125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2123
  br label %bb.cl

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2123
  %.pre.i = load i64, ptr %i.bo, align 8, !noalias !2123
  br label %bb.z

.thread252.i:                                     ; preds = %.noexc31, %bb.bu
  %.sroa.055.2 = phi i64 [ %i.hl, %.noexc31 ], [ %i.gn, %bb.bu ]
  %i.ee = phi <2 x i64> [ %i.hm, %.noexc31 ], [ %i.go, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2123
  br label %bb.dc

bb.ai:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2123
  br label %bb.cl

bb.aj:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2123
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.eg = load i8, ptr %i.ef, align 1, !range !16, !alias.scope !2120, !noalias !2124, !noundef !6
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 204
  %i.ei = xor i8 %i.eg, 1
  store i8 %i.ei, ptr %i.eh, align 4, !noalias !2123
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 207 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !2123, !noundef !6
  %i.el = invoke noundef i16 @_ZN3zip5types11ZipFileData14version_needed17h5ef384831db9eb5dE(ptr noundef nonnull align 8 %i.t)
          to label %bb.ak unwind label %bb.cj, !noalias !2124

bb.ak:                                            ; preds = %bb.aj
  %i.em = trunc i16 %i.el to i8
  %.sroa.0.0.i.i = call noundef i8 @llvm.umax.i8(i8 %i.em, i8 %i.ek)
  store i8 %.sroa.0.0.i.i, ptr %i.ej, align 1, !noalias !2123
  %i.en = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %i.en, align 8, !noalias !2123
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %i.cy, ptr %i.eo, align 8, !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.t, i64 208, i1 false), !noalias !2123
  invoke fastcc void @"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$16insert_file_data17h9baff45f288ae661E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(328) %1, ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.p)
          to label %bb.al unwind label %.thread229.i, !noalias !2124

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2123
  %i.ep = load i64, ptr %i.q, align 8, !range !34, !noalias !2123, !noundef !6 ; 2 uses
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.eq = load <2 x i64>, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.4113.0.copyload.i = load i64, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !2123 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2123
  %.not150.not.i = icmp eq i64 %i.ep, -9223372036854775802
  br i1 %.not150.not.i, label %bb.am, label %bb.ai

bb.am:                                            ; preds = %bb.al
  store i64 %.sroa.4113.0.copyload.i, ptr %i.r, align 8, !noalias !2123
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 1, ptr %i.er, align 8, !alias.scope !2120, !noalias !2124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2123
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.aj, ptr %i.es, align 8, !noalias !2123
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %1, ptr %i.et, align 8, !noalias !2123
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.r, ptr %i.eu, align 8, !noalias !2123
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.u, ptr %i.ev, align 8, !noalias !2123
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2152
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !2151, !noalias !2153, !nonnull !6, !noundef !6 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !2151, !noalias !2153, !noundef !6 ; 2 uses
  invoke void @_ZN3zip5write19ExtendedFileOptions19validate_extra_data17h03ecd3415d5a1a3dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ex, i64 noundef %i.ez, i1 noundef zeroext false)
          to label %bb.an unwind label %bb.bs, !noalias !2154

bb.an:                                            ; preds = %bb.am
  %i.fa = load i64, ptr %i.e, align 8, !range !34, !noalias !2152, !noundef !6
  %.not.i.i = icmp eq i64 %i.fa, -9223372036854775802
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2152
  br label %bb.bn

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2152
  %i.fb = load i64, ptr %i.r, align 8, !noalias !2152, !noundef !6
  %i.fc = invoke noundef align 8 dereferenceable(208) ptr @"_ZN100_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17ha29d8cabadae090aE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %1, i64 noundef %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92)
          to label %bb.aq unwind label %bb.bs, !noalias !2154 ; 4 uses

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN3zip5types11ZipFileData11local_block17hfba6eca050775567E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.fc)
          to label %bb.ar unwind label %bb.bs, !noalias !2154

bb.ar:                                            ; preds = %bb.aq
  %i.fd = load i8, ptr %i.d, align 8, !range !16, !noalias !2152, !noundef !6
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !2155
  br label %bb.bn

bb.at:                                            ; preds = %bb.ar
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.fh = load i64, ptr %i.aj, align 8, !range !33, !alias.scope !2120, !noalias !2154, !noundef !6
  %i.fi = icmp eq i64 %i.fh, -9223372036854775807
  br i1 %i.fi, label %bb.au, label %bb.av, !prof !19

bb.au:                                            ; preds = %bb.at
  %i.fj = load i64, ptr %i.bf, align 8, !range !7, !alias.scope !2120, !noalias !2154, !noundef !6
  %.not18.i.i = icmp eq i64 %i.fj, -9223372036854775808
  br i1 %.not18.i.i, label %bb.aw, label %bb.av, !prof !19

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2152
  store ptr @88, ptr %i.c, align 8, !noalias !2152
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fk, align 8, !noalias !2152
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.fl, align 8, !noalias !2152
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fm, align 8, !noalias !2152
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.fn, align 8, !noalias !2152
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #50
          to label %bb.bm unwind label %bb.bs, !noalias !2154

bb.aw:                                            ; preds = %bb.au
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.a, ptr noundef nonnull align 1 dereferenceable(30) %i.fg, i64 30, i1 false), !noalias !2152
  %i.fp = invoke noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17hc264c1d46bb67e1cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 30)
          to label %.noexc.i.i unwind label %bb.bs, !noalias !2154 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.aw
  %.not.i.i.i = icmp eq ptr %i.fp, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2156
  br i1 %.not.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc.i.i
  store i64 -9223372036854775807, ptr %i.o, align 8, !alias.scope !2150, !noalias !2155
  %.sroa.236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_2
begin_hunk_3_@"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$10start_file17h83d986aba49fa3d9E":bb.a
  %lpad.thr_comm.split-lp267.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread193.i

bb.l:                                             ; preds = %bb.ac, %.invoke.i, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %.sroa.076.2.i = phi i8 [ 1, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i ], [ 0, %bb.ac ], [ 1, %.invoke.i ]
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.thread193.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false), !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2300
  store i64 0, ptr %i.ab, align 8, !noalias !2300
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 8 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bt, align 8, !noalias !2300
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  store i64 0, ptr %i.bu, align 8, !noalias !2300
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 66
  %i.bw = load i8, ptr %i.bv, align 2, !range !16, !alias.scope !2299, !noalias !2303, !noundef !6 ; 2 uses
  %i.bx = shl nuw nsw i8 %i.bw, 4
  %.sroa.0.2.i.i = zext nneg i8 %i.bx to i16      ; 2 uses
  %i.by = icmp ugt ptr %i.bo, inttoptr (i64 4294967294 to ptr) ; 2 uses
  %i.bz = or disjoint i16 %.sroa.0.2.i.i, 8
  %.sroa.0.3.i.i = select i1 %i.by, i16 %i.bz, i16 %.sroa.0.2.i.i ; 2 uses
  %i.ca = icmp eq i16 %.sroa.0.3.i.i, 0
  br i1 %i.ca, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i: ; preds = %bb.m
  %.sroa.011.0.i.i = zext i1 %i.by to i64
  %.sroa.06.2.i.i = zext nneg i8 %i.bw to i64     ; 2 uses
  store i64 %.sroa.06.2.i.i, ptr %i.aa, align 8, !noalias !2300
  %.sroa.5.0..sroa_idx188.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx188.i, align 8, !noalias !2300
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.06.2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2300
  %.sroa.7189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %.sroa.7189.0..sroa_idx.i, align 8, !noalias !2300
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sroa.011.0.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2300
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.bp, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2300
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i16 1, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2300
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 50
  store i16 %.sroa.0.3.i.i, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2300
  %i.cb = invoke { ptr, i64 } @_ZN3zip5types20Zip64ExtraFieldBlock9serialize17hc68b135dfcb507aaE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.aa)
          to label %bb.o unwind label %bb.l, !noalias !2301 ; 2 uses

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.cd = load i16, ptr %i.cc, align 8, !range !35, !alias.scope !2299, !noalias !2303, !noundef !6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.cf = load i16, ptr %i.ce, align 2, !alias.scope !2299, !noalias !2303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2300
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.cg, align 8, !alias.scope !2298, !noalias !2304, !nonnull !6, !noundef !6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val164.i = load i64, ptr %i.ch, align 8, !alias.scope !2298, !noalias !2304, !noundef !6 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  %i.ci = icmp slt i64 %.val164.i, 0
  br i1 %i.ci, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i: ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.cj = icmp eq i64 %.val164.i, 0
  br i1 %i.cj, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !2307
  %i.ck = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %.val164.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2307 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.invoke.i, label %bb.w

bb.o:                                             ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.cm = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %i.cn = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  store i64 %i.cn, ptr %i.z, align 8, !alias.scope !2308, !noalias !2300
  %i.co = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.cm, ptr %i.co, align 8, !alias.scope !2308, !noalias !2300
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store i64 %i.cn, ptr %i.cp, align 8, !alias.scope !2308, !noalias !2300
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  %i.cq = load ptr, ptr %i.bt, align 8, !alias.scope !2310, !noalias !2311, !nonnull !6, !noundef !6
  %i.cr = load i64, ptr %i.bu, align 8, !alias.scope !2310, !noalias !2311, !noundef !6 ; 3 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.cr)
          to label %bb.p unwind label %bb.u, !noalias !2301

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i": ; preds = %bb.r, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2300
  br label %.thread193.i

bb.p:                                             ; preds = %bb.o
  %i.cs = load i64, ptr %i.cp, align 8, !alias.scope !2312, !noalias !2313, !noundef !6 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load ptr, ptr %i.co, align 8, !alias.scope !2312, !noalias !2313, !nonnull !6, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull readonly align 1 %i.cq, i64 %i.cr, i1 false), !noalias !2314
  %i.cw = load i64, ptr %i.cp, align 8, !alias.scope !2312, !noalias !2313, !noundef !6
  %i.cx = add i64 %i.cw, %i.cr
  store i64 %i.cx, ptr %i.cp, align 8, !alias.scope !2312, !noalias !2313
  store i64 0, ptr %i.bu, align 8, !alias.scope !2310, !noalias !2311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2300
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.s unwind label %bb.q, !noalias !2301

bb.q:                                             ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.ab, align 8, !alias.scope !2315, !noalias !2300 ; 2 uses
  %i.cz = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cz, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val3.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !2316, !noalias !2300, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2317
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i"

bb.s:                                             ; preds = %bb.p
  %.val.i.i = load i64, ptr %i.ab, align 8, !alias.scope !2315, !noalias !2300 ; 2 uses
  %i.da = icmp eq i64 %.val.i.i, 0
  br i1 %i.da, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val1.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !2316, !noalias !2300, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2318
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2300
  br label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i

bb.u:                                             ; preds = %bb.o
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.z) #51
          to label %.thread193.i unwind label %bb.v, !noalias !2301

bb.v:                                             ; preds = %bb.cq, %bb.cp, %bb.u
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body50

.body50:                                          ; preds = %bb.de, %bb.df, %bb.cw, %bb.cx, %bb.v
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !2319
  unreachable

bb.w:                                             ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i ], [ %i.ck, %bb.n ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i, i64 %.val164.i, i1 false), !noalias !2320
  store i64 %.val164.i, ptr %i.x, align 8, !alias.scope !2321, !noalias !2300
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2321, !noalias !2300
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.val164.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2321, !noalias !2300
  %i.dd = add i64 %i.bp, 30
  %i.de = add i64 %i.dd, %.val164.i               ; 2 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.z unwind label %bb.x, !noalias !2301

bb.x:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !2322, !noalias !2300 ; 2 uses
  %i.dg = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dg, label %.thread193.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2323, !noalias !2300, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2324
  br label %.thread193.i

bb.z:                                             ; preds = %bb.w
  %.val.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !2322, !noalias !2300 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2323, !noalias !2300, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2325
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2300
  %i.di = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.dj = load i16, ptr %i.di, align 8, !alias.scope !2299, !noalias !2303, !noundef !6 ; 3 uses
  %i.dk = icmp ugt i16 %i.dj, 1
  %.pre273.i = load i64, ptr %i.bu, align 8, !noalias !2300 ; 4 uses
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.dl = icmp sgt i64 %.pre273.i, -1
  call void @llvm.assume(i1 %i.dl)
  %i.dm = zext i16 %i.dj to i64                   ; 8 uses
  %i.dn = add i64 %.pre273.i, %i.de
  %i.do = urem i64 %i.dn, %i.dm                   ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ak, %bb.ab, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.dq = phi i64 [ %.pre273.i, %bb.ab ], [ %.pre.i, %bb.ak ], [ %.pre273.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" ] ; 3 uses
  store i64 %i.dq, ptr %i.u, align 8, !noalias !2300
  %i.dr = icmp sgt i64 %i.dq, -1
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !2304
  %i.ds = load ptr, ptr %i.bt, align 8, !noalias !2300, !nonnull !6, !noundef !6
  invoke fastcc void @_ZN3zip5types11ZipFileData22initialize_local_block17h1889ea97cf3a9a18E(ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ag, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ac, i64 noundef %i.bp, i16 noundef %i.cd, i16 %i.cf, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ds, i64 noundef %i.dq)
          to label %bb.am unwind label %bb.l

bb.ad:                                            ; preds = %bb.i
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.dt = sub nuw nsw i64 %i.dm, %i.do            ; 3 uses
  %i.du = icmp samesign ult i64 %i.dt, 6
  br i1 %i.du, label %4, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

4:                                                ; preds = %bb.ae
  %5 = add nuw nsw i64 %i.dt, %i.dm               ; 3 uses
  %6 = icmp samesign ult i64 %5, 6
  br i1 %6, label %7, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

7:                                                ; preds = %4
  %8 = add nuw nsw i64 %5, %i.dm                  ; 3 uses
  %9 = icmp samesign ult i64 %8, 6
  br i1 %9, label %10, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %8, %i.dm                 ; 3 uses
  %12 = icmp samesign ult i64 %11, 6
  br i1 %12, label %bb.af, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.af:                                            ; preds = %10
  %i.dv = add nuw nsw i64 %11, %i.dm              ; 3 uses
  %i.dw = icmp samesign ult i64 %i.dv, 6
  br i1 %i.dw, label %bb.ag, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dx = add nuw nsw i64 %i.dv, %i.dm            ; 3 uses
  %i.dy = icmp samesign ult i64 %i.dx, 6
  %i.dz = add nuw nsw i64 %i.dx, %i.dm
  %spec.select = select i1 %i.dy, i64 %i.dz, i64 %i.dx
  br label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.ag, %bb.af, %10, %7, %4, %bb.ae
  %.sroa.014.0.i.lcssa = phi i64 [ %i.dt, %bb.ae ], [ %5, %4 ], [ %8, %7 ], [ %11, %10 ], [ %i.dv, %bb.af ], [ %spec.select, %bb.ag ]
  %i.ea = add nsw i64 %.sroa.014.0.i.lcssa, -4    ; 4 uses
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !2326
  %i.eb = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 -65536, 65537) %i.ea, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2326 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.invoke.i, label %bb.ah

.invoke.i:                                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, %bb.n, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.ed = phi i64 [ 0, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ 1, %bb.n ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  %i.ee = phi i64 [ %.val164.i, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ %.val164.i, %bb.n ], [ %i.ea, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ed, i64 %i.ee) #50
          to label %.cont.i unwind label %bb.l, !noalias !2301

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ah:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  store i16 %i.dj, ptr %i.eb, align 1, !noalias !2301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2300
  store i64 %i.ea, ptr %i.v, align 8, !noalias !2300
  %.sroa.5.0..sroa_idx271.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.eb, ptr %.sroa.5.0..sroa_idx271.i, align 8, !noalias !2300
  %.sroa.7272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ea, ptr %.sroa.7272.0..sroa_idx.i, align 8, !noalias !2300
  %i.ef = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.ai unwind label %.thread209.i, !noalias !2301 ; 2 uses

.thread209.i:                                     ; preds = %bb.ai, %bb.ah
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread193.i

bb.ai:                                            ; preds = %bb.ah
  %i.eg = extractvalue { ptr, i64 } %i.ef, 0
  %i.eh = extractvalue { ptr, i64 } %i.ef, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2300
  invoke void @_ZN3zip5write19ExtendedFileOptions24add_extra_data_unchecked17haa17d3d5f1909adaE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i16 noundef -24290, ptr noalias noundef nonnull align 1 %i.eg, i64 noundef %i.eh)
          to label %bb.aj unwind label %.thread209.i, !noalias !2301

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load i64, ptr %i.w, align 8, !range !34, !noalias !2300, !noundef !6 ; 2 uses
  %.not147.i = icmp eq i64 %i.ei, -9223372036854775802
  br i1 %.not147.i, label %bb.ak, label %.thread215.i

.thread215.i:                                     ; preds = %bb.aj
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ej = load <2 x i64>, ptr %.sroa.494.0..sroa_idx.i, align 8, !noalias !2302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2300
  br label %bb.cs

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2300
  %.pre.i = load i64, ptr %i.bu, align 8, !noalias !2300
  br label %bb.ac

.thread250.i:                                     ; preds = %.noexc29, %.noexc34, %bb.bx
  %.sroa.056.2 = phi i64 [ %i.gs, %bb.bx ], [ %.sroa.056.3, %.noexc34 ], [ -9223372036854775807, %.noexc29 ]
  %i.ek = phi <2 x i64> [ %i.gt, %bb.bx ], [ %i.ig, %.noexc34 ], [ %i.hg, %.noexc29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2300
  br label %bb.di

bb.al:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2300
  br label %bb.cs

bb.am:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2300
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 291
  %i.em = load i8, ptr %i.el, align 1, !range !16, !alias.scope !2297, !noalias !2301, !noundef !6
  %i.en = getelementptr inbounds nuw i8, ptr %i.t, i64 204
  %i.eo = xor i8 %i.em, 1
  store i8 %i.eo, ptr %i.en, align 4, !noalias !2300
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 207 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !2300, !noundef !6
  %i.er = invoke noundef i16 @_ZN3zip5types11ZipFileData14version_needed17h5ef384831db9eb5dE(ptr noundef nonnull align 8 %i.t)
          to label %bb.an unwind label %bb.cq, !noalias !2301

bb.an:                                            ; preds = %bb.am
  %i.es = trunc i16 %i.er to i8
  %.sroa.0.0.i.i = call noundef i8 @llvm.umax.i8(i8 %i.es, i8 %i.eq)
  store i8 %.sroa.0.0.i.i, ptr %i.ep, align 1, !noalias !2300
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %i.et, align 8, !noalias !2300
  %i.eu = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %i.de, ptr %i.eu, align 8, !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.t, i64 208, i1 false), !noalias !2300
  invoke fastcc void @"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$16insert_file_data17hdadd1eee56eb82b5E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.p)
          to label %bb.ao unwind label %.thread227.i, !noalias !2301

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2300
  %i.ev = load i64, ptr %i.q, align 8, !range !34, !noalias !2300, !noundef !6 ; 2 uses
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ew = load <2 x i64>, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !2300
  %.sroa.4113.0.copyload.i = load i64, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !2300 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2300
  %.not150.not.i = icmp eq i64 %i.ev, -9223372036854775802
  br i1 %.not150.not.i, label %bb.ap, label %bb.al

bb.ap:                                            ; preds = %bb.ao
  store i64 %.sroa.4113.0.copyload.i, ptr %i.r, align 8, !noalias !2300
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i8 1, ptr %i.ex, align 8, !alias.scope !2297, !noalias !2301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2300
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.aj, ptr %i.ey, align 8, !noalias !2300
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %1, ptr %i.ez, align 8, !noalias !2300
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.r, ptr %i.fa, align 8, !noalias !2300
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.u, ptr %i.fb, align 8, !noalias !2300
  call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2329
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !2328, !noalias !2330, !nonnull !6, !noundef !6 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !2328, !noalias !2330, !noundef !6 ; 2 uses
  invoke void @_ZN3zip5write19ExtendedFileOptions19validate_extra_data17h03ecd3415d5a1a3dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fd, i64 noundef %i.ff, i1 noundef zeroext false)
          to label %bb.aq unwind label %bb.bv, !noalias !2331

bb.aq:                                            ; preds = %bb.ap
  %i.fg = load i64, ptr %i.e, align 8, !range !34, !noalias !2329, !noundef !6
  %.not.i.i = icmp eq i64 %i.fg, -9223372036854775802
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2329
  br label %bb.bq

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2329
  %i.fh = load i64, ptr %i.r, align 8, !noalias !2329, !noundef !6
  %i.fi = invoke noundef align 8 dereferenceable(208) ptr @"_ZN100_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17ha29d8cabadae090aE"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92)
          to label %bb.at unwind label %bb.bv, !noalias !2331 ; 4 uses

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN3zip5types11ZipFileData11local_block17hfba6eca050775567E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.fi)
          to label %bb.au unwind label %bb.bv, !noalias !2331

bb.au:                                            ; preds = %bb.at
  %i.fj = load i8, ptr %i.d, align 8, !range !16, !noalias !2329, !noundef !6
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false), !noalias !2332
  br label %bb.bq

bb.aw:                                            ; preds = %bb.au
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.fn = load i64, ptr %i.aj, align 8, !range !33, !alias.scope !2297, !noalias !2331, !noundef !6
  %i.fo = icmp eq i64 %i.fn, -9223372036854775807
  br i1 %i.fo, label %bb.ax, label %bb.ay, !prof !19

bb.ax:                                            ; preds = %bb.aw
  %i.fp = load i64, ptr %i.bf, align 8, !range !7, !alias.scope !2297, !noalias !2331, !noundef !6
  %.not18.i.i = icmp eq i64 %i.fp, -9223372036854775808
  br i1 %.not18.i.i, label %bb.az, label %bb.ay, !prof !19

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2329
  store ptr @88, ptr %i.c, align 8, !noalias !2329
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fq, align 8, !noalias !2329
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.fr, align 8, !noalias !2329
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fs, align 8, !noalias !2329
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ft, align 8, !noalias !2329
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #50
          to label %bb.bp unwind label %bb.bv, !noalias !2331

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.a, ptr noundef nonnull align 1 dereferenceable(30) %i.fm, i64 30, i1 false), !noalias !2329
  %i.fu = invoke noundef ptr @_ZN3std2io5Write9write_all17h55ae749b4115d4deE(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 30)
          to label %.noexc.i.i unwind label %bb.bv, !noalias !2331 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.az
  %.not.i.i.i = icmp eq ptr %i.fu, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2333
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc.i.i
  store i64 -9223372036854775807, ptr %i.o, align 8, !alias.scope !2327, !noalias !2332
  %.sroa.236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.fu, ptr %.sroa.236.0..sroa_idx.i.i, align 8, !alias.scope !2327, !noalias !2332
end_hunk_3
begin_hunk_4_@"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$10start_file17h9eac0f26d86e9904E":bb.a
  unreachable

.thread214.i:                                     ; preds = %bb.ah
  %lpad.thr_comm.split-lp246.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread189.i

bb.h:                                             ; preds = %bb.y, %.invoke.i, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.thread189.i

bb.i:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.val164.i = load i64, ptr %i.bf, align 8, !alias.scope !2448, !noalias !2452, !noundef !6 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false), !noalias !2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2450
  store i64 0, ptr %i.aa, align 8, !noalias !2450
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bg, align 8, !noalias !2450
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  store i64 0, ptr %i.bh, align 8, !noalias !2450
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 66
  %i.bj = load i8, ptr %i.bi, align 2, !range !16, !alias.scope !2449, !noalias !2453, !noundef !6 ; 2 uses
  %i.bk = shl nuw nsw i8 %i.bj, 4
  %.sroa.0.2.i.i = zext nneg i8 %i.bk to i16      ; 2 uses
  %i.bl = icmp ugt i64 %.val164.i, 4294967294     ; 2 uses
  %i.bm = or disjoint i16 %.sroa.0.2.i.i, 8
  %.sroa.0.3.i.i = select i1 %i.bl, i16 %i.bm, i16 %.sroa.0.2.i.i ; 2 uses
  %i.bn = icmp eq i16 %.sroa.0.3.i.i, 0
  br i1 %i.bn, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i, label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i: ; preds = %bb.i
  %.sroa.011.0.i.i = zext i1 %i.bl to i64
  %.sroa.06.2.i.i = zext nneg i8 %i.bj to i64     ; 2 uses
  store i64 %.sroa.06.2.i.i, ptr %i.z, align 8, !noalias !2450
  %.sroa.5.0..sroa_idx184.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx184.i, align 8, !noalias !2450
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.06.2.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2450
  %.sroa.7185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 0, ptr %.sroa.7185.0..sroa_idx.i, align 8, !noalias !2450
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %.sroa.011.0.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2450
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %.val164.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2450
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i16 1, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2450
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 50
  store i16 %.sroa.0.3.i.i, ptr %.sroa.11.0..sroa_idx.i, align 2, !noalias !2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2450
  %i.bo = invoke { ptr, i64 } @_ZN3zip5types20Zip64ExtraFieldBlock9serialize17hc68b135dfcb507aaE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.z)
          to label %bb.k unwind label %bb.h, !noalias !2452 ; 2 uses

_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.bq = load i16, ptr %i.bp, align 8, !range !35, !alias.scope !2449, !noalias !2453, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.bs = load i16, ptr %i.br, align 2, !alias.scope !2449, !noalias !2453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2450
  call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  call void @llvm.experimental.noalias.scope.decl(metadata !2455)
  %i.bt = icmp slt i64 %3, 0
  br i1 %i.bt, label %.invoke.i, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i: ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.bu = icmp eq i64 %3, 0
  br i1 %i.bu, label %bb.s, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !2456
  %i.bv = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2456 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.invoke.i, label %bb.s

bb.k:                                             ; preds = %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.i
  %i.bx = extractvalue { ptr, i64 } %i.bo, 0      ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bo, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  store i64 %i.by, ptr %i.y, align 8, !alias.scope !2457, !noalias !2450
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.bz, align 8, !alias.scope !2457, !noalias !2450
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  store i64 %i.by, ptr %i.ca, align 8, !alias.scope !2457, !noalias !2450
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.cb = load ptr, ptr %i.bg, align 8, !alias.scope !2459, !noalias !2460, !nonnull !6, !noundef !6
  %i.cc = load i64, ptr %i.bh, align 8, !alias.scope !2459, !noalias !2460, !noundef !6 ; 3 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.cc)
          to label %bb.l unwind label %bb.q, !noalias !2452

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i": ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !2450
  br label %.thread189.i

bb.l:                                             ; preds = %bb.k
  %i.cd = load i64, ptr %i.ca, align 8, !alias.scope !2461, !noalias !2462, !noundef !6 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = load ptr, ptr %i.bz, align 8, !alias.scope !2461, !noalias !2462, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %i.cb, i64 %i.cc, i1 false), !noalias !2463
  %i.ch = load i64, ptr %i.ca, align 8, !alias.scope !2461, !noalias !2462, !noundef !6
  %i.ci = add i64 %i.ch, %i.cc
  store i64 %i.ci, ptr %i.ca, align 8, !alias.scope !2461, !noalias !2462
  store i64 0, ptr %i.bh, align 8, !alias.scope !2459, !noalias !2460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2450
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.o unwind label %bb.m, !noalias !2452

bb.m:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.aa, align 8, !alias.scope !2464, !noalias !2450 ; 2 uses
  %i.ck = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ck, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val3.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2465, !noalias !2450, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2466
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i"

bb.o:                                             ; preds = %bb.l
  %.val.i.i = load i64, ptr %i.aa, align 8, !alias.scope !2464, !noalias !2450 ; 2 uses
  %i.cl = icmp eq i64 %.val.i.i, 0
  br i1 %i.cl, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2465, !noalias !2450, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2467
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !2450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2450
  br label %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i

bb.q:                                             ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.y) #51
          to label %.thread189.i unwind label %bb.r, !noalias !2452

bb.r:                                             ; preds = %bb.ch, %bb.cg, %bb.q
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body36

.body36:                                          ; preds = %bb.cn, %bb.co, %bb.r
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !2452
  unreachable

bb.s:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i.i.i ], [ %i.bv, %bb.j ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !2468
  store i64 %3, ptr %i.w, align 8, !alias.scope !2469, !noalias !2450
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2469, !noalias !2450
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2469, !noalias !2450
  %i.co = add nuw i64 %3, 30
  %i.cp = add i64 %i.co, %.val164.i               ; 2 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.v unwind label %bb.t, !noalias !2452

bb.t:                                             ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !2470, !noalias !2450 ; 2 uses
  %i.cr = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.cr, label %.thread189.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2471, !noalias !2450, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2472
  br label %.thread189.i

bb.v:                                             ; preds = %bb.s
  %.val.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !2470, !noalias !2450 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2471, !noalias !2450, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2473
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2450
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.cu = load i16, ptr %i.ct, align 8, !alias.scope !2449, !noalias !2453, !noundef !6 ; 3 uses
  %i.cv = icmp ugt i16 %i.cu, 1
  %.pre252.i = load i64, ptr %i.bh, align 8, !noalias !2450 ; 4 uses
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.cw = icmp sgt i64 %.pre252.i, -1
  call void @llvm.assume(i1 %i.cw)
  %i.cx = zext i16 %i.cu to i64                   ; 8 uses
  %i.cy = add i64 %.pre252.i, %i.cp
  %i.cz = urem i64 %i.cy, %i.cx                   ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.af, %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  %i.db = phi i64 [ %.pre252.i, %bb.x ], [ %.pre.i, %bb.af ], [ %.pre252.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" ] ; 3 uses
  store i64 %i.db, ptr %i.t, align 8, !noalias !2450
  %i.dc = icmp sgt i64 %i.db, -1
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2450
  %i.dd = load ptr, ptr %i.bg, align 8, !noalias !2450, !nonnull !6, !noundef !6
  invoke fastcc void @_ZN3zip5types11ZipFileData22initialize_local_block17hb9ba992954de7836E(ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.af, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ab, i64 noundef %.val164.i, i16 noundef %i.bq, i16 %i.bs, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dd, i64 noundef %i.db)
          to label %bb.ag unwind label %bb.h

bb.z:                                             ; preds = %bb.x
  %i.de = sub nuw nsw i64 %i.cx, %i.cz            ; 3 uses
  %i.df = icmp samesign ult i64 %i.de, 6
  br i1 %i.df, label %5, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

5:                                                ; preds = %bb.z
  %6 = add nuw nsw i64 %i.de, %i.cx               ; 3 uses
  %7 = icmp samesign ult i64 %6, 6
  br i1 %7, label %8, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

8:                                                ; preds = %5
  %9 = add nuw nsw i64 %6, %i.cx                  ; 3 uses
  %10 = icmp samesign ult i64 %9, 6
  br i1 %10, label %11, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

11:                                               ; preds = %8
  %12 = add nuw nsw i64 %9, %i.cx                 ; 3 uses
  %13 = icmp samesign ult i64 %12, 6
  br i1 %13, label %bb.aa, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.aa:                                            ; preds = %11
  %i.dg = add nuw nsw i64 %12, %i.cx              ; 3 uses
  %i.dh = icmp samesign ult i64 %i.dg, 6
  br i1 %i.dh, label %bb.ab, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.di = add nuw nsw i64 %i.dg, %i.cx            ; 3 uses
  %i.dj = icmp samesign ult i64 %i.di, 6
  %i.dk = add nuw nsw i64 %i.di, %i.cx
  %spec.select = select i1 %i.dj, i64 %i.dk, i64 %i.di
  br label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %11, %8, %5, %bb.z
  %.sroa.014.0.i.lcssa = phi i64 [ %i.de, %bb.z ], [ %6, %5 ], [ %9, %8 ], [ %12, %11 ], [ %i.dg, %bb.aa ], [ %spec.select, %bb.ab ]
  %i.dl = add nsw i64 %.sroa.014.0.i.lcssa, -4    ; 4 uses
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !2474
  %i.dm = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 -65536, 65537) %i.dl, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !2474 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.invoke.i, label %bb.ac

.invoke.i:                                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, %bb.j, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i
  %i.do = phi i64 [ 0, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ 1, %bb.j ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  %i.dp = phi i64 [ %3, %_ZN3zip5types20Zip64ExtraFieldBlock9maybe_new17h812924f17aa4d21aE.exit.thread.i ], [ %3, %bb.j ], [ %i.dl, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.do, i64 %i.dp) #50
          to label %.cont.i unwind label %bb.h, !noalias !2452

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  store i16 %i.cu, ptr %i.dm, align 1, !noalias !2452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2450
  store i64 %i.dl, ptr %i.u, align 8, !noalias !2450
  %.sroa.5.0..sroa_idx250.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.dm, ptr %.sroa.5.0..sroa_idx250.i, align 8, !noalias !2450
  %.sroa.7251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.dl, ptr %.sroa.7251.0..sroa_idx.i, align 8, !noalias !2450
  %i.dq = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.ad unwind label %.thread203.i, !noalias !2452 ; 2 uses

.thread203.i:                                     ; preds = %bb.ad, %bb.ac
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread189.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2450
  invoke void @_ZN3zip5write19ExtendedFileOptions24add_extra_data_unchecked17haa17d3d5f1909adaE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i16 noundef -24290, ptr noalias noundef nonnull align 1 %i.dr, i64 noundef %i.ds)
          to label %bb.ae unwind label %.thread203.i, !noalias !2452

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i64, ptr %i.v, align 8, !range !34, !noalias !2450, !noundef !6 ; 2 uses
  %.not146.i = icmp eq i64 %i.dt, -9223372036854775802
  br i1 %.not146.i, label %bb.af, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ae
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.du = load <2 x i64>, ptr %.sroa.493.0..sroa_idx.i, align 8, !noalias !2451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2450
  br label %bb.ci

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2450
  %.pre.i = load i64, ptr %i.bh, align 8, !noalias !2450
  br label %bb.y

bb.ag:                                            ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.dw = load i8, ptr %i.dv, align 1, !range !16, !alias.scope !2448, !noalias !2452, !noundef !6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 204
  %i.dy = xor i8 %i.dw, 1
  store i8 %i.dy, ptr %i.dx, align 4, !noalias !2450
  %i.dz = getelementptr inbounds nuw i8, ptr %i.s, i64 207 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !2450, !noundef !6
  %i.eb = invoke noundef i16 @_ZN3zip5types11ZipFileData14version_needed17h5ef384831db9eb5dE(ptr noundef nonnull align 8 %i.s)
          to label %bb.ah unwind label %bb.ch, !noalias !2452

bb.ah:                                            ; preds = %bb.ag
  %i.ec = trunc i16 %i.eb to i8
  %.sroa.0.0.i.i = call noundef i8 @llvm.umax.i8(i8 %i.ec, i8 %i.ea)
  store i8 %.sroa.0.0.i.i, ptr %i.dz, align 1, !noalias !2450
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1, ptr %i.ed, align 8, !noalias !2450
  %i.ee = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.cp, ptr %i.ee, align 8, !noalias !2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.p, ptr noundef nonnull align 8 dereferenceable(208) %i.s, i64 208, i1 false), !noalias !2450
  invoke fastcc void @"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$16insert_file_data17h9baff45f288ae661E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(328) %1, ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.p)
          to label %bb.ai unwind label %.thread214.i, !noalias !2452

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2450
  %i.ef = load i64, ptr %i.q, align 8, !range !34, !noalias !2450, !noundef !6 ; 2 uses
  %.sroa.4112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.eg = load <2 x i64>, ptr %.sroa.4112.0..sroa_idx.i, align 8, !noalias !2450
  %.sroa.4112.0.copyload.i = load i64, ptr %.sroa.4112.0..sroa_idx.i, align 8, !noalias !2450 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2450
  %.not149.not.i = icmp eq i64 %i.ef, -9223372036854775802
  br i1 %.not149.not.i, label %bb.aj, label %bb.cf

bb.aj:                                            ; preds = %bb.ai
  store i64 %.sroa.4112.0.copyload.i, ptr %i.r, align 8, !noalias !2450
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i8 1, ptr %i.eh, align 8, !alias.scope !2448, !noalias !2452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !2450
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ah, ptr %i.ei, align 8, !noalias !2450
  %i.ej = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %1, ptr %i.ej, align 8, !noalias !2450
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.r, ptr %i.ek, align 8, !noalias !2450
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.t, ptr %i.el, align 8, !noalias !2450
  call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2477
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !2476, !noalias !2478, !nonnull !6, !noundef !6 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !2476, !noalias !2478, !noundef !6 ; 2 uses
  invoke void @_ZN3zip5write19ExtendedFileOptions19validate_extra_data17h03ecd3415d5a1a3dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.en, i64 noundef %i.ep, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.bp, !noalias !2479

bb.ak:                                            ; preds = %bb.aj
  %i.eq = load i64, ptr %i.e, align 8, !range !34, !noalias !2477, !noundef !6
  %.not.i.i = icmp eq i64 %i.eq, -9223372036854775802
  br i1 %.not.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2477
  br label %bb.bk

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2477
  %i.er = load i64, ptr %i.r, align 8, !noalias !2477, !noundef !6
  %i.es = invoke noundef align 8 dereferenceable(208) ptr @"_ZN100_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17ha29d8cabadae090aE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %1, i64 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92)
          to label %bb.an unwind label %bb.bp, !noalias !2479 ; 4 uses

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN3zip5types11ZipFileData11local_block17hfba6eca050775567E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.es)
          to label %bb.ao unwind label %bb.bp, !noalias !2479

bb.ao:                                            ; preds = %bb.an
  %i.et = load i8, ptr %i.d, align 8, !range !16, !noalias !2477, !noundef !6
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false), !noalias !2480
  br label %bb.bk

bb.aq:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ex = load i64, ptr %i.ah, align 8, !range !33, !alias.scope !2448, !noalias !2479, !noundef !6
  %i.ey = icmp eq i64 %i.ex, -9223372036854775807
  br i1 %i.ey, label %bb.ar, label %bb.as, !prof !19

bb.ar:                                            ; preds = %bb.aq
  %i.ez = load i64, ptr %i.bc, align 8, !range !7, !alias.scope !2448, !noalias !2479, !noundef !6
  %.not18.i.i = icmp eq i64 %i.ez, -9223372036854775808
  br i1 %.not18.i.i, label %bb.at, label %bb.as, !prof !19

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2477
  store ptr @88, ptr %i.c, align 8, !noalias !2477
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fa, align 8, !noalias !2477
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.fb, align 8, !noalias !2477
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fc, align 8, !noalias !2477
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.fd, align 8, !noalias !2477
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #50
          to label %bb.bj unwind label %bb.bp, !noalias !2479

bb.at:                                            ; preds = %bb.ar
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.a, ptr noundef nonnull align 1 dereferenceable(30) %i.ew, i64 30, i1 false), !noalias !2477
  %i.ff = invoke noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17hc264c1d46bb67e1cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 30)
          to label %.noexc.i.i unwind label %bb.bp, !noalias !2479 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.at
  %.not.i.i.i = icmp eq ptr %i.ff, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2481
  br i1 %.not.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.noexc.i.i
  store i64 -9223372036854775807, ptr %i.o, align 8, !alias.scope !2475, !noalias !2480
  %.sroa.236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ff, ptr %.sroa.236.0..sroa_idx.i.i, align 8, !alias.scope !2475, !noalias !2480
  br label %bb.bk

bb.av:                                            ; preds = %.noexc.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !2479, !nonnull !6, !noundef !6
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  %i.fj = load i64, ptr %i.fi, align 8, !noalias !2479, !noundef !6
  %i.fk = invoke noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17hc264c1d46bb67e1cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fh, i64 noundef %i.fj)
          to label %bb.aw unwind label %bb.bp, !noalias !2479 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %.not20.i.i = icmp eq ptr %i.fk, null
  br i1 %.not20.i.i, label %bb.ay, label %bb.ax
end_hunk_4
