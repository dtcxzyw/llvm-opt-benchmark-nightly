Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.12?download=true
inline.NumInlined: 260
inline.NumDeleted: 154
begin_hunk_0_@"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$11with_config17hc7255c0442325acbE":bb.a
  %i.cg = icmp eq ptr %.val2.i.i, null
  %i.ch = icmp eq i64 %.val3.i.i, 0
  %or.cond.i6.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i6.i.i, label %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hd7655c385e24796eE.exit.i", label %bb.ab

bb.ab:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h5048720e9a73af59E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %.val3.i.i, i64 noundef 1) #25, !noalias !182
  br label %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hd7655c385e24796eE.exit.i"

"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hd7655c385e24796eE.exit.i": ; preds = %bb.ab, %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h5048720e9a73af59E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !148
  invoke void @_ZN3zip4spec22find_central_directory17h4bf27d37b03deb4bE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.i, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.m, i64 noundef range(i64 0, 3) %1, i64 %2, i64 noundef %i.ce, i64 noundef %i.q)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hd7655c385e24796eE.exit.i"
  %i.ci = load ptr, ptr %i.i, align 8, !noalias !148, !noundef !4 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.thread35, label %bb.b

.loopexit.i.body:                                 ; preds = %bb.y, %.loopexit.i, %bb.q, %.body.i.i, %.loopexit.split-lp.i
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.br, %bb.q ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.cc, %bb.y ] ; 2 uses
  %.val29.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !148, !noundef !4 ; 2 uses
  %i.ck = icmp eq i64 %.val29.i, 0
  br i1 %i.ck, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i.body
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef range(i64 1, 0) %.val29.i, i64 noundef 1) #25, !noalias !145
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit.i.body
  %.val30.i = load ptr, ptr %i.ae, align 8, !noalias !148, !noundef !4 ; 3 uses
  %.val31.i = load i64, ptr %i.af, align 8, !noalias !148 ; 2 uses
  %i.cl = icmp eq ptr %.val30.i, null
  %i.cm = icmp eq i64 %.val31.i, 0
  %or.cond.i34.i = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond.i34.i, label %.thread28, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i, i64 noundef range(i64 1, 0) %.val31.i, i64 noundef 1) #25, !noalias !145
  br label %.thread28

.loopexit:                                        ; preds = %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hd7655c385e24796eE.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread28

.loopexit.split-lp:                               ; preds = %bb.a, %.preheader.i, %.loopexit94.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread28

bb.af:                                            ; preds = %.loopexit94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !148
  %.pr33.pr = load i64, ptr %i.l, align 8         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cn = icmp eq i64 %.pr33.pr, 3
  br i1 %i.cn, label %bb.ag, label %bb.ah

.sink.split:                                      ; preds = %.thread34, %.thread35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.af
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.val14 = load i32, ptr %i.m, align 4, !range !183, !noundef !4
  %i.cp = call noundef i32 @close(i32 noundef %.val14) #25 ; 0 uses
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.67.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.cq = load i32, ptr %i.m, align 4, !range !183, !noundef !4 ; 2 uses
  store i64 1, ptr %i.k, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.pr33.pr, ptr %i.cs, align 8
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !184
  %i.ct = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef 8) #25, !noalias !184 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ai, label %bb.al, !prof !161

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 152) #24
          to label %.noexc20 unwind label %bb.aj

.noexc20:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..ArcInner$LT$zip..read..zip_archive..Shared$GT$$GT$17h79042d37d94902d5E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.k) #23
          to label %bb.an unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

bb.al:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ct, ptr noundef nonnull align 8 dereferenceable(152) %i.k, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cq, ptr %i.cy, align 8
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ag
  ret void

bb.an:                                            ; preds = %bb.aj, %.thread28
  %.sink = phi i32 [ %.val, %.thread28 ], [ %i.cq, %bb.aj ]
  %.pn31 = phi { ptr, i32 } [ %eh.lpad-body19, %.thread28 ], [ %i.cv, %bb.aj ]
  %i.cz = call noundef i32 @close(i32 noundef %.sink) #25 ; 0 uses
  resume { ptr, i32 } %.pn31

