inline.NumInlined: 123
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCshhQDFPpdXZx_10regex_lite3hirNtB4_3Hir10repetition:bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 64, i64 noundef 8) #17
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.o = phi ptr [ %i.v, %bb.g ], [ %i.m, %bb.c ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 64, i64 noundef 8) #17
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.p = load i32, ptr %1, align 8, !range !116, !noundef !44
  %i.q = trunc nuw i32 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 1
  %or.cond28 = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond28, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !44, !noundef !44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false)
  br label %bb.e

bb.h:                                             ; preds = %bb.l, %bb.e
  ret void

bb.i:                                             ; preds = %bb.a, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !44, !noundef !44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !range !115, !noundef !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 57
  %i.ab = load i8, ptr %i.aa, align 1, !range !115, !noundef !44
  %i.ac = load i64, ptr %i.x, align 8, !range !117, !noundef !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !44, !noundef !44 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !117, !noundef !44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = trunc nuw i64 %i.ah to i1
  %i.al = icmp ne i64 %i.aj, 0
  %spec.select.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %spec.select.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %narrow = select i1 %i.e, i1 %i.g, i1 false
  %spec.select29 = zext i1 %narrow to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.sroa.03.024 = phi i8 [ 1, %bb.k ], [ %i.ab, %bb.i ], [ 1, %bb.j ]
  %.sroa.0.01822 = phi i8 [ 0, %bb.k ], [ %i.z, %bb.i ], [ 0, %bb.j ]
  %.sroa.5.0 = phi i64 [ 0, %bb.k ], [ %i.ae, %bb.i ], [ %i.aj, %bb.j ]
  %.sroa.04.0 = phi i64 [ %spec.select29, %bb.k ], [ %i.ac, %bb.i ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 4, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4, i64 30, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.0.01822, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.03.024, ptr %i.ao, align 1
  store i64 %.sroa.04.0, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCshhQDFPpdXZx_10regex_lite3hirNtB4_3Hir11alternation(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [30 x i8], align 2            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !44 ; 4 uses
  %i.c = icmp ult i64 %i.b, 144115188075855872
  tail call void @llvm.assume(i1 %i.c)
  switch i64 %i.b, label %bb.h [
    i64 0, label %bb.b
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.d, align 8
  %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.418.sroa.3.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.f, align 1
  store i64 1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1b_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1i_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1i_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1b_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !44, !noundef !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  br label %bb.c

bb.g:                                             ; preds = %.split63.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1b_.exit
  ret void

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !44, !noundef !44 ; 11 uses
  %.idx = shl nuw nsw i64 %i.b, 6
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.p = load i8, ptr %i.o, align 8, !range !115, !noalias !118, !noundef !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 57
  %i.r = load i8, ptr %i.q, align 1, !range !115, !noalias !121, !noundef !44
  %i.s = load i64, ptr %i.m, align 8, !range !117, !noundef !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = trunc nuw i8 %i.p to i1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.x = load i8, ptr %i.w, align 8, !range !115, !noundef !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.011.1.peel = phi i8 [ %i.x, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.y = trunc nuw i8 %i.r to i1
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 57
  %i.aa = load i8, ptr %i.z, align 1, !range !115, !noundef !44
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.013.1.peel = phi i8 [ %i.aa, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.ab = trunc nuw i64 %i.s to i1
  %i.ac = load i64, ptr %i.m, align 8, !range !117, !noundef !44
  %i.ad = trunc nuw i64 %i.ac to i1               ; 2 uses
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ad, label %bb.o, label %.split61.peel.next

bb.n:                                             ; preds = %bb.l
  br i1 %i.ad, label %.split.peel, label %bb.o

.split.peel:                                      ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !44
  %.not.peel = icmp eq i64 %i.u, %i.af
  br i1 %.not.peel, label %.split61.peel.next, label %bb.o

bb.o:                                             ; preds = %.split.peel, %bb.n, %bb.m
  br label %.split61.peel.next

.split61.peel.next:                               ; preds = %bb.o, %.split.peel, %bb.m
  %.sroa.5.2.peel = phi i64 [ undef, %bb.o ], [ %i.u, %bb.m ], [ %i.u, %.split.peel ] ; 2 uses
  %.sroa.02.2.peel = phi i64 [ 0, %bb.o ], [ 0, %bb.m ], [ 1, %.split.peel ] ; 2 uses
  %i.ag = icmp eq i64 %i.b, 1
  br i1 %i.ag, label %.split63.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split61.peel.next
  %.sroa.58.080 = getelementptr i8, ptr %i.m, i64 64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.58.086 = phi ptr [ %.sroa.58.080, %.lr.ph ], [ %.sroa.58.0, %bb.x ] ; 3 uses
  %.sroa.02.185 = phi i64 [ %.sroa.02.2.peel, %.lr.ph ], [ %.sroa.02.2, %bb.x ]
  %.sroa.5.184 = phi i64 [ %.sroa.5.2.peel, %.lr.ph ], [ %.sroa.5.2, %bb.x ] ; 3 uses
  %.sroa.58.0.pn83 = phi ptr [ %i.m, %.lr.ph ], [ %.sroa.58.086, %bb.x ] ; 3 uses
  %.sroa.013.082 = phi i8 [ %.sroa.013.1.peel, %.lr.ph ], [ %.sroa.013.1, %bb.x ]
  %.sroa.011.081 = phi i8 [ %.sroa.011.1.peel, %.lr.ph ], [ %.sroa.011.1, %bb.x ]
  %i.ah = trunc nuw i8 %.sroa.011.081 to i1
  br i1 %i.ah, label %bb.q, label %bb.r

.split63.us:                                      ; preds = %bb.x, %.split61.peel.next
  %.sroa.011.0.lcssa = phi i8 [ %.sroa.011.1.peel, %.split61.peel.next ], [ %.sroa.011.1, %bb.x ]
  %.sroa.013.0.lcssa = phi i8 [ %.sroa.013.1.peel, %.split61.peel.next ], [ %.sroa.013.1, %bb.x ]
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.2.peel, %.split61.peel.next ], [ %.sroa.5.2, %bb.x ]
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.2.peel, %.split61.peel.next ], [ %.sroa.02.2, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 7, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4, i64 30, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.011.0.lcssa, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.013.0.lcssa, ptr %i.ak, align 1
  store i64 %.sroa.02.1.lcssa, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.1.lcssa, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.g

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr i8, ptr %.sroa.58.0.pn83, i64 120
  %i.an = load i8, ptr %i.am, align 8, !range !115, !noundef !44
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.011.1 = phi i8 [ %i.an, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.ao = trunc nuw i8 %.sroa.013.082 to i1
  br i1 %i.ao, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr i8, ptr %.sroa.58.0.pn83, i64 121
  %i.aq = load i8, ptr %i.ap, align 1, !range !115, !noundef !44
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.013.1 = phi i8 [ %i.aq, %bb.s ], [ 1, %bb.r ] ; 2 uses
  %i.ar = trunc nuw i64 %.sroa.02.185 to i1
  %i.as = load i64, ptr %.sroa.58.086, align 8, !range !117, !noundef !44
  %i.at = trunc nuw i64 %i.as to i1               ; 2 uses
  br i1 %i.ar, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %i.at, label %.split, label %bb.w

bb.v:                                             ; preds = %bb.t
  br i1 %i.at, label %bb.w, label %bb.x

.split:                                           ; preds = %bb.u
  %i.au = getelementptr i8, ptr %.sroa.58.0.pn83, i64 72
  %i.av = load i64, ptr %i.au, align 8, !noundef !44
  %.not = icmp eq i64 %.sroa.5.184, %i.av
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.split, %bb.u, %bb.v
  br label %bb.x

bb.x:                                             ; preds = %.split, %bb.w, %bb.v
  %.sroa.5.2 = phi i64 [ undef, %bb.w ], [ %.sroa.5.184, %bb.v ], [ %.sroa.5.184, %.split ] ; 2 uses
  %.sroa.02.2 = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ 1, %.split ] ; 2 uses
  %.sroa.58.0 = getelementptr i8, ptr %.sroa.58.086, i64 64 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0) ]
  %i.aw = icmp eq ptr %.sroa.58.0, %i.n
  br i1 %i.aw, label %.split63.us, label %bb.p, !llvm.loop !124
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCshhQDFPpdXZx_10regex_lite3hirNtB4_3Hir5parse(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCshhQDFPpdXZx_10regex_lite3hir5parseNtB2_6Parser3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  invoke void @_RNvMs_NtNtCshhQDFPpdXZx_10regex_lite3hir5parseNtB4_6Parser5parse(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshhQDFPpdXZx_10regex_lite3hir5parse6ParserEBH_(ptr noalias noundef align 8 dereferenceable(96) %i.a) #15
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshhQDFPpdXZx_10regex_lite3hir5parse6ParserEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCshhQDFPpdXZx_10regex_lite3hir5parse6ParserEBH_.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshhQDFPpdXZx_10regex_lite(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCshhQDFPpdXZx_10regex_lite3hirNtB4_3Hir6concat(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [30 x i8], align 2            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !44 ; 3 uses
  %i.c = icmp ult i64 %i.b, 144115188075855872
  tail call void @llvm.assume(i1 %i.c)
  switch i64 %i.b, label %.lr.ph.preheader [
    i64 0, label %bb.b
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 1, ptr %i.f, align 1
  store i64 1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1b_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1i_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1i_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1b_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !44, !noundef !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  br label %bb.c

bb.g:                                             ; preds = %._crit_edge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshhQDFPpdXZx_10regex_lite3hir3HirEEB1b_.exit
  ret void

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !44, !noundef !44 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !range !115, !noundef !44
  %i.p = add nuw nsw i64 %i.b, 288230376151711743 ; 2 uses
  %i.q = and i64 %i.p, 288230376151711743         ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.r, 576460752303423486
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.lr.ph.preheader.new
  %.sroa.0.025 = phi ptr [ %i.m, %.lr.ph.preheader.new ], [ %i.as, %bb.t ] ; 7 uses
  %.sroa.5.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.sroa.5.1.1, %bb.t ]
  %.sroa.04.023 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %.sroa.04.1.1, %bb.t ]
  %.sroa.02.022 = phi i8 [ 1, %.lr.ph.preheader.new ], [ %.sroa.02.1.1, %bb.t ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.t ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 64
  %i.u = trunc nuw i8 %.sroa.02.022 to i1
  br i1 %i.u, label %bb.l, label %bb.m

._crit_edge.unr-lcssa:                            ; preds = %bb.t
  %i.v = and i64 %i.p, 1
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.025.epil.init = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.as, %._crit_edge.unr-lcssa ] ; 3 uses
  %.sroa.5.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.sroa.5.1.1, %._crit_edge.unr-lcssa ]
  %.sroa.04.023.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %.sroa.04.1.1, %._crit_edge.unr-lcssa ]
  %.sroa.02.022.epil.init = phi i8 [ 1, %.lr.ph.preheader ], [ %.sroa.02.1.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.w = trunc nuw i8 %.sroa.02.022.epil.init to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.025.epil.init, i64 57
  %i.y = load i8, ptr %i.x, align 1, !range !115, !noundef !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.epil.preheader
  %.sroa.02.1.epil = phi i8 [ %i.y, %bb.h ], [ 0, %.lr.ph.epil.preheader ] ; 3 uses
  %i.z = trunc nuw i64 %.sroa.04.023.epil.init to i1
  br i1 %i.z, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %.sroa.0.025.epil.init, align 8, !range !117, !noundef !44
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.025.epil.init, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.5.024.epil.init, i64 %i.ad)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.j, %bb.k, %._crit_edge.unr-lcssa
  %.sroa.04.1.lcssa = phi i64 [ %.sroa.04.1.1, %._crit_edge.unr-lcssa ], [ 1, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.1.1, %._crit_edge.unr-lcssa ], [ %i.ae, %bb.k ], [ undef, %bb.i ], [ undef, %bb.j ]
  %.sroa.02.1.lcssa = phi i8 [ %.sroa.02.1.1, %._crit_edge.unr-lcssa ], [ %.sroa.02.1.epil, %bb.k ], [ %.sroa.02.1.epil, %bb.j ], [ %.sroa.02.1.epil, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 6, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4, i64 30, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.o, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.02.1.lcssa, ptr %i.ah, align 1
  store i64 %.sroa.04.1.lcssa, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.1.lcssa, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.g

bb.l:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 57
  %i.ak = load i8, ptr %i.aj, align 1, !range !115, !noundef !44
  %i.al = trunc nuw i8 %i.ak to i1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.02.1 = phi i1 [ %i.al, %bb.l ], [ false, %.lr.ph ]
end_hunk_0
