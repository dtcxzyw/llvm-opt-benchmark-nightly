Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5377
inline.NumDeleted: 2914
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4anki8notetype6render17fill_empty_fields17h518ffb4c0a43758aE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body17 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.s
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.t, %bb.v
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %i.bv, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.w:                                             ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i21" unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body22 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i21": ; preds = %bb.w
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit25" unwind label %bb.z

bb.z:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i21"
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.body22:                                          ; preds = %bb.x, %bb.z
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.ca, %bb.z ], [ %i.by, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit25": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i21"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.l

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ac, %"_ZN4core3ptr72drop_in_place$LT$std..collections..hash..set..HashSet$LT$$RF$str$GT$$GT$17h22840148ad69290aE.exit"
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.ab:                                            ; preds = %bb.ac, %.body
  resume { ptr, i32 } %.pn.pn.pn

bb.ac:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..result..Result$LT$anki..template..ParsedTemplate$C$anki..error..TemplateError$GT$$GT$17hdf06b7ecf6cc4debE"(ptr noalias noundef align 8 dereferenceable(56) %i.k) #41
          to label %bb.ab unwind label %bb.aa

.thread:                                          ; preds = %bb.a, %bb.b
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$core..result..Result$LT$anki..template..ParsedTemplate$C$anki..error..TemplateError$GT$$GT$17hdf06b7ecf6cc4debE"(ptr noalias noundef align 8 dereferenceable(56) %i.k)
  br label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki8notetype6render9flag_name17h3a029b528a1ff5b7E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h71af0f1b11b0c758E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5286
  store ptr @201, ptr %i.a, align 8, !noalias !5287
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5287
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5287
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !5287
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5287
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki8notetype7service113_$LT$impl$u20$core..convert..From$LT$anki_proto..notetypes..Notetype$GT$$u20$for$u20$anki..notetype..Notetype$GT$4from17h45eccd36e3274886E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.16 = alloca [3 x i8], align 1            ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = load <2 x i64>, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.j = load i32, ptr %i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.01.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.l = icmp ult i64 %.sroa.3.0.copyload, 64051194700380388
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  %i.n = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.n)
  store ptr %.sroa.2.0.copyload, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h89cb10ac1c3b9637E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.sroa.044.0 = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.o, %bb.c ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #41
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.06.0.copyload = load i64, ptr %i.p, align 8 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.38.0.copyload = load i64, ptr %.sroa.38.0..sroa_idx, align 8 ; 2 uses
  %i.q = icmp ult i64 %.sroa.38.0.copyload, 41175768021673107
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [224 x i8], ptr %.sroa.27.0.copyload, i64 %.sroa.38.0.copyload
  %i.s = icmp sgt i64 %.sroa.06.0.copyload, -1
  call void @llvm.assume(i1 %i.s)
  store ptr %.sroa.27.0.copyload, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.27.0.copyload, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.06.0.copyload, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.r, ptr %.sroa.65.0..sroa_idx, align 8
  invoke void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h290a68003332da44E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..fields..NoteField$GT$$GT$17h6c89437bcd91e9abE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #41
          to label %bb.b unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %.sroa.031.0.copyload = load i64, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.031.0.copyload, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.1643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 157
  %.sroa.1542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 156
  %.sroa.1542.0.copyload = load i8, ptr %.sroa.1542.0..sroa_idx, align 4
  %.sroa.1441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.1441.0.copyload = load i32, ptr %.sroa.1441.0..sroa_idx, align 8
  %.sroa.1239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load <2 x i32>, ptr %.sroa.1239.0..sroa_idx, align 8
  %.sroa.1037.sroa.5.0..sroa.1037.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load <2 x i64>, ptr %.sroa.1037.sroa.5.0..sroa.1037.0..sroa_idx.sroa_idx, align 8
  %.sroa.1037.sroa.4.0..sroa.1037.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.1037.sroa.4.0.copyload = load ptr, ptr %.sroa.1037.sroa.4.0..sroa.1037.0..sroa_idx.sroa_idx, align 8
  %.sroa.936.sroa.5.0..sroa.936.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load <2 x i64>, ptr %.sroa.936.sroa.5.0..sroa.936.0..sroa_idx.sroa_idx, align 8
  %.sroa.936.sroa.4.0..sroa.936.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.936.sroa.4.0.copyload = load ptr, ptr %.sroa.936.sroa.4.0..sroa.936.0..sroa_idx.sroa_idx, align 8
  %.sroa.835.sroa.5.0..sroa.835.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load <2 x i64>, ptr %.sroa.835.sroa.5.0..sroa.835.0..sroa_idx.sroa_idx, align 8
  %.sroa.835.sroa.4.0..sroa.835.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.835.sroa.4.0.copyload = load ptr, ptr %.sroa.835.sroa.4.0..sroa.835.0..sroa_idx.sroa_idx, align 8
  %.sroa.734.sroa.5.0..sroa.734.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load <2 x i64>, ptr %.sroa.734.sroa.5.0..sroa.734.0..sroa_idx.sroa_idx, align 8
  %.sroa.734.sroa.4.0..sroa.734.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.734.sroa.4.0.copyload = load ptr, ptr %.sroa.734.sroa.4.0..sroa.734.0..sroa_idx.sroa_idx, align 8
  %.sroa.633.sroa.5.0..sroa.633.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load <2 x i64>, ptr %.sroa.633.sroa.5.0..sroa.633.0..sroa_idx.sroa_idx, align 8
  %.sroa.633.sroa.4.0..sroa.633.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.633.sroa.4.0.copyload = load ptr, ptr %.sroa.633.sroa.4.0..sroa.633.0..sroa_idx.sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.633.sroa.0.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8
  %i.aa = load <2 x i64>, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1643.0..sroa_idx, i64 3, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.10.sroa.5.0 = phi ptr [ %.sroa.1037.sroa.4.0.copyload, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %.sroa.8.sroa.5.0 = phi ptr [ %.sroa.835.sroa.4.0.copyload, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %.sroa.9.sroa.5.0 = phi ptr [ %.sroa.936.sroa.4.0.copyload, %bb.g ], [ inttoptr (i64 8 to ptr), %bb.f ]
  %.sroa.15.0 = phi i8 [ %.sroa.1542.0.copyload, %bb.g ], [ 0, %bb.f ]
  %.sroa.14.0 = phi i32 [ %.sroa.1441.0.copyload, %bb.g ], [ 0, %bb.f ]
  %.sroa.7.sroa.5.0 = phi ptr [ %.sroa.734.sroa.4.0.copyload, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %.sroa.614.sroa.0.0 = phi i64 [ %.sroa.633.sroa.0.0.copyload, %bb.g ], [ 0, %bb.f ]
  %.sroa.614.sroa.5.0 = phi ptr [ %.sroa.633.sroa.4.0.copyload, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %i.ab = phi <2 x i32> [ %i.u, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ac = phi <2 x i64> [ %i.aa, %bb.g ], [ <i64 0, i64 undef>, %bb.f ]
  %i.ad = phi <2 x i64> [ %i.z, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ae = phi <2 x i64> [ %i.y, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.af = phi <2 x i64> [ %i.x, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ag = phi <2 x i64> [ %i.w, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ah = phi <2 x i64> [ %i.v, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store <2 x i64> %i.h, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.j, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store <2 x i64> %i.ac, ptr %0, align 8
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.614.sroa.0.0, ptr %.sroa.511.0..sroa_idx12, align 8
  %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.614.sroa.5.0, ptr %.sroa.614.sroa.5.0..sroa.614.0..sroa_idx15.sroa_idx, align 8
  %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx15.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.ad, ptr %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx15.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx16.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.7.sroa.5.0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx16.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx16.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.ae, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx16.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.8.sroa.5.0, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx17.sroa_idx, align 8
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.af, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx17.sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx18.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.9.sroa.5.0, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx18.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx18.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i64> %i.ag, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx18.sroa_idx, align 8
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.10.sroa.5.0, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx19.sroa_idx, align 8
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.ah, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx19.sroa_idx, align 8
  %.sroa.12.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i32> %i.ab, ptr %.sroa.12.0..sroa_idx22, align 8
  %.sroa.14.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx26, align 8
  %.sroa.15.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx28, align 4
  %.sroa.16.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.0..sroa_idx30, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.i:                                             ; preds = %bb.k, %bb.m, %bb.e, %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %1, align 8, !range !8, !alias.scope !5291, !noundef !4
  %i.ap = icmp eq i64 %i.ao, 2
  br i1 %i.ap, label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$anki_proto..notetypes..notetype..Config$GT$$GT$17ha82668b7f26c820bE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$anki_proto..notetypes..notetype..Config$GT$17h5ddb95b06de60d1dE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %1)
          to label %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$anki_proto..notetypes..notetype..Config$GT$$GT$17ha82668b7f26c820bE.exit" unwind label %bb.i

"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$anki_proto..notetypes..notetype..Config$GT$$GT$17ha82668b7f26c820bE.exit": ; preds = %bb.j, %bb.k
  br i1 %.sroa.044.0, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$anki_proto..notetypes..notetype..Config$GT$$GT$17ha82668b7f26c820bE.exit"
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$anki_proto..notetypes..notetype..Config$GT$$GT$17ha82668b7f26c820bE.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..notetypes..notetype..Template$GT$$GT$17h4333519fa8cfa7d9E"(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #41
          to label %bb.l unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki8notetype7service153_$LT$impl$u20$core..convert..From$LT$anki_proto..notetypes..ChangeNotetypeRequest$GT$$u20$for$u20$anki..notetype..notetypechange..ChangeNotetypeInput$GT$4from17he27f52ac79416a49E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.53 = alloca [16 x i8], align 8           ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @"_ZN74_$LT$alloc..vec..Vec$LT$i64$GT$$u20$as$u20$anki..types..IntoNewtypeVec$GT$12into_newtype17h3d83c4cea9afb89aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load <2 x i64>, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !15, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %i.r, 2305843009213693952
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.r
  store ptr %i.o, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h3557a46b2bc8a23fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.body, %bb.d
  %.sroa.011.1 = phi i1 [ false, %.body ], [ true, %bb.d ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.u, %bb.d ] ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #41
          to label %bb.n unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !15, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 2305843009213693952
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  store ptr %i.x, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ac, ptr %.sroa.68.0..sroa_idx, align 8
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h9188a2af92c7ec47E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.ai, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #41
          to label %bb.c unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 576460752303423488
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0483871e8d53029cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd3d67c2bb86336eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd3d67c2bb86336eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E.exit" unwind label %bb.f

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.l:                                             ; preds = %bb.g
  %.sroa.09.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx, i64 16, i1 false)
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E.exit"

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$usize$GT$$GT$$GT$17hd8e8edce63937813E.exit": ; preds = %bb.j, %bb.l
  %.sroa.01.0 = phi i64 [ %.sroa.09.0.copyload, %bb.l ], [ -9223372036854775808, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.i, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x i64> %i.l, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.01.0, ptr %i.ao, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53, i64 16, i1 false)
end_hunk_0
