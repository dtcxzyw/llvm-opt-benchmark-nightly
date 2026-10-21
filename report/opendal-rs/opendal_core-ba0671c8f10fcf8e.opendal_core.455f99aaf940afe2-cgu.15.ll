Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.15?download=true
inline.NumInlined: 678
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB7_15CompleteServiceNtNtNtBb_3raw8accessor7Service7presign0Bb_:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !5, !noalias !668, !nonnull !5
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.i unwind label %bb.h, !noalias !668 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !668
  br label %.body.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !668
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.al, ptr %i.an, align 8, !noalias !668
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.am, ptr %i.ao, align 8, !noalias !668
  br label %bb.l

.body.i:                                          ; preds = %bb.t, %bb.s, %bb.m, %bb.h
  %i.ap = phi ptr [ %i.p, %bb.h ], [ %i.au, %bb.m ], [ %i.au, %bb.s ], [ %i.au, %bb.t ]
  %i.aq = phi ptr [ %i.q, %bb.h ], [ %i.av, %bb.m ], [ %i.av, %bb.s ], [ %i.av, %bb.t ]
  %.pn2.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.ax, %bb.m ], [ %i.bi, %bb.s ], [ %i.bi, %bb.t ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 193 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !range !17, !noalias !668, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.w, label %bb.v

bb.j:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
          to label %.noexc6 unwind label %bb.x

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.au = phi ptr [ %i.p, %bb.i ], [ %i.o, %bb.f ] ; 5 uses
  %i.av = phi ptr [ %i.q, %bb.i ], [ %i.n, %bb.f ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpPresignNtNtNtB2g_5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %.val5.i = load ptr, ptr %i.aw, align 8, !noalias !668
  %i.ay = getelementptr i8, ptr %1, i64 184
  %.val6.i = load ptr, ptr %i.ay, align 8, !noalias !668, !nonnull !5, !align !12, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpPresignNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val5.i, ptr nonnull %.val6.i) #24
          to label %.body.i unwind label %bb.u, !noalias !669

bb.n:                                             ; preds = %bb.l
  %i.az = load i64, ptr %0, align 8, !range !670, !alias.scope !669, !noundef !5
  %i.ba = icmp eq i64 %i.az, -2
  br i1 %i.ba, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i = load ptr, ptr %i.aw, align 8, !noalias !668 ; 5 uses
  %i.bb = getelementptr i8, ptr %1, i64 184
  %.val4.i = load ptr, ptr %i.bb, align 8, !noalias !668, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.bc = load ptr, ptr %.val4.i, align 8, !invariant.load !5, !noalias !669 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.bc(ptr noundef nonnull %.val.i)
          to label %bb.q unwind label %bb.s, !noalias !669

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !7, !invariant.load !5, !noalias !669 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !8, !invariant.load !5, !noalias !669
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #21, !noalias !669
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !7, !invariant.load !5, !noalias !669 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !8, !invariant.load !5, !noalias !669
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #21, !noalias !669
  br label %.body.i

bb.u:                                             ; preds = %bb.w, %bb.m
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !669
  unreachable

bb.v:                                             ; preds = %bb.w, %.body.i
  store i8 0, ptr %i.ar, align 1, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !668
  store i8 2, ptr %i.ap, align 8, !noalias !668
  br label %.body

bb.w:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpPresignEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #24
          to label %bb.v unwind label %bb.u, !noalias !669

bb.x:                                             ; preds = %bb.k, %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.x
  %i.bq = phi ptr [ %i.n, %bb.x ], [ %i.aq, %bb.v ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %.pn2.i, %bb.v ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service7presign0EBN_(ptr noundef nonnull align 8 %i.bq) #24
          to label %bb.b unwind label %bb.ab

common.ret:                                       ; preds = %bb.z, %bb.y
  %storemerge = phi i8 [ 3, %bb.y ], [ 1, %bb.z ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.y:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !668
  store i8 3, ptr %i.au, align 8, !noalias !668
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.z:                                             ; preds = %bb.r, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.br, align 1, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !668
  store i8 1, ptr %i.au, align 8, !noalias !668
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service7presign0EBN_(ptr noundef nonnull align 8 %i.av)
          to label %common.ret unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.ab:                                            ; preds = %.body
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB7_15CompleteServiceNtNtNtBb_3raw8accessor7Service7restore0Bb_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !13, !noundef !5
  switch i8 %i.d, label %default.unreachable17 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable17:                            ; preds = %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.f, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.h, ptr %.sroa.810.0..sroa_idx, align 8
  %.sroa.1012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.j, ptr %.sroa.1012.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 129
  br label %bb.g

bb.b:                                             ; preds = %3, %.body
  %.pn4 = phi { ptr, i32 } [ %4, %3 ], [ %eh.lpad-body, %.body ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn4

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #19
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 129
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !13, !noalias !684
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 129 ; 2 uses
  switch i8 %.pre, label %default.unreachable17 [
    i8 0, label %bb.g
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !684
  br label %bb.l

bb.g:                                             ; preds = %.thread, %bb.e
  %i.o = phi ptr [ %i.l, %.thread ], [ %i.n, %bb.e ] ; 2 uses
  %i.p = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !noalias !684, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !noalias !684, !nonnull !5, !align !12, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !noalias !684, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load i64, ptr %i.x, align 8, !noalias !684, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !684
  store i8 1, ptr %i.q, align 8, !noalias !684
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !684
  %.val.i = load ptr, ptr %i.s, align 8, !noalias !684, !nonnull !5, !noundef !5
  %i.aa = getelementptr i8, ptr %i.s, i64 8
  %.val4.i = load ptr, ptr %i.aa, align 8, !noalias !684, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !5, !noalias !684
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !684
  store i8 0, ptr %i.q, align 8, !noalias !684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !684
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4.i, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !5, !noalias !684, !nonnull !5
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h, !noalias !684 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !684
  br label %.body.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !684
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  store ptr %i.al, ptr %i.p, align 8, !noalias !684
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.am, ptr %i.an, align 8, !noalias !684
  br label %bb.l

.body.i:                                          ; preds = %bb.t, %bb.s, %bb.m, %bb.h
  %i.ao = phi ptr [ %i.o, %bb.h ], [ %i.at, %bb.m ], [ %i.at, %bb.s ], [ %i.at, %bb.t ]
  %i.ap = phi ptr [ %i.p, %bb.h ], [ %i.au, %bb.m ], [ %i.au, %bb.s ], [ %i.au, %bb.t ]
  %.pn2.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.av, %bb.m ], [ %i.bg, %bb.s ], [ %i.bg, %bb.t ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !range !17, !noalias !684, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i

bb.j:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #19
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #19
          to label %.noexc6 unwind label %bb.y

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.at = phi ptr [ %i.o, %bb.i ], [ %i.n, %bb.f ] ; 5 uses
  %i.au = phi ptr [ %i.p, %bb.i ], [ %i.m, %bb.f ] ; 7 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB2g_5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  %.val7.i = load ptr, ptr %i.au, align 8, !noalias !684
  %i.aw = getelementptr i8, ptr %1, i64 64
  %.val8.i = load ptr, ptr %i.aw, align 8, !noalias !684, !nonnull !5, !align !12, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps9RpRestoreNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val7.i, ptr nonnull %.val8.i) #24
          to label %.body.i unwind label %bb.u, !noalias !685

bb.n:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %0, align 8, !range !19, !alias.scope !685, !noundef !5
  %i.ay = icmp eq i64 %i.ax, -2
  br i1 %i.ay, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val5.i = load ptr, ptr %i.au, align 8, !noalias !684 ; 5 uses
  %i.az = getelementptr i8, ptr %1, i64 64
  %.val6.i = load ptr, ptr %i.az, align 8, !noalias !684, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.ba = load ptr, ptr %.val6.i, align 8, !invariant.load !5, !noalias !685 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  invoke void %i.ba(ptr noundef nonnull %.val5.i)
          to label %bb.q unwind label %bb.s, !noalias !685

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !7, !invariant.load !5, !noalias !685 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !8, !invariant.load !5, !noalias !685
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, -9223372036854775808) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #21, !noalias !685
  br label %bb.aa

bb.s:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !7, !invariant.load !5, !noalias !685 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !8, !invariant.load !5, !noalias !685
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, -9223372036854775808) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #21, !noalias !685
  br label %.body.i

bb.u:                                             ; preds = %bb.x, %bb.m
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !685
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i: ; preds = %bb.x, %bb.w, %bb.v, %.body.i
  store i8 0, ptr %i.aq, align 8, !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !684
  store i8 2, ptr %i.ao, align 1, !noalias !684
  br label %.body

bb.v:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.bn = load ptr, ptr %i.b, align 8, !alias.scope !689, !noalias !684, !noundef !5 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !noalias !690
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.x, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i unwind label %bb.u, !noalias !685

bb.y:                                             ; preds = %bb.k, %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i, %bb.y
  %i.bs = phi ptr [ %i.m, %bb.y ], [ %i.ap, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.y ], [ %.pn2.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit.i ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service7restore0EBN_(ptr noundef nonnull align 8 %i.bs) #24
          to label %bb.b unwind label %bb.ab

common.ret:                                       ; preds = %bb.aa, %bb.z
  %storemerge = phi i8 [ 3, %bb.z ], [ 1, %bb.aa ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.z:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !684
  store i8 3, ptr %i.at, align 1, !noalias !684
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.aa:                                            ; preds = %bb.r, %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %i.bt, align 8, !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !684
  store i8 1, ptr %i.at, align 1, !noalias !684
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service7restore0EBN_(ptr noundef nonnull align 8 %i.au)
          to label %common.ret unwind label %3

3:                                                ; preds = %bb.aa
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.ab:                                            ; preds = %.body
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs4_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB7_14CompleteCopierNtNtNtNtNtBb_3raw3oio4copy3api4Copy4next0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.1052 = alloca [64 x i8], align 8         ; 3 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [64 x i8], align 8            ; 2 uses
  %i.c = alloca [88 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !13, !noundef !5
  switch i8 %i.e, label %default.unreachable70 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable70:                            ; preds = %bb.d, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #19
  unreachable

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !13, !noalias !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  switch i8 %.pre, label %default.unreachable70 [
    i8 0, label %bb.e
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.e:                                             ; preds = %.thread, %bb.d
  %i.n = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.d ] ; 2 uses
  %i.o = phi ptr [ %i.j, %.thread ], [ %i.l, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !701, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !noalias !701, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val4.i = load ptr, ptr %i.q, align 8, !noalias !701, !nonnull !5, !align !12, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !5, !noalias !701, !nonnull !5
  %i.t = invoke { ptr, ptr } %i.s(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.r, !noalias !701 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.u, ptr %i.w, align 8, !noalias !701
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.v, ptr %i.x, align 8, !noalias !701
  br label %bb.i

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.p, %bb.j
  %i.y = phi ptr [ %i.aa, %bb.j ], [ %i.n, %bb.r ], [ %i.aa, %bb.q ], [ %i.aa, %bb.p ]
  %i.z = phi ptr [ %i.ab, %bb.j ], [ %i.o, %bb.r ], [ %i.ab, %bb.q ], [ %i.ab, %bb.p ]
  %.pn2.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.au, %bb.r ], [ %i.ao, %bb.q ], [ %i.ao, %bb.p ]
  store i8 2, ptr %i.y, align 8, !noalias !701
  br label %.body

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #19
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #19
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.aa = phi ptr [ %i.n, %bb.f ], [ %i.m, %bb.d ] ; 5 uses
  %i.ab = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionjENtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2E_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val7.i = load ptr, ptr %i.ac, align 8, !noalias !701
  %i.ae = getelementptr i8, ptr %1, i64 32
  %.val8.i = load ptr, ptr %i.ae, align 8, !noalias !701, !nonnull !5, !align !12, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionjENtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2S_(ptr %.val7.i, ptr nonnull %.val8.i) #24
          to label %.body.i unwind label %bb.s, !noalias !702

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 8, !range !19, !alias.scope !702, !noundef !5 ; 3 uses
  %i.ag = icmp eq i64 %i.af, -2
  br i1 %i.ag, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val5.i = load ptr, ptr %i.ac, align 8, !noalias !701 ; 5 uses
  %i.ah = getelementptr i8, ptr %1, i64 32
  %.val6.i = load ptr, ptr %i.ah, align 8, !noalias !701, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.ai = load ptr, ptr %.val6.i, align 8, !invariant.load !5, !noalias !702 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  invoke void %i.ai(ptr noundef nonnull %.val5.i)
          to label %bb.n unwind label %bb.p, !noalias !702

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !7, !invariant.load !5, !noalias !702 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !8, !invariant.load !5, !noalias !702
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #21, !noalias !702
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !7, !invariant.load !5, !noalias !702 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.body.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !8, !invariant.load !5, !noalias !702
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, -9223372036854775808) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #21, !noalias !702
  br label %.body.i

bb.r:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !702
  unreachable

bb.t:                                             ; preds = %bb.h, %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.t
  %i.ax = phi ptr [ %i.l, %bb.t ], [ %i.z, %.body.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.t ], [ %.pn2.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs4_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7CopyDynEL_ENtBJ_4Copy4next0EBR_(ptr noundef nonnull align 8 %i.ax) #24
          to label %.body19 unwind label %bb.ad

common.ret:                                       ; preds = %bb.ab, %bb.u
  %storemerge = phi i8 [ 1, %bb.ab ], [ 3, %bb.u ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.u:                                             ; preds = %bb.k
  store i8 3, ptr %i.aa, align 8, !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -2, ptr %0, align 8
  br label %common.ret
end_hunk_0
