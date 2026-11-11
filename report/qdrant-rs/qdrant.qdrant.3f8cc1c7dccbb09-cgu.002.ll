Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.002?download=true
inline.NumInlined: 25559
inline.NumDeleted: 7874
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockuE5write0Csl8OoimOLbh_6qdrant:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.q, !noalias !54274, !inline_history !113

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !54274
  unreachable

bb.q:                                             ; preds = %bb.r, %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.o, %bb.n
  %i.aj = trunc nuw i8 %i.t to i1
  br i1 %i.aj, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #25
          to label %.noexc11.i unwind label %bb.q, !noalias !54274

.noexc11.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !54274
  unreachable

bb.t:                                             ; preds = %bb.g, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.t
  %i.am = phi ptr [ %i.g, %bb.t ], [ %i.r, %.body.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.t ], [ %.pn7.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockuE5write00ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.am) #27
          to label %.body10 unwind label %bb.w

common.ret:                                       ; preds = %bb.v, %bb.u
  %storemerge = phi i8 [ 1, %bb.v ], [ 3, %bb.u ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.u:                                             ; preds = %bb.j
  store i8 3, ptr %i.q, align 8, !noalias !54273
  store ptr null, ptr %0, align 8
  br label %common.ret

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i
  %i.an = load ptr, ptr %i.r, align 8, !noalias !54273, !nonnull !38, !align !42, !noundef !38 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !noalias !54274, !noundef !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  store ptr %i.an, ptr %0, align 8, !alias.scope !54274
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !54274
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !54274
  store i8 1, ptr %i.q, align 8, !noalias !54273
  br label %common.ret

bb.w:                                             ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsPYQCUnoTxQ_10collection6common10file_utils12cleanup_file0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !39, !noundef !38
  switch i8 %i.h, label %default.unreachable50 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable50:                            ; preds = %bb.ac, %bb.w, %bb.p, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %0, align 8, !nonnull !38, !noundef !38 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !38 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !captures !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.n, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @966) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @966) #25
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = invoke fastcc { i64, ptr } @_RNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.o, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.o) #27
          to label %.body unwind label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.r = extractvalue { i64, ptr } %i.p, 0
  %i.s = extractvalue { i64, ptr } %i.p, 1        ; 9 uses
  %i.t = trunc nuw i64 %i.r to i1                 ; 2 uses
  br i1 %i.t, label %common.ret, label %bb.h

