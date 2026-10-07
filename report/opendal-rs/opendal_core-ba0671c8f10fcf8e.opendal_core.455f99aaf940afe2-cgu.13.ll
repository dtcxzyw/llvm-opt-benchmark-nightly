Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.13?download=true
inline.NumInlined: 509
inline.NumDeleted: 257
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBI_15StreamingReaderNtNtNtNtNtBO_3raw3oio4read3api10ReadStream4read0EBO_:bb.a
  invoke void %i.i(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %common.ret, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #23
  br label %common.ret

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.ac, %bb.o ], [ %i.ac, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.u, align 8             ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 32
  %.val4 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.w(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.ret, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #23
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #23
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtBI_12StreamReaderNtNtNtNtBQ_8services6memory7backend12MemoryReaderENtNtBK_3api4Read4open0EBQ_(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
common.ret:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtBI_12StreamReaderNtNtNtNtBQ_8services6memory7backend12MemoryReaderENtNtBK_3api4Read4read0EBQ_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  %cond = icmp eq i8 %i.b, 4
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !4
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val.i = load ptr, ptr %i.e, align 8           ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 152
  %.val1.i = load ptr, ptr %i.f, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #23
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val6 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 128
  %.val7 = load ptr, ptr %i.t, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr %.val6, ptr nonnull %.val7) #26
          to label %.body8 unwind label %bb.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit: ; preds = %bb.f, %bb.e, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.u, align 8             ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 128
  %.val5 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val5, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.w(ptr noundef nonnull %.val)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit

bb.l:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #23
  br label %.body8

.body8:                                           ; preds = %bb.m, %bb.l, %.body
  %.pn = phi { ptr, i32 } [ %i.m, %.body ], [ %i.ac, %bb.l ], [ %i.ac, %bb.m ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ai) #26
          to label %bb.q unwind label %bb.s

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %bb.k, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.ak = load i64, ptr %i.aj, align 8, !range !18, !alias.scope !229, !noundef !4
  %1 = icmp eq i64 %i.ak, 0
  br i1 %1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !233, !noundef !4 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !234
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.al) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %.body8
  %.pn2 = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %.pn, %.body8 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.aq, align 1
  resume { ptr, i32 } %.pn2

bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit: ; preds = %bb.o, %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit, %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.as, align 1
  br label %common.ret

bb.s:                                             ; preds = %.body, %.body8
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !15, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops9OpPresignEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.a = load i64, ptr %0, align 8, !range !17, !alias.scope !277, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.f
    i64 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !281, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !282
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !286, !noundef !4 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !287
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !291, !noundef !4 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !292
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit

bb.h:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !296, !noundef !4 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !297
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i: ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.g ], [ %i.k, %bb.e ], [ %i.f, %bb.c ], [ %i.u, %bb.i ]
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i) #25
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops16PresignOperationEBH_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit.sink.split.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !310, !noundef !4
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !314, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !315
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #25
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor11ServiceInfoEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !330, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !330
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !333, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !333
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit2

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit2 unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !336, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !336
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit3

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArceE9drop_slowCs4CtJ3uPHEZZ_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #25
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit3

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit3: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArceEECs5XgW7KoffLW_12opendal_core.exit2: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #26
          to label %.body5 unwind label %bb.o

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body5 unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

