Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.10?download=true
inline.NumInlined: 670
inline.NumDeleted: 255
begin_hunk_0_@_RNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_8WriteDynEL_ENtB7_5Write5write0Bf_:bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %.val = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !7, !align !9, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !7, !nonnull !7
  %i.l = invoke { ptr, ptr } %i.k(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = extractvalue { ptr, ptr } %i.l, 0
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  store ptr %i.n, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.d, %bb.i
  %.pn2 = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.t, %bb.i ], [ %i.ad, %bb.o ], [ %i.ad, %bb.p ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !18, !noundef !7
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.s, label %bb.r

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.e
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2h_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #27
          to label %.body unwind label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.u = load i64, ptr %0, align 8, !range !23, !noundef !7
  %i.v = icmp eq i64 %i.u, -2
  br i1 %i.v, label %common.ret, label %bb.k

common.ret:                                       ; preds = %bb.j, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit
  %storemerge = phi i8 [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit ], [ 3, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %storemerge, ptr %i.c, align 1
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !836 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.w, align 8, !alias.scope !836, !nonnull !7, !align !9, !noundef !7 ; 5 uses
  %i.x = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !836 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.x(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !836

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !10, !invariant.load !7, !noalias !836 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !11, !invariant.load !7, !noalias !836
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #24, !noalias !836
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !10, !invariant.load !7, !noalias !836 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !11, !invariant.load !7, !noalias !836
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #24, !noalias !836
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit: ; preds = %bb.n, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.aj, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.s, %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.s, %.body
  store i8 0, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 1
  resume { ptr, i32 } %.pn2

bb.s:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #27
          to label %bb.r unwind label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5write3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_8WriteDynEL_ENtB7_5Write9copy_from0Bf_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !16, !noundef !7
  switch i8 %i.d, label %default.unreachable8 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.b
  ]

default.unreachable8:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.e, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !noundef !7 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  store ptr %i.m, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.val = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %i.q = getelementptr i8, ptr %i.g, i64 8
  %.val4 = load ptr, ptr %i.q, align 8, !nonnull !7, !align !9, !noundef !7
  store i8 0, ptr %i.e, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !7, !nonnull !7
  %i.t = invoke { ptr, ptr } %i.s(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noundef %i.m, i64 %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.v, ptr %i.x, align 8
  br label %bb.g

.body:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.h
  %i.y = phi ptr [ %i.ab, %bb.h ], [ %i.m, %bb.q ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %.pn2 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.at, %bb.q ], [ %i.an, %bb.p ], [ %i.an, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !18, !noundef !7
  %3 = trunc nuw i8 %i.aa to i1
  %4 = icmp ne ptr %i.y, null
  %or.cond.not = and i1 %4, %3
  br i1 %or.cond.not, label %bb.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #23
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #23
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.ab = phi ptr [ undef, %bb.b ], [ %i.m, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2h_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac) #27
          to label %.body unwind label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %0, align 8, !range !23, !noundef !7
  %i.af = icmp eq i64 %i.ae, -2
  br i1 %i.af, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !849 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val1.i = load ptr, ptr %i.ag, align 8, !alias.scope !849, !nonnull !7, !align !9, !noundef !7 ; 5 uses
  %i.ah = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !849 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.ah(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !849

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !10, !invariant.load !7, !noalias !849 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !11, !invariant.load !7, !noalias !849
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #24, !noalias !849
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit

bb.o:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !10, !invariant.load !7, !noalias !849 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !11, !invariant.load !7, !noalias !849
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #24, !noalias !849
  br label %.body

bb.q:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_.exit: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 0, ptr %i.au, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.r:                                             ; preds = %bb.t, %bb.h
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit: ; preds = %bb.s, %bb.t, %.body
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.s:                                             ; preds = %.body
  %i.aw = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !850
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpReadEBH_.exit unwind label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_9DeleteDynEL_ENtB7_6Delete5close0Bf_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !7
  switch i8 %i.b, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !7, !align !9, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !7, !nonnull !7
  %i.g = invoke { ptr, ptr } %i.f(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.o       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.i, ptr %i.k, align 8
  br label %bb.f

.body:                                            ; preds = %bb.o, %bb.n, %bb.m, %bb.g
  %.pn2 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.ac, %bb.o ], [ %i.w, %bb.n ], [ %i.w, %bb.m ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn2

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2h_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #27
          to label %.body unwind label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %0, align 8, !range !23, !noundef !7
  %i.o = icmp eq i64 %i.n, -2
  br i1 %i.o, label %common.ret, label %bb.i

common.ret:                                       ; preds = %bb.h, %bb.l, %bb.k
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.k ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !853 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.p, align 8, !alias.scope !853, !nonnull !7, !align !9, !noundef !7 ; 5 uses
  %i.q = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !853 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.q(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.m, !noalias !853

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !7, !noalias !853 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.ret, label %bb.l

end_hunk_0
begin_hunk_1_@_RNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core6layers17correctness_checkNtB7_18CorrectnessServiceNtNtNtBb_3raw8accessor7Service4stat0Bb_:bb.a
  br label %.thread

bb.az:                                            ; preds = %.noexc105
  %i.gx = extractvalue { ptr, i64 } %i.gv, 1
  invoke fastcc void @_RNvNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16decode_timestamp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gw, i64 noundef %i.gx) #28
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.at, %bb.az, %.invoke, %bb.ce, %bb.as, %bb.am, %bb.ag, %bb.aa, %bb.k, %bb.b, %bb.ay
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.val, ptr %i.g, align 8, !noalias !970
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.val24, ptr %i.gz, align 8, !noalias !970
  store ptr @47, ptr %i.f, align 8, !noalias !970
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 19, ptr %i.ha, align 8, !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !970
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr @95, ptr %i.e, align 8, !noalias !970, !captures !26
  store i64 4, ptr %i.hb, align 8, !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !970
  store ptr %i.g, ptr %i.b, align 8, !noalias !970
  %.sroa.42.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.42.0..sroa_idx.i107, align 8, !noalias !970
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.hc, align 8, !noalias !970
  %.sroa.46.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.46.0..sroa_idx.i108, align 8, !noalias !970
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.hd, align 8, !noalias !970
  %.sroa.410.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.410.0..sroa_idx.i109, align 8, !noalias !970
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @99, ptr noundef nonnull %i.b)
          to label %.noexc110 unwind label %bb.bc

.noexc110:                                        ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !970
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newNtNtCs6i54tJFfzR_5alloc6string6StringEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc111 unwind label %bb.bc

.noexc111:                                        ; preds = %.noexc110
  %i.he = load ptr, ptr %i.e, align 8, !noalias !970, !nonnull !7, !noundef !7
  %i.hf = load i64, ptr %i.hb, align 8, !noalias !970, !noundef !7
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef %i.hf)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc111, %.noexc110, %bb.bb
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.c

bb.bd:                                            ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ar, ptr noundef nonnull align 8 dereferenceable(88) %i.at, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit121: ; preds = %bb.ch, %bb.cg, %bb.ci, %bb.be, %bb.c
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.hi, %bb.be ], [ %.pn20.pn, %bb.c ], [ %.pn20.pn, %bb.ci ], [ %.pn20.pn, %bb.cg ], [ %.pn20.pn, %bb.ch ]
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 0, ptr %i.hh, align 8
  store i8 2, ptr %i.bc, align 1
  resume { ptr, i32 } %.pn20.pn.pn

bb.be:                                            ; preds = %bb.s
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit121

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit: ; preds = %bb.r, %bb.q, %bb.s
  store i8 0, ptr %i.be, align 8
  br label %bb.bf

common.ret:                                       ; preds = %bb.cd, %bb.bf
  %storemerge = phi i8 [ 1, %bb.bf ], [ 3, %bb.cd ]
  store i8 %storemerge, ptr %i.bc, align 1
  ret void

bb.bf:                                            ; preds = %bb.cf, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar, i64 88, i1 false)
  br label %common.ret

.thread:                                          ; preds = %bb.au, %.noexc105._crit_edge
  %i.hj = phi i64 [ %.pre162, %.noexc105._crit_edge ], [ %.pre163.a, %bb.au ]
  %i.hk = phi ptr [ %.pre, %.noexc105._crit_edge ], [ %.pre161, %bb.au ]
  store i8 0, ptr %i.be, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.hk, ptr %i.hl, align 8
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.hj, ptr %.sroa.7143.0..sroa_idx, align 8
  %.sroa.9145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.bj, ptr %.sroa.9145.0..sroa_idx, align 8
  %.sroa.10146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.bl, ptr %.sroa.10146.0..sroa_idx, align 8
  %.sroa.11147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x ptr> %i.bg, ptr %.sroa.11147.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 113
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 113
  br label %bb.bl

bb.bg:                                            ; preds = %bb.ci, %.body118
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bh:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #23
  unreachable

bb.bi:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #23
  unreachable

bb.bj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 113
  %.pre164 = load i8, ptr %.phi.trans.insert, align 1, !range !16, !noalias !971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 2 uses
  switch i8 %.pre164, label %default.unreachable190 [
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bo
    i8 3, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !971
  br label %bb.bp

bb.bl:                                            ; preds = %.thread, %bb.bj
  %i.hr = phi ptr [ %i.hn, %.thread ], [ %i.hq, %bb.bj ] ; 2 uses
  %i.hs = phi ptr [ %i.hm, %.thread ], [ %i.hp, %bb.bj ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !971, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !971, !nonnull !7, !align !9, !noundef !7
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !971, !nonnull !7, !noundef !7
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !971, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !971
  store i8 1, ptr %i.ht, align 8, !noalias !971
  %i.ic = load ptr, ptr %i.hs, align 8, !noalias !971, !noundef !7 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ie = load i64, ptr %i.id, align 8, !noalias !971 ; 2 uses
  store ptr %i.ic, ptr %i.a, align 8, !noalias !971
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ie, ptr %i.if, align 8, !noalias !971
  %.val.i = load ptr, ptr %i.hv, align 8, !noalias !971, !nonnull !7, !noundef !7
  %i.ig = getelementptr i8, ptr %i.hv, i64 8
  %.val4.i = load ptr, ptr %i.ig, align 8, !noalias !971, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !range !11, !invariant.load !7, !noalias !971
  %i.ij = add nsw i64 %i.ii, -1
  %i.ik = and i64 %i.ij, -16
  %i.il = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store i8 0, ptr %i.ht, align 8, !noalias !971
  %i.in = getelementptr inbounds nuw i8, ptr %.val4.i, i64 56
  %i.io = load ptr, ptr %i.in, align 8, !invariant.load !7, !noalias !971, !nonnull !7
  %i.ip = invoke { ptr, ptr } %i.io(ptr noundef nonnull %i.im, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.ib, ptr noundef %i.ic, i64 %i.ie)
          to label %bb.bm unwind label %bb.by, !noalias !971 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.iq = extractvalue { ptr, ptr } %i.ip, 0
  %i.ir = extractvalue { ptr, ptr } %i.ip, 1
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.iq, ptr %i.is, align 8, !noalias !971
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ir, ptr %i.it, align 8, !noalias !971
  br label %bb.bp

.body.i:                                          ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bq
  %i.iu = phi ptr [ %i.iz, %bb.bq ], [ %i.hr, %bb.by ], [ %i.iz, %bb.bx ], [ %i.iz, %bb.bw ]
  %i.iv = phi ptr [ %i.ja, %bb.bq ], [ %i.hs, %bb.by ], [ %i.ja, %bb.bx ], [ %i.ja, %bb.bw ]
  %i.iw = phi ptr [ %i.jb, %bb.bq ], [ %i.ic, %bb.by ], [ %i.jb, %bb.bx ], [ %i.jb, %bb.bw ] ; 2 uses
  %.pn2.i = phi { ptr, i32 } [ %i.jd, %bb.bq ], [ %i.ju, %bb.by ], [ %i.jo, %bb.bx ], [ %i.jo, %bb.bw ]
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 8, !range !18, !noalias !971, !noundef !7
  %3 = trunc nuw i8 %i.iy to i1
  %4 = icmp ne ptr %i.iw, null
  %or.cond.not.i = and i1 %4, %3
  br i1 %or.cond.not.i, label %bb.ca, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

bb.bn:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23
          to label %.noexc116 unwind label %bb.cc

.noexc116:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23
          to label %.noexc117 unwind label %bb.cc

.noexc117:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bm, %bb.bk
  %i.iz = phi ptr [ %i.hq, %bb.bk ], [ %i.hr, %bb.bm ] ; 5 uses
  %i.ja = phi ptr [ %i.hp, %bb.bk ], [ %i.hs, %bb.bm ] ; 4 uses
  %i.jb = phi ptr [ undef, %bb.bk ], [ %i.ic, %bb.bm ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2g_5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jd = landingpad { ptr, i32 }
          cleanup
  %.val7.i = load ptr, ptr %i.jc, align 8, !noalias !971
  %i.je = getelementptr i8, ptr %1, i64 72
  %.val8.i = load ptr, ptr %i.je, align 8, !noalias !971, !nonnull !7, !align !9, !noundef !7
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpStatNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val7.i, ptr nonnull %.val8.i) #27
          to label %.body.i unwind label %bb.bz, !noalias !972

bb.br:                                            ; preds = %bb.bp
  %i.jf = load i64, ptr %i.as, align 8, !range !23, !alias.scope !972, !noundef !7
  %i.jg = icmp eq i64 %i.jf, -2
  br i1 %i.jg, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val5.i = load ptr, ptr %i.jc, align 8, !noalias !971 ; 5 uses
  %i.jh = getelementptr i8, ptr %1, i64 72
  %.val6.i = load ptr, ptr %i.jh, align 8, !noalias !971, !nonnull !7, !align !9, !noundef !7 ; 5 uses
  %i.ji = load ptr, ptr %.val6.i, align 8, !invariant.load !7, !noalias !972 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i114, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  invoke void %i.ji(ptr noundef nonnull %.val5.i)
          to label %bb.bu unwind label %bb.bw, !noalias !972

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.jj = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !range !10, !invariant.load !7, !noalias !972 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jm = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !range !11, !invariant.load !7, !noalias !972
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, -9223372036854775808) %i.jk, i64 noundef range(i64 1, 536870913) %i.jn) #24, !noalias !972
  br label %bb.ce

bb.bw:                                            ; preds = %bb.bt
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !range !10, !invariant.load !7, !noalias !972 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %.body.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.js = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !range !11, !invariant.load !7, !noalias !972
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef range(i64 1, -9223372036854775808) %i.jq, i64 noundef range(i64 1, 536870913) %i.jt) #24, !noalias !972
  br label %.body.i

bb.by:                                            ; preds = %bb.bl
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bz:                                            ; preds = %bb.cb, %bb.bq
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26, !noalias !972
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i: ; preds = %bb.cb, %bb.ca, %.body.i
  store i8 0, ptr %i.ix, align 8, !noalias !971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !971
  store i8 2, ptr %i.iu, align 1, !noalias !971
  br label %.body118

bb.ca:                                            ; preds = %.body.i
  %i.jw = atomicrmw add ptr %i.iw, i64 -1 release, align 8, !noalias !973
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %bb.cb, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i unwind label %bb.bz, !noalias !972

bb.cc:                                            ; preds = %bb.bo, %bb.bn
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body118

.body118:                                         ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i, %bb.cc
  %i.jz = phi ptr [ %i.hp, %bb.cc ], [ %i.iv, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i ]
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.jy, %bb.cc ], [ %.pn2.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.jz) #27
          to label %bb.c unwind label %bb.bg

