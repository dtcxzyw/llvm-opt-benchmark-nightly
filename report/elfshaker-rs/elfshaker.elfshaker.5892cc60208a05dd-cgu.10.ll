Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.10?download=true
inline.NumInlined: 364
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtCs7BtpbLEd5q3_9elfshaker4find7get_app:bb.a

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !325
  unreachable

_RINvMs_NtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB5_3Arg13default_valueReECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !351
  invoke void @_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16)
          to label %bb.r unwind label %bb.q, !noalias !351

bb.p:                                             ; preds = %.body.i2, %bb.q
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i2 ], [ %i.v, %bb.q ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.f) #27
          to label %.body.thread unwind label %bb.y, !noalias !346

bb.q:                                             ; preds = %_RINvMs_NtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB5_3Arg13default_valueReECs7BtpbLEd5q3_9elfshaker.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %_RINvMs_NtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB5_3Arg13default_valueReECs7BtpbLEd5q3_9elfshaker.exit
  %i.w = load i64, ptr %i.a, align 8, !range !51, !noalias !351, !noundef !16 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !351
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !351
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 488 ; 6 uses
  %i.z = load i64, ptr %i.y, align 8, !range !51, !alias.scope !352, !noalias !346, !noundef !16
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.v, !noalias !346

bb.v:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i2 unwind label %bb.w, !noalias !346

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !346
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.z unwind label %bb.x, !noalias !346

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2

.body.i2:                                         ; preds = %bb.x, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.x ], [ %i.ab, %bb.v ]
  store i64 %i.w, ptr %i.y, align 8, !alias.scope !349, !noalias !346
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !346
  br label %bb.p

bb.y:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !346
  unreachable

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.t
  store i64 %i.w, ptr %i.y, align 8, !alias.scope !349, !noalias !346
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.g, ptr noundef nonnull align 8 dereferenceable(640) %i.f, i64 640, i1 false), !alias.scope !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command3argNtNtB5_3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.aa:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body.ph

.body.thread:                                     ; preds = %bb.p, %bb.e, %bb.n
  %eh.lpad-body.ph = phi { ptr, i32 } [ %.pn.i.i, %bb.e ], [ %i.t, %bb.n ], [ %.pn.i, %bb.p ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(712) %i.i) #27
          to label %bb.aa unwind label %bb.ab

bb.ab:                                            ; preds = %.body.thread
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !16 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i
    i64 1, label %bb.e
  ], !prof !98

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !355
  store i8 3, ptr %i.a, align 8, !alias.scope !355
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4find3run000INtB7_5FnMutTNtNtCs1xwejQucwHj_5alloc6string6StringEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [104 x i8], align 8               ; 24 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load ptr, ptr %1, align 8, !nonnull !16, !align !60, !noundef !16 ; 2 uses
  %.val = load ptr, ptr %i.j, align 8, !nonnull !16, !align !60, !noundef !16
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val1 = load ptr, ptr %i.k, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !361, !noalias !358, !nonnull !16, !noundef !16 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !361, !noalias !358, !noundef !16 ; 22 uses
  %i.p = load ptr, ptr %.val, align 8, !noalias !363, !nonnull !16, !align !60, !noundef !16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !363, !nonnull !16, !noundef !16 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !363, !noundef !16 ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = icmp ult i64 %i.t, %i.o
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq i64 %i.t, 1
  br i1 %i.w, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.t, %i.o
  br i1 %i.x, label %bb.bb, label %.thread3.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp ult i64 %i.t, 33
  br i1 %i.y, label %bb.am, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i = load i8, ptr %i.r, align 1, !alias.scope !364, !noalias !369, !noundef !16 ; 2 uses
  %i.z = icmp samesign ult i64 %i.o, 16
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.o)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !363 ; 2 uses

.noexc.i:                                         ; preds = %bb.g
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %.loopexit9.i.i.i.i, label %.thread3.i

