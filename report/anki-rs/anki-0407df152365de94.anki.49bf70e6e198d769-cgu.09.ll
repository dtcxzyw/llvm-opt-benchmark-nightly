inline.NumInlined: 5375
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN3csv11byte_record10ByteRecord15clone_truncated17h7979ed5f737e97b2E:bb.a
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i": ; preds = %bb.f
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17ha105524555264a5cE.exit" unwind label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.l, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01, i64 24, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 %i.j, ptr %.sroa.52.0..sroa_idx, align 8
  br label %bb.d

"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17ha105524555264a5cE.exit": ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01, i64 24, i1 false)
  %.sroa.52.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 %i.j, ptr %.sroa.52.0..sroa_idx3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  call void @llvm.experimental.noalias.scope.decl(metadata !2894)
  %i.o = load i64, ptr %i.i, align 8, !alias.scope !2894, !noundef !8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2894, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2894, !noundef !8 ; 2 uses
  %.not.i = icmp ugt i64 %i.o, %i.s
  br i1 %.not.i, label %.invoke, label %bb.j, !prof !2897

.invoke:                                          ; preds = %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit, %"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17ha105524555264a5cE.exit"
  %i.t = phi i64 [ %i.o, %"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17ha105524555264a5cE.exit" ], [ %i.y, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit ]
  %i.u = phi i64 [ %i.s, %"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17ha105524555264a5cE.exit" ], [ %i.aa, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit ]
  %i.v = phi ptr [ @43, %"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17ha105524555264a5cE.exit" ], [ @39, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit ]
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.t, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #43
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17ha105524555264a5cE.exit"
  %.not4.i = icmp eq i64 %i.o, 0
  br i1 %.not4.i, label %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread, label %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit

_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit: ; preds = %bb.j
  %i.w = getelementptr [8 x i8], ptr %i.q, i64 %i.o
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !noalias !2894, !noundef !8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noundef !8 ; 2 uses
  %.not = icmp ugt i64 %i.y, %i.aa
  br i1 %.not, label %.invoke, label %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread, !prof !2898

_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread: ; preds = %bb.j, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit
  %.sroa.0.0.i16 = phi i64 [ %i.y, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit ], [ 0, %bb.j ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2899
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i16, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread
  %i.ad = load i64, ptr %i.a, align 8, !range !686, !noalias !2899, !noundef !8
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !612, !noalias !2899, !noundef !8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !687

bb.k:                                             ; preds = %.noexc8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !2899
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ag, i64 %i.ai) #43
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc8
  %i.aj = load ptr, ptr %i.ah, align 8, !noalias !2899, !nonnull !8, !noundef !8 ; 3 uses
  %i.ak = icmp ule i64 %.sroa.0.0.i16, %i.ag
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2899
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.ac, i64 %.sroa.0.0.i16, i1 false), !noalias !2903
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body11 unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.m, %bb.p
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.ao, %bb.p ], [ %i.am, %bb.m ]
  store i64 %i.ag, ptr %i.al, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.aj, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.0.0.i16, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.d

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.n
  store i64 %i.ag, ptr %i.al, align 8
  %.sroa.59.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.aj, ptr %.sroa.59.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.0.0.i16, ptr %.sroa.6.0..sroa_idx12, align 8
  ret ptr %i.c

bb.q:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.r:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3csv11byte_record10ByteRecord8validate17hf9c79e8559735cd0E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2904, !noundef !8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2904, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2904, !noundef !8 ; 2 uses
  %.not.i = icmp ugt i64 %i.d, %i.h
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !2897

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #43, !noalias !2904
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not4.i = icmp eq i64 %i.d, 0
  br i1 %.not4.i, label %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread, label %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit

_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !8
  br label %bb.e

_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit: ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !noalias !2904, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !8 ; 3 uses
  %.not = icmp ugt i64 %i.m, %i.o
  br i1 %.not, label %bb.d, label %bb.e, !prof !2898

bb.d:                                             ; preds = %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #43
  unreachable