bb.cd:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !971
  store i8 3, ptr %i.iz, align 1, !noalias !971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %common.ret

bb.ce:                                            ; preds = %bb.bv, %bb.bu
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %i.ka, align 8, !noalias !971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !971
  store i8 1, ptr %i.iz, align 1, !noalias !971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ar, ptr noundef nonnull align 8 dereferenceable(88) %i.as, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.ja)
          to label %bb.cf unwind label %bb.ba

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 0, ptr %i.kb, align 8
  br label %bb.bf

bb.cg:                                            ; preds = %bb.c
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !977, !noundef !7 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit121, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kf = atomicrmw add ptr %i.kd, i64 -1 release, align 8, !noalias !978
  %i.kg = icmp eq i64 %i.kf, 1
  br i1 %i.kg, label %bb.ci, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit121

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kc) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit121 unwind label %bb.bg
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core6layers17correctness_checkNtB7_18CorrectnessServiceNtNtNtBb_3raw8accessor7Service6rename0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [88 x i8], align 8                ; 3 uses
  %i.h = alloca [88 x i8], align 8                ; 8 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [184 x i8], align 8               ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !range !16, !noundef !7
  switch i8 %i.m, label %default.unreachable35 [
    i8 0, label %bb.b
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
  ]

default.unreachable35:                            ; preds = %bb.s, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !7, !align !9, !noundef !7 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.z = load i8, ptr %i.y, align 2, !range !18, !noundef !7
  store i8 %i.z, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.aa = load ptr, ptr %i.p, align 8, !alias.scope !1006, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1006, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !11, !invariant.load !7, !noalias !1007
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = and i64 %i.af, -16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !7, !noalias !1007, !nonnull !7
  invoke void %i.ak(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.k, ptr noundef nonnull %i.ai) #28
          to label %_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core6layers17correctness_checkNtB5_18CorrectnessServiceNtNtNtB9_3raw8accessor7Service10capability.exit unwind label %bb.j, !inline_history !24

