Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.04?download=true
inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14regex_automata3dfa9automaton34skip_empty_utf8_splits_overlapping17he3cb76381ed108b9E:bb.a
  %i.b = load i32, ptr %0, align 8, !range !20, !noundef !5
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !5, !align !7
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %.sroa.5.0.copyload, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !7, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.5.0.copyload
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %or.cond = icmp sgt i8 %i.n, -65
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %.sroa.5.0.copyload, %i.i
  br i1 %i.o, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i64 0, ptr %1, align 8
  br label %.loopexit

bb.g:                                             ; preds = %.preheader, %bb.l
  %.sroa.012.0 = phi i64 [ %.sroa.59.0.copyload, %bb.l ], [ %.sroa.5.0.copyload, %.preheader ] ; 3 uses
  %i.p = icmp ult i64 %.sroa.012.0, %i.f
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.012.0
  %i.r = load i8, ptr %i.q, align 1, !noundef !5
  %or.cond26 = icmp sgt i8 %i.r, -65
  br i1 %or.cond26, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = icmp eq i64 %.sroa.012.0, %i.f
  br i1 %i.s, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.t = tail call noundef align 8 ptr @_ZN14regex_automata3dfa6search20find_overlapping_fwd17h9cf5a51bd96240a1E(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %.sroa.08.0.copyload = load i64, ptr %1, align 8
  %i.u = trunc nuw i64 %.sroa.08.0.copyload to i1
  br i1 %i.u, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.sroa.59.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.i, %bb.h, %bb.e, %bb.f, %bb.d, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.k ], [ %i.t, %bb.j ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4util10sparse_set10SparseSets3new17h0b49be39fc97afd5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 12 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !292
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.f, align 8, !noalias !292
  store i64 0, ptr %i.d, align 8, !noalias !292
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !292
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !292
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !292
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !292
  %i.h = icmp ult i64 %1, 2147483648
  br i1 %i.h, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !293
  store ptr @18, ptr %i.b, align 8, !noalias !293
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !293
  store ptr @20, ptr %i.c, align 8, !noalias !293
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !293
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.j, align 8, !noalias !293
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.k, align 8, !noalias !293
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.l, align 8, !noalias !293
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27
          to label %.noexc.i unwind label %bb.d, !noalias !292

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h18ac95515b091e12E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %1, i32 noundef 0)
          to label %.noexc6.i unwind label %bb.d, !noalias !292

.noexc6.i:                                        ; preds = %bb.c
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h18ac95515b091e12E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %1, i32 noundef 0)
          to label %bb.f unwind label %bb.d, !noalias !292

bb.d:                                             ; preds = %.noexc6.i, %bb.c, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a35cd1a8bce5aE"(ptr noalias noundef align 8 dereferenceable(56) %i.d) #29
          to label %common.resume unwind label %bb.e, !noalias !292

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !292
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.q, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.noexc6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !294
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.o, align 8, !noalias !294
  store i64 0, ptr %i.a, align 8, !noalias !294
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i1, align 8, !noalias !294
  %.sroa.5.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i2, i8 0, i64 16, i1 false), !noalias !294
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i3, align 8, !noalias !294
  %.sroa.53.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i4, align 8, !noalias !294
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h18ac95515b091e12E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %1, i32 noundef 0)
          to label %.noexc6.i7 unwind label %bb.g, !noalias !294

.noexc6.i7:                                       ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h18ac95515b091e12E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %1, i32 noundef 0)
          to label %bb.i unwind label %bb.g, !noalias !294

bb.g:                                             ; preds = %.noexc6.i7, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a35cd1a8bce5aE"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #29
          to label %.body unwind label %bb.h, !noalias !294

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !294
  unreachable

.body:                                            ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a35cd1a8bce5aE"(ptr noalias noundef align 8 dereferenceable(56) %i.e) #29
          to label %common.resume unwind label %bb.j