bb.e:                                             ; preds = %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit
  %i.p = phi i64 [ %i.j, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread ], [ %i.o, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit ] ; 2 uses
  %i.q = phi ptr [ %i.i, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread ], [ %i.n, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit ]
  %.sroa.0.0.i12 = phi i64 [ 0, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.thread ], [ %i.m, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !8, !noundef !8 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.e
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.t, %._crit_edge.i ], [ 0, %bb.e ] ; 8 uses
  %i.t = add nuw i64 %.sroa.02.0.i, 32            ; 2 uses
  %.not.i4 = icmp ugt i64 %i.t, %.sroa.0.0.i12
  br i1 %.not.i4, label %.preheader.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.f
  %i.u = icmp ult i64 %.sroa.02.0.i, %.sroa.0.0.i12
  br i1 %i.u, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread14

iter.check:                                       ; preds = %.preheader.i
  %i.v = shl i64 %indvar, 5
  %i.w = sub i64 %.sroa.0.0.i12, %i.v             ; 4 uses
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph24.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check146 = icmp ult i64 %i.w, 32
  br i1 %min.iters.check146, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %.sroa.0.0.i12, 31               ; 3 uses
  %n.vec = sub nuw i64 %i.w, %i.x                 ; 3 uses
  %i.y = add i64 %.sroa.02.0.i, %n.vec
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.02.0.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi147 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !2907
  %wide.load148 = load <16 x i8>, ptr %i.ab, align 1, !alias.scope !2907
  %i.ac = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.ad = icmp slt <16 x i8> %wide.load148, zeroinitializer
  %i.ae = or <16 x i1> %vec.phi, %i.ac            ; 2 uses
  %i.af = or <16 x i1> %vec.phi147, %i.ad         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !2910

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.af, %i.ae
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ah = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not157 = icmp eq i16 %i.ah, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %i.x, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.x, 4
  br i1 %min.epilog.iters.check, label %.lr.ph24.i.preheader, label %vec.epilog.ph, !prof !2913

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not157, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.ai = xor i1 %bc.merge.rdx, true
  %i.aj = and i64 %.sroa.0.0.i12, 3               ; 2 uses
  %n.vec149 = sub i64 %i.w, %i.aj                 ; 2 uses
  %i.ak = add i64 %.sroa.02.0.i, %n.vec149
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.02.0.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi151 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr158, %vec.epilog.vector.body ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %index150
  %wide.load152 = load <4 x i8>, ptr %i.am, align 1, !alias.scope !2907
  %i.an = icmp slt <4 x i8> %wide.load152, zeroinitializer
  %i.ao = or <4 x i1> %vec.phi151, %i.an
  %.fr158 = freeze <4 x i1> %i.ao                 ; 2 uses
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2914

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aq = bitcast <4 x i1> %.fr158 to i4
  %.not159 = icmp eq i4 %i.aq, 0                  ; 2 uses
  %cmp.n154 = icmp eq i64 %i.aj, 0
  br i1 %cmp.n154, label %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit, label %.lr.ph24.i.preheader

