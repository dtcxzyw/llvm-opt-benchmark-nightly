Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$33set_combined_stride_context_speed17h6ce3d4c715d138aaE"
define internal fastcc void @"_ZN6brotli3enc9interface41PredictionModeContextMap$LT$SliceType$GT$33set_combined_stride_context_speed17h6ce3d4c715d138aaE"(ptr nofree writeonly captures(none) %.24.val, i64 %.32.val, i64 %0) unnamed_addr #4 !guid !12236 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i16  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 16
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i16 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %0, 48      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.0.extract.trunc, i1 false) ; 2 uses
  %i.b = trunc nuw nsw i16 %i.a to i8
  %i.c = icmp eq i16 %.sroa.0.0.extract.trunc, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.a, 15                         ; 2 uses
  %i.e = xor i16 %i.d, 15
  %i.f = lshr exact i16 -32768, %i.d
  %i.g = sub i16 %.sroa.0.0.extract.trunc, %i.f
  %i.h = shl i16 %i.g, 3
  %i.i = lshr i16 %i.h, %i.e
  %i.j = trunc i16 %i.i to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i8 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %exitcond.not = icmp ult i64 %.32.val, 8205
  br i1 %exitcond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i8 %i.b, 3
  %i.l = sub nuw i8 -128, %i.k
  %i.m = or i8 %.sroa.02.0, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.24.val, i64 8204
  store i8 %i.m, ptr %i.n, align 1
  %i.o = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.2.0.extract.trunc, i1 false) ; 2 uses
  %i.p = trunc nuw nsw i16 %i.o to i8
  %i.q = icmp eq i16 %.sroa.2.0.extract.trunc, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 8204, i64 noundef %.32.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1309) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = and i16 %i.o, 15                         ; 2 uses
  %i.s = xor i16 %i.r, 15
  %i.t = lshr exact i16 -32768, %i.r
  %i.u = sub i16 %.sroa.2.0.extract.trunc, %i.t
  %i.v = shl i16 %i.u, 3
  %i.w = lshr i16 %i.v, %i.s
  %i.x = trunc i16 %i.w to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.03.0 = phi i8 [ %i.x, %bb.f ], [ 0, %bb.d ]
  %exitcond8.not = icmp ult i64 %.32.val, 8207
  br i1 %exitcond8.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = shl nuw i8 %i.p, 3
  %i.z = sub nuw i8 -128, %i.y
  %i.aa = or i8 %.sroa.03.0, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.24.val, i64 8206
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.3.0.extract.trunc, i1 false) ; 2 uses
  %i.ad = trunc nuw nsw i16 %i.ac to i8
  %i.ae = icmp eq i16 %.sroa.3.0.extract.trunc, 0
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = and i16 %i.ac, 15                       ; 2 uses
  %i.ag = xor i16 %i.af, 15
  %i.ah = lshr exact i16 -32768, %i.af
  %i.ai = sub i16 %.sroa.3.0.extract.trunc, %i.ah
  %i.aj = shl i16 %i.ai, 3
  %i.ak = lshr i16 %i.aj, %i.ag
  %i.al = trunc i16 %i.ak to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.02.0.1 = phi i8 [ %i.al, %bb.i ], [ 0, %bb.h ]
  %i.am = shl nuw i8 %i.ad, 3
  %i.an = sub nuw i8 -128, %i.am
  %i.ao = or i8 %.sroa.02.0.1, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.24.val, i64 8205
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.4.0.extract.trunc, i1 false) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.4.0.extract.shift, 0
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = and i16 %i.aq, 15                       ; 2 uses
  %i.at = xor i16 %i.as, 15
  %i.au = lshr exact i16 -32768, %i.as
  %i.av = sub i16 %.sroa.4.0.extract.trunc, %i.au
  %i.aw = shl i16 %i.av, 3
  %i.ax = lshr i16 %i.aw, %i.at
  %i.ay = trunc i16 %i.ax to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.1 = phi i8 [ %i.ay, %bb.k ], [ 0, %bb.j ]
  %exitcond8.1.not = icmp eq i64 %.32.val, 8207
  br i1 %exitcond8.1.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = trunc nuw nsw i16 %i.aq to i8
  %i.ba = shl nuw i8 %i.az, 3
  %i.bb = sub nuw i8 -128, %i.ba
  %i.bc = or i8 %.sroa.03.0.1, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.24.val, i64 8207
  store i8 %i.bc, ptr %i.bd, align 1
  ret void

