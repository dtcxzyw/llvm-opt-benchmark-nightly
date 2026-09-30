Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.00?download=true
inline.NumInlined: 560
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream5StateEBJ_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !628, !nonnull !11, !noundef !11
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !628
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !629, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !629
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.val2.i.i.i, ptr %.val3.i.i.i) #24
          to label %common.resume unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !629, !noundef !11 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !629 ; 6 uses
  %i.m = icmp eq ptr %.val.i.i.i, null
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.n = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.n(ptr noundef nonnull %.val.i.i.i)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.x, %bb.y, %bb.f, %bb.k, %bb.l, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.q ], [ %i.h, %bb.f ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.at, %bb.y ], [ %i.at, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !633, !nonnull !11, !noundef !11
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !633
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #29
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #24
          to label %bb.q unwind label %bb.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ae, %bb.p ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ah) #24
          to label %common.resume unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw12futures_util15ConcurrentTasksNtNtNtNtBI_5types4read13buffer_stream16ChunkedReadInputNtNtB1P_6buffer6BufferEEBI_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ak)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.t:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.al, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.am, align 8, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %i.an = load ptr, ptr %.val1, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.an(ptr noundef nonnull %.val)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !18, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #28
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit

bb.x:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !18, !invariant.load !11
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #28
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils7TwoWaysNtNtNtNtB14_5types4read13buffer_stream15StreamingReaderNtB1W_13ChunkedReaderEEEB14_.exit: ; preds = %bb.w, %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream13ChunkedReaderEBJ_.exit.i.i, %bb.j, %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read13ReadGeneratorEBJ_.exit.i.i.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !16, !noundef !11
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !658, !noundef !11
  %i.m = icmp ne ptr %i.l, null                   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !659
  store i64 %i.n, ptr %i.b, align 8, !noalias !659
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !659
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !658, !noundef !11
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !658, !noundef !11
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i) #30
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !13, !noalias !658, !noundef !11
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !660
  store i64 %i.r, ptr %i.a, align 8, !noalias !660
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !660
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !661
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !661
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !661 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !661
  %i.s = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !661, !noundef !11
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !661, !noundef !11
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !662, !noundef !11
  %i.cd = icmp ne ptr %i.cc, null                 ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val.i.i21 = load ptr, ptr %i.ch, align 8, !noalias !662, !noundef !11 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i22 = load i64, ptr %i.ci, align 8, !noalias !662, !noundef !11 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i21, i64 %.val1.i.i22
  %i.ck = icmp samesign eq i64 %.val1.i.i22, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i22, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !657

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i22, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !663, !noalias !664, !noundef !11
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !13, !noalias !662, !noundef !11
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0 = phi i64 [ %i.cb, %_RINvXsz_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_10HeaderNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i16 0, -32768) i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 16               ; 14 uses
  %i.e = load i64, ptr %0, align 8, !range !16, !noundef !11
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load <2 x i64>, ptr %i.g, align 8        ; 3 uses
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.j = xor <2 x i64> %i.i, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.j, ptr %i.d, align 16
  %i.k = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.l = xor <2 x i64> %i.k, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.l, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.h, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.n = load i8, ptr %i.m, align 8, !range !23, !alias.scope !700, !noalias !701, !noundef !11 ; 2 uses
  %i.o = icmp ne i8 %i.n, 2                       ; 2 uses
  %i.p = zext i1 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !702
  store i64 %i.p, ptr %i.c, align 8, !noalias !702
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !702
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.q = trunc nuw i8 %i.n to i1
  %i.r = load ptr, ptr %1, align 8, !alias.scope !704, !noalias !705, !nonnull !11, !noundef !11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !704, !noalias !705, !noundef !11 ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = icmp samesign eq i64 %i.t, 0
  br i1 %i.v, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t) #30, !noalias !704
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.w = load i8, ptr %.sroa.0.02.i.i.i, align 1, !noalias !706, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !706
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !noalias !706, !noundef !11
  store i8 %i.aa, ptr %i.b, align 1, !noalias !706
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #30, !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !706
  %i.ab = icmp eq ptr %i.y, %i.u
  br i1 %i.ab, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.ac = load i8, ptr %1, align 8, !range !13, !alias.scope !700, !noalias !701, !noundef !11
  %i.ad = zext nneg i8 %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  store i64 %i.ad, ptr %i.a, align 8, !noalias !707
  call fastcc void @_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30, !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 16, !alias.scope !708
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !708
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !708 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !708
  %i.ae = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !708, !noundef !11
  %i.af = shl i64 %i.ae, 56
  %i.ag = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !708, !noundef !11
  %i.ah = or i64 %i.af, %i.ag                     ; 2 uses
  %i.ai = xor i64 %i.ah, %.sroa.22.0.copyload.i   ; 3 uses
  %i.aj = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.ak = add i64 %i.ai, %.sroa.10.0.copyload.i   ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.am = xor i64 %i.al, %i.aj                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.ak, %i.am                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 17)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 21)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = xor i64 %i.ar, %i.ah
  %i.ay = xor i64 %i.aw, 255
  %i.az = add i64 %i.ax, %i.at                    ; 3 uses
  %i.ba = add i64 %i.av, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 13)
  %i.bc = xor i64 %i.az, %i.bb                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bj = xor i64 %i.bg, %i.bi                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 13)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bo                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.bu = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bv = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bx = xor i64 %i.bw, %i.bu                    ; 3 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bz = xor i64 %i.by, %i.bv                    ; 2 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.cb = add i64 %i.bx, %i.bv
  %i.cc = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 13)
  %i.ce = xor i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = shl i64 %i.bz, 16
  %i.cg = xor i64 %i.cf, %i.cc
  %i.ch = add i64 %i.ce, %i.cc                    ; 2 uses
  %i.ci = lshr i64 %i.ce, 47
  %i.cj = lshr i64 %i.cg, 43
  %i.ck = lshr i64 %i.ch, 32
  %i.cl = xor i64 %i.cj, %i.ci
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = xor i64 %i.cm, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !range !23, !alias.scope !711, !noalias !712, !noundef !11 ; 2 uses
  %i.cq = icmp ne i8 %i.cp, 2                     ; 2 uses
  %i.cr = zext i1 %i.cq to i64
  %i.cs = xor i64 %i.cr, -3750763034362895579
  %i.ct = mul i64 %i.cs, 2232315406967589409      ; 7 uses
  br i1 %i.cq, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.cu = trunc nuw i8 %i.cp to i1
  %i.cv = load ptr, ptr %1, align 8, !alias.scope !714, !noalias !715, !nonnull !11, !noundef !11 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !714, !noalias !715, !noundef !11 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %i.cz = icmp samesign eq i64 %i.cx, 0           ; 2 uses
  br i1 %i.cu, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.cz, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i21.preheader