.body22:                                          ; preds = %.body16, %.body, %bb.m, %bb.j
  %.pn8.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bw, %bb.m ], [ %i.bl, %bb.j ], [ %eh.lpad-body17, %.body16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 2, ptr %i.l, align 1
  resume { ptr, i32 } %.pn8.pn

_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core6layers17correctness_checkNtB5_18CorrectnessServiceNtNtNtB9_3raw8accessor7Service10capability.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.al = load ptr, ptr %i.p, align 8, !alias.scope !1008, !nonnull !7, !noundef !7
  %i.am = load ptr, ptr %i.ab, align 8, !alias.scope !1008, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !11, !invariant.load !7, !noalias !1009
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = and i64 %i.ap, -16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !7, !noalias !1009, !nonnull !7
  invoke void %i.au(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, ptr noundef nonnull %i.as) #28
          to label %bb.c unwind label %bb.i, !inline_history !25

bb.c:                                             ; preds = %_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core6layers17correctness_checkNtB5_18CorrectnessServiceNtNtNtB9_3raw8accessor7Service10capability.exit
  %.val = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val11 = load i64, ptr %i.av, align 8, !noundef !7
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1013, !nonnull !7, !noundef !7
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !1013
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1016, !nonnull !7, !noundef !7
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !1017
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #25
          to label %.body unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.d, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !1020, !nonnull !7, !noundef !7
  %i.bh = atomicrmw add ptr %i.bg, i64 -1 release, align 8, !noalias !1021
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bf) #25
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.e ], [ %i.bk, %bb.i ], [ %i.ba, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.body22

bb.i:                                             ; preds = %bb.g, %_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core6layers17correctness_checkNtB5_18CorrectnessServiceNtNtNtB9_3raw8accessor7Service10capability.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body22

bb.k:                                             ; preds = %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val12 = load i8, ptr %i.x, align 8, !range !18, !noundef !7 ; 2 uses
  %i.bm = trunc nuw i8 %.val12 to i1
  %.not = xor i1 %i.bm, true
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 167
  %i.bo = load i8, ptr %i.bn, align 1, !range !18
  %3 = trunc nuw i8 %i.bo to i1
  %or.cond = select i1 %.not, i1 true, i1 %3
  br i1 %or.cond, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.val, ptr %i.f, align 8, !noalias !1022
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val11, ptr %i.bp, align 8, !noalias !1022
  store ptr @49, ptr %i.e, align 8, !noalias !1022
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 13, ptr %i.bq, align 8, !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1022
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr @93, ptr %i.d, align 8, !noalias !1022, !captures !26
  store i64 6, ptr %i.br, align 8, !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1022
  store ptr %i.f, ptr %i.a, align 8, !noalias !1022
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1022
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.bs, align 8, !noalias !1022
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1022
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.bt, align 8, !noalias !1022
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1022
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @99, ptr noundef nonnull %i.a)
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1022
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newNtNtCs6i54tJFfzR_5alloc6string6StringEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %.noexc13
  %i.bu = load ptr, ptr %i.d, align 8, !noalias !1022, !nonnull !7, !noundef !7
  %i.bv = load i64, ptr %i.br, align 8, !noalias !1022, !noundef !7
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bv)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.noexc14, %.noexc13, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.body22