.loopexit9.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %.noexc.i
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.ac, %.noexc.i ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ae = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.o
  tail call void @llvm.assume(i1 %i.ae)
  br label %.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.h
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ai, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.04.011.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !370, !noalias !375, !noundef !16
  %i.ah = icmp eq i8 %i.ag, %.val.i.i
  br i1 %i.ah, label %.loopexit9.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ai, %i.o
  br i1 %exitcond.not.i.i.i.i, label %.thread3.i, label %.lr.ph.i.i.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i: ; preds = %bb.ao, %bb.an, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !376
  invoke void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %.noexc2.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !363

.noexc2.i:                                        ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.aj = load i64, ptr %i.h, align 8, !range !213, !alias.scope !377, !noalias !380, !noundef !16
  switch i64 %i.aj, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

.preheader.i.i.i:                                 ; preds = %.noexc2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !range !382, !alias.scope !377, !noalias !380
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !377, !noalias !380, !nonnull !16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !377, !noalias !380 ; 14 uses
  br i1 %i.am, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.promoted205.i.i.i = load i8, ptr %i.ar, align 8, !alias.scope !377, !noalias !380 ; 2 uses
  %.promoted156.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !377, !noalias !380 ; 12 uses
  %i.at = trunc nuw i8 %.promoted205.i.i.i to i1
  %i.au = icmp eq i64 %.promoted156.i.i.i, 0
  br i1 %i.au, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted156.i.i.i, %i.aq
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.j, label %.split.i.i.us.i.peel.i.i

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.i
  %i.av = icmp eq i64 %.promoted156.i.i.i, %i.aq
  br i1 %i.av, label %bb.k, label %.split.us160.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.promoted156.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !383, !noalias !386, !noundef !16
  %i.ay = icmp sgt i8 %i.ax, -65
  br i1 %i.ay, label %bb.k, label %.split.us160.i.i.i

bb.k:                                             ; preds = %bb.j, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.promoted156.i.i.i ; 4 uses
  %i.ba = icmp samesign eq i64 %.promoted156.i.i.i, %i.aq
  br i1 %i.ba, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i8, ptr %i.az, align 1, !noalias !390, !noundef !16 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.m, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.be = and i8 %i.bb, 31
  %i.bf = zext nneg i8 %i.be to i32               ; 3 uses
  %i.bg = add nuw nsw i64 %.promoted156.i.i.i, 1
  %i.bh = icmp samesign ne i64 %i.bg, %i.aq
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bd, align 1, !noalias !390, !noundef !16
  %i.bj = shl nuw nsw i32 %i.bf, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bp = add nuw nsw i64 %.promoted156.i.i.i, 2
  %i.bq = icmp samesign ne i64 %i.bp, %i.aq
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load i8, ptr %i.bo, align 1, !noalias !390, !noundef !16
  %i.bs = shl nuw nsw i32 %i.bl, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bf, 12
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.ca = add nuw nsw i64 %.promoted156.i.i.i, 3
  %i.cb = icmp samesign ne i64 %i.ca, %i.aq
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load i8, ptr %i.bz, align 1, !noalias !390, !noundef !16
  %i.cd = shl nuw nsw i32 %i.bf, 18
  %i.ce = and i32 %i.cd, 1835008
  %i.cf = shl nuw nsw i32 %i.bv, 6
  %i.cg = and i8 %i.cc, 63
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.cf, %i.ch
  %i.cj = or disjoint i32 %i.ci, %i.ce
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = zext nneg i8 %i.bb to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.bx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.peel.i.i ], [ %i.cj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.peel.i.i ], [ %i.bm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.peel.i.i ], [ %i.ck, %bb.m ] ; 4 uses
  %i.cl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cl)
  br i1 %i.at, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.cm, label %.lr.ph.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.cn, label %.lr.ph.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.co, i64 3, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.p ], [ %..i.us.i.peel.i.i, %bb.q ], [ 1, %bb.o ]
  %i.cp = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted156.i.i.i ; 11 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.cp, %i.aq
  br i1 %.not.i.i.us.i.i.i, label %bb.s, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %bb.r
  %i.cr = icmp eq i64 %i.cp, %i.aq
  br i1 %i.cr, label %bb.t, label %.split.us160.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cp
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !383, !noalias !393, !noundef !16
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %bb.t, label %.split.us160.i.i.i