.lr.ph24.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.023.i.ph = phi i1 [ true, %iter.check ], [ %.not157, %vec.epilog.iter.check ], [ %.not159, %vec.epilog.middle.block ]
  %.sroa.02.122.i.ph = phi i64 [ %.sroa.02.0.i, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader, %.lr.ph24.i
  %.sroa.0.023.i = phi i1 [ %i.at, %.lr.ph24.i ], [ %.sroa.0.023.i.ph, %.lr.ph24.i.preheader ]
  %.sroa.02.122.i = phi i64 [ %i.au, %.lr.ph24.i ], [ %.sroa.02.122.i.ph, %.lr.ph24.i.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.02.122.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !2907, !noundef !8
  %.inv.i = icmp sgt i8 %i.as, -1
  %i.at = select i1 %.inv.i, i1 %.sroa.0.023.i, i1 false ; 2 uses
  %i.au = add nuw i64 %.sroa.02.122.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %.sroa.0.0.i12
  br i1 %exitcond.not.i, label %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit, label %.lr.ph24.i, !llvm.loop !2915

._crit_edge.i:                                    ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.02.0.i
  %i.aw = load <32 x i8>, ptr %i.av, align 1, !alias.scope !2907
  %i.ax = icmp slt <32 x i8> %i.aw, zeroinitializer
  %i.ay = bitcast <32 x i1> %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.az, label %bb.f, label %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread

_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit: ; preds = %.lr.ph24.i, %vec.epilog.middle.block, %middle.block
  %.lcssa144 = phi i1 [ %.not159, %vec.epilog.middle.block ], [ %.not157, %middle.block ], [ %i.at, %.lr.ph24.i ]
  br i1 %.lcssa144, label %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread14, label %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread

_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread: ; preds = %._crit_edge.i, %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  %i.ba = load i64, ptr %i.c, align 8, !alias.scope !2916, !noundef !8 ; 5 uses
  %i.bb = load ptr, ptr %i.e, align 8, !alias.scope !2916, !nonnull !8, !noundef !8
  %i.bc = load i64, ptr %i.g, align 8, !alias.scope !2916, !noundef !8 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !2897

bb.g:                                             ; preds = %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.ba, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #43, !noalias !2916
  unreachable

bb.h:                                             ; preds = %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread
  %.not4.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not4.i.i, label %._crit_edge, label %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.i

_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.i: ; preds = %bb.h
  %i.bd = getelementptr [8 x i8], ptr %i.bb, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !noalias !2916, !noundef !8 ; 2 uses
  %.not.i5 = icmp ugt i64 %i.bf, %i.p
  br i1 %.not.i5, label %bb.i, label %.lr.ph, !prof !2898

bb.i:                                             ; preds = %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.i
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.bf, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #43
  unreachable

_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread14: ; preds = %.preheader.i, %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit
  store i64 0, ptr %0, align 8
  br label %bb.p

.lr.ph:                                           ; preds = %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.i, %bb.r
  %.sroa.6.050 = phi i64 [ %i.bl, %bb.r ], [ 0, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.i ] ; 4 uses
  %.sroa.9.049 = phi i64 [ %i.bm, %bb.r ], [ 0, %_ZN3csv11byte_record6Bounds3end17h3c56404017b02679E.exit.i ] ; 5 uses
  %i.bg = load i64, ptr %i.c, align 8, !noalias !2919, !noundef !8 ; 4 uses
  %i.bh = load ptr, ptr %i.e, align 8, !noalias !2919, !nonnull !8, !noundef !8
  %i.bi = load i64, ptr %i.g, align 8, !noalias !2919, !noundef !8 ; 2 uses
  %.not.i.i6 = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not.i.i6, label %bb.j, label %bb.k, !prof !2897

bb.j:                                             ; preds = %.lr.ph
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.bg, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #43, !noalias !2919
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.bj = icmp ult i64 %.sroa.9.049, %i.bg
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.sroa.9.049
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !2919, !noundef !8 ; 5 uses
  %i.bm = add nuw i64 %.sroa.9.049, 1             ; 2 uses
  %i.bn = load i64, ptr %i.q, align 8, !noalias !2919, !noundef !8 ; 2 uses
  %i.bo = icmp ult i64 %i.bl, %.sroa.6.050
  %.not5.i.i = icmp ugt i64 %i.bl, %i.bn
  %or.cond.i.i = or i1 %i.bo, %.not5.i.i
  br i1 %or.cond.i.i, label %bb.n, label %bb.o, !prof !2897

bb.m:                                             ; preds = %bb.k
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.9.049, i64 noundef %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #43, !noalias !2919
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %.sroa.6.050, i64 noundef %i.bl, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #43, !noalias !2919
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.r, align 8, !noalias !2919, !nonnull !8, !noundef !8
  %i.bq = sub nuw i64 %i.bl, %.sroa.6.050
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.6.050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.bq)
  %i.bs = load i64, ptr %i.a, align 8, !range !686, !noundef !8
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.q, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %bb.h
  store i64 0, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %._crit_edge, %_ZN4core5slice5ascii8is_ascii17h25c8d476e89a1ec1E.exit.thread14
  ret void

bb.q:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.049, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bv, ptr %i.bx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.by = icmp eq i64 %i.bm, %i.ba
  br i1 %i.by, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3nom5error10ParseError2or17h733dda7e628fbe54E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.a = load i64, ptr %1, align 8, !range !2925, !alias.scope !2926, !noundef !8
  %.not.i = icmp eq i64 %i.a, 19
  br i1 %.not.i, label %"_ZN4core3ptr52drop_in_place$LT$anki..error..search..ParseError$GT$17h12ae44c5298ce9dbE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$anki..error..search..SearchErrorKind$GT$17h0e723ba70bb57520E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %"_ZN4core3ptr52drop_in_place$LT$anki..error..search..ParseError$GT$17h12ae44c5298ce9dbE.exit"

"_ZN4core3ptr52drop_in_place$LT$anki..error..search..ParseError$GT$17h12ae44c5298ce9dbE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN3nom5error10ParseError9from_char17h668318d796e08e2cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 25)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 0, 1114112) %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !alias.scope !2929, !noalias !2932
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !alias.scope !2929, !noalias !2932
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 29, ptr %i.c, align 8, !alias.scope !2929, !noalias !2932
  store i64 19, ptr %0, align 8, !alias.scope !2929, !noalias !2932
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h1547c3689cee84a9E(ptr noalias noundef align 8 dereferenceable(304) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17hffb1ba1a7376154fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(304) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h249229c2a516ce8aE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2934, !noalias !2937, !noundef !8 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !alias.scope !2934, !noalias !2937, !nonnull !8, !align !858, !noundef !8 ; 2 uses
  %i.d = tail call noundef ptr @_ZN3std2io5Write9write_all17h9190611fde2e5c91E(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.b), !noalias !2934 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %"_ZN70_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17h5f44b8e87a447f93E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  store ptr %i.e, ptr %0, align 8, !alias.scope !2934, !noalias !2937
  store i64 0, ptr %i.a, align 8, !alias.scope !2934, !noalias !2937
  %i.f = inttoptr i64 %i.b to ptr
  br label %"_ZN70_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17h5f44b8e87a447f93E.exit"

"_ZN70_$LT$$RF$$u5b$u8$u5d$$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17h5f44b8e87a447f93E.exit": ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.h = insertvalue { i64, ptr } %i.g, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h2d4ad9ebe6206ce1E(ptr noalias noundef align 8 dereferenceable(304) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h57bb49f891d01243E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(304) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h61d88a2830394edcE(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h0bed015b47b9b69eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h663bddbcc4657cc9E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h327537c5568e6a82E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h686177321ac6af92E(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h8b9da5c26807d7c1E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h6d5072fa465d428fE(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h7e469ce01396c514E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN3std2io4copy12generic_copy17h7219ece341901b1fE(ptr noalias noundef align 8 dereferenceable(240) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @"_ZN79_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$11buffer_size17h623047d6a3b71dbcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 0 uses
end_hunk_0
begin_hunk_1_@"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h4649b6864bbcb3d1E":bb.a
bb.q:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.t, %bb.f ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 728, i64 noundef 8) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h82d825a3d8958f35E"() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hdcc17ba042896645E"() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17hdd8fd7e1a04de767E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 626 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !8
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !8
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !2841

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @311, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !687

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @313, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !9499
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.u = shl nuw nsw i64 %i.k, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.h, i64 %i.u, i1 false), !alias.scope !9502
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9508)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17h777b2354d500a853E.exit, label %bb.f, !prof !2841

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @305, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #43, !noalias !9510
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h777b2354d500a853E.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !9510
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.v
  %i.ad = shl nuw nsw i64 %i.w, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !9511
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  %.val178 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val179 = load i64, ptr %i.ag, align 8, !noundef !8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val178, i64 360
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val179 ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.val178, i64 %.val179 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !9515
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !8
  %.not175 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !8
  %.not176 = icmp eq i64 %i.ap, 0                 ; 2 uses
  br i1 %.not175, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h777b2354d500a853E.exit
  br i1 %.not176, label %bb.i, label %bb.k, !prof !687

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h777b2354d500a853E.exit
  br i1 %.not176, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit", label %bb.i, !prof !2841

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @51, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #43
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !9519, !nonnull !8, !noundef !8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  store ptr %i.h, ptr %i.at, align 8, !noalias !9524
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 624
  store i16 %i.au, ptr %i.av, align 8, !noalias !9524
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit", label %bb.j, !llvm.loop !9525

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 632 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !9526
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !9529
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !9519, !nonnull !8, !noundef !8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 352
  store ptr %i.h, ptr %i.bj, align 8, !noalias !9524
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 624
  store i16 %i.bk, ptr %i.bl, align 8, !noalias !9524
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !9519, !nonnull !8, !noundef !8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 352
  store ptr %i.h, ptr %i.bp, align 8, !noalias !9524
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 624
  store i16 %i.bq, ptr %i.br, align 8, !noalias !9524
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !9519, !nonnull !8, !noundef !8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 352
  store ptr %i.h, ptr %i.bv, align 8, !noalias !9524
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 624
  store i16 %i.bw, ptr %i.bx, align 8, !noalias !9524
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !9519, !nonnull !8, !noundef !8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 352
  store ptr %i.h, ptr %i.cb, align 8, !noalias !9524
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 624
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !9524
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.loopexit.unr-lcssa", label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$16bulk_steal_right17h41b25376db30d4f9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 626 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !8 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !8
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !2841

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @316, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !687

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @318, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val174 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val175 = load i64, ptr %i.u, align 8, !noundef !8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val174, i64 360
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.val175 ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.val174, i64 %.val175 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !9533
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ab
  %i.ad = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull readonly align 8 %i.r, i64 %i.ad, i1 false), !alias.scope !9537
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.af = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.h, i64 %i.af, i1 false), !alias.scope !9541
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %1
  %i.ah = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.ag, i64 %i.ah, i1 false), !alias.scope !9545
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.aj = shl nuw nsw i64 %i.n, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false), !alias.scope !9548
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !8
  %.not169 = icmp eq i64 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !noundef !8
  %.not170 = icmp eq i64 %i.an, 0                 ; 2 uses
  br i1 %.not169, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not170, label %bb.h, label %bb.i, !prof !687