.thread28:                                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.ad, %bb.ae
  %eh.lpad-body19 = phi { ptr, i32 } [ %.pn.ph.i, %bb.ad ], [ %.pn.ph.i, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i32, ptr %i.m, align 4, !range !183, !noundef !4
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal17h3fcb0492b33b7401E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i86.i.i = alloca [39 x i8], align 1  ; 5 uses
  %.sroa.526.i.i87.i.i = alloca [39 x i8], align 1 ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5.i.i.i.i.i = alloca [39 x i8], align 1  ; 5 uses
  %.sroa.526.i.i.i.i.i = alloca [39 x i8], align 1 ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5.i.i.i.i = alloca [39 x i8], align 1    ; 5 uses
  %.sroa.526.i.i.i.i = alloca [39 x i8], align 1  ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 10 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [64 x i8], align 8                ; 11 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %i.q = alloca [64 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [24 x i8], align 8                ; 23 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [4 x i8], align 4                ; 8 uses
  %i.ad = alloca [240 x i8], align 8              ; 7 uses
  %.sroa.787 = alloca [24 x i8], align 8          ; 6 uses
  %i.ae = alloca [240 x i8], align 8              ; 13 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 11 uses
  %i.ah = alloca [240 x i8], align 8              ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 10 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 21 uses
  %i.an = alloca [240 x i8], align 8              ; 7 uses
  %.sroa.755 = alloca [24 x i8], align 8          ; 6 uses
  %i.ao = alloca [240 x i8], align 8              ; 18 uses
  %i.ap = alloca [24 x i8], align 8               ; 13 uses
  %i.aq = alloca [32 x i8], align 8               ; 16 uses
  %i.ar = alloca [32 x i8], align 8               ; 15 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 12 uses
  %i.au = alloca [8 x i8], align 8                ; 2 uses
  store ptr %2, ptr %i.au, align 8
  %i.av = call noundef ptr @_ZN3std2fs14create_dir_all17h094f8f8b40d89653E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au) ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.ax, align 8, !noundef !4
  call void @_ZN3std2fs12canonicalize17hebf5567f45739b43E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  %i.ay = load i64, ptr %i.as, align 8, !range !160, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  br i1 %i.az, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.8124.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.8124.0..sroa_idx125, align 8
  br label %bb.cc

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %.sroa.4133.0..sroa_idx, align 8
  br label %bb.fx

bb.e:                                             ; preds = %bb.b
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %4 = load i64, ptr %.sroa.5129.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.ay, ptr %i.at, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %.not197 = icmp eq ptr %3, null
  br i1 %.not197, label %.thread439, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val244 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %3, ptr %i.v, align 8, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !187
  store ptr %i.v, ptr %i.u, align 8, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !190
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !190
  %i.bc = getelementptr inbounds nuw i8, ptr %.val244, i64 80
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !190, !noundef !4 ; 2 uses
  %.not62.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not62.i.i, label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.val244, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %.val244, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 57 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 57 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.526.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 57
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %.sroa.5.0..sroa_idx29.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 58
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 17
  %.sroa.614.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.715.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  %.sroa.816.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 58
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 57 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 57 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.526.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 58
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 57
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 58
  %.sroa.5.0..sroa_idx29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.513.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %.sroa.614.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.715.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  %.sroa.816.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 57 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 57 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.526.0..sroa_idx.i.i89.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %.sroa.4.0..sroa_idx.i.i90.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i91.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i92.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.6.0..sroa_idx.i.i93.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.7.0..sroa_idx.i.i94.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  %.sroa.8.0..sroa_idx.i.i95.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %.sroa.5.0..sroa_idx29.i.i97.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  %.sroa.412.0..sroa_idx.i.i98.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.513.0..sroa_idx.i.i99.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i.i100.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.614.0..sroa_idx.i.i101.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.715.0..sroa_idx.i.i102.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %.sroa.816.0..sroa_idx.i.i103.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.g

"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.loopexit.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i"
  %.sroa.9.8.copyload.pre.i = load i64, ptr %i.t, align 8, !noalias !194
  br label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.i"

"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.i": ; preds = %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.loopexit.i", %bb.f
  %.sroa.9.8.copyload.i = phi i64 [ %.sroa.9.8.copyload.pre.i, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.loopexit.i" ], [ -9223372036854775808, %bb.f ]
  %.sroa.15.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.15.8.copyload.i = load ptr, ptr %.sroa.15.8..sroa_idx.i, align 8, !noalias !194
  %.sroa.17.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.17.8.copyload.i = load ptr, ptr %.sroa.17.8..sroa_idx.i, align 8, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !187
  %i.cq = ptrtoint ptr %.sroa.15.8.copyload.i to i64
  br label %bb.bp

bb.g:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i", %.lr.ph.i.i
  %.sroa.031.061.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cr, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i" ] ; 3 uses
  %i.cr = add nuw i64 %.sroa.031.061.i.i, 1       ; 2 uses
  %i.cs = load i64, ptr %i.be, align 8, !noalias !190, !noundef !4
  %.not8.i = icmp ult i64 %.sroa.031.061.i.i, %i.cs ; 2 uses
  br i1 %.not8.i, label %bb.k, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit81.i.i"
  %.sroa.9.0.i = phi i64 [ -9223372036854775808, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit81.i.i" ], [ -9223372036854775804, %bb.g ] ; 2 uses
  %i.ct = load i64, ptr %i.t, align 8, !range !160, !alias.scope !195, !noalias !190, !noundef !4
  %i.cu = icmp eq i64 %i.ct, -9223372036854775808
  br i1 %i.cu, label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i", label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i.i" unwind label %bb.i, !noalias !198

bb.i:                                             ; preds = %bb.h
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.j, !noalias !198

bb.j:                                             ; preds = %bb.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !198
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i.i": ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i" unwind label %bb.bq

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %bb.al, %bb.r, %.loopexit.split-lp37.i.i, %.loopexit36.i.i
  %.pn49.i.i = phi { ptr, i32 } [ %i.en, %bb.al ], [ %.pn.ph.i.i, %.loopexit.split-lp.i.i ], [ %i.df, %bb.r ], [ %lpad.loopexit38.i.i, %.loopexit36.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp37.i.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h62a95273ca655928E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #23
          to label %.body unwind label %bb.bo, !noalias !198

.loopexit36.i.i:                                  ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i.i.i", %bb.k
  %lpad.loopexit38.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp37.i.i:                         ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i77.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.k:                                             ; preds = %bb.g
  %i.cx = load ptr, ptr %i.bf, align 8, !noalias !190, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw [232 x i8], ptr %i.cx, i64 %.sroa.031.061.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !190
  invoke void @_ZN3zip5types11ZipFileData13enclosed_name17hd3fec6bc01358629E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 8 %i.cy)
          to label %bb.l unwind label %.loopexit36.i.i, !noalias !198

bb.l:                                             ; preds = %bb.k
  %i.cz = load i64, ptr %i.r, align 8, !range !160, !noalias !190, !noundef !4
  %.not.i.i = icmp eq i64 %i.cz, -9223372036854775808
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !190
  %i.da = load ptr, ptr %i.bg, align 8, !noalias !190, !nonnull !4, !noundef !4
  %i.db = load i64, ptr %i.bh, align 8, !noalias !190, !noundef !4
  %i.dc = invoke noundef zeroext i1 @"_ZN4core3ops8function5impls68_$LT$impl$u20$core..ops..function..Fn$LT$A$GT$$u20$for$u20$$RF$F$GT$4call17hbe26cd3d32a37784E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %i.db)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !190
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit81.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit81.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i77.i.i", %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !190
  br label %.loopexit.i

.loopexit.i.i:                                    ; preds = %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir28_$u7b$$u7b$closure$u7d$$u7d$17hf8e9113c3691443dE.exit.i.i.i", %.noexc83.i.i, %bb.ap, %bb.an
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.lr.ph.i.i.i
  %lpad.loopexit33.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.bg, %bb.bf, %.noexc110.i.i, %bb.ax, %bb.ah, %.noexc67.i.i, %bb.z, %bb.v, %bb.t, %bb.p, %bb.m
  %lpad.loopexit40.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.bh
  %lpad.loopexit.split-lp41.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !190
  %i.dd = load ptr, ptr %i.bg, align 8, !noalias !190, !nonnull !4, !noundef !4
  %i.de = load i64, ptr %i.bh, align 8, !noalias !190, !noundef !4
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dd, i64 noundef %i.de)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

bb.q:                                             ; preds = %bb.bn, %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h62a95273ca655928E.exit120.i.i", %.thread31.i.i, %bb.aj, %.thread24.i.i, %bb.o
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i.i.i" unwind label %bb.r, !noalias !198

bb.r:                                             ; preds = %bb.q
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i.i unwind label %bb.s, !noalias !198

bb.s:                                             ; preds = %bb.r
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !198
  unreachable

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i.i.i": ; preds = %bb.q
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i" unwind label %.loopexit36.i.i, !noalias !198

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !199
  invoke void @"_ZN80_$LT$std..path..Components$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha54128b69019ea90E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %.noexc65.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

.noexc65.i.i:                                     ; preds = %bb.t
  %i.dh = load i8, ptr %i.p, align 8, !range !202, !noalias !199, !noundef !4
  %.not4.i.i.i = icmp eq i8 %i.dh, 10
  br i1 %.not4.i.i.i, label %.thread22.i.i, label %.lr.ph.i.i.i

.thread22.i.i:                                    ; preds = %.noexc65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !190
  br label %bb.w

.lr.ph.i.i.i:                                     ; preds = %.noexc65.i.i, %.noexc66.i.i
  %.sroa.0.05.i.i.i = phi i64 [ %i.di, %.noexc66.i.i ], [ 0, %.noexc65.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !199
  invoke void @"_ZN80_$LT$std..path..Components$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha54128b69019ea90E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !198

.noexc66.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.di = add i64 %.sroa.0.05.i.i.i, 1
  %i.dj = load i8, ptr %i.p, align 8, !range !202, !noalias !199, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.dj, 10
  br i1 %.not.i.i.i, label %bb.u, label %.lr.ph.i.i.i

bb.u:                                             ; preds = %.noexc66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !190
  %i.dk = icmp eq i64 %.sroa.0.05.i.i.i, 0
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = invoke noundef zeroext i1 @_ZN3zip5types11ZipFileData6is_dir17h50b19afa5847ef1fE(ptr noundef nonnull align 8 %i.cy)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

bb.w:                                             ; preds = %bb.u, %.thread22.i.i
  %i.dm = load ptr, ptr %i.bg, align 8, !noalias !190, !nonnull !4, !noundef !4
  %i.dn = load i64, ptr %i.bh, align 8, !noalias !190, !noundef !4
  br label %bb.an

bb.x:                                             ; preds = %bb.v
  br i1 %i.dl, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.do = load i64, ptr %i.t, align 8, !range !160, !noalias !190, !noundef !4
  %.not47.i.i = icmp eq i64 %i.do, -9223372036854775808
  br i1 %.not47.i.i, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val.i.i = load ptr, ptr %i.bi, align 8, !noalias !190, !nonnull !4, !noundef !4
  %.val53.i.i = load i64, ptr %i.bj, align 8, !noalias !190, !noundef !4
  %.val54.i.i = load ptr, ptr %i.bg, align 8, !noalias !190 ; 2 uses
  %.val55.i.i = load i64, ptr %i.bh, align 8, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !190
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val53.i.i)
          to label %.noexc67.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

.noexc67.i.i:                                     ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !190
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.i.i) ]
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val54.i.i, i64 noundef %.val55.i.i)
          to label %.noexc68.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