bb.t:                                             ; preds = %bb.s, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
  %i.cv = icmp samesign eq i64 %i.cp, %i.aq
  br i1 %i.cv, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cp
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !395, !noundef !16 ; 3 uses
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i: ; preds = %bb.u
  %i.cz = add nuw nsw i64 %i.cp, 1
  %i.da = icmp samesign ne i64 %i.cz, %i.aq
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cx, -33
  br i1 %i.db, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i
  %i.dc = add nuw nsw i64 %i.cp, 2
  %i.dd = icmp samesign ne i64 %i.dc, %i.aq
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = icmp samesign ugt i8 %i.cx, -17
  br i1 %i.de, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i
  %i.df = add nuw nsw i64 %i.cp, 3
  %i.dg = icmp samesign ne i64 %i.df, %i.aq
  tail call void @llvm.assume(i1 %i.dg)
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i

.split.us160.i.i.i:                               ; preds = %bb.s, %.split.i.i.us.i.i.i, %bb.j, %.split.i.i.us.i.peel.i.i
  %.lcssa61.i.i = phi i64 [ %.promoted156.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted156.i.i.i, %bb.j ], [ %i.cp, %.split.i.i.us.i.i.i ], [ %i.cp, %bb.s ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq, i64 noundef %.lcssa61.i.i, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #26
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !363

.noexc3.i:                                        ; preds = %.split.us160.i.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc2.i
  unreachable

bb.v:                                             ; preds = %.noexc2.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !377, !noalias !380, !noundef !16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !377, !noalias !380, !noundef !16 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.dk, %i.di
  br i1 %.not.i.i.i, label %bb.x, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.w:                                             ; preds = %.noexc2.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !377, !noalias !380, !noundef !16 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !377, !noalias !380, !nonnull !16, !noundef !16 ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4find3run000INtB7_5FnMutTNtNtCs1xwejQucwHj_5alloc6string6StringEE8call_mutBY_:bb.a
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.ad, %.lr.ph.i7.i.i.i
  %.sink70.i.i42.i.i = phi i64 [ %.sink70.i.i.i.i, %bb.ad ], [ %i.dn, %.lr.ph.i7.i.i.i ] ; 3 uses
  %.sink71.i.i39.i.i = phi i64 [ %.sink71.i.i.i.i, %bb.ad ], [ %.promoted.i.i.i.i, %.lr.ph.i7.i.i.i ] ; 5 uses
  %i.ev = phi i64 [ %i.fe, %bb.ad ], [ %i.en, %.lr.ph.i7.i.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !403, !noalias !410, !noundef !16
  %i.ey = and i8 %i.ex, 63
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = and i64 %i.fa, %i.eq
  %.not.i8.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i8.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.fc = add i64 %.sink71.i.i39.i.i, %i.dw
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i
  %..i.i9.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i42.i.i, i64 %i.er) ; 2 uses
  %i.fd = icmp ult i64 %..i.i9.i.i.i, %i.dw
  br i1 %i.fd, label %.lr.ph109, label %.preheader36.i.i.i.i.preheader

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %bb.ab
  %.sink71.i.i.i.i = phi i64 [ %i.fz, %bb.ah ], [ %i.fy, %bb.ag ], [ %i.fc, %bb.ab ] ; 2 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.eu, %bb.ag ], [ 0, %bb.ab ]
  %i.fe = add i64 %.sink71.i.i.i.i, %i.dy         ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.ds
  br i1 %i.ff, label %.lr.ph.split.i.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.ae:                                            ; preds = %.lr.ph109
  %i.fg = add nuw nsw i64 %.sroa.04.0.i.i.i.i108, 1 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.dw
  br i1 %i.fh, label %.lr.ph109, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.ae, %bb.ac
  %i.fi = icmp ult i64 %.sink70.i.i42.i.i, %i.er
  br i1 %i.fi, label %.lr.ph111, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph109:                                        ; preds = %bb.ac, %bb.ae
  %.sroa.04.0.i.i.i.i108 = phi i64 [ %i.fg, %bb.ae ], [ %..i.i9.i.i.i, %bb.ac ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.04.0.i.i.i.i108
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !405, !noalias !411, !noundef !16
  %i.fl = add i64 %.sroa.04.0.i.i.i.i108, %.sink71.i.i39.i.i ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.ds
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !403, !noalias !410, !noundef !16
  %.not21.i.i.i.i = icmp eq i8 %i.fk, %i.fo
  br i1 %.not21.i.i.i.i, label %bb.ae, label %bb.ah

.preheader36.i.i.i.i:                             ; preds = %bb.af
  %i.fp = icmp ult i64 %.sink70.i.i42.i.i, %i.fq
  br i1 %i.fp, label %.lr.ph111, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph111:                                        ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i110 = phi i64 [ %i.fq, %.preheader36.i.i.i.i ], [ %i.er, %.preheader36.i.i.i.i.preheader ]
  %i.fq = add i64 %.sroa.2.0.i.i.i.i110, -1       ; 6 uses
  %i.fr = icmp ult i64 %i.fq, %i.dw
  br i1 %i.fr, label %bb.af, label %.invoke.i

bb.af:                                            ; preds = %.lr.ph111
  %i.fs = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !405, !noalias !411, !noundef !16
  %i.fu = add i64 %i.fq, %.sink71.i.i39.i.i       ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ds
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !403, !noalias !410, !noundef !16
  %.not20.i.i.i.i = icmp eq i8 %i.ft, %i.fx
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = add i64 %.sink71.i.i39.i.i, %i.et
  br label %bb.ad

bb.ah:                                            ; preds = %.lr.ph109
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i39.i.i, %invariant.op
  %i.fz = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i108
  br label %bb.ad

bb.ai:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %.promoted.i11.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !419, !noalias !420 ; 2 uses
  %i.ga = add i64 %.promoted.i11.i.i.i, %i.dy     ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.ds
  br i1 %i.gb, label %.lr.ph.i14.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph.i14.i.i.i:                                 ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !419, !noalias !420, !noundef !16
  %i.ge = load i64, ptr %i.dl, align 8, !alias.scope !419, !noalias !420
  %.fr214.i.i.i = freeze i64 %i.ge                ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !419, !noalias !420
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i.i.i, i64 range(i64 0, -9223372036854775808) %i.dw)
  %i.gh = add i64 %.fr214.i.i.i, -1               ; 2 uses
  %.first_iter.i15.i.i.i = icmp ult i64 %i.gh, %i.dw
  %exitcond.not.i16.i.i.i112.not = icmp ult i64 %.fr214.i.i.i, %i.dw
  %invariant.op151 = sub i64 1, %.fr214.i.i.i
  %.not34.i.us.i.i.i115 = icmp eq i64 %.fr214.i.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %bb.al, %.lr.ph.i14.i.i.i
  %.sink.i17.i45.i.i = phi i64 [ %.sink.i17.i.i.i, %bb.al ], [ %.promoted.i11.i.i.i, %.lr.ph.i14.i.i.i ] ; 5 uses
  %i.gi = phi i64 [ %i.hg, %bb.al ], [ %i.ga, %.lr.ph.i14.i.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !alias.scope !415, !noalias !422, !noundef !16
  %i.gl = and i8 %i.gk, 63
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.gd
  %.not.us.i.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.us.i.i.i.i, label %bb.ak, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i112.not, label %.lr.ph114, label %.preheader.i18.preheader.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph114
  %i.gp = add i64 %.sroa.04.0.us.i.i.i.i113, 1    ; 2 uses
  %exitcond.not.i16.i.i.i = icmp eq i64 %i.gp, %umax.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i, label %.preheader.i18.preheader.i.i.i, label %.lr.ph114

.preheader.i18.preheader.i.i.i:                   ; preds = %.preheader35.i.i.i.i, %.preheader35.i.i.i.i.preheader
  br i1 %.first_iter.i15.i.i.i, label %.preheader.i18.us.i.i.i.preheader, label %.preheader.i18.i.i.i

.preheader.i18.us.i.i.i.preheader:                ; preds = %.preheader.i18.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i115, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph117

.preheader.i18.us.i.i.i:                          ; preds = %.lr.ph117
  %.not34.i.us.i.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not34.i.us.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader.i18.us.i.i.i.preheader, %.preheader.i18.us.i.i.i
  %.sroa.2.0.us.i.us.i.i.i116 = phi i64 [ %i.gq, %.preheader.i18.us.i.i.i ], [ %.fr214.i.i.i, %.preheader.i18.us.i.i.i.preheader ]
  %i.gq = add i64 %.sroa.2.0.us.i.us.i.i.i116, -1 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !417, !noalias !423, !noundef !16
  %i.gt = add i64 %i.gq, %.sink.i17.i45.i.i       ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.ds
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gt
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !415, !noalias !422, !noundef !16
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.gs, %i.gw
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i18.us.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph117
  %i.gx = add i64 %.sink.i17.i45.i.i, %i.gg
  br label %bb.al

.lr.ph114:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i113 = phi i64 [ %i.gp, %.preheader35.i.i.i.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.04.0.us.i.i.i.i113
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !417, !noalias !423, !noundef !16
  %i.ha = add i64 %.sroa.04.0.us.i.i.i.i113, %.sink.i17.i45.i.i ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.ds
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !415, !noalias !422, !noundef !16
  %.not21.us.i.i.i.i = icmp eq i8 %i.gz, %i.hd
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.aj

.preheader.i18.i.i.i:                             ; preds = %.preheader.i18.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i115, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.invoke.i

bb.aj:                                            ; preds = %.lr.ph114
  %.reass281.i.reass.i.reass.i.reass.reass = add i64 %.sink.i17.i45.i.i, %invariant.op151
  %i.he = add i64 %.reass281.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i113
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.hf = add i64 %.sink.i17.i45.i.i, %i.dw
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.split.us.i.i.i
  %.sink.i17.i.i.i = phi i64 [ %i.hf, %bb.ak ], [ %i.he, %bb.aj ], [ %i.gx, %.split.us.i.i.i ] ; 2 uses
  %i.hg = add i64 %.sink.i17.i.i.i, %i.dy         ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.ds
  br i1 %i.hh, label %.lr.ph.split.us.i.i.i.i, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i: ; preds = %.lr.ph.i.i4.i.i, %.noexc4.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit16.i.i.us.i.i.i, %bb.u
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.ad, %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i, %bb.al, %.preheader.i18.us.i.i.i.preheader, %.preheader.i18.us.i.i.i, %bb.z, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, %.preheader.i18.i.i.i, %bb.ai, %bb.aa, %.noexc4.i, %bb.v, %bb.t, %bb.n, %bb.k, %.preheader.i.i.i
  %storemerge.i.sink.i.i.i = phi i8 [ 1, %.preheader36.i.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.v ], [ 0, %bb.ai ], [ 1, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i ], [ 0, %.noexc4.i ], [ 1, %.preheader.i18.us.i.i.i ], [ 0, %.preheader.i.i.i ], [ 1, %bb.n ], [ 1, %bb.t ], [ 1, %.preheader.i18.us.i.i.i.preheader ], [ 1, %.preheader.i18.i.i.i ], [ %.promoted205.i.i.i, %bb.k ], [ 0, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ad ], [ 1, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !376
  br label %bb.bc

bb.am:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.hi = load i8, ptr %i.r, align 1, !alias.scope !429, !noalias !430, !noundef !16 ; 3 uses
  %i.hj = add nsw i64 %i.t, -1                    ; 2 uses
  %i.hk = icmp eq i64 %i.t, 2
  br i1 %i.hk, label %.thread.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hl = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.t, i64 4) ; 2 uses
  %3 = icmp ult i64 %i.hl, %i.t
  br i1 %3, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i

bb.ao:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.hm = icmp ult i64 %i.hl, %i.ho
  br i1 %i.hm, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_contains.exit.i.i

.lr.ph:                                           ; preds = %bb.an, %bb.ao
  %i.hn = phi i64 [ %i.ho, %bb.ao ], [ %i.t, %bb.an ]
  %i.ho = add nsw i64 %i.hn, -1                   ; 6 uses
  %i.hp = icmp ult i64 %i.ho, %i.t
  br i1 %i.hp, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %.lr.ph, %.lr.ph111, %.preheader.i18.i.i.i
  %i.hq = phi i64 [ %i.gh, %.preheader.i18.i.i.i ], [ %i.fq, %.lr.ph111 ], [ %i.ho, %.lr.ph ]
  %i.hr = phi i64 [ %i.dw, %.preheader.i18.i.i.i ], [ %i.dw, %.lr.ph111 ], [ %i.t, %.lr.ph ]
  %i.hs = phi ptr [ @5, %.preheader.i18.i.i.i ], [ @5, %.lr.ph111 ], [ @13, %.lr.ph ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.hq, i64 noundef range(i64 0, -9223372036854775808) %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs) #26
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !363

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %.lr.ph
  %i.ht = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ho
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !429, !noalias !431, !noundef !16 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.hu, %i.hi
  br i1 %.not.i.not.i.i.i.i, label %bb.ao, label %bb.ap

bb.ap:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.hv = add nuw nsw i64 %i.t, 15
  %i.hw = icmp ult i64 %i.o, %i.hv
  br i1 %i.hw, label %.lr.ph.split.us.i.i10.i.i, label %bb.aq

.thread.i.i.i:                                    ; preds = %bb.am
  %i.hx = icmp ult i64 %i.o, 17
  br i1 %i.hx, label %.lr.ph.split.us.i.i10.i.i, label %.thread92.i.i.i

.thread92.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.hy = insertelement <16 x i8> poison, i8 %i.hi, i64 0
  %i.hz = shufflevector <16 x i8> %i.hy, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !alias.scope !429, !noalias !430
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ia = insertelement <16 x i8> poison, i8 %i.hi, i64 0
  %i.ib = shufflevector <16 x i8> %i.ia, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

.lr.ph.split.us.i.i10.i.i:                        ; preds = %.thread.i.i.i, %bb.ap
  %bcmp.i.i.us22.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %i.r, i64 range(i64 2, 33) %i.t), !alias.scope !439, !noalias !440
  %i.ic = icmp eq i32 %bcmp.i.i.us22.i.i.i.i, 0
  br i1 %i.ic, label %.thread.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.id, ptr noundef nonnull readonly dereferenceable(1) %i.r, i64 range(i64 2, 33) %i.t), !alias.scope !439, !noalias !440
  %i.ie = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0
  br i1 %i.ie, label %.thread.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7BtpbLEd5q3_9elfshaker.exit.backedge.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i10.i.i, %.split.us.i.i.i.i
  %.pn.i.i.i = phi ptr [ %i.id, %.split.us.i.i.i.i ], [ %i.m, %.lr.ph.split.us.i.i10.i.i ]
  %.in.i.i.i = phi i64 [ %i.if, %.split.us.i.i.i.i ], [ %i.o, %.lr.ph.split.us.i.i10.i.i ]
  %i.if = add i64 %.in.i.i.i, -1                  ; 2 uses
  %.not27.i.i.i.i = icmp ugt i64 %i.t, %i.if
  br i1 %.not27.i.i.i.i, label %.thread3.i, label %.split.us.i.i.i.i