bb.n:                                             ; preds = %bb.l, %bb.g
  %.lcssa6 = phi i64 [ 8206, %bb.g ], [ 8207, %bb.l ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa6, i64 noundef %.32.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1310) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(112) %4, i8 noundef %5, i8 noundef %6, ptr noalias noundef nonnull align 4 %7, i64 noundef %8, i64 noundef %9, i8 noundef range(i8 0, 4) %10, ptr noalias noundef nonnull align 1 %11, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %12) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12566 {
bb.a:
  %i.a = alloca [2192 x i8], align 8              ; 13 uses
  %i.b = alloca [2192 x i8], align 8              ; 7 uses
  %i.c = alloca [1040 x i8], align 8              ; 13 uses
  %i.d = alloca [1040 x i8], align 8              ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 24 uses
  %i.g = alloca [112 x i8], align 8               ; 8 uses
  %i.h = alloca [112 x i8], align 8               ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 99
  %i.j = load i8, ptr %i.i, align 1, !range !155, !noundef !138
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.val73 = load i32, ptr %i.n, align 8
  call fastcc void @_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 %.val73, ptr noalias noundef align 8 dereferenceable(48) %12, ptr noalias noundef align 8 dereferenceable(48) %i.l, ptr noalias noundef align 8 dereferenceable(48) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noundef !138
  %i.q = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 11 uses
  br i1 %i.q, label %bb.u, label %.loopexit333

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %4, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %4, i64 112, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i32, ptr %i.u, align 8              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.x = load i32, ptr %i.w, align 4              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.aa = icmp ne i32 %i.v, 0
  br label %bb.g

bb.c:                                             ; preds = %.split933, %bb.f, %.loopexit334.3
  call void @_ZN6brotli3enc9metablock25RecomputeDistancePrefixes17he1b1df468e6cb68bE(ptr noalias noundef nonnull align 4 %7, i64 noundef %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

bb.d:                                             ; preds = %.split933, %.loopexit334.3
  %.sroa.014.1481.3934 = phi double [ %.sroa.014.1482.3, %.split933 ], [ %.sroa.014.1481.3, %.loopexit334.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double 0.000000e+00, ptr %i.e, align 8
  %i.ab = call noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 1 %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.ac = load double, ptr %i.e, align 8, !noundef !138
  %i.ad = fcmp olt double %i.ac, %.sroa.014.1481.3934
  br i1 %i.ad, label %bb.e, label %bb.f

.split.thread:                                    ; preds = %.invoke1199, %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread.thread144

.split:                                           ; preds = %.invoke1201
  %lpad.thr_comm.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %.thread38.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.08.1484 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %bb.t ] ; 5 uses
  %.sroa.013.1483 = phi i1 [ true, %.lr.ph ], [ %spec.select, %bb.t ]
  %.sroa.014.1482 = phi double [ f0x547D42AEA2879F2E, %.lr.ph ], [ %i.bj, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double 0.000000e+00, ptr %i.f, align 8
  call void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g, i32 noundef 0, i32 noundef %.sroa.08.1484)
  %i.ae = icmp ne i32 %.sroa.08.1484, %i.x
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ae
  %spec.select = select i1 %or.cond.not, i1 %.sroa.013.1483, i1 false ; 3 uses
  %i.af = call noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 1 %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.af, label %bb.s, label %.loopexit334

.loopexit334:                                     ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1484, i32 1)
  %i.ah = lshr i32 %i.ag, 1                       ; 2 uses
  %i.ai = icmp samesign ult i32 %.sroa.08.1484, 33
  br i1 %i.ai, label %.lr.ph.1, label %.loopexit334.1

.lr.ph.1:                                         ; preds = %bb.t, %.loopexit334
  %.sroa.08.1478932 = phi i32 [ %i.ah, %.loopexit334 ], [ 7, %bb.t ]
  %.sroa.014.1481931 = phi double [ %.sroa.014.1482, %.loopexit334 ], [ %i.bj, %bb.t ]
  %i.aj = icmp ne i32 %i.v, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.1
  %.sroa.08.1484.1 = phi i32 [ %.sroa.08.1478932, %.lr.ph.1 ], [ %i.ap, %bb.j ] ; 3 uses
  %.sroa.013.1483.1 = phi i1 [ %spec.select, %.lr.ph.1 ], [ %spec.select.1, %bb.j ]
  %.sroa.014.1482.1 = phi double [ %.sroa.014.1481931, %.lr.ph.1 ], [ %i.an, %bb.j ] ; 2 uses
  %i.ak = shl nuw nsw i32 %.sroa.08.1484.1, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double 0.000000e+00, ptr %i.f, align 8
  call void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g, i32 noundef 1, i32 noundef %i.ak)
  %i.al = icmp ne i32 %i.ak, %i.x
  %or.cond.not.1 = select i1 %i.aj, i1 true, i1 %i.al
  %spec.select.1 = select i1 %or.cond.not.1, i1 %.sroa.013.1483.1, i1 false ; 3 uses
  %i.am = call noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 1 %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = load double, ptr %i.f, align 8, !noundef !138 ; 3 uses
  %i.ao = fcmp ogt double %i.an, %.sroa.014.1482.1
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.ap = add nuw nsw i32 %.sroa.08.1484.1, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond.1.not = icmp eq i32 %i.ap, 16
  br i1 %exitcond.1.not, label %.lr.ph.2, label %bb.h

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit334.1