.lr.ph.i.i.i21.preheader:                         ; preds = %bb.i
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i21.prol.loopexit, label %.lr.ph.i.i.i21.prol

.lr.ph.i.i.i21.prol:                              ; preds = %.lr.ph.i.i.i21.preheader, %.lr.ph.i.i.i21.prol
  %.sroa.0.010.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i21.prol ], [ %i.cv, %.lr.ph.i.i.i21.preheader ] ; 2 uses
  %.lcssa789.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i21.prol ], [ %i.ct, %.lr.ph.i.i.i21.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i21.prol ], [ 0, %.lr.ph.i.i.i21.preheader ]
  %i.da = load i8, ptr %.sroa.0.010.i.i.i.prol, align 1, !noalias !716, !noundef !11
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @21, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !716, !noundef !11
  %i.de = zext i8 %i.dd to i64
  %i.df = xor i64 %.lcssa789.i.i.i.prol, %i.de
  %i.dg = mul i64 %i.df, 1099511628211            ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i21.prol.loopexit, label %.lr.ph.i.i.i21.prol, !llvm.loop !693

.lr.ph.i.i.i21.prol.loopexit:                     ; preds = %.lr.ph.i.i.i21.prol, %.lr.ph.i.i.i21.preheader
  %.lcssa34.unr = phi i64 [ poison, %.lr.ph.i.i.i21.preheader ], [ %i.dg, %.lr.ph.i.i.i21.prol ]
  %.sroa.0.010.i.i.i.unr = phi ptr [ %i.cv, %.lr.ph.i.i.i21.preheader ], [ %i.dh, %.lr.ph.i.i.i21.prol ]
  %.lcssa789.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i21.preheader ], [ %i.dg, %.lr.ph.i.i.i21.prol ]
  %i.di = icmp ult i64 %i.cx, 4
  br i1 %i.di, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i21

