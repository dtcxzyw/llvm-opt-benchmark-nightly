Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-f11129950cf102f8.similar.cde5bf76a4ae79f3-cgu.00?download=true
inline.NumInlined: 114
inline.NumDeleted: 17
begin_hunk_0_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers13diff_deadlineSReBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a

_RNvMNtNtCshFZddwsEKsN_7similar10algorithms5myersNtB2_1V3new.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !80, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.q, align 8, !alias.scope !79
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !79
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZddwsEKsN_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMNtNtCshFZddwsEKsN_7similar10algorithms5myersNtB2_1V3new.exit
  %i.r = load i64, ptr %i.a, align 8, !range !3, !noalias !82, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !noalias !82, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.e, !prof !6

bb.c:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.v, align 8, !noalias !82
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #13
          to label %.noexc18 unwind label %bb.d

.noexc18:                                         ; preds = %bb.c
  unreachable

.body:                                            ; preds = %bb.i, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.x, %bb.d ], [ %i.ab, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.d) #14
          to label %common.resume unwind label %bb.m

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i, %bb.c, %_RNvMNtNtCshFZddwsEKsN_7similar10algorithms5myersNtB2_1V3new.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %i.v, align 8, !noalias !82, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.h, ptr %i.z, align 8, !alias.scope !81
  store i64 %i.u, ptr %i.c, align 8, !alias.scope !81
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i16, align 8, !alias.scope !81
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i17, align 8, !alias.scope !81
  invoke fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerSReBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef align 8 dereferenceable(32) %i.d, i64 %9, i32 noundef %10)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #14
          to label %.body unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECshFZddwsEKsN_7similar.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit23 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit23: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshFZddwsEKsN_7similar10algorithms5myers1VEBH_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.f, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3                      ; 2 uses
  %i.b = sub nuw i64 %3, %2                       ; 2 uses
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 9 uses
  %i.c = icmp ult i64 %5, %6                      ; 2 uses
  %i.d = sub nuw i64 %6, %5                       ; 2 uses
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 5 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 5 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 8 uses
  %i.i = add i64 %i.h, 1                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 20 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 8 uses
  %i.r = add i64 %i.q, 1                          ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 20 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.025.0, 1
  %i.z = add i64 %i.y, %.sroa.037.0
  %i.aa = lshr i64 %i.z, 1                        ; 3 uses
  %i.ab = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not126.not = icmp samesign ugt i64 %i.k, %i.aa
  br i1 %.not126.not, label %bb.g, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ac = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ac)
  %.not127.not = icmp samesign ugt i64 %i.t, %i.aa
  br i1 %.not127.not, label %.lr.ph220, label %bb.h, !prof !7

.lr.ph220:                                        ; preds = %bb.g
  %i.ad = add i64 %i.h, -1                        ; 2 uses
  %i.ae = add i64 %i.q, -1                        ; 2 uses
  %i.af = add i64 %.sroa.025.0, %2                ; 3 uses
  %i.ag = add i64 %.sroa.037.0, %5                ; 3 uses
  %i.ah = icmp ult i64 %i.i, %i.k
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  %i.aj = icmp ult i64 %i.r, %i.t
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph220, %._crit_edge216
  %.sroa.047.0219 = phi i64 [ 0, %.lr.ph220 ], [ %i.al, %._crit_edge216 ] ; 25 uses
  %i.al = add nuw nsw i64 %.sroa.047.0219, 1
  %i.am = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.am, label %._crit_edge221, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = sub nsw i64 0, %.sroa.047.0219          ; 10 uses
  %i.ao = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %i.an)
  switch i8 %i.ao, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.l
    i8 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i64 %.sroa.047.0219, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.11.1.peel = phi i1 [ true, %bb.j ], [ false, %bb.k ]
  %.sroa.7.1.peel = phi i64 [ %.sroa.047.0219, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %i.aq = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.aq, label %._crit_edge307.a, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pre324 = add i64 %i.ad, %.sroa.047.0219       ; 3 uses
  %i.ar = icmp ult i64 %.pre324, %i.k
  br i1 %i.ar, label %bb.n, label %.loopexit254.a

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre324
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = add i64 %i.at, 1
  br label %bb.p

._crit_edge307.a:                                 ; preds = %bb.l
  br i1 %i.ah, label %bb.o, label %.loopexit255.a

bb.o:                                             ; preds = %._crit_edge307.a
  %i.av = load i64, ptr %i.ai, align 8, !noundef !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.04.0.peel = phi i64 [ %i.av, %bb.o ], [ %i.au, %bb.n ] ; 6 uses
  %i.aw = sub i64 %.sroa.04.0.peel, %.sroa.047.0219 ; 3 uses
  %i.ax = icmp ult i64 %.sroa.04.0.peel, %i.b
  %.sroa.050.0.peel = select i1 %i.a, i1 %i.ax, i1 false
  %i.ay = icmp ult i64 %i.aw, %i.d
  %i.az = and i1 %i.c, %.sroa.050.0.peel
  %or.cond175.peel = select i1 %i.az, i1 %i.ay, i1 false
  br i1 %or.cond175.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = add i64 %.sroa.04.0.peel, %2
  %i.bb = add i64 %i.aw, %5
  %i.bc = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ba, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bb, i64 noundef %6)
  %i.bd = add i64 %i.bc, %.sroa.04.0.peel
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.04.1.peel = phi i64 [ %i.bd, %bb.q ], [ %.sroa.04.0.peel, %bb.p ] ; 2 uses
  %i.be = add i64 %.sroa.047.0219, %i.h           ; 3 uses
  %i.bf = icmp ult i64 %i.be, %i.k
  br i1 %i.bf, label %bb.s, label %.loopexit256

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be
  store i64 %.sroa.04.1.peel, ptr %i.bg, align 8
  br i1 %.not, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.010.0.peel = tail call i64 @llvm.abs.i64(i64 %i.bh, i1 false)
  %.not132.not.peel = icmp slt i64 %.sroa.010.0.peel, %.sroa.047.0219
  br i1 %.not132.not.peel, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bi = sub i64 %i.q, %i.bh                     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.t
  br i1 %i.bj, label %bb.v, label %.loopexit257

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = add i64 %i.bl, %.sroa.04.1.peel
  %.not133.peel = icmp ult i64 %i.bm, %.sroa.025.0
  br i1 %.not133.peel, label %bb.w, label %.loopexit258

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.s
  %.not.i.peel = icmp slt i64 %.sroa.7.1.peel, %i.an
  %or.cond176.peel = select i1 %.sroa.11.1.peel, i1 true, i1 %.not.i.peel
  br i1 %or.cond176.peel, label %.lr.ph215.preheader, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.w, %bb.bo
  %.sroa.7.0208 = phi i64 [ %.sroa.7.1, %bb.bo ], [ %.sroa.7.1.peel, %bb.w ] ; 4 uses
  %i.bn = add nsw i64 %.sroa.7.0208, -1           ; 8 uses
  %i.bo = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bn, i64 %i.an)
  switch i8 %i.bo, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit:                                        ; preds = %bb.j, %.lr.ph.peel.next
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next
  %i.bp = add i64 %.sroa.7.0208, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next
  %.sroa.11.1 = phi i1 [ true, %.lr.ph.peel.next ], [ false, %bb.x ]
  %.sroa.7.1 = phi i64 [ %i.bn, %.lr.ph.peel.next ], [ %i.bp, %bb.x ] ; 2 uses
  %i.bq = icmp eq i64 %i.bn, %i.an
  br i1 %i.bq, label %._crit_edge306.a, label %bb.bd