.noexc68.i.i:                                     ; preds = %.noexc67.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.526.i.i.i.i)
end_hunk_0
begin_hunk_1_@"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal17h3fcb0492b33b7401E":bb.a
          to label %.noexc110.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

.noexc110.i.i:                                    ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !190
  invoke void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %storemerge.i.i)
          to label %.noexc111.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

.noexc111.i.i:                                    ; preds = %.noexc110.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i86.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.526.i.i87.i.i)
  %i.fr = load ptr, ptr %i.g, align 8, !alias.scope !227, !noalias !232, !nonnull !4, !align !93, !noundef !4 ; 2 uses
  %i.fs = load i64, ptr %i.ce, align 8, !alias.scope !227, !noalias !232, !noundef !4 ; 3 uses
  %i.ft = load ptr, ptr %i.f, align 8, !alias.scope !230, !noalias !233, !nonnull !4, !align !93, !noundef !4 ; 2 uses
  %i.fu = load i64, ptr %i.cf, align 8, !alias.scope !230, !noalias !233, !noundef !4 ; 2 uses
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.az, label %.noexc111._crit_edge.i.i

.noexc111._crit_edge.i.i:                         ; preds = %.noexc111.i.i
  %.pre81.i.i = load i8, ptr %i.ck, align 8, !range !210, !alias.scope !227, !noalias !232
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %.noexc111._crit_edge.i.i
  %i.fw = phi i8 [ %.pre81.i.i, %.noexc111._crit_edge.i.i ], [ %.pre82.i.i, %bb.bb ], [ %.pre82.i.i, %bb.ba ], [ %.pre82.i.i, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !234
  %.not35.i.i88.i.i = icmp eq i8 %i.fw, 6
  br i1 %.not35.i.i88.i.i, label %bb.bd, label %bb.bc

bb.az:                                            ; preds = %.noexc111.i.i
  %i.fx = load i8, ptr %i.cg, align 8, !range !212, !alias.scope !227, !noalias !232, !noundef !4
  %i.fy = load i8, ptr %i.ch, align 8, !range !212, !alias.scope !230, !noalias !233, !noundef !4
  %i.fz = icmp eq i8 %i.fx, %i.fy
  %i.ga = load i8, ptr %i.ci, align 1, !range !212, !alias.scope !227, !noalias !232
  %i.gb = icmp eq i8 %i.ga, 2
  %or.cond.i.i105.i.i = select i1 %i.fz, i1 %i.gb, i1 false
  %i.gc = load i8, ptr %i.cj, align 1, !range !212, !alias.scope !230, !noalias !233
  %i.gd = icmp eq i8 %i.gc, 2
  %or.cond7.i.i106.i.i = select i1 %or.cond.i.i105.i.i, i1 %i.gd, i1 false
  %.pre82.i.i = load i8, ptr %i.ck, align 8, !range !210, !alias.scope !227, !noalias !232 ; 4 uses
  br i1 %or.cond7.i.i106.i.i, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %switch.i.i107.i.i = icmp samesign ult i8 %.pre82.i.i, 3
  %i.ge = load i8, ptr %i.cl, align 8, !range !210, !alias.scope !230, !noalias !233, !noundef !4
  %i.gf = icmp samesign ugt i8 %i.ge, 2
  %.sroa.09.0.not.i.i108.i.i = xor i1 %switch.i.i107.i.i, %i.gf
  br i1 %.sroa.09.0.not.i.i108.i.i, label %bb.bb, label %bb.ay

bb.bb:                                            ; preds = %bb.ba
  %bcmp.i.i109.i.i = call i32 @bcmp(ptr nonnull %i.fr, ptr nonnull %i.ft, i64 %i.fs), !noalias !235
  %i.gg = icmp eq i32 %bcmp.i.i109.i.i, 0
  br i1 %i.gg, label %.thread31.i.i, label %bb.ay

.thread31.i.i:                                    ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i86.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.526.i.i87.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !190
  br label %bb.q

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.526.i.i87.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.526.0..sroa_idx.i.i89.i.i, i64 39, i1 false), !noalias !232
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ay
  %i.gh = load i8, ptr %i.cm, align 2, !range !214, !alias.scope !227, !noalias !232, !noundef !4
  %i.gi = load i8, ptr %i.cg, align 8, !range !212, !alias.scope !227, !noalias !232, !noundef !4
  %i.gj = load i8, ptr %i.ci, align 1, !range !212, !alias.scope !227, !noalias !232, !noundef !4
  store ptr %i.fr, ptr %i.e, align 8, !noalias !234
  store i64 %i.fs, ptr %.sroa.4.0..sroa_idx.i.i90.i.i, align 8, !noalias !234
  store i8 %i.fw, ptr %.sroa.5.0..sroa_idx.i.i91.i.i, align 8, !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i92.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.526.i.i87.i.i, i64 39, i1 false), !noalias !234
  store i8 %i.gi, ptr %.sroa.6.0..sroa_idx.i.i93.i.i, align 8, !noalias !234
  store i8 %i.gj, ptr %.sroa.7.0..sroa_idx.i.i94.i.i, align 1, !noalias !234
  store i8 %i.gh, ptr %.sroa.8.0..sroa_idx.i.i95.i.i, align 2, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !234
  %i.gk = load i8, ptr %i.cl, align 8, !range !210, !alias.scope !230, !noalias !233, !noundef !4 ; 2 uses
  %.not36.i.i96.i.i = icmp eq i8 %i.gk, 6
  br i1 %.not36.i.i96.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i86.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.5.0..sroa_idx29.i.i97.i.i, i64 39, i1 false), !noalias !233
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gl = load i8, ptr %i.cn, align 2, !range !214, !alias.scope !230, !noalias !233, !noundef !4
  %i.gm = load i8, ptr %i.ch, align 8, !range !212, !alias.scope !230, !noalias !233, !noundef !4
  %i.gn = load i8, ptr %i.cj, align 1, !range !212, !alias.scope !230, !noalias !233, !noundef !4
  store ptr %i.ft, ptr %i.d, align 8, !noalias !234
  store i64 %i.fu, ptr %.sroa.412.0..sroa_idx.i.i98.i.i, align 8, !noalias !234
  store i8 %i.gk, ptr %.sroa.513.0..sroa_idx.i.i99.i.i, align 8, !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i.i100.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i86.i.i, i64 39, i1 false), !noalias !234
  store i8 %i.gm, ptr %.sroa.614.0..sroa_idx.i.i101.i.i, align 8, !noalias !234
  store i8 %i.gn, ptr %.sroa.715.0..sroa_idx.i.i102.i.i, align 1, !noalias !234
  store i8 %i.gl, ptr %.sroa.816.0..sroa_idx.i.i103.i.i, align 2, !noalias !234
  %i.go = invoke noundef zeroext i1 @_ZN4core4iter6traits8iterator8Iterator5eq_by17h9abcc3eb802ff3efE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