bb.g:                                             ; preds = %bb.e
  br i1 %.not170, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178", label %bb.h, !prof !2841

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @51, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #43
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178.loopexit.unr-lcssa": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit"
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil.preheader"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil.preheader": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178.loopexit.unr-lcssa", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.preheader"
  %.sroa.0.06.i176.epil.init = phi i64 [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.preheader" ], [ %i.df, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178.loopexit.unr-lcssa" ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil"

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil.preheader"
  %.sroa.0.06.i176.epil = phi i64 [ %i.ao, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil" ], [ %.sroa.0.06.i176.epil.init, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil.preheader" ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil" ], [ 0, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil.preheader" ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i176.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i176.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i176.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !9551, !nonnull !8, !noundef !8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 352
  store ptr %i.h, ptr %i.as, align 8, !noalias !9556
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i176.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 624
  store i16 %i.at, ptr %i.au, align 8, !noalias !9556
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178", label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil", !llvm.loop !9557

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit178.loopexit.unr-lcssa", %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.epil", %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 632 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 632 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !9558
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !9562
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !9565, !nonnull !8, !noundef !8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 352
  store ptr %i.c, ptr %i.bf, align 8, !noalias !9570
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 624
  store i16 %i.bg, ptr %i.bh, align 8, !noalias !9570
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.preheader", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !9565, !nonnull !8, !noundef !8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 352
  store ptr %i.c, ptr %i.bm, align 8, !noalias !9570
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 624
  store i16 %i.bn, ptr %i.bo, align 8, !noalias !9570
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.preheader", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !9565, !nonnull !8, !noundef !8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 352
  store ptr %i.c, ptr %i.bt, align 8, !noalias !9570
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 624
  store i16 %i.bu, ptr %i.bv, align 8, !noalias !9570
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.preheader", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !9565, !nonnull !8, !noundef !8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 352
  store ptr %i.c, ptr %i.ca, align 8, !noalias !9570
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 624
  store i16 %i.cb, ptr %i.cc, align 8, !noalias !9570
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.preheader", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !9565, !nonnull !8, !noundef !8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr %i.c, ptr %i.ch, align 8, !noalias !9570
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 624
  store i16 %i.ci, ptr %i.cj, align 8, !noalias !9570
  br label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17h42a4453733c4e46eE.exit.preheader"

end_hunk_1