._crit_edge306.a:                                 ; preds = %bb.y
  %.pre320 = add i64 %i.h, %.sroa.7.0208
  br label %bb.be

.lr.ph215.preheader:                              ; preds = %bb.bo, %.lr.ph.peel.next, %bb.j, %bb.w
  %i.br = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %i.an)
  switch i8 %i.br, label %.loopexit276.a [
    i8 -1, label %._crit_edge216
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph215.preheader
  %i.bs = add nsw i64 %.sroa.047.0219, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph215.preheader
  %.sroa.7160.1.peel = phi i64 [ %.sroa.047.0219, %.lr.ph215.preheader ], [ %i.bs, %bb.z ] ; 2 uses
  %.sroa.12.1.peel = phi i1 [ true, %.lr.ph215.preheader ], [ false, %bb.z ]
  %i.bt = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.bt, label %._crit_edge311, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.pre316 = add i64 %i.ae, %.sroa.047.0219       ; 3 uses
  %i.bu = icmp ult i64 %.pre316, %i.t
  br i1 %i.bu, label %bb.ac, label %.loopexit279.a

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre316
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4
  %i.bx = add i64 %i.bw, 1
  br label %bb.ae

._crit_edge311:                                   ; preds = %bb.aa
  br i1 %i.aj, label %bb.ad, label %.loopexit280.a

bb.ad:                                            ; preds = %._crit_edge311
  %i.by = load i64, ptr %i.ak, align 8, !noundef !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.014.0.peel = phi i64 [ %i.by, %bb.ad ], [ %i.bx, %bb.ac ] ; 5 uses
  %i.bz = sub i64 %.sroa.014.0.peel, %.sroa.047.0219 ; 4 uses
  %i.ca = icmp ult i64 %.sroa.014.0.peel, %.sroa.025.0
  %i.cb = icmp ult i64 %i.bz, %.sroa.037.0
  %or.cond.peel = and i1 %i.ca, %i.cb
  br i1 %or.cond.peel, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cc = sub i64 %i.af, %.sroa.014.0.peel
  %i.cd = sub i64 %i.ag, %i.bz
  %i.ce = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %i.cd) ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.014.0.peel
  %i.cg = add i64 %i.ce, %i.bz
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.020.0.peel = phi i64 [ %i.cg, %bb.af ], [ %i.bz, %bb.ae ]
  %.sroa.014.1.peel = phi i64 [ %i.cf, %bb.af ], [ %.sroa.014.0.peel, %bb.ae ] ; 3 uses
  %i.ch = add i64 %.sroa.047.0219, %i.q           ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.t
  br i1 %i.ci, label %bb.ah, label %.loopexit281

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ch
  store i64 %.sroa.014.1.peel, ptr %i.cj, align 8
  br i1 %.not, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ck = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.024.0.peel = tail call i64 @llvm.abs.i64(i64 %i.ck, i1 false)
  %.not129.peel = icmp sgt i64 %.sroa.024.0.peel, %.sroa.047.0219
  br i1 %.not129.peel, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = sub i64 %i.h, %i.ck                     ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.k
  br i1 %i.cm, label %bb.ak, label %.loopexit282

bb.ak:                                            ; preds = %bb.aj
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  %i.cp = add i64 %i.co, %.sroa.014.1.peel
  %.not130.peel = icmp ult i64 %i.cp, %.sroa.025.0
  br i1 %.not130.peel, label %bb.al, label %.loopexit283

