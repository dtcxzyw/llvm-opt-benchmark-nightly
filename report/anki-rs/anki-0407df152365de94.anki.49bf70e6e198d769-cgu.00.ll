Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki7dbcheck46_$LT$impl$u20$anki..collection..Collection$GT$16recover_notetype17h71c12eb2fca42c0aE":bb.a
bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 712
  call void @_ZN4anki8notetype5stock19all_stock_notetypes17h28b3c2e86db6500dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cr)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17had9896ec005460daE"(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E"(ptr noalias noundef align 8 dereferenceable(24) %i.u) #27
          to label %.critedge119 unwind label %bb.bi

bb.s:                                             ; preds = %bb.q
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62a3cebbd3ceb12cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body120.thread unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit" unwind label %.loopexit.split-lp204.thread

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

.body120:                                         ; preds = %.body128
  br i1 %.sroa.041.2, label %.body120.thread, label %.critedge119

.body120.thread216:                               ; preds = %bb.w, %bb.bj
  %lpad.loopexit205 = landingpad { ptr, i32 }
          cleanup
  br label %.body120.thread

.loopexit.split-lp204.thread:                     ; preds = %bb.ac, %bb.ab, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i150", %bb.u, %._crit_edge
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body120.thread

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit": ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 200 ; 2 uses
  store i32 3, ptr %i.t, align 4
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !3 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, 64051194700380388
  call void @llvm.assume(i1 %i.cx)
  %i.cy = load i64, ptr %i.ag, align 8, !noundef !3
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit"
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.w

._crit_edge:                                      ; preds = %bb.bk, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.ah, ptr %i.p, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN71_$LT$anki..timestamp..TimestampMillis$u20$as$u20$core..fmt..Display$GT$3fmt17ha8a94aca0b470f59E", ptr %.sroa.479.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ag, ptr %i.da, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8322
  store ptr @259, ptr %i.c, align 8, !noalias !8323
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.4161.0..sroa_idx, align 8, !noalias !8323
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.p, ptr %.sroa.5162.0..sroa_idx, align 8, !noalias !8323
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.6163.0..sroa_idx, align 8, !noalias !8323
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7164.0..sroa_idx, align 8, !noalias !8323
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.x unwind label %.loopexit.split-lp204.thread

bb.w:                                             ; preds = %.lr.ph, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hf9cd6342de4889e1E", ptr %.sroa.475.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8324
  store ptr @86, ptr %i.b, align 8, !noalias !8325
  store i64 1, ptr %.sroa.4.0..sroa_idx158, align 8, !noalias !8325
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx159, align 8, !noalias !8325
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !8325
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !8325
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.bj unwind label %.body120.thread216

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 160 ; 5 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %.thread187 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.x
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.aa

bb.aa:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.thread187

.thread187:                                       ; preds = %bb.aa, %bb.y
  %eh.lpad-body124 = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %i.dc, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br label %.body120.thread

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 208 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.v, i64 216 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 224 ; 4 uses
  %i.di = load i64, ptr %i.dh, align 8, !noundef !3
  %.not111 = icmp eq i64 %i.di, 0
  br i1 %.not111, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  %i.dj = load ptr, ptr %i.dg, align 8, !nonnull !3, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk)
          to label %bb.ae unwind label %.loopexit.split-lp204.thread

bb.ac:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #26
          to label %bb.ad unwind label %.loopexit.split-lp204.thread

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dl = load i64, ptr %i.dh, align 8, !noundef !3
  %.not112 = icmp eq i64 %i.dl, 0
  br i1 %.not112, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %i.dg, align 8, !nonnull !3, !noundef !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn)
          to label %.preheader unwind label %bb.ah

.preheader:                                       ; preds = %bb.af
  %.not = icmp eq i16 %i.bw, 0
  br i1 %.not, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #26
          to label %bb.ad unwind label %bb.ah