bb.ar:                                            ; preds = %bb.aq, %.thread92.i.i.i
  %i.ig = phi i8 [ %.pre.i.i.i, %.thread92.i.i.i ], [ %i.hu, %bb.aq ]
  %i.ih = phi <16 x i8> [ %i.hz, %.thread92.i.i.i ], [ %i.ib, %bb.aq ] ; 6 uses
  %storemerge9194.i.i.i = phi i64 [ 1, %.thread92.i.i.i ], [ %i.ho, %bb.aq ] ; 6 uses
  %i.ii = insertelement <16 x i8> poison, i8 %i.ig, i64 0
  %i.ij = shufflevector <16 x i8> %i.ii, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !444
  store ptr %i.m, ptr %i.g, align 8, !noalias !444
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.o, ptr %i.il, align 8, !noalias !444
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ik, ptr %i.im, align 8, !noalias !444
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.hj, ptr %i.in, align 8, !noalias !444
  %i.io = add nuw nsw i64 %i.t, 63                ; 2 uses
  %.not.i6.i.i = icmp ult i64 %i.io, %i.o
  br i1 %.not.i6.i.i, label %.lr.ph.i8.i.i, label %.preheader.i7.i.i

.preheader.i7.i.i:                                ; preds = %bb.av, %bb.ar
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.ar ], [ %.sroa.014.2.3.i.i.i, %bb.av ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.ar ], [ %i.kk, %bb.av ] ; 2 uses
  %i.ip = add nuw nsw i64 %i.t, 15                ; 2 uses
  %i.iq = add i64 %.sroa.06.0.lcssa.i.i.i, %i.ip
  %i.ir = icmp uge i64 %i.iq, %i.o
  %i.is = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3104.i.i.i = select i1 %i.ir, i1 true, i1 %i.is
  br i1 %or.cond3104.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph106.i.i.i