bb.i:                                             ; preds = %.noexc6.i7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.j:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_ZN14regex_automata4util8alphabet11ByteClasses10from_bytes17hfbefd82cf3d2c707E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 26 uses
  %i.b = icmp ult i64 %2, 256
  br i1 %i.b, label %bb.b, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load65 = load <16 x i8>, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> %wide.load, ptr %i.a, align 16
  store <16 x i8> %wide.load65, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.e, align 1
  %wide.load65.1 = load <16 x i8>, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> %wide.load.1, ptr %i.g, align 16
  store <16 x i8> %wide.load65.1, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.i, align 1
  %wide.load65.2 = load <16 x i8>, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> %wide.load.2, ptr %i.k, align 16
  store <16 x i8> %wide.load65.2, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.m, align 1
  %wide.load65.3 = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> %wide.load.3, ptr %i.o, align 16
  store <16 x i8> %wide.load65.3, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.q, align 1
  %wide.load65.4 = load <16 x i8>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> %wide.load.4, ptr %i.s, align 16
  store <16 x i8> %wide.load65.4, ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.u, align 1
  %wide.load65.5 = load <16 x i8>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> %wide.load.5, ptr %i.w, align 16
  store <16 x i8> %wide.load65.5, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.y, align 1
  %wide.load65.6 = load <16 x i8>, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> %wide.load.6, ptr %i.aa, align 16
  store <16 x i8> %wide.load65.6, ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <16 x i8>, ptr %i.ac, align 1
  %wide.load65.7 = load <16 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> %wide.load.7, ptr %i.ae, align 16
  store <16 x i8> %wide.load65.7, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 2                ; 4 uses
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ak, align 8
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @25, ptr %.sroa.343.0..sroa_idx, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.444.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %.sroa.05.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.am = load i8, ptr %.sroa.05.0.ptr.1, align 1, !noundef !5
  %i.an = zext i8 %i.am to i64
  %.not56.1 = icmp samesign ugt i64 %i.aj, %i.an
  br i1 %.not56.1, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %.sroa.05.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.ap = load i8, ptr %.sroa.05.0.ptr.2, align 2, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %.not56.2 = icmp samesign ugt i64 %i.aj, %i.aq
  br i1 %.not56.2, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %.sroa.05.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.as = load i8, ptr %.sroa.05.0.ptr.3, align 1, !noundef !5
  %i.at = zext i8 %i.as to i64
  %.not56.3 = icmp samesign ugt i64 %i.aj, %i.at
  br i1 %.not56.3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.sroa.05.0.add.3 = add nuw nsw i64 %.sroa.05.0.idx64, 4 ; 2 uses
  %i.au = icmp eq i64 %.sroa.05.0.add.3, 256
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %vector.ph
  %.sroa.05.0.idx64 = phi i64 [ 0, %vector.ph ], [ %.sroa.05.0.add.3, %bb.f ] ; 5 uses
  %.sroa.05.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.05.0.idx64
  %i.av = load i8, ptr %.sroa.05.0.ptr, align 4, !noundef !5
  %i.aw = zext i8 %i.av to i64
  %.not56 = icmp samesign ugt i64 %i.aj, %i.aw
  br i1 %.not56, label %bb.c, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ax, ptr noundef nonnull align 16 dereferenceable(256) %i.a, i64 256, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 256, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ay, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.553.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 49, ptr %.sroa.654.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN14regex_automata4util8alphabet11ByteClasses15representatives17h8db7d37bf91abb68E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8), (16, 33)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN14regex_automata4util8alphabet11ByteClasses15representatives17hb8261f7fe13a1e8eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 33)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256) %1, i24 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i24 %2 to i8
  %.sroa.2.0.extract.shift = lshr i24 %2, 8
  %.sroa.3.0.extract.shift = lshr i24 %2, 16
  %.sroa.3.0.extract.trunc = zext nneg i24 %.sroa.3.0.extract.shift to i64
  %i.a = icmp eq i8 %.sroa.0.0.extract.trunc, 0
  %i.b = zext i1 %i.a to i64
  %.sroa.47.0 = add nuw nsw i64 %.sroa.3.0.extract.trunc, %i.b
  %i.c = and i24 %.sroa.2.0.extract.shift, 255
  %i.d = zext nneg i24 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.f, align 8
  store i64 1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.47.0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4util8alphabet11ByteClasses8write_to17hef15cf6f7a2c6116E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(256) %1, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %3, 256
  br i1 %i.a, label %bb.b, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 224
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load24 = load <16 x i8>, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %2, i64 16
  store <16 x i8> %wide.load, ptr %2, align 1
  store <16 x i8> %wide.load24, ptr %i.d, align 1
  %next.gep.1 = getelementptr i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.e, align 1
  %wide.load24.1 = load <16 x i8>, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %2, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1
  store <16 x i8> %wide.load24.1, ptr %i.g, align 1
  %next.gep.2 = getelementptr i8, ptr %2, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_0