.body128:                                         ; preds = %bb.av, %bb.al, %bb.ah, %.body
  %.sroa.041.2 = phi i1 [ %.sroa.041.4.lpad-body, %.body ], [ true, %bb.al ], [ %.sroa.041.3, %bb.ah ], [ false, %bb.av ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ds, %bb.al ], [ %i.do, %bb.ah ], [ %i.ef, %bb.av ] ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #27
          to label %.body120 unwind label %bb.bi

bb.ah:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i136", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i127", %bb.ag, %bb.af
  %.sroa.041.3 = phi i1 [ true, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i127" ], [ false, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i136" ], [ true, %bb.af ], [ true, %bb.ag ]
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body128

bb.ai:                                            ; preds = %.lr.ph209, %bb.bh
  %.sroa.084.0208 = phi i16 [ 1, %.lr.ph209 ], [ %i.et, %bb.bh ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dp = add i16 %.sroa.084.0208, 1
  store i16 %i.dp, ptr %i.l, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17h9c3ab772d7f4490aE", ptr %.sroa.489.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8326
  store ptr @263, ptr %i.a, align 8, !noalias !8327
  store i64 1, ptr %.sroa.4167.0..sroa_idx, align 8, !noalias !8327
  store ptr %i.k, ptr %.sroa.5168.0..sroa_idx, align 8, !noalias !8327
  store i64 1, ptr %.sroa.6169.0..sroa_idx, align 8, !noalias !8327
  store ptr null, ptr %.sroa.7170.0..sroa_idx, align 8, !noalias !8327
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.bc unwind label %.loopexit

._crit_edge210:                                   ; preds = %bb.bh, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN4anki8notetype46_$LT$impl$u20$anki..collection..Collection$GT$12add_notetype17he05d1aa9a628d797E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v, i1 noundef zeroext true)
          to label %bb.aj unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.bc, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge210, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bf, %bb.as, %bb.ap
  %.sroa.041.4.lpad-body = phi i1 [ true, %bb.ap ], [ true, %bb.bf ], [ false, %bb.as ], [ true, %.loopexit.split-lp ], [ true, %.loopexit ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.dw, %bb.ap ], [ %i.eo, %bb.bf ], [ %i.ec, %bb.as ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #27
          to label %.body128 unwind label %bb.bi

bb.aj:                                            ; preds = %._crit_edge210
  %i.dq = load i64, ptr %i.i, align 8, !range !13, !noundef !3 ; 2 uses
  %.not113 = icmp eq i64 %i.dq, -9223372036854775773
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.734, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 32, i1 false)
  br i1 %.not113, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.398.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.595.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.297.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.734, i64 32, i1 false)
  store i64 %i.dq, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i127" unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body128 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i127": ; preds = %bb.ak
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit130" unwind label %bb.ah

bb.an:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.734, i64 32, i1 false)
  %i.du = load i64, ptr %i.j, align 8, !range !14, !alias.scope !8328, !noundef !3
  %i.dv = icmp sgt i64 %i.du, -1
  br i1 %i.dv, label %bb.ao, label %"_ZN4core3ptr56drop_in_place$LT$anki..ops..OpOutput$LT$$LP$$RP$$GT$$GT$17h6ab66dd61f56406aE.exit"

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.body unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN4core3ptr56drop_in_place$LT$anki..ops..OpOutput$LT$$LP$$RP$$GT$$GT$17h6ab66dd61f56406aE.exit" unwind label %.loopexit.split-lp

"_ZN4core3ptr56drop_in_place$LT$anki..ops..OpOutput$LT$$LP$$RP$$GT$$GT$17h6ab66dd61f56406aE.exit": ; preds = %bb.an, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.734)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.dy, ptr noundef nonnull align 8 dereferenceable(256) %i.v, i64 256, i1 false)
  store i64 1, ptr %i.g, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.dz, align 8
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !8329
  %i.ea = call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 272, i64 noundef 8) #29, !noalias !8329 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ar, label %bb.au, !prof !9

bb.ar:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..ops..OpOutput$LT$$LP$$RP$$GT$$GT$17h6ab66dd61f56406aE.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 272) #26
          to label %.noexc133 unwind label %bb.as