.lr.ph.i8.i.i:                                    ; preds = %bb.ar, %bb.av
  %.sroa.06.0102.i.i.i = phi i64 [ %i.kk, %bb.av ], [ 0, %bb.ar ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.06.0102.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.it, align 1, !alias.scope !445, !noalias !446
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.iu, align 1, !alias.scope !445, !noalias !446
  %i.iv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, %i.ih
  %i.iw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, %i.ij
  %i.ix = and <16 x i1> %i.iv, %i.iw
  %i.iy = bitcast <16 x i1> %i.ix to i16          ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.iz, align 1, !alias.scope !445, !noalias !446
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.ja, align 1, !alias.scope !445, !noalias !446
  %i.jb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, %i.ih
  %i.jc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, %i.ij
  %i.jd = and <16 x i1> %i.jb, %i.jc
  %i.je = bitcast <16 x i1> %i.jd to i16          ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.jf, align 1, !alias.scope !445, !noalias !446
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.jg, align 1, !alias.scope !445, !noalias !446
  %i.jh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, %i.ih
  %i.ji = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, %i.ij
  %i.jj = and <16 x i1> %i.jh, %i.ji
  %i.jk = bitcast <16 x i1> %i.jj to i16          ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.it, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.jl, align 1, !alias.scope !445, !noalias !446
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.jm, align 1, !alias.scope !445, !noalias !446
  %i.jn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, %i.ih
  %i.jo = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, %i.ij
  %i.jp = and <16 x i1> %i.jn, %i.jo
  %i.jq = bitcast <16 x i1> %i.jp to i16          ; 2 uses
  %i.jr = icmp eq i16 %i.iy, 0
  br i1 %i.jr, label %.preheader95.1.i.i.i, label %bb.aw

.preheader95.1.i.i.i:                             ; preds = %.noexc11.i, %.lr.ph.i8.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i8.i.i ], [ %i.kp, %.noexc11.i ] ; 3 uses
  %i.js = icmp eq i16 %i.je, 0
  br i1 %i.js, label %.preheader95.2.i.i.i, label %bb.as