end_hunk_0
begin_hunk_1_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_:bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa241, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.ax
  %.sroa.020.0 = phi i64 [ %i.ds, %bb.ax ], [ %i.dh, %bb.au ]
  %.sroa.014.1 = phi i64 [ %i.dr, %bb.ax ], [ %.sroa.014.0, %bb.au ] ; 3 uses
  %i.dm = add i64 %i.cq, %i.q                     ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.t
  br i1 %i.dn, label %bb.ay, label %.loopexit281

bb.ax:                                            ; preds = %bb.au
  %i.do = sub i64 %i.af, %.sroa.014.0
  %i.dp = sub i64 %i.ag, %i.dh
  %i.dq = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %i.dp) ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.014.0
  %i.ds = add i64 %i.dq, %i.dh
  br label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dm
  store i64 %.sroa.014.1, ptr %i.dt, align 8
  br i1 %.not, label %bb.az, label %bb.ba

.loopexit281:                                     ; preds = %bb.ag, %bb.aw
  %.lcssa242 = phi i64 [ %i.dm, %bb.aw ], [ %i.ch, %bb.ag ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.du = sub i64 %i.cq, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.du, i1 false)
  %.not129 = icmp sgt i64 %.sroa.024.0, %.sroa.047.0219
  br i1 %.not129, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.bc, %bb.ay
  %.not.i134 = icmp slt i64 %.sroa.7160.1, %i.an
  %or.cond177 = or i1 %.sroa.12.1, %.not.i134
  br i1 %or.cond177, label %._crit_edge216, label %.lr.ph215.peel.next, !llvm.loop !83

bb.bb:                                            ; preds = %bb.az
  %i.dv = sub i64 %i.h, %i.du                     ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %i.k
  br i1 %i.dw, label %bb.bc, label %.loopexit282

bb.bc:                                            ; preds = %bb.bb
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dv
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !4
  %i.dz = add i64 %i.dy, %.sroa.014.1
  %.not130 = icmp ult i64 %i.dz, %.sroa.025.0
  br i1 %.not130, label %bb.ba, label %.loopexit283