bb.j:                                             ; preds = %bb.h
  br i1 %i.cz, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %xtraiter35 = and i64 %i.cx, 7                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.prol ], [ %i.ct, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.prol ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dl = zext i8 %i.dk to i64
  %i.dm = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.dl
  %i.dn = mul i64 %i.dm, 1099511628211            ; 3 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !697

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.i.i.prol ]
  %i.do = icmp ult i64 %i.cx, 8
  br i1 %i.do, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.dq = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %.sroa.0.06.i.i.i.i, %i.dr
  %i.dt = mul i64 %i.ds, 1099511628211
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dy, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.ef = load i8, ptr %i.dz, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.eg = zext i8 %i.ef to i64
  %i.eh = xor i64 %i.ed, %i.eg
  %i.ei = mul i64 %i.eh, 1099511628211
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.ek = load i8, ptr %i.ee, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.el = zext i8 %i.ek to i64
  %i.em = xor i64 %i.ei, %i.el
  %i.en = mul i64 %i.em, 1099511628211
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.ep = load i8, ptr %i.ej, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.eq = zext i8 %i.ep to i64
  %i.er = xor i64 %i.en, %i.eq
  %i.es = mul i64 %i.er, 1099511628211
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.eu = load i8, ptr %i.eo, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.ev = zext i8 %i.eu to i64
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = mul i64 %i.ew, 1099511628211
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.ez = load i8, ptr %i.et, align 1, !alias.scope !717, !noalias !718, !noundef !11
  %i.fa = zext i8 %i.ez to i64
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = mul i64 %i.fb, 1099511628211            ; 2 uses
  %i.fd = icmp eq ptr %i.ey, %i.cy
  br i1 %i.fd, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i21:                                   ; preds = %.lr.ph.i.i.i21.prol.loopexit, %.lr.ph.i.i.i21
  %.sroa.0.010.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i21 ], [ %.sroa.0.010.i.i.i.unr, %.lr.ph.i.i.i21.prol.loopexit ] ; 5 uses
  %.lcssa789.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i21 ], [ %.lcssa789.i.i.i.unr, %.lr.ph.i.i.i21.prol.loopexit ]
  %i.fe = load i8, ptr %.sroa.0.010.i.i.i, align 1, !noalias !716, !noundef !11
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @21, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !716, !noundef !11
  %i.fi = zext i8 %i.fh to i64
  %i.fj = xor i64 %.lcssa789.i.i.i, %i.fi
  %i.fk = mul i64 %i.fj, 1099511628211
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !716, !noundef !11
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @21, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !716, !noundef !11
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fk, %i.fq
  %i.fs = mul i64 %i.fr, 1099511628211
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !716, !noundef !11
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @21, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !716, !noundef !11
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fs, %i.fy
  %i.ga = mul i64 %i.fz, 1099511628211
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !716, !noundef !11
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @21, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !716, !noundef !11
  %i.gg = zext i8 %i.gf to i64
  %i.gh = xor i64 %i.ga, %i.gg
  %i.gi = mul i64 %i.gh, 1099511628211            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 4 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cy
  br i1 %i.gk, label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i.i21

bb.k:                                             ; preds = %bb.g
  %i.gl = load i8, ptr %1, align 8, !range !13, !alias.scope !711, !noalias !712, !noundef !11
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = xor i64 %i.ct, %i.gm
  %i.go = mul i64 %i.gn, 2232315406967589409
  br label %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit

_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.lr.ph.i.i.i21.prol.loopexit, %.lr.ph.i.i.i21, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i, %bb.k, %bb.j, %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0 = phi i64 [ %i.cn, %_RINvXsB_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrNameNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs5XgW7KoffLW_12opendal_core.exit ], [ %i.ct, %bb.i ], [ %i.go, %bb.k ], [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.ct, %bb.j ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.lcssa34.unr, %.lr.ph.i.i.i21.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i21 ]
  %i.gp = trunc i64 %.sroa.0.0 to i16
  %i.gq = and i16 %i.gp, 32767
  ret i16 %i.gq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCsgxBkk5gSRhY_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.promoted = load i8, ptr %i.c, align 1, !alias.scope !749
  %.promoted23 = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !nonnull !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !27
  %i.k = trunc nuw i8 %i.j to i1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted26 = load ptr, ptr %i.e, align 8
  %.promoted27 = load i64, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %select.unfold, %bb.a
  %.lcssa1630 = phi i64 [ %.lcssa1628, %select.unfold ], [ %.promoted27, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.by, %select.unfold ], [ %.promoted26, %bb.a ] ; 3 uses
  %.pre.i.i.i25 = phi i64 [ %.pre.i.i.i24, %select.unfold ], [ %.promoted23, %bb.a ] ; 5 uses
  %i.n = phi i8 [ %i.bz, %select.unfold ], [ %.promoted, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
end_hunk_0