bb.n:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

common.ret:                                       ; preds = %bb.aj, %bb.o
  %storemerge = phi i8 [ 1, %bb.o ], [ 3, %bb.aj ]
  store i8 %storemerge, ptr %i.l, align 1
  ret void

bb.o:                                             ; preds = %bb.ak, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  br label %common.ret

.thread:                                          ; preds = %bb.k
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.q, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.s, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.u, ptr %.sroa.927.0..sroa_idx, align 8
  %.sroa.1028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.w, ptr %.sroa.1028.0..sroa_idx, align 8
  %.sroa.1129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x ptr> %i.o, ptr %.sroa.1129.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %.val12, ptr %.sroa.14.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.t

bb.p:                                             ; preds = %.body16
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #23
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #23
  unreachable

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !16, !noalias !1023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  switch i8 %.pre, label %default.unreachable35 [
    i8 0, label %bb.t
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
  ]

bb.t:                                             ; preds = %.thread, %bb.s
  %i.cc = phi ptr [ %i.by, %.thread ], [ %i.cb, %bb.s ] ; 2 uses
  %i.cd = phi ptr [ %i.bx, %.thread ], [ %i.ca, %bb.s ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !1023, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !1023, !nonnull !7, !align !9, !noundef !7
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1023, !nonnull !7, !noundef !7
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !1023, !noundef !7
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1023, !nonnull !7, !noundef !7
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1023, !noundef !7
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.cr = load i8, ptr %i.cq, align 1, !range !18, !noalias !1023, !noundef !7
  %.val.i = load ptr, ptr %i.cf, align 8, !noalias !1023, !nonnull !7, !noundef !7
  %i.cs = getelementptr i8, ptr %i.cf, i64 8
  %.val4.i = load ptr, ptr %i.cs, align 8, !noalias !1023, !nonnull !7, !align !9, !noundef !7 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !11, !invariant.load !7, !noalias !1023
  %i.cv = add nsw i64 %i.cu, -1
  %i.cw = and i64 %i.cv, -16
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = trunc nuw i8 %i.cr to i1
  %i.da = getelementptr inbounds nuw i8, ptr %.val4.i, i64 112
  %i.db = load ptr, ptr %i.da, align 8, !invariant.load !7, !noalias !1023, !nonnull !7
  %i.dc = invoke { ptr, ptr } %i.db(ptr noundef nonnull %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ch, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.cl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef %i.cp, i1 noundef zeroext %i.cz)
          to label %bb.u unwind label %bb.ag, !noalias !1023 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dd = extractvalue { ptr, ptr } %i.dc, 0
  %i.de = extractvalue { ptr, ptr } %i.dc, 1
  store ptr %i.dd, ptr %i.cd, align 8, !noalias !1023
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.de, ptr %i.df, align 8, !noalias !1023
  br label %bb.x

.body.i:                                          ; preds = %bb.ag, %bb.af, %bb.ae, %bb.y
  %i.dg = phi ptr [ %i.di, %bb.y ], [ %i.cc, %bb.ag ], [ %i.di, %bb.af ], [ %i.di, %bb.ae ]
  %i.dh = phi ptr [ %i.dj, %bb.y ], [ %i.cd, %bb.ag ], [ %i.dj, %bb.af ], [ %i.dj, %bb.ae ]
  %.pn2.i = phi { ptr, i32 } [ %i.dk, %bb.y ], [ %i.eb, %bb.ag ], [ %i.dv, %bb.af ], [ %i.dv, %bb.ae ]
  store i8 2, ptr %i.dg, align 8, !noalias !1023
  br label %.body16

bb.v:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #23
          to label %.noexc18 unwind label %bb.ai

.noexc18:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #23
          to label %.noexc19 unwind label %bb.ai

.noexc19:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.s
  %i.di = phi ptr [ %i.cc, %bb.u ], [ %i.cb, %bb.s ] ; 5 uses
  %i.dj = phi ptr [ %i.cd, %bb.u ], [ %i.ca, %bb.s ] ; 6 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps8RpRenameNtNtNtB2g_5types5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %.val7.i = load ptr, ptr %i.dj, align 8, !noalias !1023
  %i.dl = getelementptr i8, ptr %1, i64 40
  %.val8.i = load ptr, ptr %i.dl, align 8, !noalias !1023, !nonnull !7, !align !9, !noundef !7
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps8RpRenameNtNtNtB2u_5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val7.i, ptr nonnull %.val8.i) #27
          to label %.body.i unwind label %bb.ah, !noalias !1024