bb.bg:                                            ; preds = %.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !236
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h70eece5d17de217aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %storemerge.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc113.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !198

.noexc113.i.i:                                    ; preds = %bb.bg
  %i.gp = load i64, ptr %i.c, align 8, !range !126, !noalias !236, !noundef !4
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = load i64, ptr %i.co, align 8, !range !160, !noalias !236, !noundef !4 ; 4 uses
  br i1 %i.gq, label %bb.bh, label %bb.bi, !prof !161

bb.bh:                                            ; preds = %.noexc113.i.i
  %i.gs = load i64, ptr %i.cp, align 8, !noalias !236
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.gr, i64 %i.gs) #24
          to label %.noexc114.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !198

.noexc114.i.i:                                    ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %.noexc113.i.i
  %i.gt = load ptr, ptr %i.cp, align 8, !noalias !236, !nonnull !4, !noundef !4 ; 3 uses
  %i.gu = icmp ule i64 %storemerge.i.i, %i.gr
  call void @llvm.assume(i1 %i.gu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr nonnull readonly align 1 %.sroa.0.0.i.i, i64 %storemerge.i.i, i1 false), !noalias !240
  %i.gv = load i64, ptr %i.t, align 8, !range !160, !alias.scope !241, !noalias !190, !noundef !4
  %i.gw = icmp eq i64 %i.gv, -9223372036854775808
  br i1 %i.gw, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h62a95273ca655928E.exit120.i.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i116.i.i" unwind label %bb.bk, !noalias !198