.loopexit334.1:                                   ; preds = %bb.k, %.loopexit334
  %.sroa.014.1481.1 = phi double [ %.sroa.014.1482.1, %bb.k ], [ %.sroa.014.1482, %.loopexit334 ] ; 2 uses
  %.sroa.08.1478.1 = phi i32 [ %.sroa.08.1484.1, %bb.k ], [ %i.ah, %.loopexit334 ] ; 2 uses
  %.sroa.013.2.1 = phi i1 [ %spec.select.1, %bb.k ], [ %spec.select, %.loopexit334 ] ; 2 uses
  %i.aq = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1478.1, i32 1)
  %i.ar = lshr i32 %i.aq, 1                       ; 2 uses
  %i.as = icmp ult i32 %.sroa.08.1478.1, 33
  br i1 %i.as, label %.lr.ph.2, label %.loopexit334.2

.lr.ph.2:                                         ; preds = %bb.j, %.loopexit334.1
  %13 = phi i32 [ %i.ar, %.loopexit334.1 ], [ 7, %bb.j ]
  %.sroa.013.2.1937 = phi i1 [ %.sroa.013.2.1, %.loopexit334.1 ], [ %spec.select.1, %bb.j ]
  %.sroa.014.1481.1936 = phi double [ %.sroa.014.1481.1, %.loopexit334.1 ], [ %i.an, %bb.j ]
  %i.at = icmp ne i32 %i.v, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.2
  %.sroa.08.1484.2 = phi i32 [ %13, %.lr.ph.2 ], [ %i.az, %bb.n ] ; 3 uses
  %.sroa.013.1483.2 = phi i1 [ %.sroa.013.2.1937, %.lr.ph.2 ], [ %spec.select.2, %bb.n ]
  %.sroa.014.1482.2 = phi double [ %.sroa.014.1481.1936, %.lr.ph.2 ], [ %i.ax, %bb.n ] ; 2 uses
  %i.au = shl nuw nsw i32 %.sroa.08.1484.2, 2     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double 0.000000e+00, ptr %i.f, align 8
  call void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g, i32 noundef 2, i32 noundef %i.au)
  %i.av = icmp ne i32 %i.au, %i.x
  %or.cond.not.2 = select i1 %i.at, i1 true, i1 %i.av
  %spec.select.2 = select i1 %or.cond.not.2, i1 %.sroa.013.1483.2, i1 false ; 3 uses
  %i.aw = call noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 1 %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.aw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ax = load double, ptr %i.f, align 8, !noundef !138 ; 3 uses
  %i.ay = fcmp ogt double %i.ax, %.sroa.014.1482.2
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.az = add nuw nsw i32 %.sroa.08.1484.2, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond.2.not = icmp eq i32 %i.az, 16
  br i1 %exitcond.2.not, label %.lr.ph.3, label %bb.l

bb.o:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit334.2

.loopexit334.2:                                   ; preds = %bb.o, %.loopexit334.1
  %.sroa.014.1481.2 = phi double [ %.sroa.014.1482.2, %bb.o ], [ %.sroa.014.1481.1, %.loopexit334.1 ] ; 2 uses
  %.sroa.08.1478.2 = phi i32 [ %.sroa.08.1484.2, %bb.o ], [ %i.ar, %.loopexit334.1 ] ; 2 uses
  %.sroa.013.2.2 = phi i1 [ %spec.select.2, %bb.o ], [ %.sroa.013.2.1, %.loopexit334.1 ] ; 2 uses
  %i.ba = icmp ult i32 %.sroa.08.1478.2, 33
  br i1 %i.ba, label %.lr.ph.3, label %.loopexit334.3