.loopexit282:                                     ; preds = %bb.aj, %bb.bb
  %.lcssa249 = phi i64 [ %i.dv, %bb.bb ], [ %i.cl, %bb.aj ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13
  unreachable

.loopexit283:                                     ; preds = %bb.ak, %bb.bc
  %.sroa.020.0.lcssa248 = phi i64 [ %.sroa.020.0, %bb.bc ], [ %.sroa.020.0.peel, %bb.ak ]
  %.sroa.014.1.lcssa246 = phi i64 [ %.sroa.014.1, %bb.bc ], [ %.sroa.014.1.peel, %bb.ak ]
  %i.ea = sub i64 %i.af, %.sroa.014.1.lcssa246
  %i.eb = sub i64 %i.ag, %.sroa.020.0.lcssa248
  br label %._crit_edge221.sink.split

bb.bd:                                            ; preds = %bb.y
  %.not131 = icmp eq i64 %i.bn, %.sroa.047.0219
  %.pre322 = add i64 %i.ad, %i.bn                 ; 6 uses
  br i1 %.not131, label %._crit_edge305, label %bb.bf

bb.be:                                            ; preds = %._crit_edge306.a, %bb.bh
  %.pre-phi321 = phi i64 [ %.pre320, %._crit_edge306.a ], [ %i.ef, %bb.bh ] ; 3 uses
  %i.ec = icmp ult i64 %.pre-phi321, %i.k
  br i1 %i.ec, label %bb.bk, label %.loopexit255.a

._crit_edge305:                                   ; preds = %bb.bd, %bb.bh
  %i.ed = icmp ult i64 %.pre322, %i.k
  br i1 %i.ed, label %bb.bi, label %.loopexit254.a

bb.bf:                                            ; preds = %bb.bd
  %i.ee = icmp ult i64 %.pre322, %i.k
  br i1 %i.ee, label %bb.bg, label %.loopexit252.a

bb.bg:                                            ; preds = %bb.bf
  %i.ef = add i64 %i.h, %.sroa.7.0208             ; 4 uses
  %i.eg = icmp ult i64 %i.ef, %i.k
  br i1 %i.eg, label %bb.bh, label %.loopexit253.a

.loopexit252.a:                                   ; preds = %bb.bf
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !4
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ef
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !4
  %i.el = icmp ult i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.be, label %._crit_edge305

.loopexit253.a:                                   ; preds = %bb.bg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
  unreachable

bb.bi:                                            ; preds = %._crit_edge305
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.en = load i64, ptr %i.em, align 8, !noundef !4
  %i.eo = add i64 %i.en, 1
  br label %bb.bj

.loopexit254.a:                                   ; preds = %bb.m, %._crit_edge305
  %.lcssa225 = phi i64 [ %.pre322, %._crit_edge305 ], [ %.pre324, %bb.m ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %.sroa.04.0 = phi i64 [ %i.eu, %bb.bk ], [ %i.eo, %bb.bi ] ; 6 uses
  %i.ep = sub i64 %.sroa.04.0, %i.bn              ; 3 uses
  %i.eq = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.050.0 = select i1 %i.a, i1 %i.eq, i1 false
  %i.er = icmp ult i64 %i.ep, %i.d
  %i.es = and i1 %i.c, %.sroa.050.0
  %or.cond175 = select i1 %i.es, i1 %i.er, i1 false
  br i1 %or.cond175, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi321
  %i.eu = load i64, ptr %i.et, align 8, !noundef !4
  br label %bb.bj

.loopexit255.a:                                   ; preds = %._crit_edge307.a, %bb.be
  %.lcssa226.a = phi i64 [ %.pre-phi321, %bb.be ], [ %i.i, %._crit_edge307.a ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa226.a, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13
  unreachable

bb.bl:                                            ; preds = %bb.bj, %bb.bm
  %.sroa.04.1 = phi i64 [ %i.fa, %bb.bm ], [ %.sroa.04.0, %bb.bj ] ; 2 uses
  %i.ev = add i64 %i.bn, %i.h                     ; 3 uses
  %i.ew = icmp ult i64 %i.ev, %i.k
  br i1 %i.ew, label %bb.bn, label %.loopexit256

bb.bm:                                            ; preds = %bb.bj
  %i.ex = add i64 %.sroa.04.0, %2
  %i.ey = add i64 %i.ep, %5
  %i.ez = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ex, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.ey, i64 noundef %6)
  %i.fa = add i64 %i.ez, %.sroa.04.0
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bl
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ev
  store i64 %.sroa.04.1, ptr %i.fb, align 8
  br i1 %.not, label %bb.bo, label %bb.bp

.loopexit256:                                     ; preds = %bb.r, %bb.bl
  %.lcssa232.a = phi i64 [ %i.ev, %bb.bl ], [ %i.be, %bb.r ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232.a, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13
  unreachable

bb.bo:                                            ; preds = %bb.bp, %bb.br, %bb.bn
  %.not.i = icmp slt i64 %.sroa.7.1, %i.an
  %or.cond176 = or i1 %.sroa.11.1, %.not.i
  br i1 %or.cond176, label %.lr.ph215.preheader, label %.lr.ph.peel.next, !llvm.loop !84

bb.bp:                                            ; preds = %bb.bn
  %i.fc = sub i64 %i.bn, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.fc, i1 false)
  %.not132.not = icmp slt i64 %.sroa.010.0, %.sroa.047.0219
  br i1 %.not132.not, label %bb.bq, label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  %i.fd = sub i64 %i.q, %i.fc                     ; 3 uses
  %i.fe = icmp ult i64 %i.fd, %i.t
  br i1 %i.fe, label %bb.br, label %.loopexit257

bb.br:                                            ; preds = %bb.bq
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !4
  %i.fh = add i64 %i.fg, %.sroa.04.1
  %.not133 = icmp ult i64 %i.fh, %.sroa.025.0
  br i1 %.not133, label %bb.bo, label %.loopexit258

.loopexit257:                                     ; preds = %bb.u, %bb.bq
  %.lcssa235 = phi i64 [ %i.fd, %bb.bq ], [ %i.bi, %bb.u ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13
  unreachable

.loopexit258:                                     ; preds = %bb.v, %bb.br
  %.sroa.04.0.lcssa231 = phi i64 [ %.sroa.04.0, %bb.br ], [ %.sroa.04.0.peel, %bb.v ]
  %.lcssa229 = phi i64 [ %i.ep, %bb.br ], [ %i.aw, %bb.v ]
  %i.fi = add i64 %.sroa.04.0.lcssa231, %2
  %i.fj = add i64 %.lcssa229, %5
  br label %._crit_edge221.sink.split

._crit_edge221.sink.split:                        ; preds = %.loopexit258, %.loopexit283
  %.sink480 = phi i64 [ %i.ea, %.loopexit283 ], [ %i.fi, %.loopexit258 ]
  %.sink478 = phi i64 [ %i.eb, %.loopexit283 ], [ %i.fj, %.loopexit258 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink480, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink478, ptr %i.fl, align 8
  br label %._crit_edge221

._crit_edge221:                                   ; preds = %bb.i, %._crit_edge216, %._crit_edge221.sink.split
  %.sink = phi i64 [ 1, %._crit_edge221.sink.split ], [ 0, %._crit_edge216 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeSReB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6, i64 noundef %7, i64 noundef %8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %9, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %10, i64 %11, i32 noundef range(i32 -1, 1000000000) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %3, %4                      ; 2 uses
  %i.b = sub nuw i64 %4, %3                       ; 2 uses
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %3) ; 9 uses
  %i.c = icmp ult i64 %7, %8                      ; 2 uses
  %i.d = sub nuw i64 %8, %7                       ; 2 uses
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %8, i64 %7) ; 5 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 5 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 8 uses
  %i.i = add i64 %i.h, 1                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 20 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 8 uses
  %i.r = add i64 %i.q, 1                          ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 20 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.025.0, 1
  %i.z = add i64 %i.y, %.sroa.037.0
  %i.aa = lshr i64 %i.z, 1                        ; 3 uses
  %i.ab = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not126.not = icmp samesign ugt i64 %i.k, %i.aa
  br i1 %.not126.not, label %bb.g, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ac = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ac)
  %.not127.not = icmp samesign ugt i64 %i.t, %i.aa
  br i1 %.not127.not, label %.lr.ph220, label %bb.h, !prof !7

.lr.ph220:                                        ; preds = %bb.g
  %i.ad = add i64 %i.h, -1                        ; 2 uses
  %i.ae = add i64 %i.q, -1                        ; 2 uses
  %i.af = add i64 %.sroa.025.0, %3                ; 3 uses
  %i.ag = add i64 %.sroa.037.0, %7                ; 3 uses
  %i.ah = icmp ult i64 %i.i, %i.k
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  %i.aj = icmp ult i64 %i.r, %i.t
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

bb.i:                                             ; preds = %.lr.ph220, %._crit_edge216
  %.sroa.047.0219 = phi i64 [ 0, %.lr.ph220 ], [ %i.al, %._crit_edge216 ] ; 25 uses
  %i.al = add nuw nsw i64 %.sroa.047.0219, 1
  %i.am = tail call noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %11, i32 noundef %12)
  br i1 %i.am, label %._crit_edge221, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = sub nsw i64 0, %.sroa.047.0219          ; 10 uses
  %i.ao = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %i.an)
  switch i8 %i.ao, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.l
    i8 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i64 %.sroa.047.0219, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.11.1.peel = phi i1 [ true, %bb.j ], [ false, %bb.k ]
  %.sroa.7.1.peel = phi i64 [ %.sroa.047.0219, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %i.aq = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.aq, label %._crit_edge307.a, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pre324 = add i64 %i.ad, %.sroa.047.0219       ; 3 uses
  %i.ar = icmp ult i64 %.pre324, %i.k
  br i1 %i.ar, label %bb.n, label %.loopexit254.a

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre324
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = add i64 %i.at, 1
  br label %bb.p

._crit_edge307.a:                                 ; preds = %bb.l
  br i1 %i.ah, label %bb.o, label %.loopexit255.a

bb.o:                                             ; preds = %._crit_edge307.a
  %i.av = load i64, ptr %i.ai, align 8, !noundef !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.04.0.peel = phi i64 [ %i.av, %bb.o ], [ %i.au, %bb.n ] ; 6 uses
  %i.aw = sub i64 %.sroa.04.0.peel, %.sroa.047.0219 ; 3 uses
  %i.ax = icmp ult i64 %.sroa.04.0.peel, %i.b
  %.sroa.050.0.peel = select i1 %i.a, i1 %i.ax, i1 false
  %i.ay = icmp ult i64 %i.aw, %i.d
  %i.az = and i1 %i.c, %.sroa.050.0.peel
  %or.cond175.peel = select i1 %i.az, i1 %i.ay, i1 false
  br i1 %or.cond175.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = add i64 %.sroa.04.0.peel, %3
  %i.bb = add i64 %i.aw, %7
  %i.bc = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ba, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bb, i64 noundef %8)
  %i.bd = add i64 %i.bc, %.sroa.04.0.peel
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.04.1.peel = phi i64 [ %i.bd, %bb.q ], [ %.sroa.04.0.peel, %bb.p ] ; 2 uses
  %i.be = add i64 %.sroa.047.0219, %i.h           ; 3 uses
  %i.bf = icmp ult i64 %i.be, %i.k
  br i1 %i.bf, label %bb.s, label %.loopexit256

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be
  store i64 %.sroa.04.1.peel, ptr %i.bg, align 8
  br i1 %.not, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.010.0.peel = tail call i64 @llvm.abs.i64(i64 %i.bh, i1 false)
  %.not132.not.peel = icmp slt i64 %.sroa.010.0.peel, %.sroa.047.0219
  br i1 %.not132.not.peel, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bi = sub i64 %i.q, %i.bh                     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.t
  br i1 %i.bj, label %bb.v, label %.loopexit257

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = add i64 %i.bl, %.sroa.04.1.peel
  %.not133.peel = icmp ult i64 %i.bm, %.sroa.025.0
  br i1 %.not133.peel, label %bb.w, label %.loopexit258

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.s
  %.not.i.peel = icmp slt i64 %.sroa.7.1.peel, %i.an
  %or.cond176.peel = select i1 %.sroa.11.1.peel, i1 true, i1 %.not.i.peel
  br i1 %or.cond176.peel, label %.lr.ph215.preheader, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.w, %bb.bo
  %.sroa.7.0208 = phi i64 [ %.sroa.7.1, %bb.bo ], [ %.sroa.7.1.peel, %bb.w ] ; 4 uses
  %i.bn = add nsw i64 %.sroa.7.0208, -1           ; 8 uses
  %i.bo = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bn, i64 %i.an)
  switch i8 %i.bo, label %.loopexit [
    i8 -1, label %.lr.ph215.preheader
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit:                                        ; preds = %bb.j, %.lr.ph.peel.next
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next
  %i.bp = add i64 %.sroa.7.0208, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next
  %.sroa.11.1 = phi i1 [ true, %.lr.ph.peel.next ], [ false, %bb.x ]
  %.sroa.7.1 = phi i64 [ %i.bn, %.lr.ph.peel.next ], [ %i.bp, %bb.x ] ; 2 uses
  %i.bq = icmp eq i64 %i.bn, %i.an
  br i1 %i.bq, label %._crit_edge306.a, label %bb.bd

._crit_edge306.a:                                 ; preds = %bb.y
  %.pre320 = add i64 %i.h, %.sroa.7.0208
  br label %bb.be

.lr.ph215.preheader:                              ; preds = %bb.bo, %.lr.ph.peel.next, %bb.j, %bb.w
  %i.br = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.047.0219, i64 %i.an)
  switch i8 %i.br, label %.loopexit276.a [
    i8 -1, label %._crit_edge216
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph215.preheader
  %i.bs = add nsw i64 %.sroa.047.0219, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph215.preheader
  %.sroa.7160.1.peel = phi i64 [ %.sroa.047.0219, %.lr.ph215.preheader ], [ %i.bs, %bb.z ] ; 2 uses
  %.sroa.12.1.peel = phi i1 [ true, %.lr.ph215.preheader ], [ false, %bb.z ]
  %i.bt = icmp eq i64 %.sroa.047.0219, 0
  br i1 %i.bt, label %._crit_edge311, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.pre316 = add i64 %i.ae, %.sroa.047.0219       ; 3 uses
  %i.bu = icmp ult i64 %.pre316, %i.t
  br i1 %i.bu, label %bb.ac, label %.loopexit279.a

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre316
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !4
  %i.bx = add i64 %i.bw, 1
  br label %bb.ae

._crit_edge311:                                   ; preds = %bb.aa
  br i1 %i.aj, label %bb.ad, label %.loopexit280.a

bb.ad:                                            ; preds = %._crit_edge311
  %i.by = load i64, ptr %i.ak, align 8, !noundef !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.014.0.peel = phi i64 [ %i.by, %bb.ad ], [ %i.bx, %bb.ac ] ; 5 uses
  %i.bz = sub i64 %.sroa.014.0.peel, %.sroa.047.0219 ; 4 uses
  %i.ca = icmp ult i64 %.sroa.014.0.peel, %.sroa.025.0
  %i.cb = icmp ult i64 %i.bz, %.sroa.037.0
  %or.cond.peel = and i1 %i.ca, %i.cb
  br i1 %or.cond.peel, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cc = sub i64 %i.af, %.sroa.014.0.peel
  %i.cd = sub i64 %i.ag, %i.bz
  %i.ce = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %i.cd) ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.014.0.peel
  %i.cg = add i64 %i.ce, %i.bz
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.020.0.peel = phi i64 [ %i.cg, %bb.af ], [ %i.bz, %bb.ae ]
  %.sroa.014.1.peel = phi i64 [ %i.cf, %bb.af ], [ %.sroa.014.0.peel, %bb.ae ] ; 3 uses
  %i.ch = add i64 %.sroa.047.0219, %i.q           ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.t
  br i1 %i.ci, label %bb.ah, label %.loopexit281

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ch
  store i64 %.sroa.014.1.peel, ptr %i.cj, align 8
  br i1 %.not, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ck = sub i64 %.sroa.047.0219, %i.e           ; 2 uses
  %.sroa.024.0.peel = tail call i64 @llvm.abs.i64(i64 %i.ck, i1 false)
  %.not129.peel = icmp sgt i64 %.sroa.024.0.peel, %.sroa.047.0219
  br i1 %.not129.peel, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = sub i64 %i.h, %i.ck                     ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.k
  br i1 %i.cm, label %bb.ak, label %.loopexit282