bb.bk:                                            ; preds = %bb.bj
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body117.i.i unwind label %bb.bl, !noalias !198

bb.bl:                                            ; preds = %bb.bk
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !198
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i116.i.i": ; preds = %bb.bj
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h62a95273ca655928E.exit120.i.i" unwind label %bb.bm, !noalias !198

bb.bm:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i116.i.i"
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i.i

.body117.i.i:                                     ; preds = %bb.bm, %bb.bk
  %eh.lpad-body118.i.i = phi { ptr, i32 } [ %i.gz, %bb.bm ], [ %i.gx, %bb.bk ]
  store i64 %i.gr, ptr %i.t, align 8, !noalias !190
  store ptr %i.gt, ptr %i.bi, align 8, !noalias !190
  store i64 %storemerge.i.i, ptr %i.bj, align 8, !noalias !190
  br label %.loopexit.split-lp.i.i

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h62a95273ca655928E.exit120.i.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i116.i.i", %bb.bi
  store i64 %i.gr, ptr %i.t, align 8, !noalias !190
  store ptr %i.gt, ptr %i.bi, align 8, !noalias !190
  store i64 %storemerge.i.i, ptr %i.bj, align 8, !noalias !190
  br label %bb.q

bb.bn:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i86.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.526.i.i87.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !190
  br i1 %i.go, label %bb.q, label %bb.ak

.loopexit.split-lp.i.i:                           ; preds = %.body117.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body118.i.i, %.body117.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit33.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit40.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp41.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #23
          to label %.body.i.i unwind label %bb.bo, !noalias !198

bb.bo:                                            ; preds = %.loopexit.split-lp.i.i, %.body.i.i
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !198
  unreachable

"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i.i", %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !187
  br i1 %.not8.i, label %bb.bp, label %.thread406

.thread406:                                       ; preds = %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %.sroa.9.0.i, ptr %0, align 8
  %.sroa.3360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %.sroa.3360.0..sroa_idx, align 8
  br label %"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE.exit"

bb.bp:                                            ; preds = %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i", %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.i"
  %.sroa.9.27.i = phi i64 [ %.sroa.9.8.copyload.i, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.i" ], [ %.sroa.9.0.i, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i" ] ; 2 uses
  %.sroa.15.06.i = phi i64 [ %i.cq, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.i" ], [ undef, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i" ] ; 2 uses
  %.sroa.17.05.i = phi ptr [ %.sroa.17.8.copyload.i, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.thread.i" ], [ undef, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$8root_dir17h8e34af2c2200f5b7E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %switch = icmp slt i64 %.sroa.9.27.i, -9223372036854775806
  br i1 %switch, label %.thread439, label %bb.br

.body:                                            ; preds = %bb.ft, %.body.i.i, %bb.i, %bb.bq, %.body290
  %.pn232 = phi { ptr, i32 } [ %.pn230, %.body290 ], [ %.pn49.i.i, %.body.i.i ], [ %i.cv, %bb.i ], [ %i.hb, %bb.bq ], [ %i.mh, %bb.ft ]
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE"(ptr noalias noundef align 8 dereferenceable(24) %i.at) #23
          to label %common.resume unwind label %bb.cl

bb.bq:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17hef3b87513c63fc25E.exit.i", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i.i.i", %bb.ca
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread439:                                       ; preds = %bb.bp, %bb.e
  store i64 -9223372036854775808, ptr %i.ar, align 8
  %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx436 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %3, ptr %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx436, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  store i64 %.sroa.9.27.i, ptr %i.ar, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.15.06.i, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.sroa.17.05.i, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx, align 8
  %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  store ptr %3, ptr %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244
  %i.hc = inttoptr i64 %.sroa.15.06.i to ptr
  %5 = ptrtoint ptr %.sroa.17.05.i to i64
  invoke void @_ZN3zip4path21simplified_components17h27fd197b012a31e2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hc, i64 noundef %5)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.hd = load i64, ptr %i.b, align 8, !range !160, !noalias !244, !noundef !4 ; 2 uses
  %.not.i245 = icmp eq i64 %i.hd, -9223372036854775808
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.517.0.copyload.i = load ptr, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !244
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244
  br i1 %.not.i245, label %bb.bu, label %bb.bv