.lr.ph.3:                                         ; preds = %bb.n, %.loopexit334.2
  %.sroa.013.2.2943 = phi i1 [ %.sroa.013.2.2, %.loopexit334.2 ], [ %spec.select.2, %bb.n ]
  %.sroa.08.1478.2942 = phi i32 [ %.sroa.08.1478.2, %.loopexit334.2 ], [ 16, %bb.n ]
  %.sroa.014.1481.2941 = phi double [ %.sroa.014.1481.2, %.loopexit334.2 ], [ %i.ax, %bb.n ]
  %14 = call i32 @llvm.usub.sat.i32(i32 %.sroa.08.1478.2942, i32 1)
  %i.bb = lshr i32 %14, 1
  %i.bc = icmp ne i32 %i.v, 3
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.3
  %.sroa.08.1484.3 = phi i32 [ %i.bb, %.lr.ph.3 ], [ %i.bi, %bb.r ] ; 2 uses
  %.sroa.013.1483.3 = phi i1 [ %.sroa.013.2.2943, %.lr.ph.3 ], [ %spec.select.3, %bb.r ]
  %.sroa.014.1482.3 = phi double [ %.sroa.014.1481.2941, %.lr.ph.3 ], [ %i.bg, %bb.r ] ; 2 uses
  %i.bd = shl nuw nsw i32 %.sroa.08.1484.3, 3     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double 0.000000e+00, ptr %i.f, align 8
  call void @_ZN6brotli3enc9metablock24BrotliInitDistanceParams17hec63d00aadbafeaaE(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g, i32 noundef 3, i32 noundef %i.bd)
  %i.be = icmp ne i32 %i.bd, %i.x
  %or.cond.not.3 = select i1 %i.bc, i1 true, i1 %i.be
  %spec.select.3 = select i1 %or.cond.not.3, i1 %.sroa.013.1483.3, i1 false ; 3 uses
  %i.bf = call noundef zeroext i1 @_ZN6brotli3enc9metablock19ComputeDistanceCost17h236488a253e13cbcE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %7, i64 noundef %8, i64 noundef %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 1 %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.bf, label %bb.q, label %.split933

bb.q:                                             ; preds = %bb.p
  %i.bg = load double, ptr %i.f, align 8, !noundef !138 ; 3 uses
  %i.bh = fcmp ogt double %i.bg, %.sroa.014.1482.3
  br i1 %i.bh, label %.split933, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.bi = add nuw nsw i32 %.sroa.08.1484.3, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond.3.not = icmp eq i32 %i.bi, 16
  br i1 %exitcond.3.not, label %.loopexit334.3, label %bb.p

.split933:                                        ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %spec.select.3, label %bb.d, label %bb.c

.loopexit334.3:                                   ; preds = %bb.r, %.loopexit334.2
  %.sroa.014.1481.3 = phi double [ %.sroa.014.1481.2, %.loopexit334.2 ], [ %i.bg, %bb.r ]
  %.sroa.013.2.3 = phi i1 [ %.sroa.013.2.2, %.loopexit334.2 ], [ %spec.select.3, %bb.r ]
  br i1 %.sroa.013.2.3, label %bb.d, label %bb.c

bb.s:                                             ; preds = %bb.g
  %i.bj = load double, ptr %i.f, align 8, !noundef !138 ; 3 uses
  %i.bk = fcmp ogt double %i.bj, %.sroa.014.1482
  br i1 %i.bk, label %.loopexit334, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.bl = add nuw nsw i32 %.sroa.08.1484, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond.not = icmp eq i32 %i.bl, 16
  br i1 %exitcond.not, label %.lr.ph.1, label %bb.g

bb.u:                                             ; preds = %bb.b
  %i.bm = icmp slt i64 %i.s, 0
  br i1 %i.bm, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !164

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.u
  %i.bn = icmp eq i64 %i.s, 0
  br i1 %i.bn, label %._crit_edge.i.i.i83.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12567
  %i.bo = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 1) #45, !noalias !12567 ; 6 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.noexc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h801e1a0dc021adf3E.exit.i.i.i"

.noexc:                                           ; preds = %bb.v, %bb.u
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.v ], [ 0, %bb.u ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !12568
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h801e1a0dc021adf3E.exit.i.i.i": ; preds = %bb.v
  %.not.i.i = icmp eq i64 %i.s, 1
  br i1 %.not.i.i, label %.lr.ph494.preheader, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h801e1a0dc021adf3E.exit.i.i.i"
  %i.bq = add nsw i64 %i.s, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bo, i8 range(i8 0, 4) 0, i64 %i.bq, i1 false), !noalias !12569
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.s
  %scevgep.i.i.i = getelementptr i8, ptr %i.br, i64 -1
  br label %.lr.ph494.preheader