bb.as:                                            ; preds = %.preheader95.1.i.i.i
  %i.jt = or disjoint i64 %.sroa.06.0102.i.i.i, 16
  %i.ju = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.jv = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.jt, i16 noundef %i.je, i1 noundef zeroext %i.ju) #31
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !363

.noexc8.i:                                        ; preds = %bb.as
  %i.jw = zext i1 %i.jv to i8
  %i.jx = or i8 %.sroa.014.2.i.i.i, %i.jw
  br label %.preheader95.2.i.i.i

.preheader95.2.i.i.i:                             ; preds = %.noexc8.i, %.preheader95.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader95.1.i.i.i ], [ %i.jx, %.noexc8.i ] ; 3 uses
  %i.jy = icmp eq i16 %i.jk, 0
  br i1 %i.jy, label %.preheader95.3.i.i.i, label %bb.at

bb.at:                                            ; preds = %.preheader95.2.i.i.i
  %i.jz = or disjoint i64 %.sroa.06.0102.i.i.i, 32
  %i.ka = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.kb = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.jz, i16 noundef %i.jk, i1 noundef zeroext %i.ka) #31
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !363

.noexc9.i:                                        ; preds = %bb.at
  %i.kc = zext i1 %i.kb to i8
  %i.kd = or i8 %.sroa.014.2.1.i.i.i, %i.kc
  br label %.preheader95.3.i.i.i