bb.z:                                             ; preds = %bb.x
  %i.dm = load i64, ptr %i.h, align 8, !range !23, !alias.scope !1024, !noundef !7
  %i.dn = icmp eq i64 %i.dm, -2
  br i1 %i.dn, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
end_hunk_1
begin_hunk_2_@_RNCNvXs3_NtNtCs5XgW7KoffLW_12opendal_core6layers17correctness_checkNtB7_18CorrectnessServiceNtNtNtBb_3raw8accessor7Service7restore0Bb_:bb.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor11ServiceInfoEBH_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 163
  %i.ce = load i8, ptr %i.cd, align 1, !range !18, !noundef !7
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor11ServiceInfoEBH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.val, ptr %i.t, align 8, !noalias !1251
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.val19, ptr %i.cg, align 8, !noalias !1251
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !1251
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.ch, align 8, !noalias !1251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1251
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr @94, ptr %i.r, align 8, !noalias !1251, !captures !26
  store i64 7, ptr %i.ci, align 8, !noalias !1251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1251
  store ptr %i.t, ptr %i.o, align 8, !noalias !1251
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1251
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.r, ptr %i.cj, align 8, !noalias !1251
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1251
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.s, ptr %i.ck, align 8, !noalias !1251
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1251
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @99, ptr noundef nonnull %i.o)
          to label %.noexc28 unwind label %bb.o