.body5:                                           ; preds = %bb.i, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !345, !noundef !4
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %.body5
  invoke void @_RNvXs4_NtCselJpgKOOZlr_6anyhow5errorNtB7_5ErrorNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !346, !noundef !4
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit
  invoke void @_RNvXs4_NtCselJpgKOOZlr_6anyhow5errorNtB7_5ErrorNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8 unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.body5, %bb.h, %bb.k
  %.pn2 = phi { ptr, i32 } [ %i.p, %bb.k ], [ %.pn, %bb.h ], [ %.pn, %.body5 ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val4 = load ptr, ptr %i.o, align 8, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core(ptr %.val4) #26
          to label %common.resume unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit, %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.q, align 8, !align !13, !noundef !4 ; 5 uses
  %i.r = icmp eq ptr %.val, null
  br i1 %i.r, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8
  %i.s = load i64, ptr %.val, align 8, !range !7, !alias.scope !347, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i64 %i.s, 2
  br i1 %switch.i.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.n

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.n ], [ %.pn2, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #23
  br label %common.resume
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdMEyVxnODSb_10serde_json5value2de11visit_arrayNtNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBZ_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserialize9___VisitorEB13_:bb.a
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 %i.mh, ptr %.sroa.43.0..sroa_idx.i, align 4, !alias.scope !560, !noalias !561
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 125
  store i8 %i.mp, ptr %.sroa.44.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i8 %i.mx, ptr %.sroa.45.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 %i.nf, ptr %.sroa.46.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.nn, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.nv, ptr %.sroa.48.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %i.od, ptr %.sroa.49.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 %i.ol, ptr %.sroa.50.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %i.ot, ptr %.sroa.51.0..sroa_idx.i, align 4, !alias.scope !560, !noalias !561
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %i.pb, ptr %.sroa.52.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 %i.qe, ptr %.sroa.53.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 %i.qm, ptr %.sroa.54.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.55540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %i.qu, ptr %.sroa.55540.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %i.rc, ptr %.sroa.56.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 %i.rk, ptr %.sroa.57.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 139
  store i8 %i.rs, ptr %.sroa.58.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %i.sa, ptr %.sroa.59.0..sroa_idx.i, align 4, !alias.scope !560, !noalias !561
  %.sroa.60.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 141
  store i8 %i.si, ptr %.sroa.60.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 142
  store i8 %i.sx, ptr %.sroa.61.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 143
  store i8 %i.tf, ptr %.sroa.62.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.tn, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %i.tv, ptr %.sroa.64.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %i.ud, ptr %.sroa.65.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 %i.ul, ptr %.sroa.66.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %i.ut, ptr %.sroa.67.0..sroa_idx.i, align 4, !alias.scope !560, !noalias !561
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %i.vb, ptr %.sroa.68.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.vx, ptr %.sroa.69.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.70.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 151
  store i8 %i.wf, ptr %.sroa.70.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.71541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.wn, ptr %.sroa.71541.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %i.wv, ptr %.sroa.72.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.xd, ptr %.sroa.73.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.74.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.xl, ptr %.sroa.74.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %i.xt, ptr %.sroa.75.0..sroa_idx.i, align 4, !alias.scope !560, !noalias !561
  %.sroa.76542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 %i.yb, ptr %.sroa.76542.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.77543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 158
  store i8 %i.yj, ptr %.sroa.77543.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %i.yr, ptr %.sroa.78.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %i.yz, ptr %.sroa.79.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  %.sroa.80.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 %i.zh, ptr %.sroa.80.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 %i.zp, ptr %.sroa.81.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.82.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %i.zx, ptr %.sroa.82.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.83.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.aaf, ptr %.sroa.83.0..sroa_idx.i, align 4, !alias.scope !560, !noalias !561
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 %i.aan, ptr %.sroa.84.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.85.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i8 %i.aav, ptr %.sroa.85.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 167
  store i8 %i.abd, ptr %.sroa.86.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %i.abl, ptr %.sroa.87.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  %.sroa.88.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.abt, ptr %.sroa.88.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.acb, ptr %.sroa.89.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.90.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.acj, ptr %.sroa.90.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.91.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.acr, ptr %.sroa.91.0..sroa_idx.i, align 4, !alias.scope !560, !noalias !561
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.acz, ptr %.sroa.92.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.93.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 174
  store i8 %i.adh, ptr %.sroa.93.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.94.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 175
  store i8 %i.adp, ptr %.sroa.94.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.95.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.adx, ptr %.sroa.95.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  %.sroa.96.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.aef, ptr %.sroa.96.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.sroa.97.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.aen, ptr %.sroa.97.0..sroa_idx.i, align 2, !alias.scope !560, !noalias !561
  %.sroa.98.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %i.aew, ptr %.sroa.98.0..sroa_idx.i, align 1, !alias.scope !560, !noalias !561
  %.pr = load i64, ptr %0, align 8
  %i.afa = icmp eq i64 %.pr, 2
  br i1 %i.afa, label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread, label %bb.mz

bb.my:                                            ; preds = %bb.na
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.mz:                                            ; preds = %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.val6 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.afc = icmp eq ptr %.val6, %.val
  br i1 %i.afc, label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread, label %bb.na, !prof !611

bb.na:                                            ; preds = %bb.mz
  %i.afd = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error14invalid_lengthCs5XgW7KoffLW_12opendal_core(i64 noundef %i.cu, ptr noundef nonnull @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %bb.nb unwind label %bb.my

bb.nb:                                            ; preds = %bb.na
  store ptr %i.afd, ptr %i.aex, align 8
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split270

_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split270: ; preds = %.noexc8, %.noexc10, %.noexc12, %.noexc14, %.noexc16, %.noexc18, %.noexc20, %.noexc22, %.noexc24, %.noexc26, %.noexc28, %.noexc30, %.noexc32, %.noexc34, %.noexc36, %.noexc38, %.noexc40, %.noexc42, %.noexc44, %.noexc46, %.noexc48, %.noexc50, %.noexc52, %.noexc54, %.noexc56, %.noexc58, %.noexc60, %.noexc62, %.noexc64, %.noexc66, %.noexc68, %.noexc70, %.noexc72, %.noexc74, %.noexc76, %.noexc78, %.noexc80, %.noexc82, %.noexc84, %.noexc86, %.noexc88, %.noexc90, %.noexc92, %.noexc94, %.noexc96, %.noexc98, %.noexc100, %.noexc102, %.noexc104, %.noexc106, %.noexc108, %.noexc110, %.noexc112, %.noexc114, %.noexc116, %.noexc118, %.noexc120, %.noexc122, %.noexc124, %.noexc126, %.noexc128, %.noexc130, %.noexc132, %.noexc134, %.noexc136, %.noexc138, %.noexc140, %.noexc142, %.noexc144, %.noexc146, %.noexc148, %.noexc150, %.noexc152, %.noexc154, %.noexc156, %.noexc158, %.noexc160, %.noexc162, %.noexc164, %.noexc166, %.noexc168, %.noexc170, %.noexc172, %.noexc174, %.noexc176, %.noexc178, %.noexc180, %.noexc182, %.noexc184, %.noexc185, %bb.mt, %bb.nb
  store i64 2, ptr %0, align 8
  br label %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread

_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread: ; preds = %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit.thread.sink.split270, %bb.mz, %_RINvXs0_NvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtBb_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerEBf_.exit
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  ret void

bb.nc:                                            ; preds = %bb.mw
  %i.afe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.nd:                                            ; preds = %bb.mw
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5XgW7KoffLW_12opendal_core(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !624, !noalias !625
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !624, !noalias !625
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !625, !noalias !622
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !625, !noalias !622
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !624, !noalias !625
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !624, !noalias !625
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !625, !noalias !622
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !625, !noalias !622
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !alias.scope !622, !noalias !623
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !alias.scope !623, !noalias !622
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !alias.scope !622, !noalias !623
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !alias.scope !623, !noalias !622
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !622, !noalias !623
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !623, !noalias !622
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !622, !noalias !623
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !623, !noalias !622
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !626, !noalias !627
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !627, !noalias !626
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !626, !noalias !627
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !627, !noalias !626
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !621
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr nofree captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !642, !noalias !643, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !642, !noalias !643, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !642, !noalias !643
  %.sroa.0.0.copyload2.i.i = load i8, ptr %i.f, align 8, !noalias !644 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !645
  store i8 %.sroa.0.0.copyload2.i.i, ptr %i.b, align 8, !noalias !645
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i, i64 31, i1 false), !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !645
  call void @_RINvXse_NtNtCskkYVyhWgx5W_10serde_core2de5implsINtNtCsgxBkk5gSRhY_4core6option6OptionjENtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !645
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noalias !645, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !645
  %.sink6.i.i = ptrtoint ptr %i.l to i64
  %.sink.i.i = select i1 %i.j, i64 -1, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink6.i.i, ptr %i.m, align 8, !alias.scope !646, !noalias !647
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !646, !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !645
  br label %_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core.exit

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !646, !noalias !647
  br label %_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core.exit

_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b, %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs4_NtCskkYVyhWgx5W_10serde_core2deQNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr nofree captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !662, !noalias !663, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !662, !noalias !663, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !662, !noalias !663
  %.sroa.0.0.copyload2.i.i = load i8, ptr %i.f, align 8, !noalias !664 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i, -1
  br i1 %.not.i.i, label %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !665
  store i8 %.sroa.0.0.copyload2.i.i, ptr %i.b, align 8, !noalias !665
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i, i64 31, i1 false), !noalias !665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !665
  call void @_RINvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !665
  %i.i = load i8, ptr %i.a, align 8, !range !14, !noalias !665, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i: ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.k, align 1, !alias.scope !666, !noalias !667
  store i8 0, ptr %0, align 8, !alias.scope !666, !noalias !667
  br label %_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !665, !nonnull !4, !align !13, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !666, !noalias !667
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !14, !noalias !665, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1, !alias.scope !666, !noalias !667
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi i8 [ 0, %bb.d ], [ 1, %bb.c ]
  store i8 %storemerge.i.i, ptr %0, align 8, !alias.scope !666, !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !665
  br label %_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core.exit

_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value2de15SeqDeserializerNtNtCskkYVyhWgx5W_10serde_core2de9SeqAccess12next_elementbECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RNvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.thread.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBX_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1t_8adapters3map12map_try_foldBW_BW_B2r_INtNtB1v_6result6ResultB2r_zENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB4s_11OperatorUri3newINtB8_3VecBW_EE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B3T_EB4y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.410 = alloca [48 x i8], align 8          ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.f
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.410.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldTNtNtCs6i54tJFfzR_5alloc6string6StringB10_EBZ_INtNtNtB14_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB32_11OperatorUri3newINtB1O_3VecBZ_EE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0B38_.exit
  %.sroa.4.022 = phi ptr [ %2, %.lr.ph ], [ %i.ba, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldTNtNtCs6i54tJFfzR_5alloc6string6StringB10_EBZ_INtNtNtB14_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB32_11OperatorUri3newINtB1O_3VecBZ_EE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0B38_.exit ] ; 6 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldTNtNtCs6i54tJFfzR_5alloc6string6StringB10_EBZ_INtNtNtB14_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB32_11OperatorUri3newINtB1O_3VecBZ_EE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0B38_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  store ptr %i.n, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !684
  store ptr %1, ptr %i.d, align 8, !noalias !684
end_hunk_1
begin_hunk_2_@_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read11stream_readINtB6_12StreamReaderNtNtNtNtBe_8services6memory7backend12MemoryReaderENtNtB8_3api4Read4read0Be_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 31)
          to label %bb.am unwind label %bb.al