.lr.ph494.preheader:                              ; preds = %._crit_edge.thread.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h801e1a0dc021adf3E.exit.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h801e1a0dc021adf3E.exit.i.i.i" ]
  store i8 0, ptr %.sroa.0.0.lcssa16.i.i.i, align 1, !noalias !12569
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bo, i8 %10, i64 %i.s, i1 false)
  %i.bs = shl i64 %i.s, 6
  br label %.loopexit333

.loopexit333:                                     ; preds = %bb.b, %.lr.ph494.preheader
  %i.bt = phi i64 [ %i.bs, %.lr.ph494.preheader ], [ %i.s, %bb.b ] ; 11 uses
  %.sroa.10.3 = phi i64 [ %i.s, %.lr.ph494.preheader ], [ 0, %bb.b ] ; 3 uses
  %.sroa.09.3 = phi ptr [ %i.bo, %.lr.ph494.preheader ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 3 uses
  %i.bu = mul i64 %i.bt, 1040                     ; 5 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.bt, 8868626958514207
  br i1 %or.cond.i.i.i.i.i, label %bb.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82, !prof !12570

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82: ; preds = %.loopexit333
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12571
  %i.bw = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bu, i64 noundef range(i64 1, 9) 8) #45, !noalias !12571 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i"

bb.x:                                             ; preds = %bb.w, %.loopexit333
  %.sroa.4.0.ph.i.i.i85 = phi i64 [ 8, %bb.w ], [ 0, %.loopexit333 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i85, i64 %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc86 unwind label %bb.gm, !noalias !12572

.noexc86:                                         ; preds = %bb.x
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i": ; preds = %bb.w, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82
  %i.by = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82 ], [ %i.bu, %bb.w ] ; 2 uses
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82 ], [ %i.bw, %bb.w ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i82 ], [ %i.bt, %bb.w ]
  %i.bz = icmp samesign ule i64 %i.bt, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ugt i64 %i.bt, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i83

.lr.ph.i.i.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i"
  %i.cb = add nsw i64 %i.bt, -1                   ; 2 uses
  %i.cc = add nsw i64 %i.bt, -2
  %xtraiter = and i64 %i.cb, 7                    ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 7
  br i1 %i.cd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.cb, -8
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i83:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i"
  %.not.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i83.thread, label %._crit_edge.thread.i.i.i84

._crit_edge.thread.i.i.i84.loopexit.unr-lcssa:    ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i84, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.thread.i.i.i84.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.08.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cn, %._crit_edge.thread.i.i.i84.loopexit.unr-lcssa ]
  %lcmp.mod1612 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1612)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.epil = phi ptr [ %i.ce, %.lr.ph.i.i.i.epil ], [ %.sroa.0.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil, align 8, !noalias !12573
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i84, label %.lr.ph.i.i.i.epil, !llvm.loop !12254

._crit_edge.thread.i.i.i84:                       ; preds = %._crit_edge.thread.i.i.i84.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %._crit_edge.i.i.i83
  %i.cf = phi i64 [ 1, %._crit_edge.i.i.i83 ], [ %i.bt, %.lr.ph.i.i.i.epil ], [ %i.bt, %._crit_edge.thread.i.i.i84.loopexit.unr-lcssa ]
  %.sroa.0.0.lcssa15.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %._crit_edge.i.i.i83 ], [ %i.cn, %._crit_edge.thread.i.i.i84.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i, align 8, !noalias !12573
  br label %._crit_edge.i.i.i83.thread

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.08.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.cn, %.lr.ph.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i, align 8, !noalias !12573
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1, align 8, !noalias !12573
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ch, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2, align 8, !noalias !12573
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3, align 8, !noalias !12573
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4, align 8, !noalias !12573
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5, align 8, !noalias !12573
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cl, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6, align 8, !noalias !12573
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cm, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7, align 8, !noalias !12573
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i84.loopexit.unr-lcssa, label %.lr.ph.i.i.i

._crit_edge.i.i.i83.thread:                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %._crit_edge.thread.i.i.i84, %._crit_edge.i.i.i83
  %.sroa.10.0.i.i.i962 = phi ptr [ %.sroa.10.0.i.i.i, %._crit_edge.thread.i.i.i84 ], [ %.sroa.10.0.i.i.i, %._crit_edge.i.i.i83 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ] ; 17 uses
end_hunk_0