bb.ak:                                            ; preds = %bb.aj
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  %i.cp = add i64 %i.co, %.sroa.014.1.peel
  %.not130.peel = icmp ult i64 %i.cp, %.sroa.025.0
  br i1 %.not130.peel, label %bb.al, label %.loopexit283

end_hunk_1
begin_hunk_2_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeSReB13_EB6_:bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa241, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.ax
  %.sroa.020.0 = phi i64 [ %i.ds, %bb.ax ], [ %i.dh, %bb.au ]
  %.sroa.014.1 = phi i64 [ %i.dr, %bb.ax ], [ %.sroa.014.0, %bb.au ] ; 3 uses
  %i.dm = add i64 %i.cq, %i.q                     ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.t
  br i1 %i.dn, label %bb.ay, label %.loopexit281

bb.ax:                                            ; preds = %bb.au
  %i.do = sub i64 %i.af, %.sroa.014.0
  %i.dp = sub i64 %i.ag, %i.dh
  %i.dq = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %i.dp) ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.014.0
  %i.ds = add i64 %i.dq, %i.dh
  br label %bb.aw

bb.ay:                                            ; preds = %bb.aw
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dm
  store i64 %.sroa.014.1, ptr %i.dt, align 8
  br i1 %.not, label %bb.az, label %bb.ba