.body44:                                          ; preds = %bb.ay, %bb.az, %bb.ai, %bb.ah, %.body
  %.pn24 = phi { ptr, i32 } [ %.pn21.pn, %.body ], [ %i.bj, %bb.ah ], [ %i.bj, %bb.ai ], [ %i.ct, %bb.ay ], [ %i.ct, %bb.az ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.bq = load i8, ptr %i.bp, align 1, !range !14, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.bi, label %bb.bg

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit: ; preds = %bb.ag, %bb.af
  store i8 0, ptr %i.ay, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.f, %bb.p, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit
  %.sroa.14117.sroa.6.0 = phi i64 [ %.sroa.3106.sroa.0.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.14117.sroa.6.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.3.sroa.5.0.copyload, %bb.p ], [ %.sroa.10.sroa.6.0.copyload, %bb.f ]
  %.sroa.17.0 = phi ptr [ %i.ax, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.17.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.781.0.copyload, %bb.p ], [ %.sroa.10.sroa.8.0.copyload, %bb.f ]
  %.sroa.16.0 = phi ptr [ %.sroa.4145.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.16.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.580.0.copyload, %bb.p ], [ %.sroa.10.sroa.7.0.copyload, %bb.f ]
  %.sroa.11.0 = phi i64 [ %.sroa.4149.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.11.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %.sroa.3.sroa.0.0.copyload, %bb.p ], [ %.pre, %bb.f ]
  %.sroa.6112.0 = phi i64 [ %.sroa.0148.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ %.sroa.6112.1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ %i.u, %bb.p ], [ %.pr, %bb.f ]
  %.sroa.0111.0 = phi i64 [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit ], [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit ], [ 1, %bb.p ], [ 1, %bb.f ]
  store i64 %.sroa.0111.0, ptr %0, align 8
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6112.0, ptr %.sroa.6112.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, i64 32, i1 false)
  %.sroa.14117.sroa.6.0..sroa.14117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.14117.sroa.6.0, ptr %.sroa.14117.sroa.6.0..sroa.14117.0..sroa_idx.sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, i64 16, i1 false)
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.am:                                            ; preds = %bb.aj
  %i.bt = load i64, ptr %i.av, align 8, !noundef !4
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 6, i64 noundef %i.bt)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bv = load ptr, ptr %i.e, align 8, !noundef !4
  %.not.i46 = icmp eq ptr %i.bv, null
  %.sroa.gep.val169 = load i64, ptr %.sroa.gep, align 8
  %.sroa.gep88.val170 = load i64, ptr %.sroa.gep88, align 8
  %.sroa.0.0.i49 = select i1 %.not.i46, i64 %.sroa.gep.val169, i64 %.sroa.gep88.val170
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 6, i64 noundef %.sroa.0.0.i49)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6112.8.copyload113 = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.11.8..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.11.8.copyload115 = load i64, ptr %.sroa.11.8..sroa_idx114, align 8 ; 3 uses
  %.sroa.14117.8..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.8..sroa_idx118, i64 32, i1 false)
  %.sroa.14117.sroa.6.0..sroa.14117.8..sroa_idx118.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.14117.sroa.6.0.copyload126 = load i64, ptr %.sroa.14117.sroa.6.0..sroa.14117.8..sroa_idx118.sroa_idx, align 8 ; 3 uses
  %.sroa.16.8..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.16.8.copyload120 = load ptr, ptr %.sroa.16.8..sroa_idx119, align 8 ; 3 uses
  %.sroa.17.8..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.17.8.copyload122 = load ptr, ptr %.sroa.17.8..sroa_idx121, align 8 ; 3 uses
  %.sroa.18.8..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.8..sroa_idx123, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %i.bx = load ptr, ptr %i.e, align 8, !alias.scope !1094, !noundef !4 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !1097, !noundef !4
  %i.cb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1097, !nonnull !4, !align !13, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1097, !nonnull !4, !noundef !4
  %i.ce = load ptr, ptr %.sroa.gep88, align 8, !alias.scope !1097, !noundef !4
  %i.cf = load i64, ptr %.sroa.gep, align 8, !alias.scope !1097, !noundef !4
  invoke void %i.cd(ptr noundef %i.ca, ptr noundef %i.ce, i64 noundef %i.cf)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.au, !inline_history !23