.body290:                                         ; preds = %bb.fm, %bb.bt, %.thread472
  %.pn230 = phi { ptr, i32 } [ %.pn228, %.thread472 ], [ %i.he, %bb.bt ], [ %i.ma, %bb.fm ]
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE"(ptr noalias noundef align 8 dereferenceable(32) %i.ar) #23
          to label %.body unwind label %bb.cl

bb.bt:                                            ; preds = %"_ZN4core3ptr134drop_in_place$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$17h2cbe3f81bd585efdE.exit.i", %bb.br, %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hdf8921a4c953e072E.exit249"
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body290

bb.bu:                                            ; preds = %bb.bs
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %0, align 8
  %.sroa.2396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @5 to i64), ptr %.sroa.2396.0..sroa_idx, align 8
  %.sroa.3397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 21 to ptr), ptr %.sroa.3397.0..sroa_idx, align 8
  br label %"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE.exit"

bb.bv:                                            ; preds = %bb.bs, %.thread439
  %.sroa.739.sroa.7.0454.ph = phi ptr [ %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx, %bb.bs ], [ undef, %.thread439 ]
  %.sroa.739.sroa.6.0452.ph = phi i64 [ %.sroa.6.0.copyload.i, %bb.bs ], [ undef, %.thread439 ]
  %.sroa.739.sroa.0.0450.ph = phi ptr [ %.sroa.517.0.copyload.i, %bb.bs ], [ undef, %.thread439 ]
  %.sroa.032.0.ph = phi i64 [ %i.hd, %bb.bs ], [ -9223372036854775808, %.thread439 ]
  store i64 %.sroa.032.0.ph, ptr %i.aq, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.739.sroa.0.0450.ph, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.739.sroa.6.0452.ph, ptr %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, align 8
  %.sroa.450.sroa.5.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.sroa.739.sroa.7.0454.ph, ptr %.sroa.450.sroa.5.0..sroa.450.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 5 uses
  store i64 0, ptr %i.hg, align 8
  %i.hh = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hj = load i64, ptr %i.hi, align 8, !noundef !4 ; 2 uses
  %.not605 = icmp eq i64 %i.hj, 0
  br i1 %.not605, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bv
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ao, i64 208
  %i.hp = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph, %.backedge
  %i.hw = phi i64 [ 1, %.lr.ph ], [ %i.km, %.backedge ] ; 3 uses
  %.sroa.0151.0604 = phi i64 [ 0, %.lr.ph ], [ %i.hw, %.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke fastcc void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$31by_index_with_optional_password17h5deef39210dda19bE"(ptr noalias noundef align 8 captures(address) dereferenceable(240) %i.an, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %.sroa.0151.0604)
          to label %bb.cm unwind label %.thread476.loopexit

._crit_edge:                                      ; preds = %.backedge
  %.pre698 = load i64, ptr %i.hg, align 8         ; 4 uses
  %.pre701.pre = load ptr, ptr %i.hf, align 8     ; 2 uses
  %i.hx = icmp ult i64 %.pre698, 288230376151711744
  call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp samesign ugt i64 %.pre698, 1
  br i1 %i.hy, label %bb.bx, label %._crit_edge.thread

bb.bx:                                            ; preds = %._crit_edge
  invoke fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17hac8063175c31c964E"(ptr noalias noundef nonnull align 8 %.pre701.pre, i64 noundef %.pre698)
          to label %._crit_edge699 unwind label %.thread476.loopexit.split-lp

._crit_edge699:                                   ; preds = %bb.bx
  %.pre700 = load ptr, ptr %i.hf, align 8
  %.pre702 = load i64, ptr %i.hg, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.bv, %._crit_edge699, %._crit_edge
  %i.hz = phi i64 [ %.pre702, %._crit_edge699 ], [ %.pre698, %._crit_edge ], [ 0, %bb.bv ] ; 3 uses
  %i.ia = phi ptr [ %.pre700, %._crit_edge699 ], [ %.pre701.pre, %._crit_edge ], [ inttoptr (i64 8 to ptr), %bb.bv ] ; 4 uses
  %i.ib = load i64, ptr %i.ap, align 8, !range !171, !noundef !4
  %i.ic = icmp ult i64 %i.hz, 288230376151711744
  call void @llvm.assume(i1 %i.ic)
  %.idx = shl nuw nsw i64 %i.hz, 5
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ia, ptr %i.z, align 8
  %.sroa.2107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.ia, ptr %.sroa.2107.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ib, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.id, ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ie = icmp eq i64 %i.hz, 0
  br i1 %i.ie, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.lr.ph": ; preds = %._crit_edge.thread
  %.sroa.8.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit"

.thread476.loopexit:                              ; preds = %bb.bw, %bb.dz
  %lpad.loopexit516 = landingpad { ptr, i32 }
          cleanup
  br label %.thread468

.thread476.loopexit.split-lp:                     ; preds = %bb.bx, %bb.fj
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup
  br label %.thread468

bb.by:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.thread", %bb.cj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread472

.body250:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ch, %bb.cd
  %.pn = phi { ptr, i32 } [ %i.ii, %bb.cd ], [ %i.ij, %bb.ch ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2decdf941d08dbeE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.thread472 unwind label %bb.cl

.loopexit:                                        ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h48193bbc1e45c19aE.exit.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body250

.loopexit.split-lp:                               ; preds = %bb.cf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body250

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.lr.ph", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit"
  %i.if = phi ptr [ %i.ia, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.lr.ph" ], [ %i.im, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  store ptr %i.ig, ptr %.sroa.2107.0..sroa_idx, align 8, !alias.scope !248, !noalias !251
  %.sroa.0326.0.copyload = load i64, ptr %i.if, align 8, !noalias !248 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false), !noalias !248
  %.not202 = icmp eq i64 %.sroa.0326.0.copyload, -9223372036854775808
  br i1 %.not202, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.thread", label %bb.bz

bb.bz:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit"
  %.sroa.8329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %.sroa.8329.0.copyload = load i32, ptr %.sroa.8329.0..sroa_idx, align 8, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %.sroa.0326.0.copyload, ptr %i.y, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx328, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %i.ih = invoke noundef ptr @_ZN3std2fs15set_permissions17hdee267e4c233d6efE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i32 noundef %.sroa.8329.0.copyload)
          to label %bb.ce unwind label %bb.cd     ; 2 uses

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit", %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2decdf941d08dbeE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hdf8921a4c953e072E.exit249" unwind label %bb.by

"_ZN4core3ptr92drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hdf8921a4c953e072E.exit249": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdacc56f85841a366E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 -9223372036854775802, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke fastcc void @"_ZN4core3ptr162drop_in_place$LT$core..option..Option$LT$$LP$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$C$$RF$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17he2c6f3b8f715b88aE"(ptr noalias noundef align 8 dereferenceable(32) %i.aq)
          to label %bb.ca unwind label %bb.bt

bb.ca:                                            ; preds = %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$std..path..PathBuf$C$u32$RP$$GT$$GT$17hdf8921a4c953e072E.exit249"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$core..option..Option$LT$$LP$std..path..PathBuf$C$fn$LP$$RF$std..path..Path$RP$$u20$.$GT$$u20$bool$RP$$GT$$GT$17h2b09fa1b64e6cc5fE"(ptr noalias noundef align 8 dereferenceable(32) %i.ar)
          to label %bb.cb unwind label %bb.bq

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE"(ptr noalias noundef align 8 dereferenceable(24) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.cc

end_hunk_1
begin_hunk_2_@_ZN4core4iter6traits8iterator8Iterator5eq_by17h9abcc3eb802ff3efE:bb.a
  call void @"_ZN95_$LT$std..path..Components$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd62205b7ee03a4d5E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.ac = load i8, ptr %i.c, align 8, !range !202, !noalias !398, !noundef !4
  %.not5.i.not.i.i = icmp eq i8 %i.ac, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !398
  br label %"_ZN71_$LT$A$u20$as$u20$core..iter..traits..iterator..SpecIterEq$LT$B$GT$$GT$12spec_iter_eq17hcd681ef1ea019493E.exit"

"_ZN71_$LT$A$u20$as$u20$core..iter..traits..iterator..SpecIterEq$LT$B$GT$$GT$12spec_iter_eq17hcd681ef1ea019493E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hff2bd865024a34bfE.exit.thread.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.not5.i.not.i.i, %.loopexit.i.i.i ], [ false, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hff2bd865024a34bfE.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h8423ce01dc213477E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @9, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_ZN4core5error5Error5cause17h940630623faca6a6E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !173, !alias.scope !399, !noundef !4 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775807
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.c, ptr %i.d, ptr null
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @14, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he2582766a223411aE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h31c4d64832b1aa9aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @10, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h4f16c6280ec0246bE"(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #9 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit", label %bb.b

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit": ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i", %.lr.ph.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ false, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i" ], [ false, %.lr.ph.i ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %.not16.i = icmp eq i64 %3, 0
  br i1 %.not16.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit", label %.lr.ph.i

bb.c:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i"
  %i.a = add nuw i64 %.sroa.01.012.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.a, %3
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.01.012.i = phi i64 [ %i.a, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.012.i ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.012.i ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !402, !noalias !405, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val8.i = load i64, ptr %i.e, align 8, !alias.scope !405, !noalias !402, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %.val6.i, %.val8.i
  br i1 %.not.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit"

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i": ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.c, align 8, !alias.scope !405, !noalias !402, !nonnull !4, !align !93, !noundef !4
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !402, !noalias !405, !nonnull !4, !align !93, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i, i64 %.val6.i), !alias.scope !407, !noalias !414
  %.not10.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not10.i, label %bb.c, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit"
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, i64 } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12strip_prefix17h143b456eae7dab96E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #9 {
bb.a:
  %.not = icmp ugt i64 %3, %1
  br i1 %.not, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit", label %.preheader.split.i