.noexc133:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.dy)
          to label %.body unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.au:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$anki..ops..OpOutput$LT$$LP$$RP$$GT$$GT$17h6ab66dd61f56406aE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ea, ptr noundef nonnull align 8 dereferenceable(272) %i.g, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.ee, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i136" unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body128 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i136": ; preds = %bb.au
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit141" unwind label %bb.ah

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit141": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i136"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i143" unwind label %bb.ax

bb.ax:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit141"
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.critedge119 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i143": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit141"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.az

bb.az:                                            ; preds = %bb.p, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit155", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i143"
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit130": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i127"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i150" unwind label %bb.ba

bb.ba:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit130"
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body120.thread unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i150": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit130"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit155" unwind label %.loopexit.split-lp204.thread

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit155": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i150"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$anki..notetype..Notetype$GT$17hbe5cacac5c4af801E"(ptr noalias noundef align 8 dereferenceable(256) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.az

bb.bc:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_ZN4anki8notetype9templates12CardTemplate3new17hc6c8bbe9ed4a338aE(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.bd unwind label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.el = load i64, ptr %i.dh, align 8, !alias.scope !8330, !noalias !8331, !noundef !3 ; 3 uses
  %i.em = load i64, ptr %i.df, align 8, !range !11, !alias.scope !8330, !noalias !8331, !noundef !3
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h006b6df069b2370eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.bh unwind label %bb.bf, !noalias !8331

bb.bf:                                            ; preds = %bb.be
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$anki..notetype..templates..CardTemplate$GT$17h2ba422b3fca57af5E"(ptr noalias noundef nonnull align 8 dereferenceable(224) %i.h) #27
          to label %.body unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.eq = load ptr, ptr %i.dg, align 8, !alias.scope !8330, !noalias !8331, !nonnull !3, !noundef !3
  %i.er = getelementptr inbounds nuw [224 x i8], ptr %i.eq, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.er, ptr noundef nonnull align 8 dereferenceable(224) %i.h, i64 224, i1 false)
  %i.es = add i64 %i.el, 1
  store i64 %i.es, ptr %i.dh, align 8, !alias.scope !8330, !noalias !8331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.et = add i16 %.sroa.084.0208, 1
  %exitcond.not = icmp eq i16 %.sroa.084.0208, %i.bw
  br i1 %exitcond.not, label %._crit_edge210, label %bb.ai