bb.as:                                            ; preds = %bb.aq
  %i.cg = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !1098
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.at, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit unwind label %bb.au

.body:                                            ; preds = %bb.s, %bb.aa, %bb.ab, %bb.ba, %bb.au
  %.pn21.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ba ], [ %i.ck, %bb.au ], [ %i.ap, %bb.ab ], [ %i.ap, %bb.aa ], [ %i.ac, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val34 = load ptr, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %1, i64 128
  %.val35 = load ptr, ptr %i.cj, align 8, !nonnull !4, !align !13, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_(ptr %.val34, ptr nonnull %.val35) #26
          to label %.body44 unwind label %bb.q

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %bb.as, %bb.ar, %bb.at, %bb.bc
  %.sroa.14117.sroa.6.1 = phi i64 [ %.sroa.5107.sroa.0.0.copyload, %bb.bc ], [ %.sroa.14117.sroa.6.0.copyload126, %bb.at ], [ %.sroa.14117.sroa.6.0.copyload126, %bb.ar ], [ %.sroa.14117.sroa.6.0.copyload126, %bb.as ]
  %.sroa.17.1 = phi ptr [ %.sroa.5107.sroa.3.0.copyload, %bb.bc ], [ %.sroa.17.8.copyload122, %bb.at ], [ %.sroa.17.8.copyload122, %bb.ar ], [ %.sroa.17.8.copyload122, %bb.as ]
  %.sroa.16.1 = phi ptr [ %.sroa.5107.sroa.2.0.copyload, %bb.bc ], [ %.sroa.16.8.copyload120, %bb.at ], [ %.sroa.16.8.copyload120, %bb.ar ], [ %.sroa.16.8.copyload120, %bb.as ]
  %.sroa.11.1 = phi i64 [ %.sroa.3106.sroa.0.0.copyload, %bb.bc ], [ %.sroa.11.8.copyload115, %bb.at ], [ %.sroa.11.8.copyload115, %bb.ar ], [ %.sroa.11.8.copyload115, %bb.as ]
  %.sroa.6112.1 = phi i64 [ %i.ad, %bb.bc ], [ %.sroa.6112.8.copyload113, %bb.at ], [ %.sroa.6112.8.copyload113, %bb.ar ], [ %.sroa.6112.8.copyload113, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val = load ptr, ptr %i.cl, align 8            ; 5 uses
  %i.cm = getelementptr i8, ptr %1, i64 128
  %.val33 = load ptr, ptr %i.cm, align 8, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.cn = load ptr, ptr %.val33, align 8, !invariant.load !4 ; 2 uses
  %.not.i52 = icmp eq ptr %i.cn, null
  br i1 %.not.i52, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.cn(ptr noundef nonnull %.val)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.cp, i64 noundef range(i64 1, 536870913) %i.cs) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56

bb.ay:                                            ; preds = %bb.av
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.body44, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cx = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.cv, i64 noundef range(i64 1, 536870913) %i.cy) #23
  br label %.body44