.noexc28:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1251
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newNtNtCs6i54tJFfzR_5alloc6string6StringEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.q, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc29 unwind label %bb.o

.noexc29:                                         ; preds = %.noexc28
  %i.cl = load ptr, ptr %i.r, align 8, !noalias !1251, !nonnull !7, !noundef !7
  %i.cm = load i64, ptr %i.ci, align 8, !noalias !1251, !noundef !7
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef %i.cm)
          to label %bb.p unwind label %bb.o

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor11ServiceInfoEBH_.exit
  %.val22 = load ptr, ptr %i.an, align 8, !noundef !7 ; 5 uses
  %i.cn = getelementptr i8, ptr %1, i64 128
  %.val23 = load i64, ptr %i.cn, align 8          ; 7 uses
  %.not.i.i = icmp eq ptr %.val22, null           ; 2 uses
  br i1 %.not.i.i, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i64 %.val23, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i [
    i64 0, label %bb.x
    i64 1, label %.invoke
  ], !prof !27

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.co, align 1, !alias.scope !1252 ; 2 uses
  %i.cp = and i16 %.sroa.02.0.copyload.i.i.i, 1
  %i.cq = icmp eq i16 %i.cp, 0
  br i1 %i.cq, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i
  %.not.i.i.i = icmp samesign ult i64 %.val23, 4
  br i1 %.not.i.i.i, label %.invoke, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i, !prof !8

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i: ; preds = %bb.n
  %i.cr = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.02.0.copyload.i.i.i)
  %i.cs = shl nuw nsw i16 %i.cr, 1
  %narrow.i.i = add nuw nsw i16 %i.cs, 2          ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val22, i64 18
  %phi.call.in.i.i = load i16, ptr %i.ct, align 1 ; 2 uses
  %phi.call.i.i = zext i16 %phi.call.in.i.i to i64 ; 2 uses
  %i.cu = icmp ult i16 %phi.call.in.i.i, %narrow.i.i
  %.not12.i.i = icmp ult i64 %.val23, %phi.call.i.i
  %or.cond.i.i = or i1 %i.cu, %.not12.i.i
  br i1 %or.cond.i.i, label %.invoke, label %bb.t, !prof !28