.preheader95.3.i.i.i:                             ; preds = %.noexc9.i, %.preheader95.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader95.2.i.i.i ], [ %i.kd, %.noexc9.i ] ; 3 uses
  %i.ke = icmp eq i16 %i.jq, 0
  br i1 %i.ke, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.preheader95.3.i.i.i
  %i.kf = or disjoint i64 %.sroa.06.0102.i.i.i, 48
  %i.kg = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.kh = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %i.kf, i16 noundef %i.jq, i1 noundef zeroext %i.kg) #31
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !363

.noexc10.i:                                       ; preds = %bb.au
  %i.ki = zext i1 %i.kh to i8
  %i.kj = or i8 %.sroa.014.2.2.i.i.i, %i.ki
  br label %bb.av

bb.av:                                            ; preds = %.noexc10.i, %.preheader95.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader95.3.i.i.i ], [ %i.kj, %.noexc10.i ] ; 2 uses
  %i.kk = add i64 %.sroa.06.0102.i.i.i, 64        ; 3 uses
  %i.kl = add i64 %i.kk, %i.io
  %i.km = icmp uge i64 %i.kl, %i.o
  %i.kn = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.km, i1 true, i1 %i.kn
  br i1 %or.cond.i.i.i, label %.preheader.i7.i.i, label %.lr.ph.i8.i.i

bb.aw:                                            ; preds = %.lr.ph.i8.i.i
  %i.ko = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.06.0102.i.i.i, i16 noundef %i.iy, i1 noundef zeroext false) #31
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !363

.noexc11.i:                                       ; preds = %bb.aw
  %i.kp = zext i1 %i.ko to i8
  br label %.preheader95.1.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ax, %.preheader.i7.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i7.i.i ], [ %.sroa.014.4.i.i.i, %bb.ax ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.is, %.preheader.i7.i.i ], [ %i.lj, %bb.ax ]
  %i.kq = sub nuw i64 %i.o, %i.hj
  %i.kr = add i64 %i.kq, -16                      ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.kr ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i = load <16 x i8>, ptr %i.ks, align 1, !alias.scope !445, !noalias !449
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i58.i.i.i = load <16 x i8>, ptr %i.kt, align 1, !alias.scope !445, !noalias !449
  %i.ku = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i, %i.ih
end_hunk_1