bb.ba:                                            ; preds = %bb.ap, %bb.bb
  %.pn17.pn = phi { ptr, i32 } [ %.pn15, %bb.bb ], [ %i.bw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #26
          to label %.body unwind label %bb.q

bb.bb:                                            ; preds = %bb.an, %bb.al
  %.pn15 = phi { ptr, i32 } [ %i.bu, %bb.an ], [ %i.bs, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ba

bb.bc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream8read_all0EBR_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5107.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14117.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3106.sroa.3, i64 32, i1 false)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56: ; preds = %bb.ax, %bb.aw
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.da = load i64, ptr %i.cz, align 8, !range !18, !alias.scope !1101, !noundef !4
  %3 = icmp eq i64 %i.da, 0
  br i1 %3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !1105, !noundef !4 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.de = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !1106
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.bf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.db) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bi, %bb.bh, %.body44
  %.pn26 = phi { ptr, i32 } [ %i.dh, %bb.bh ], [ %.pn24, %bb.bi ], [ %.pn24, %.body44 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.dg, align 1
  br label %bb.g

bb.bh:                                            ; preds = %bb.bf
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_.exit: ; preds = %bb.be, %bb.bd, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEB1k_.exit56, %bb.bf
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.di, align 1
  br label %bb.ak

bb.bi:                                            ; preds = %.body44
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3rps6RpReadEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dj) #26
          to label %bb.bg unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backendNtB2_13MemoryBuilder4root(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.b, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7backend13MemoryBuilderEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !18, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !22, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %i.g, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #27
          to label %bb.m unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = icmp ule i64 %3, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.k, %bb.f
  %i.k = load i64, ptr %1, align 8, !range !8, !alias.scope !1109, !noundef !4
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.g

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.m, %bb.i ]
  store i64 %i.f, ptr %1, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %3, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  store i64 %i.f, ptr %1, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %.sroa.55.0..sroa_idx6, align 8
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %3, ptr %.sroa.68.0..sroa_idx9, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.m:                                             ; preds = %bb.e
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EE32forget_allocation_drop_remainingCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtCs6i54tJFfzR_5alloc6string6StringBD_EECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %i.g
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtCs6i54tJFfzR_5alloc6string6StringBD_EECs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i2
  %i.m = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringBC_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph4
  %i.n = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.n, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringBC_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r) #26
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %.lr.ph4
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtCs6i54tJFfzR_5alloc6string6StringBD_EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB5_13ChunkedReader10next_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(208) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1                 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !18, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc nuw i64 %i.k to i1
  %.sroa.0.0.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.d)
  %.sroa.02.0.i = select i1 %i.n, i64 %.sroa.0.0.i.i.i, i64 %i.d ; 3 uses
  %i.o = add i64 %.sroa.02.0.i, %i.g
  store i64 %i.o, ptr %i.f, align 8
  %i.p = sub i64 %i.d, %.sroa.02.0.i
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %storemerge = phi i64 [ %i.p, %bb.d ], [ 0, %bb.b ]
  %.sroa.3.0 = phi i64 [ %.sroa.02.0.i, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  store i64 1, ptr %1, align 8
  store i64 %storemerge, ptr %i.b, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB5_13ChunkedReader3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !align !13, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  invoke void @_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtB4_15ConcurrentTasksNtNtNtNtB8_5types4read13buffer_stream16ChunkedReadInputNtNtB1l_6buffer6BufferE3newB8_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, i64 noundef %i.k, i64 noundef %i.m, ptr noundef nonnull @_RNvYNCNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBa_13ChunkedReader3new0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTNtBa_16ChunkedReadInputEE9call_onceBg_)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1114
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %2, align 8, !range !7, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 2                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %.sroa.01.0 = select i1 %i.r, i64 1, i64 %i.q
  %.sroa.0.0 = select i1 %i.r, i64 0, i64 %i.t
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0 = load i64, ptr %.sroa.6.0.in, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.0.0, ptr %i.v, align 8
  store i64 %.sroa.01.0, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.y, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtB5_12BufferStream3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4.sroa.0 = alloca [120 x i8], align 8    ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noundef !4
  %.not = icmp eq i64 %i.e, 0
  %i.f = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.o, label %bb.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !1126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1126
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1126, !nonnull !4, !noundef !4
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !1126
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load ptr, ptr %i.h, align 8, !noalias !1126, !nonnull !4, !noundef !4
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1126, !nonnull !4, !align !13, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noalias !1126, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i64, ptr %i.q, align 8, !noalias !1126, !noundef !4
  invoke void @_RNvMs_NtNtCs5XgW7KoffLW_12opendal_core3raw12futures_utilINtB4_15ConcurrentTasksNtNtNtNtB8_5types4read13buffer_stream16ChunkedReadInputNtNtB1l_6buffer6BufferE3newB8_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, i64 noundef %i.p, i64 noundef %i.r, ptr noundef nonnull @_RNvYNCNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_streamNtBa_13ChunkedReader3new0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTNtBa_16ChunkedReadInputEE9call_onceBg_)
          to label %bb.l unwind label %bb.g, !noalias !1126

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1127
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %.body unwind label %bb.i, !noalias !1126

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !1126
  unreachable

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.w = load ptr, ptr %i.c, align 8, !alias.scope !1130, !nonnull !4, !noundef !4
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1130
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit

bb.k:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.sroa.0, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l
  %.sroa.3.sroa.0.sroa.0.0 = phi i64 [ %4, %bb.l ], [ %3, %bb.c ]
  %.sroa.3.sroa.0.sroa.3.0 = phi i64 [ -1, %bb.l ], [ %4, %bb.c ]
  %.sroa.0.0 = phi i64 [ %3, %bb.l ], [ 2, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.z, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.sroa.0.sroa.0.0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.sroa.0.sroa.3.0, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.7.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.415.sroa.7.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.718.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.sroa.0, i64 120, i1 false)
  %.sroa.718.sroa.4.0..sroa.718.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %.sroa.718.sroa.4.0..sroa.718.0..sroa_idx.sroa_idx, align 8
  %.sroa.718.sroa.5.0..sroa.718.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %2, ptr %.sroa.718.sroa.5.0..sroa.718.0..sroa_idx.sroa_idx, align 8
  %.sroa.718.sroa.6.0..sroa.718.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %.sroa.718.sroa.6.0..sroa.718.0..sroa_idx.sroa_idx, align 8
  ret void

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit: ; preds = %.body, %bb.k
  resume { ptr, i32 } %i.s

bb.o:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @44, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs5XgW7KoffLW_12opendal_core8services6memory23register_memory_service(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registryNtB3_16OperatorRegistry8registerNtNtNtNtB9_8services6memory7backend13MemoryBuilderEB9_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorNtNtNtNtB9_8services6memory7backend13MemoryBackendNtB5_10ServiceDyn10delete_dynB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1141
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1140, !noalias !1142, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !1141
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1141
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.d, !noalias !1142

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1143
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core10MemoryCoreE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %common.resume unwind label %bb.f, !noalias !1142

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !1142
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.o, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1141
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_2