.preheader.split.i:                               ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  %i.b = sub nuw i64 %1, %3                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %.not16.i = icmp eq i64 %3, 0
  br i1 %.not16.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit", label %.lr.ph.i

bb.b:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i"
  %i.c = add nuw i64 %.sroa.01.012.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.c, %3
  br i1 %exitcond.not.i, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.i, %bb.b
  %.sroa.01.012.i = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader.split.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.012.i ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.012.i ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val6.i = load i64, ptr %i.f, align 8, !alias.scope !415, !noalias !418, !noundef !4 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %.val8.i = load i64, ptr %i.g, align 8, !alias.scope !418, !noalias !415, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %.val6.i, %.val8.i
  br i1 %.not.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i", label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit"

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i": ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.e, align 8, !alias.scope !418, !noalias !415, !nonnull !4, !align !93, !noundef !4
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !415, !noalias !418, !nonnull !4, !align !93, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val7.i, i64 %.val6.i), !alias.scope !420, !noalias !427
  %.not10.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not10.i, label %bb.b, label %"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit"

"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h1f27819fb2b595a2E.exit": ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i", %.lr.ph.i, %bb.b, %.preheader.split.i, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.b, %.preheader.split.i ], [ %i.b, %bb.b ], [ undef, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i" ], [ undef, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.a, %.preheader.split.i ], [ %i.a, %bb.b ], [ null, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hf5f2aa1de4cebb6aE.exit.i" ], [ null, %.lr.ph.i ]
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17hac8063175c31c964E"(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 2, 288230376151711744) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !428
  %i.c = icmp samesign ult i64 %1, 21
  br i1 %i.c, label %bb.c, label %bb.b, !prof !432

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core5slice4sort6stable14driftsort_main17ha7bbe88b8b85150aE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 2, 288230376151711744) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5alloc5slice11stable_sort17he819f44648a5150eE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h109a5d59e205386bE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 2, 288230376151711744) %1, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5alloc5slice11stable_sort17he819f44648a5150eE.exit