begin_hunk_1_@_ZN14regex_automata6hybrid3dfa4Lazy17cache_start_group17hf1db2c9e9fafa034E:bb.a
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.06.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.06.0
  ret i64 %.sroa.06.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(352) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h625e344813c5ec46E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1143, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !1143, !noundef !5 ; 3 uses
  %.not.i.i = icmp ugt i64 %.val.i, %.val5.i
  %i.g = sub nuw i64 %.val5.i, %.val.i
  %i.h = sub nuw i64 %.val.i, %.val5.i
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.g
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h625e344813c5ec46E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h625e344813c5ec46E.exit": ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ]
  %i.i = add i64 %.sroa.02.0.i, %i.b
  ret i64 %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa5Cache3new17h398249a6158dd31cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 8 captures(none) dereferenceable(352) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [352 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h4c69380d22621e2aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @62)
          to label %bb.c unwind label %bb.b       ; 2 uses

"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit": ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.v, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17hacb1f28938c6cec3E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %bb.j unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit"

bb.c:                                             ; preds = %bb.a
  %i.p = extractvalue { i64, i64 } %i.n, 0
  %i.q = extractvalue { i64, i64 } %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @64, i64 32, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.p, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.s = load ptr, ptr %i.r, align 16, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  %i.u = load i64, ptr %i.t, align 16, !noundef !5
  invoke void @_ZN14regex_automata4util10sparse_set10SparseSets3new17h0b49be39fc97afd5E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, i64 noundef %i.u)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0b94e28770ea07e4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit" unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i64 0, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store i64 0, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.ae, align 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy10init_cache17h6ba1ae51ca18670dE(ptr noalias noundef align 8 dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h4b5e83fd4d3f782dE"(ptr noalias noundef align 8 dereferenceable(352) %i.g) #29
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %i.g, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.h:                                             ; preds = %bb.d, %bb.k, %bb.j, %bb.f, %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit"
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.i:                                             ; preds = %bb.k, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit"
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfc4f8f5840e3d94cE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfc4f8f5840e3d94cE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #29
          to label %bb.i unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa5Cache5reset17he81a21c87a05554bE(ptr noalias noundef align 8 dereferenceable(352) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  call fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11reset_cache17h0b58761852e6fd14E(ptr noalias noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata6hybrid3dfa6Config21byte_classes_from_nfa17he9a3a44425ade353E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(256) %0, i8 %.130.val, ptr nofree readonly captures(none) %.0.val, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %cond = icmp eq i8 %.130.val, 0
  br i1 %cond, label %vector.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = load i128, ptr %1, align 16
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load i128, ptr %i.d, align 16
  %i.f = or i128 %i.c, %i.e
  %i.g = icmp ne i128 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit, label %bb.c

vector.ph:                                        ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %0, align 1
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.k, align 1
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.m, align 1
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.o, align 1
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.q, align 1
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.s, align 1
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.u, align 1
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.w, align 1
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.x, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %vector.ph, %_ZN14regex_automata4util8alphabet12ByteClassSet12byte_classes17hc540877a9580f40cE.exit
  ret void

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit.i
  %umax.i.i36 = phi i64 [ 256, %bb.c ], [ %umax.i.i, %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit.i ]
  %.sroa.4.0.i35 = phi i64 [ 0, %bb.c ], [ %.sroa.4.322.i, %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit.i ]
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i.not.i = icmp eq i64 %i.z, %umax.i.i36
  br i1 %exitcond.not.i.not.i, label %_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.4.1.i31 = phi i64 [ %.sroa.4.0.i35, %.lr.ph ], [ %i.z, %bb.d ] ; 6 uses
  %i.y = trunc nuw i64 %.sroa.4.1.i31 to i8       ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.4.1.i31, 1        ; 7 uses
  %.lobit.i.i.i = lshr i64 %.sroa.4.1.i31, 7
  %i.aa = and i8 %i.y, 127
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.lobit.i.i.i
  %i.ac = load i128, ptr %i.ab, align 16, !alias.scope !1166, !noalias !1167, !noundef !5
  %i.ad = zext nneg i8 %i.aa to i128
  %i.ae = shl nuw i128 1, %i.ad
  %i.af = and i128 %i.ac, %i.ae
  %.not.i.i = icmp eq i128 %i.af, 0
  br i1 %.not.i.i, label %bb.d, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.e
  %i.ag = icmp samesign ult i64 %.sroa.4.1.i31, 255
  br i1 %i.ag, label %.lr.ph.i.preheader.i, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread.i"

.lr.ph.i.preheader.i:                             ; preds = %thread-pre-split.i.i
  %i.ah = trunc nuw i64 %i.z to i8
  %.lobit.i9.i8.i = lshr i64 %i.z, 7
  %i.ai = and i8 %i.ah, 127
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.lobit.i9.i8.i
  %i.ak = load i128, ptr %i.aj, align 16, !alias.scope !1168, !noalias !1167, !noundef !5
  %i.al = zext nneg i8 %i.ai to i128
  %i.am = shl nuw i128 1, %i.al
  %i.an = and i128 %i.ak, %i.am
  %.not10.i9.i = icmp eq i128 %i.an, 0
  br i1 %.not10.i9.i, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i", label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader": ; preds = %.lr.ph.i.preheader.i
  %i.ao = add nuw nsw i64 %.sroa.4.1.i31, 2       ; 2 uses
  %exitcond19.not.i.i33 = icmp eq i64 %i.ao, 256
  br i1 %exitcond19.not.i.i33, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i"
  %i.ap = phi i64 [ %i.aw, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ], [ %i.ao, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader" ] ; 5 uses
  %.sroa.4.210.i34 = phi i64 [ %i.ap, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ], [ %i.z, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader" ]
  %indvars.i = trunc i64 %i.ap to i8
  %.lobit.i9.i.i = lshr i64 %i.ap, 7
  %i.aq = and i8 %indvars.i, 127
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.lobit.i9.i.i
  %i.as = load i128, ptr %i.ar, align 16, !alias.scope !1168, !noalias !1167, !noundef !5
  %i.at = zext nneg i8 %i.aq to i128
  %i.au = shl nuw i128 1, %i.at
  %i.av = and i128 %i.as, %i.au
  %.not10.i.i = icmp eq i128 %i.av, 0
  br i1 %.not10.i.i, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit.i", label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i": ; preds = %.lr.ph.i.i
  %i.aw = add i64 %i.ap, 1                        ; 2 uses
  %exitcond19.not.i.i = icmp eq i64 %i.aw, 256
  br i1 %exitcond19.not.i.i, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i", label %.lr.ph.i.i

"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit.i": ; preds = %.lr.ph.i.i
  %indvars16.le.i = trunc i64 %.sroa.4.210.i34 to i8
  br label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i"

"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader", %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit.i", %.lr.ph.i.preheader.i
  %.sroa.4.3.i = phi i64 [ %i.z, %.lr.ph.i.preheader.i ], [ %i.ap, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit.i" ], [ 256, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader" ], [ 256, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ] ; 2 uses
  %.sroa.4.0.i.i = phi i8 [ %i.y, %.lr.ph.i.preheader.i ], [ %indvars16.le.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.loopexit.split.loop.exit.i" ], [ -1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i.preheader" ], [ -1, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i.i" ] ; 2 uses
  %.not.i3.i = icmp eq i64 %.sroa.4.1.i31, 0
  br i1 %.not.i3.i, label %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit.i, label %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread.i"

"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread.i": ; preds = %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i", %thread-pre-split.i.i
  %.sroa.4.0.i23.i = phi i8 [ %.sroa.4.0.i.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i" ], [ -1, %thread-pre-split.i.i ]
  %.sroa.4.321.i = phi i64 [ %.sroa.4.3.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i" ], [ %i.z, %thread-pre-split.i.i ]
  %i.ax = add i8 %i.y, -1                         ; 2 uses
  %.lobit.i1.i.i = lshr i8 %i.ax, 7
  %i.ay = zext nneg i8 %.lobit.i1.i.i to i64
  %i.az = and i8 %i.ax, 127
  %i.ba = zext nneg i8 %i.az to i128
  %i.bb = shl nuw i128 1, %i.ba
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.bd = load i128, ptr %i.bc, align 16, !alias.scope !1169, !noalias !1165, !noundef !5
  %i.be = or i128 %i.bd, %i.bb
  store i128 %i.be, ptr %i.bc, align 16, !alias.scope !1169, !noalias !1165
  br label %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit.i

_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit.i: ; preds = %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread.i", %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i"
  %.sroa.4.0.i24.i = phi i8 [ %.sroa.4.0.i.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i" ], [ %.sroa.4.0.i23.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread.i" ] ; 2 uses
  %.sroa.4.322.i = phi i64 [ %.sroa.4.3.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.i" ], [ %.sroa.4.321.i, %"_ZN107_$LT$regex_automata..util..alphabet..ByteSetRangeIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbfac22314004b0a8E.exit.thread.i" ] ; 3 uses
  %.lobit.i.i4.i = lshr i8 %.sroa.4.0.i24.i, 7
  %i.bf = zext nneg i8 %.lobit.i.i4.i to i64
  %i.bg = and i8 %.sroa.4.0.i24.i, 127
  %i.bh = zext nneg i8 %i.bg to i128
  %i.bi = shl nuw i128 1, %i.bh
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bk = load i128, ptr %i.bj, align 16, !alias.scope !1170, !noalias !1165, !noundef !5
  %i.bl = or i128 %i.bi, %i.bk
  store i128 %i.bl, ptr %i.bj, align 16, !alias.scope !1170, !noalias !1165
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.4.322.i, i64 256)
  %exitcond.not.i.not.i30 = icmp ugt i64 %.sroa.4.322.i, 255
  br i1 %exitcond.not.i.not.i30, label %_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit, label %.lr.ph

_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit: ; preds = %_ZN14regex_automata4util8alphabet12ByteClassSet9set_range17h8e368dc86e53d9bdE.exit.i, %bb.d, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit
  %indvars.iv.i = phi i64 [ 0, %_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.sroa.0.013.i = phi i8 [ 0, %_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit ], [ %.sroa.0.1.i, %bb.j ] ; 3 uses
  %i.bm = trunc nuw i64 %indvars.iv.i to i8
  %.lobit.i.i = lshr i64 %indvars.iv.i, 7
  %i.bn = and i64 %.lobit.i.i, 1
  %i.bo = and i8 %i.bm, 127
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bn
  %i.bq = load i128, ptr %i.bp, align 16, !alias.scope !1173, !noalias !1171, !noundef !5
  %i.br = zext nneg i8 %i.bo to i128
  %i.bs = shl nuw i128 1, %i.br
  %i.bt = and i128 %i.bs, %i.bq
  %.not.i7 = icmp eq i128 %i.bt, 0
  br i1 %.not.i7, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = icmp eq i8 %.sroa.0.013.i, -1
  br i1 %i.bu, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.bv = add nuw i8 %.sroa.0.013.i, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27, !noalias !1174
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.1.i = phi i8 [ %i.bv, %bb.h ], [ %.sroa.0.013.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  store i8 %.sroa.0.1.i, ptr %i.bw, align 1, !alias.scope !1171, !noalias !1172
  %i.bx = icmp eq i64 %indvars.iv.next.i, 255
  br i1 %i.bx, label %_ZN14regex_automata4util8alphabet12ByteClassSet12byte_classes17hc540877a9580f40cE.exit, label %bb.f

_ZN14regex_automata4util8alphabet12ByteClassSet12byte_classes17hc540877a9580f40cE.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa6Config26get_minimum_cache_capacity17h8248dc3063d394bcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 11 uses
  %.sroa.11.sroa.0 = alloca [24 x i8], align 8    ; 2 uses
  %i.c = alloca [256 x i8], align 1               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_1
begin_hunk_2_@"_ZN81_$LT$regex_automata..hybrid..regex..Builder$u20$as$u20$core..default..Default$GT$7default17h4b7da0a7f09015b2E":bb.a
bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_ZN14regex_automata6hybrid5regex7Builder3new17h959c918de8fddf1bE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !1967
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.l, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %0, ptr noundef nonnull align 16 dereferenceable(592) %i.c, i64 592, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$regex_automata..meta..error..RetryFailError$u20$as$u20$core..fmt..Display$GT$3fmt17h50b3e7d11632f26eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @167, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.g, align 8
  %.val = load ptr, ptr %1, align 8
  %i.h = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$regex_automata..hybrid..id..LazyStateIDError$u20$as$u20$core..fmt..Display$GT$3fmt17hca4d0227454bef10E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %0, align 8, !noundef !5
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hffb2eb0e5008fca9E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @168, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @171, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val7, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ddc840e32a3ecc9E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9444b2a6c38aea4fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd12e84f322f05b1eE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit", label %.lr.ph.i

.body:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i", %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24d35245379a1247E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i"
  %.sroa.0.09.i = phi i64 [ %i.o, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.o = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !1985, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1986
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i"

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i": ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h
  br i1 %i.s, label %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit", label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h
  br i1 %i.u, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i"
  %.sroa.0.110.i = phi i64 [ %i.w, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.w = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !1990, !nonnull !5, !noundef !5
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !1991
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i"

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i": ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h
  br i1 %i.aa, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24d35245379a1247E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.t
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define void @"_ZN86_$LT$regex_automata..util..alphabet..ByteClasses$u20$as$u20$core..default..Default$GT$7default17h7e71e815c5ccafcaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 1 captures(none) dereferenceable(256) initializes((0, 256)) %0) unnamed_addr #12 {
vector.ph:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %0, align 1
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.b, align 1
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.d, align 1
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.f, align 1
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.h, align 1
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.j, align 1
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.l, align 1
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.n, align 1
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.o, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$regex_automata..meta..error..RetryQuadraticError$u20$as$u20$core..fmt..Display$GT$3fmt17h907001f900c0f810E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %.val = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !noalias !1994, !nonnull !5
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 48), !noalias !1994, !inline_history !19
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN87_$LT$regex_automata..nfa..thompson..error..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17hd0819cd292a34581E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = load i64, ptr %0, align 8, !range !24, !noundef !5
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 -9223372036854775808)
  %i.q = and i64 %i.p, 9223372036854775807
  switch i64 %i.q, label %default.unreachable [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit53
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit58
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit63
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit68
    i64 7, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit73
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.r, align 8
  %.val37 = load ptr, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val38, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !noalias !2003, !nonnull !5
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @176, i64 noundef 19), !noalias !2003, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.v, align 8
  %.val35 = load ptr, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val36, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !5, !noalias !2004, !nonnull !5
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @177, i64 noundef 25), !noalias !2004, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.z, align 8
  %.val33 = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !5, !noalias !2005, !nonnull !5
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 34), !noalias !2005, !inline_history !19
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit53: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.415.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.af, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @181, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.k, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 2, ptr %i.aj, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit58: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.411.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.ao, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.423.0..sroa_idx, align 8
  store ptr @183, ptr %i.h, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 2, ptr %i.as, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit63: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hede98b79571c185eE", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @185, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.az, align 8
  %.val27 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.ba, align 8, !nonnull !5, !noundef !5
  %i.bb = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
end_hunk_2