common.ret.sink.split:                            ; preds = %bb.aj, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit, %bb.g
  %storemerge = phi i8 [ 3, %bb.g ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %common.ret.sink.split ]
  store i8 %storemerge, ptr %i.g, align 8
  ret i1 %i.t

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i8, ptr %i.u, align 8, !range !39, !noundef !38
  %cond.i = icmp eq i8 %i.v, 3
  br i1 %cond.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load i8, ptr %i.w, align 8, !range !39, !noundef !38
  %cond.i.i = icmp eq i8 %i.x, 3
  br i1 %cond.i.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load i8, ptr %i.z, align 8, !range !39, !noundef !38
  switch i8 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit [
    i8 0, label %bb.k
    i8 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.j, %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.n
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %common.ret, label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs3TE53SMfxyL_6fs_err5tokio11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.s, ptr %i.f, align 8
  %i.af = ptrtoint ptr %i.s to i64                ; 4 uses
  %i.ag = and i64 %i.af, 3                        ; 2 uses
  switch i64 %i.ag, label %default.unreachable50 [
    i64 2, label %bb.q
    i64 3, label %bb.r
    i64 0, label %bb.s
    i64 1, label %bb.t
  ], !prof !60

bb.q:                                             ; preds = %bb.p
  %i.ah = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc30 unwind label %bb.u

.noexc30:                                         ; preds = %bb.q
  %i.ai = lshr i64 %i.af, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !38, !noundef !38
  %i.am = invoke noundef i8 %i.al(i32 noundef %i.aj)
          to label %bb.v unwind label %bb.u, !inline_history !31

bb.r:                                             ; preds = %bb.p
  %i.an = lshr i64 %i.af, 32
  %i.ao = icmp ult ptr %i.s, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.an to i8  ; 2 uses
  %i.ap = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !162, !noundef !38
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.as = getelementptr i8, ptr %i.s, i64 31
  %i.at = load i8, ptr %i.as, align 8, !range !162, !noundef !38
  br label %bb.v

bb.u:                                             ; preds = %.noexc30, %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %.noexc30, %bb.r, %bb.s, %bb.t
  %.sroa.0.0.i = phi i8 [ %i.at, %bb.t ], [ %switch.idx.cast.i.i.i, %bb.r ], [ %i.ar, %bb.s ], [ %i.am, %.noexc30 ]
  %.not48 = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54283
  switch i64 %i.ag, label %default.unreachable50 [
    i64 2, label %bb.ab
    i64 3, label %bb.x
    i64 0, label %bb.ab
    i64 1, label %bb.y
  ], !prof !60

bb.x:                                             ; preds = %bb.w
  %i.av = icmp ult ptr %i.s, inttoptr (i64 188978561024 to ptr)
  %i.aw = and i64 %i.af, 1095216660480
  %i.ax = icmp ne i64 %i.aw, 1095216660480
  tail call void @llvm.assume(i1 %i.av)
  tail call void @llvm.assume(i1 %i.ax)
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.ay = getelementptr i8, ptr %i.s, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !54284, !noalias !54283
  store i8 3, ptr %i.b, align 8, !alias.scope !54284, !noalias !54283
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.ak, %bb.aa
  %.pn21 = phi { ptr, i32 } [ %i.ba, %bb.aa ], [ %.pn16.pn.pn.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body

bb.aa:                                            ; preds = %bb.ae, %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.w, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54283
  br label %common.ret.sink.split

bb.ac:                                            ; preds = %bb.af, %bb.ai
  %.val.i34 = phi ptr [ %i.s, %bb.af ], [ %.val.i34.pre, %bb.ai ] ; 3 uses
  %.pre-phi = ptrtoint ptr %.val.i34 to i64       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54285
  %i.bb = and i64 %.pre-phi, 3
  switch i64 %i.bb, label %default.unreachable50 [
    i64 2, label %bb.aj
    i64 3, label %bb.ad
    i64 0, label %bb.aj
    i64 1, label %bb.ae
  ], !prof !60

bb.ad:                                            ; preds = %bb.ac
  %i.bc = icmp ult ptr %.val.i34, inttoptr (i64 188978561024 to ptr)
  %i.bd = and i64 %.pre-phi, 1095216660480
  %i.be = icmp ne i64 %i.bd, 1095216660480
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.assume(i1 %i.be)
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.bf = getelementptr i8, ptr %.val.i34, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !alias.scope !54286, !noalias !54285
  store i8 3, ptr %i.a, align 8, !alias.scope !54286, !noalias !54285
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.aj unwind label %bb.aa

bb.af:                                            ; preds = %bb.v
  %i.bh = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 6
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bj, label %bb.ah, label %bb.ac

bb.ag:                                            ; preds = %bb.ah
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !38, !noundef !38
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !38
  store ptr %i.bm, ptr %i.e, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bo, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1b_NtCsG258MDvU3F_3std4pathNtB6_7DisplayNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.545.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.bq, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.547.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @145, ptr %i.c, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 30, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @145, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 30, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @968, ptr %i.bu, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @967, ptr noundef nonnull %i.d, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val.i34.pre = load ptr, ptr %i.f, align 8, !alias.scope !54285
  br label %bb.ac

bb.aj:                                            ; preds = %bb.ad, %bb.ac, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54285
  br label %common.ret.sink.split

bb.ak:                                            ; preds = %bb.ag, %bb.u
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.u ], [ %i.bk, %bb.ag ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #27
          to label %bb.z unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.f
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body:                                            ; preds = %bb.f, %bb.l, %bb.o, %bb.z
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.z ], [ %i.ab, %bb.l ], [ %i.q, %bb.f ], [ %i.ae, %bb.o ]
  store i8 2, ptr %i.g, align 8
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  %i.e = alloca [64 x i8], align 1                ; 4 uses
  %i.f = alloca [64 x i8], align 1                ; 5 uses
  %i.g = alloca [64 x i8], align 1                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 1                ; 6 uses
  %i.l = alloca [104 x i8], align 8               ; 7 uses
  %i.m = alloca [32 x i8], align 1                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [104 x i8], align 8               ; 5 uses
  %i.q = alloca [32 x i8], align 1                ; 6 uses
  %i.r = alloca [128 x i8], align 8               ; 5 uses
  %.sroa.580 = alloca [112 x i8], align 8         ; 2 uses
  %i.s = alloca [128 x i8], align 8               ; 8 uses
  %i.t = alloca [128 x i8], align 8               ; 12 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 3 uses
  %i.x = load i8, ptr %i.w, align 2, !range !44, !noundef !38
  switch i8 %i.x, label %default.unreachable101 [
    i8 0, label %bb.d
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

default.unreachable101:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !38, !noundef !38 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !38 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !captures !47
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 6
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp samesign ugt i64 %i.af, 3
  br i1 %i.ah, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %1, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path4PathNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @972, ptr %i.u, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 27, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @972, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 27, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr @971, ptr %i.am, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @969, ptr noundef nonnull %i.v, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.pre = load ptr, ptr %1, align 8
  %.pre93 = load i64, ptr %i.ae, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %i.an = phi i64 [ %i.ad, %bb.d ], [ %.pre93, %bb.g ]
  %i.ao = phi ptr [ %i.ab, %bb.d ], [ %.pre, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ao, ptr %i.ap, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.an, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.1078.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 265
  store i8 0, ptr %.sroa.1078.0..sroa_idx, align 1
  br label %bb.l

bb.i:                                             ; preds = %bb.e, %bb.z
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.z ], [ %i.ai, %bb.e ]
  store i8 2, ptr %i.w, align 2
  resume { ptr, i32 } %.pn26.pn.pn

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @973) #25
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @973) #25
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke fastcc void @_RNCINvMNtNtCs3TE53SMfxyL_6fs_err5tokio4fileNtB5_4File4openRNtNtCsG258MDvU3F_3std4path4PathE0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.s, ptr noundef nonnull align 8 %i.aq, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCs3TE53SMfxyL_6fs_err5tokio4fileNtBH_4File4openRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aq) #27
          to label %bb.z unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.s, align 8, !range !49, !noundef !38 ; 3 uses
  %i.at = icmp eq i64 %i.as, -2
  br i1 %i.at, label %bb.o, label %bb.p

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio2io4util10buf_reader9BufReaderNtNtNtCs3TE53SMfxyL_6fs_err5tokio4file4FileEECsl8OoimOLbh_6qdrant.exit65, %bb.ac, %bb.o
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio2io4util10buf_reader9BufReaderNtNtNtCs3TE53SMfxyL_6fs_err5tokio4file4FileEECsl8OoimOLbh_6qdrant.exit65 ], [ 4, %bb.ac ], [ 3, %bb.o ]
  store i8 %.sink, ptr %i.w, align 2
  ret void

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.580, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.580.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCs3TE53SMfxyL_6fs_err5tokio4fileNtBH_4File4openRNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aq)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %i.as, -1
  br i1 %i.au, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.582.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.580, i64 112, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i64 %i.as, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.av, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.r, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i64 128, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke void @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio2io4util10buf_readerINtB2_9BufReaderNtNtNtCs3TE53SMfxyL_6fs_err5tokio4file4FileE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.aw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.r)
          to label %bb.t unwind label %bb.s
end_hunk_0