bb.bi:                                            ; preds = %.critedge, %bb.bl, %.thread195, %.body120.thread, %.body, %.body128, %bb.r
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.bj:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ev = invoke noundef align 8 dereferenceable(112) ptr @_ZN4anki8notetype8Notetype9add_field17hedf904b95558437dE(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.bk unwind label %.body120.thread216 ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.ew = load i32, ptr %i.t, align 4, !noundef !3
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.t, align 4
  %i.ey = load i64, ptr %i.cv, align 8, !noundef !3 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, 64051194700380388
  call void @llvm.assume(i1 %i.ez)
  %i.fa = load i64, ptr %i.ag, align 8, !noundef !3
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.w, label %._crit_edge

.body120.thread:                                  ; preds = %.loopexit.split-lp204.thread, %.body120.thread216, %bb.ba, %bb.t, %.thread187, %.body120
  %.pn116191 = phi { ptr, i32 } [ %eh.lpad-body124, %.thread187 ], [ %.pn, %.body120 ], [ %i.ej, %bb.ba ], [ %i.ct, %bb.t ], [ %lpad.loopexit205, %.body120.thread216 ], [ %lpad.thr_comm, %.loopexit.split-lp204.thread ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fc) #27
          to label %.thread195 unwind label %bb.bi

.thread195:                                       ; preds = %.body120.thread
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..fields..NoteField$GT$$GT$17h6c89437bcd91e9abE"(ptr noalias noundef align 8 dereferenceable(24) %i.fd) #27
          to label %bb.bl unwind label %bb.bi

bb.bl:                                            ; preds = %.thread195
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..templates..CardTemplate$GT$$GT$17h4381881b26947ff0E"(ptr noalias noundef align 8 dereferenceable(24) %i.fe) #27
          to label %.critedge unwind label %bb.bi

.critedge119:                                     ; preds = %bb.ax, %.body120, %.critedge, %bb.r
  %.pn116.pn = phi { ptr, i32 } [ %.pn116191, %.critedge ], [ %.pn, %.body120 ], [ %i.cs, %bb.r ], [ %i.eh, %bb.ax ]
  resume { ptr, i32 } %.pn116.pn

.critedge:                                        ; preds = %bb.bl
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$anki_proto..notetypes..notetype..Config$GT$17h5ddb95b06de60d1dE"(ptr noalias noundef align 8 dereferenceable(160) %i.v) #27
          to label %.critedge119 unwind label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki7dbcheck46_$LT$impl$u20$anki..collection..Collection$GT$20check_database_inner17ha18914514421284eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.6.i.i.sroa.8 = alloca [96 x i8], align 8 ; 6 uses
  %.sroa.414.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.g = alloca [136 x i8], align 8               ; 8 uses
  %i.h = alloca [112 x i8], align 8               ; 7 uses
  %i.i = alloca [112 x i8], align 8               ; 9 uses
  %i.j = alloca [136 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [112 x i8], align 8               ; 7 uses
  %i.p = alloca [112 x i8], align 8               ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [256 x i8], align 8               ; 8 uses
  %i.s = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.8.i.sroa.8 = alloca [16 x i8], align 8   ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [112 x i8], align 8               ; 7 uses
  %i.v = alloca [112 x i8], align 8               ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8499.i = alloca [96 x i8], align 8       ; 5 uses
  %i.x = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.7128.i.sroa.7 = alloca [16 x i8], align 8 ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 11 uses
  %i.z = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.7495.i.sroa.12 = alloca [96 x i8], align 8 ; 10 uses
  %.sroa.7495.i.sroa.14 = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.7119.i.sroa.8 = alloca [96 x i8], align 8 ; 7 uses
  %i.aa = alloca [136 x i8], align 8              ; 17 uses
  %i.ab = alloca [112 x i8], align 8              ; 7 uses
  %i.ac = alloca [64 x i8], align 8               ; 13 uses
  %i.ad = alloca [56 x i8], align 8               ; 10 uses
  %i.ae = alloca [112 x i8], align 8              ; 7 uses
  %i.af = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.786.i.sroa.7 = alloca [96 x i8], align 8 ; 7 uses
  %.sroa.494.i = alloca [16 x i8], align 8        ; 6 uses
  %i.ag = alloca [136 x i8], align 8              ; 8 uses
  %i.ah = alloca [136 x i8], align 8              ; 12 uses
  %i.ai = alloca [112 x i8], align 8              ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 16 uses
  %i.ak = alloca [64 x i8], align 8               ; 14 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 9 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [40 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [40 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 9 uses
  %i.ay = alloca [48 x i8], align 8               ; 7 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [152 x i8], align 8              ; 8 uses
  %i.bc = alloca [112 x i8], align 8              ; 7 uses
  %i.bd = alloca [112 x i8], align 8              ; 8 uses
  %i.be = alloca [112 x i8], align 8              ; 7 uses
  %i.bf = alloca [112 x i8], align 8              ; 8 uses
  %.sroa.717.i.sroa.7 = alloca [16 x i8], align 8 ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 12 uses
  %i.bh = alloca [112 x i8], align 8              ; 8 uses
  %i.bi = alloca [112 x i8], align 8              ; 8 uses
  %.sroa.7.i.sroa.7 = alloca [16 x i8], align 8   ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 12 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [112 x i8], align 8              ; 10 uses
  %i.bm = alloca [112 x i8], align 8              ; 10 uses
  %i.bn = alloca [112 x i8], align 8              ; 9 uses
  %.sroa.628.i.sroa.9 = alloca [80 x i8], align 8 ; 7 uses
  %.sroa.434.i = alloca [32 x i8], align 8        ; 6 uses
  %i.bo = alloca [152 x i8], align 8              ; 10 uses
  %i.bp = alloca [152 x i8], align 8              ; 14 uses
  %i.bq = alloca [8 x i8], align 8                ; 6 uses
  %i.br = alloca [32 x i8], align 8               ; 10 uses
  %i.bs = alloca [112 x i8], align 8              ; 9 uses
  %i.bt = alloca [112 x i8], align 8              ; 10 uses
  %.sroa.6.i.sroa.9 = alloca [24 x i8], align 8   ; 6 uses
  %i.bu = alloca [48 x i8], align 8               ; 13 uses
  %i.bv = alloca [48 x i8], align 8               ; 8 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 5 uses
  %i.by = alloca [192 x i8], align 8              ; 13 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [112 x i8], align 8              ; 9 uses
  %i.cb = alloca [32 x i8], align 8               ; 10 uses
  %i.cc = alloca [112 x i8], align 8              ; 9 uses
  %i.cd = alloca [112 x i8], align 8              ; 10 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [112 x i8], align 8              ; 9 uses
  %i.cg = alloca [112 x i8], align 8              ; 10 uses
  %i.ch = alloca [112 x i8], align 8              ; 7 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [112 x i8], align 8              ; 10 uses
  %i.cm = alloca [112 x i8], align 8              ; 7 uses
  %i.cn = alloca [112 x i8], align 8              ; 11 uses
  %i.co = alloca [112 x i8], align 8              ; 10 uses
  %i.cp = alloca [112 x i8], align 8              ; 10 uses
  %i.cq = alloca [112 x i8], align 8              ; 10 uses
  %i.cr = alloca [24 x i8], align 8               ; 4 uses
  %i.cs = alloca [24 x i8], align 8               ; 4 uses
  %i.ct = alloca [24 x i8], align 8               ; 4 uses
  %i.cu = alloca [24 x i8], align 8               ; 4 uses
  %i.cv = alloca [24 x i8], align 8               ; 4 uses
  %i.cw = alloca [24 x i8], align 8               ; 4 uses
  %i.cx = alloca [24 x i8], align 8               ; 4 uses
  %i.cy = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.8 = alloca [96 x i8], align 8            ; 4 uses
  %.sroa.18 = alloca [80 x i8], align 8           ; 5 uses
  %i.cz = alloca [24 x i8], align 8               ; 4 uses
  %i.da = alloca [16 x i8], align 8               ; 5 uses
  %i.db = alloca [48 x i8], align 8               ; 9 uses
  %i.dc = alloca [40 x i8], align 8               ; 6 uses
  %i.dd = alloca [24 x i8], align 8               ; 6 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [24 x i8], align 8               ; 5 uses
  %i.dg = alloca [16 x i8], align 8               ; 5 uses
  %i.dh = alloca [48 x i8], align 8               ; 9 uses
  %i.di = alloca [40 x i8], align 8               ; 6 uses
  %i.dj = alloca [24 x i8], align 8               ; 6 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [112 x i8], align 8              ; 7 uses
  %i.dm = alloca [48 x i8], align 8               ; 8 uses
  %i.dn = alloca [40 x i8], align 8               ; 6 uses
  %i.do = alloca [24 x i8], align 8               ; 6 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [24 x i8], align 8               ; 5 uses
  %i.dr = alloca [48 x i8], align 8               ; 8 uses
  %i.ds = alloca [40 x i8], align 8               ; 6 uses
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [112 x i8], align 8              ; 6 uses
  %i.dw = alloca [112 x i8], align 8              ; 6 uses
  %i.dx = alloca [48 x i8], align 8               ; 8 uses
  %i.dy = alloca [40 x i8], align 8               ; 6 uses
  %i.dz = alloca [24 x i8], align 8               ; 6 uses
end_hunk_0