_ZN5alloc5slice11stable_sort17he819f44648a5150eE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6flate27deflate7bufread18reset_decoder_data17h9c29b393ebe16a5aE(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN6flate23mem10Decompress3new17hfd035e93b43dc840E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  invoke void @"_ZN73_$LT$flate2..ffi..c..Stream$LT$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5158831b507037fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h770672ba20a78dbaE.exit.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN71_$LT$flate2..ffi..c..StreamWrapper$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebfeec76f7a6fbefE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h770672ba20a78dbaE.exit.i": ; preds = %bb.a
  invoke void @"_ZN71_$LT$flate2..ffi..c..StreamWrapper$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebfeec76f7a6fbefE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h8895096026f1df4fE.exit" unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h770672ba20a78dbaE.exit.i"
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h8895096026f1df4fE.exit": ; preds = %"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h770672ba20a78dbaE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN6flate27deflate7bufread23DeflateDecoder$LT$R$GT$3new17h4ff9c497812916eeE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN6flate23mem10Decompress3new17hfd035e93b43dc840E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.c, label %"_ZN4core3ptr74drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$17hd76e20288142a62dE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %.sroa.5.0.copyload, i64 noundef 1) #25
  br label %"_ZN4core3ptr74drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$17hd76e20288142a62dE.exit"

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr74drop_in_place$LT$flate2..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$17hd76e20288142a62dE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN6flate27deflate7bufread23DeflateDecoder$LT$R$GT$3new17haf6fef7cfb8665a9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN6flate23mem10Decompress3new17hfd035e93b43dc840E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.c, label %"_ZN4core3ptr112drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$zip..read..CryptoReader$LT$std..fs..File$GT$$GT$$GT$17h7051a7ae860aef78E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.5.0.copyload, i64 noundef 1) #25
  br label %"_ZN4core3ptr112drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$zip..read..CryptoReader$LT$std..fs..File$GT$$GT$$GT$17h7051a7ae860aef78E.exit"

bb.d:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr112drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$zip..read..CryptoReader$LT$std..fs..File$GT$$GT$$GT$17h7051a7ae860aef78E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6runner5paths18absolute_msys_path17h4ae20caaaf110d55E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN6camino8Utf8Path17canonicalize_utf817h032612df4ba99de5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.d = load i64, ptr %i.b, align 8, !range !160, !alias.scope !436, !noalias !433, !noundef !4
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2fca06b838263f35E.exit", !prof !161

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !438
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !436, !noalias !433, !nonnull !4, !noundef !4
  store ptr %i.g, ptr %i.a, align 8, !noalias !438
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %bb.d unwind label %bb.c, !noalias !438

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #23
          to label %bb.f unwind label %bb.e, !noalias !438

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !438
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2fca06b838263f35E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !alias.scope !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN6camino11Utf8PathBuf11into_string17hc4a010c3e4baf0b1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN79_$LT$std..ffi..os_str..OsString$u20$as$u20$core..convert..From$LT$$RF$T$GT$$GT$4from17h7093794fcf4d2cefE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !439, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !noalias !439, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !442
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h70eece5d17de217aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val1.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !442
  %i.d = load i64, ptr %i.a, align 8, !range !126, !noalias !442, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !160, !noalias !442, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN122_$LT$T$u20$as$u20$$LT$std..ffi..os_str..OsString$u20$as$u20$core..convert..From$LT$$RF$T$GT$$GT$..from..SpecToOsString$GT$17spec_to_os_string17h24f8e5a3f2e02593E.exit", !prof !161

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !442
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #24, !noalias !442
  unreachable

"_ZN122_$LT$T$u20$as$u20$$LT$std..ffi..os_str..OsString$u20$as$u20$core..convert..From$LT$$RF$T$GT$$GT$..from..SpecToOsString$GT$17spec_to_os_string17h24f8e5a3f2e02593E.exit": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !442, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = icmp ule i64 %.val1.i.i, %i.g
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !442
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !446
  store i64 %i.g, ptr %0, align 8, !alias.scope !439
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !439
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !439
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN83_$LT$flate2..deflate..bufread..DeflateDecoder$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h2cb572495a9fafd7E"(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call { i64, ptr } @_ZN6flate23zio4read17h2635e8b76b2e4850E(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 1 %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @"_ZN96_$LT$core..hint..select_unpredictable..DropOnPanic$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7d5690349623b19E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h73fd1dbb11db2a67E"(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h76c0b2d038051fc4E"(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN5alloc6string6String11try_reserve17h33b75a7bf8f7e87bE(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @"_ZN3tar7archive36Archive$LT$dyn$u20$std..io..Read$GT$7_unpack17h7089d3988a1829a2E"(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17hb97dd089350561d0E"(ptr noalias noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3zip4spec22find_central_directory17h4bf27d37b03deb4bE(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN120_$LT$zip..read..CentralDirectoryInfo$u20$as$u20$core..convert..TryFrom$LT$$RF$zip..spec..CentralDirectoryEndInfo$GT$$GT$8try_from17h9590e4aba9c4bf87E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3zip4read11zip_archive13SharedBuilder5build17h3af84b1882f2a69aE(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noalias noundef nonnull align 1, i64 noundef, ptr noalias noundef align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2fs14create_dir_all17h094f8f8b40d89653E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs12canonicalize17hebf5567f45739b43E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0
end_hunk_2