.loopexit281:                                     ; preds = %bb.ag, %bb.aw
  %.lcssa242 = phi i64 [ %i.dm, %bb.aw ], [ %i.ch, %bb.ag ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa242, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.du = sub i64 %i.cq, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.du, i1 false)
  %.not129 = icmp sgt i64 %.sroa.024.0, %.sroa.047.0219
  br i1 %.not129, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.bc, %bb.ay
  %.not.i134 = icmp slt i64 %.sroa.7160.1, %i.an
  %or.cond177 = or i1 %.sroa.12.1, %.not.i134
  br i1 %or.cond177, label %._crit_edge216, label %.lr.ph215.peel.next, !llvm.loop !85

bb.bb:                                            ; preds = %bb.az
  %i.dv = sub i64 %i.h, %i.du                     ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %i.k
  br i1 %i.dw, label %bb.bc, label %.loopexit282

bb.bc:                                            ; preds = %bb.bb
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dv
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !4
  %i.dz = add i64 %i.dy, %.sroa.014.1
  %.not130 = icmp ult i64 %i.dz, %.sroa.025.0
  br i1 %.not130, label %bb.ba, label %.loopexit283

.loopexit282:                                     ; preds = %bb.aj, %bb.bb
  %.lcssa249 = phi i64 [ %i.dv, %bb.bb ], [ %i.cl, %bb.aj ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa249, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13
  unreachable

.loopexit283:                                     ; preds = %bb.ak, %bb.bc
  %.sroa.020.0.lcssa248 = phi i64 [ %.sroa.020.0, %bb.bc ], [ %.sroa.020.0.peel, %bb.ak ]
  %.sroa.014.1.lcssa246 = phi i64 [ %.sroa.014.1, %bb.bc ], [ %.sroa.014.1.peel, %bb.ak ]
  %i.ea = sub i64 %i.af, %.sroa.014.1.lcssa246
  %i.eb = sub i64 %i.ag, %.sroa.020.0.lcssa248
  br label %._crit_edge221.sink.split

bb.bd:                                            ; preds = %bb.y
  %.not131 = icmp eq i64 %i.bn, %.sroa.047.0219
  %.pre322 = add i64 %i.ad, %i.bn                 ; 6 uses
  br i1 %.not131, label %._crit_edge305, label %bb.bf

bb.be:                                            ; preds = %._crit_edge306.a, %bb.bh
  %.pre-phi321 = phi i64 [ %.pre320, %._crit_edge306.a ], [ %i.ef, %bb.bh ] ; 3 uses
  %i.ec = icmp ult i64 %.pre-phi321, %i.k
  br i1 %i.ec, label %bb.bk, label %.loopexit255.a

._crit_edge305:                                   ; preds = %bb.bd, %bb.bh
  %i.ed = icmp ult i64 %.pre322, %i.k
  br i1 %i.ed, label %bb.bi, label %.loopexit254.a

bb.bf:                                            ; preds = %bb.bd
  %i.ee = icmp ult i64 %.pre322, %i.k
  br i1 %i.ee, label %bb.bg, label %.loopexit252.a

bb.bg:                                            ; preds = %bb.bf
  %i.ef = add i64 %i.h, %.sroa.7.0208             ; 4 uses
  %i.eg = icmp ult i64 %i.ef, %i.k
  br i1 %i.eg, label %bb.bh, label %.loopexit253.a

.loopexit252.a:                                   ; preds = %bb.bf
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !4
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ef
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !4
  %i.el = icmp ult i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.be, label %._crit_edge305

.loopexit253.a:                                   ; preds = %bb.bg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
  unreachable

bb.bi:                                            ; preds = %._crit_edge305
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre322
  %i.en = load i64, ptr %i.em, align 8, !noundef !4
  %i.eo = add i64 %i.en, 1
  br label %bb.bj

.loopexit254.a:                                   ; preds = %bb.m, %._crit_edge305
  %.lcssa225 = phi i64 [ %.pre322, %._crit_edge305 ], [ %.pre324, %bb.m ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa225, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %.sroa.04.0 = phi i64 [ %i.eu, %bb.bk ], [ %i.eo, %bb.bi ] ; 6 uses
  %i.ep = sub i64 %.sroa.04.0, %i.bn              ; 3 uses
  %i.eq = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.050.0 = select i1 %i.a, i1 %i.eq, i1 false
  %i.er = icmp ult i64 %i.ep, %i.d
  %i.es = and i1 %i.c, %.sroa.050.0
  %or.cond175 = select i1 %i.es, i1 %i.er, i1 false
  br i1 %or.cond175, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi321
  %i.eu = load i64, ptr %i.et, align 8, !noundef !4
  br label %bb.bj

.loopexit255.a:                                   ; preds = %._crit_edge307.a, %bb.be
  %.lcssa226.a = phi i64 [ %.pre-phi321, %bb.be ], [ %i.i, %._crit_edge307.a ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa226.a, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13
  unreachable

bb.bl:                                            ; preds = %bb.bj, %bb.bm
  %.sroa.04.1 = phi i64 [ %i.fa, %bb.bm ], [ %.sroa.04.0, %bb.bj ] ; 2 uses
  %i.ev = add i64 %i.bn, %i.h                     ; 3 uses
  %i.ew = icmp ult i64 %i.ev, %i.k
  br i1 %i.ew, label %bb.bn, label %.loopexit256

bb.bm:                                            ; preds = %bb.bj
  %i.ex = add i64 %.sroa.04.0, %3
  %i.ey = add i64 %i.ep, %7
  %i.ez = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ex, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.ey, i64 noundef %8)
  %i.fa = add i64 %i.ez, %.sroa.04.0
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bl
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ev
  store i64 %.sroa.04.1, ptr %i.fb, align 8
  br i1 %.not, label %bb.bo, label %bb.bp

.loopexit256:                                     ; preds = %bb.r, %bb.bl
  %.lcssa232.a = phi i64 [ %i.ev, %bb.bl ], [ %i.be, %bb.r ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa232.a, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13
  unreachable

bb.bo:                                            ; preds = %bb.bp, %bb.br, %bb.bn
  %.not.i = icmp slt i64 %.sroa.7.1, %i.an
  %or.cond176 = or i1 %.sroa.11.1, %.not.i
  br i1 %or.cond176, label %.lr.ph215.preheader, label %.lr.ph.peel.next, !llvm.loop !86

bb.bp:                                            ; preds = %bb.bn
  %i.fc = sub i64 %i.bn, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.fc, i1 false)
  %.not132.not = icmp slt i64 %.sroa.010.0, %.sroa.047.0219
  br i1 %.not132.not, label %bb.bq, label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  %i.fd = sub i64 %i.q, %i.fc                     ; 3 uses
  %i.fe = icmp ult i64 %i.fd, %i.t
  br i1 %i.fe, label %bb.br, label %.loopexit257

bb.br:                                            ; preds = %bb.bq
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !4
  %i.fh = add i64 %i.fg, %.sroa.04.1
  %.not133 = icmp ult i64 %i.fh, %.sroa.025.0
  br i1 %.not133, label %bb.bo, label %.loopexit258

.loopexit257:                                     ; preds = %bb.u, %bb.bq
  %.lcssa235 = phi i64 [ %i.fd, %bb.bq ], [ %i.bi, %bb.u ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa235, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13
  unreachable

.loopexit258:                                     ; preds = %bb.v, %bb.br
  %.sroa.04.0.lcssa231 = phi i64 [ %.sroa.04.0, %bb.br ], [ %.sroa.04.0.peel, %bb.v ]
  %.lcssa229 = phi i64 [ %i.ep, %bb.br ], [ %i.aw, %bb.v ]
  %i.fi = add i64 %.sroa.04.0.lcssa231, %3
  %i.fj = add i64 %.lcssa229, %7
  br label %._crit_edge221.sink.split

._crit_edge221.sink.split:                        ; preds = %.loopexit258, %.loopexit283
  %.sink480 = phi i64 [ %i.ea, %.loopexit283 ], [ %i.fi, %.loopexit258 ]
  %.sink478 = phi i64 [ %i.eb, %.loopexit283 ], [ %i.fj, %.loopexit258 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink480, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink478, ptr %i.fl, align 8
  br label %._crit_edge221

._crit_edge221:                                   ; preds = %bb.i, %._crit_edge216, %._crit_edge221.sink.split
  %.sink = phi i64 [ 1, %._crit_edge221.sink.split ], [ 0, %._crit_edge216 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.c = add i64 %i.b, %2                         ; 10 uses
  %i.d = add i64 %i.b, %5                         ; 10 uses
  %i.e = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %6) ; 4 uses
  %i.f = sub i64 %3, %i.e                         ; 6 uses
  %i.g = sub i64 %6, %i.e                         ; 6 uses
  %.not16 = icmp ult i64 %i.c, %i.f               ; 2 uses
  %.not17 = icmp ult i64 %i.d, %i.g               ; 2 uses
  %or.cond = or i1 %.not16, %.not17
  br i1 %or.cond, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !143, !nonnull !4, !align !9, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !144, !noalias !143, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !145, !noalias !146, !noundef !4 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !10, !alias.scope !145, !noalias !146, !noundef !4
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !146
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !145, !noalias !146, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store i64 0, ptr %i.q, align 8, !noalias !147
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !147
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %5, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !147
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !147
  %i.r = add i64 %i.l, 1
  store i64 %i.r, ptr %i.k, align 8, !alias.scope !145, !noalias !146
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  br i1 %.not17, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34, %bb.o
  %.not19 = icmp eq i64 %i.e, 0
  br i1 %.not19, label %bb.t, label %bb.r

bb.g:                                             ; preds = %bb.e
  br i1 %.not16, label %bb.j, label %bb.p

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.s = load ptr, ptr %0, align 8, !alias.scope !150, !nonnull !4, !align !9, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !151, !noalias !150, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !152, !noalias !153, !noundef !4 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !10, !alias.scope !152, !noalias !153, !noundef !4
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.i, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !153
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit31: ; preds = %bb.h, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !152, !noalias !153, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 1, ptr %i.ab, align 8, !noalias !154
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.c, ptr %.sroa.459.0..sroa_idx, align 8, !noalias !154
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.560.0..sroa_idx, align 8, !noalias !154
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.d, ptr %.sroa.661.0..sroa_idx, align 8, !noalias !154
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !152, !noalias !153
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.ad = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.d, i64 noundef %i.ai, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ag, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.ai, i64 noundef %i.g, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.aj = sub nuw i64 %i.f, %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !157, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !158, !noalias !157, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !159, !noalias !160, !noundef !4 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !10, !alias.scope !159, !noalias !160, !noundef !4
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.m, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !noalias !160
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32: ; preds = %bb.l, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !159, !noalias !160, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 1, ptr %i.at, align 8, !noalias !161
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.c, ptr %.sroa.454.0..sroa_idx, align 8, !noalias !161
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.aj, ptr %.sroa.555.0..sroa_idx, align 8, !noalias !161
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8, !noalias !161
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !159, !noalias !160
  %i.av = sub nuw i64 %i.g, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.aw = load ptr, ptr %i.ak, align 8, !alias.scope !162, !noalias !163, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 120 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !164, !noalias !165, !noundef !4 ; 3 uses
  %i.ba = load i64, ptr %i.ax, align 8, !range !10, !alias.scope !164, !noalias !165, !noundef !4
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33

bb.n:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax), !noalias !165
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit32, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !164, !noalias !165, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.az ; 4 uses
  store i64 2, ptr %i.be, align 8, !noalias !166
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.c, ptr %.sroa.464.0..sroa_idx, align 8, !noalias !166
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.d, ptr %.sroa.565.0..sroa_idx, align 8, !noalias !166
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %i.av, ptr %.sroa.666.0..sroa_idx, align 8, !noalias !166
  %i.bf = add i64 %i.az, 1
  store i64 %i.bf, ptr %i.ay, align 8, !alias.scope !164, !noalias !165
  br label %bb.o

bb.o:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit33, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.p:                                             ; preds = %bb.g
  %i.bg = sub nuw i64 %i.g, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !169, !nonnull !4, !align !9, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !170, !noalias !169, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 120 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 136 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !171, !noalias !172, !noundef !4 ; 3 uses
  %i.bm = load i64, ptr %i.bj, align 8, !range !10, !alias.scope !171, !noalias !172, !noundef !4
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.q, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj), !noalias !172
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit34: ; preds = %bb.p, %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !171, !noalias !172, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %i.bl ; 4 uses
end_hunk_2