.invoke:                                          ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i54, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i, %bb.ae, %bb.ad, %bb.n, %bb.m
  %.shrunk = phi i16 [ 2, %bb.ae ], [ 0, %bb.m ], [ 2, %bb.n ], [ %narrow.i.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i ], [ 0, %bb.ad ], [ %narrow.i.i55, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i54 ]
  %i.cv = phi i64 [ 4, %bb.ae ], [ 2, %bb.m ], [ 4, %bb.n ], [ %phi.call.i.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i ], [ 2, %bb.ad ], [ %phi.call.i.i58, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i54 ]
  %i.cw = phi ptr [ @84, %bb.ae ], [ @85, %bb.m ], [ @84, %bb.n ], [ @66, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i ], [ @85, %bb.ad ], [ @66, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i54 ]
  %i.cx = zext i16 %.shrunk to i64
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.cx, i64 noundef %i.cv, i64 noundef %.val23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cw) #23
          to label %.cont unwind label %bb.af

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %.noexc29, %.noexc28, %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.c

bb.p:                                             ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.q

bb.q:                                             ; preds = %bb.aj, %bb.aa, %bb.w, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.cz = load ptr, ptr %i.an, align 8, !alias.scope !1256, !noundef !7 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = atomicrmw add ptr %i.cz, i64 -1 release, align 8, !noalias !1257
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit unwind label %bb.ak

bb.t:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 164
  %i.de = load i8, ptr %i.dd, align 4, !range !18, !noundef !7
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %.val, ptr %i.n, align 8, !noalias !1258
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.val19, ptr %i.dg, align 8, !noalias !1258
  store ptr @41, ptr %i.m, align 8, !noalias !1258
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 7, ptr %i.dh, align 8, !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1258
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr @94, ptr %i.l, align 8, !noalias !1258, !captures !26
  store i64 7, ptr %i.di, align 8, !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1258
  store ptr %i.n, ptr %i.i, align 8, !noalias !1258
  %.sroa.42.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.42.0..sroa_idx.i35, align 8, !noalias !1258
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.l, ptr %i.dj, align 8, !noalias !1258
  %.sroa.46.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.46.0..sroa_idx.i36, align 8, !noalias !1258
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.dk, align 8, !noalias !1258
  %.sroa.410.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.410.0..sroa_idx.i37, align 8, !noalias !1258
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @99, ptr noundef nonnull %i.i)
          to label %.noexc38 unwind label %bb.v

.noexc38:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1258
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newNtNtCs6i54tJFfzR_5alloc6string6StringEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.k, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc39 unwind label %bb.v

.noexc39:                                         ; preds = %.noexc38
  %i.dl = load ptr, ptr %i.l, align 8, !noalias !1258, !nonnull !7, !noundef !7
  %i.dm = load i64, ptr %i.di, align 8, !noalias !1258, !noundef !7
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dl, i64 noundef %i.dm)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %.noexc39, %.noexc38, %bb.u
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.c

bb.w:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.q

bb.x:                                             ; preds = %bb.m, %bb.t, %bb.l, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i
  %i.do = getelementptr i8, ptr %1, i64 136
  %.val26 = load i8, ptr %i.do, align 8, !noundef !7
  %i.dp = trunc i8 %.val26 to i1                  ; 2 uses
  %.not = xor i1 %i.dp, true
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ac, i64 165
  %i.dr = load i8, ptr %i.dq, align 1, !range !18
  %3 = trunc nuw i8 %i.dr to i1
  %or.cond = select i1 %.not, i1 true, i1 %3
  br i1 %or.cond, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.val, ptr %i.h, align 8, !noalias !1259
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.val19, ptr %i.ds, align 8, !noalias !1259
  store ptr @49, ptr %i.g, align 8, !noalias !1259
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 13, ptr %i.dt, align 8, !noalias !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1259
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr @94, ptr %i.f, align 8, !noalias !1259, !captures !26
  store i64 7, ptr %i.du, align 8, !noalias !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1259
  store ptr %i.h, ptr %i.c, align 8, !noalias !1259
  %.sroa.42.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.42.0..sroa_idx.i42, align 8, !noalias !1259
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.dv, align 8, !noalias !1259
  %.sroa.46.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.46.0..sroa_idx.i43, align 8, !noalias !1259
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.g, ptr %i.dw, align 8, !noalias !1259
  %.sroa.410.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.410.0..sroa_idx.i44, align 8, !noalias !1259
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @99, ptr noundef nonnull %i.c)
          to label %.noexc45 unwind label %bb.z

.noexc45:                                         ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1259
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newNtNtCs6i54tJFfzR_5alloc6string6StringEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, i8 noundef 1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc46 unwind label %bb.z

.noexc46:                                         ; preds = %.noexc45
  %i.dx = load ptr, ptr %i.f, align 8, !noalias !1259, !nonnull !7, !noundef !7
  %i.dy = load i64, ptr %i.du, align 8, !noalias !1259, !noundef !7
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dy)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %.noexc46, %.noexc45, %bb.y
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.c

bb.aa:                                            ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.q

bb.ab:                                            ; preds = %bb.x
  br i1 %i.dp, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not.i.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i64 %.val23, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i51 [
    i64 0, label %bb.ag
    i64 1, label %.invoke
  ], !prof !27

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i51: ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %.sroa.02.0.copyload.i.i.i52 = load i16, ptr %i.ea, align 1, !alias.scope !1260 ; 2 uses
  %i.eb = and i16 %.sroa.02.0.copyload.i.i.i52, 1
  %i.ec = icmp eq i16 %i.eb, 0
  br i1 %i.ec, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i51
  %.not.i.i.i53 = icmp samesign ult i64 %.val23, 4
  br i1 %.not.i.i.i53, label %.invoke, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i54, !prof !8

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i54: ; preds = %bb.ae
  %i.ed = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %.sroa.02.0.copyload.i.i.i52)
  %i.ee = shl nuw nsw i16 %i.ed, 1
  %narrow.i.i55 = add nuw nsw i16 %i.ee, 2        ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val22, i64 18
  %phi.call.in.i.i57 = load i16, ptr %i.ef, align 1 ; 2 uses
  %phi.call.i.i58 = zext i16 %phi.call.in.i.i57 to i64 ; 2 uses
  %i.eg = icmp ult i16 %phi.call.in.i.i57, %narrow.i.i55
  %.not12.i.i59 = icmp ult i64 %.val23, %phi.call.i.i58
  %or.cond.i.i60 = or i1 %i.eg, %.not12.i.i59
  br i1 %or.cond.i.i60, label %.invoke, label %.thread, !prof !28

bb.af:                                            ; preds = %bb.bl, %.invoke, %bb.b
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.w, i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 40)
          to label %bb.ah unwind label %bb.ai

.thread:                                          ; preds = %bb.ab, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i54
  store i8 0, ptr %i.af, align 8
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.985.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ak, ptr %.sroa.783.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.am, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x ptr> %i.ah, ptr %.sroa.1086.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 73
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 73
  br label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationNtNtNtBa_3raw9operation9OperationEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.w, i8 noundef 7)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.c

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit76: ; preds = %bb.bo, %bb.bn, %bb.bp, %bb.ak, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.el, %bb.ak ], [ %.pn14.pn, %bb.c ], [ %.pn14.pn, %bb.bp ], [ %.pn14.pn, %bb.bn ], [ %.pn14.pn, %bb.bo ]
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 0, ptr %i.ek, align 8
  store i8 2, ptr %i.ad, align 1
  resume { ptr, i32 } %.pn17

bb.ak:                                            ; preds = %bb.s
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit76

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit: ; preds = %bb.r, %bb.q, %bb.s
  store i8 0, ptr %i.af, align 8
  br label %bb.al

common.ret:                                       ; preds = %bb.bk, %bb.al
  %storemerge = phi i8 [ 3, %bb.bk ], [ 1, %bb.al ]
  store i8 %storemerge, ptr %i.ad, align 1
  ret void

bb.al:                                            ; preds = %bb.bm, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpRestoreEBH_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.u, i64 88, i1 false)
  br label %common.ret

bb.am:                                            ; preds = %bb.bp, %.body73
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #23
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #23
  unreachable

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !16, !noalias !1261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  switch i8 %.pre, label %default.unreachable104 [
    i8 0, label %bb.ar
    i8 1, label %bb.au
    i8 2, label %bb.av
    i8 3, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1261
  br label %bb.aw

bb.ar:                                            ; preds = %.thread, %bb.ap
  %i.eo = phi ptr [ %i.ei, %.thread ], [ %i.en, %bb.ap ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !1261, !nonnull !7, !align !9, !noundef !7 ; 2 uses
end_hunk_2
