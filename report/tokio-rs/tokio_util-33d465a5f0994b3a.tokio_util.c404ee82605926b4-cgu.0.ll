Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_util-33d465a5f0994b3a.tokio_util.c404ee82605926b4-cgu.0?download=true
inline.NumInlined: 239
inline.NumDeleted: 98
begin_hunk_0_@_RNvMNtNtCsgPparXX7oiu_10tokio_util4sync14poll_semaphoreNtB2_13PollSemaphore17poll_acquire_many:bb.a
  store ptr %i.ae, ptr %i.h, align 8, !alias.scope !372
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !372
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB5_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2j_15batch_semaphore12AcquireErrorEEEE18get_or_insert_withNCNvB2_13get_or_insert0EBR_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB5_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2j_15batch_semaphore12AcquireErrorEEEE18get_or_insert_withNCNvB2_13get_or_insert0EBR_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.b, %bb.t, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB5_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2j_15batch_semaphore12AcquireErrorEEEE18get_or_insert_withNCNvB2_13get_or_insert0EBR_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ak = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !9, !align !10, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !9, !nonnull !9
  call void %i.ao(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.ap = load i64, ptr %i.b, align 8, !range !19, !noundef !9
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ar = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  store ptr %i.au, ptr %i.f, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i32 %3, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i8 0, ptr %i.aw, align 8
  call fastcc void @_RINvMNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_boxINtB3_17ReusableBoxFutureINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB1V_15batch_semaphore12AcquireErrorEE3setNCNvMB1T_NtB1T_9Semaphore18acquire_many_owned0EB7_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.f)
  store i32 %3, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.r
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ai

bb.w:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !9 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i32, ptr %i.az, align 8            ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ba, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bc = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.bd = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 %3, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.bh, align 8
  invoke fastcc void @_RINvMNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_boxINtB3_17ReusableBoxFutureINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB1V_15batch_semaphore12AcquireErrorEE3setNCNvMB1T_NtB1T_9Semaphore18acquire_many_owned0EB7_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not19 = icmp eq ptr %i.ay, null
  br i1 %.not19, label %common.resume, label %bb.aj

bb.aa:                                            ; preds = %bb.x
  %i.bj = icmp eq ptr %i.ay, null
  br i1 %i.bj, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %.val = load ptr, ptr %i.h, align 8, !noundef !9 ; 4 uses
  %.val20 = load ptr, ptr %i.al, align 8          ; 6 uses
  %i.bk = icmp eq ptr %.val, null
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2y_15batch_semaphore12AcquireErrorEEEEEB16_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20) ]
  %i.bl = load ptr, ptr %.val20, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void %i.bl(ptr noundef nonnull %.val)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bm = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !11, !invariant.load !9 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2y_15batch_semaphore12AcquireErrorEEEEEB16_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !12, !invariant.load !9
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) %i.bq) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2y_15batch_semaphore12AcquireErrorEEEEEB16_.exit

bb.af:                                            ; preds = %bb.ad
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !11, !invariant.load !9 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.af
  %i.bv = getelementptr inbounds nuw i8, ptr %.val20, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !range !12, !invariant.load !9
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) %i.bw) #21
  br label %.thread

bb.ag:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.by, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2y_15batch_semaphore12AcquireErrorEEEEEB16_.exit, %bb.ag
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ai

.thread:                                          ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.af
  store ptr null, ptr %i.h, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTmINtNtNtCsgPparXX7oiu_10tokio_util4sync12reusable_box17ReusableBoxFutureINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitNtNtB2y_15batch_semaphore12AcquireErrorEEEEEB16_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.ae, %bb.ab
  store ptr null, ptr %i.h, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bz, align 8
  br label %bb.ah

bb.ai:                                            ; preds = %bb.h, %bb.v, %bb.ah
  ret void

bb.aj:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4sync9semaphore20OwnedSemaphorePermitECsgPparXX7oiu_10tokio_util(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #23
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsgPparXX7oiu_10tokio_util4sync14poll_semaphoreNtB2_13PollSemaphore5close(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtCslghKHtsL3a4_5tokio4sync9semaphoreNtB2_9Semaphore5close(ptr noundef nonnull align 8 %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token5guardNtB2_9DropGuard5token(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !9
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token5guardNtB2_9DropGuard6disarm(ptr nofree noundef readnone returned captures(address_is_null, ret: address, provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #25
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token5guard9DropGuardEBJ_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #23
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9guard_refNtB2_12DropGuardRef5token(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !10, !noundef !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9guard_refNtB2_12DropGuardRef6disarm(ptr noalias nofree noundef readonly returned align 8 captures(address_is_null, ret: address, read_provenance) dereferenceable_or_null(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9guard_ref12DropGuardRefEBJ_.exit, !prof !16

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9guard_ref12DropGuardRefEBJ_.exit: ; preds = %bb.a
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9tree_node8TreeNodeEE8grow_oneB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !375
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !375
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgPparXX7oiu_10tokio_util(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d)
  %i.f = load i64, ptr %i.a, align 8, !range !19, !noalias !375, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !20, !noalias !375, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !375
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !375, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !375
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !375
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !375
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgPparXX7oiu_10tokio_util(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %1, 3                            ; 7 uses
  %i.b = icmp ult i64 %1, 2305843009213693952
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !376

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = shl nuw i64 %.0.val, 3                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.a, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #21
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #21
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs7_NtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_tokenNtB5_17CancellationToken11child_token(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 15 uses
  %i.d = alloca [112 x i8], align 8               ; 13 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 7 uses
  %i.g = cmpxchg ptr %i.f, i32 0, i32 1 acquire monotonic, align 4, !noalias !396
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.f), !noalias !396
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !396
  %i.j = and i64 %i.i, 9223372036854775807
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9tree_node5InnerE4lockB15_.exit.i, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #26, !noalias !396
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9tree_node5InnerE4lockB15_.exit.i

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9tree_node5InnerE4lockB15_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 20 ; 3 uses
  %i.p = load atomic i8, ptr %i.o monotonic, align 1, !noalias !396
  %.not.i.i.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9tree_node5InnerEINtBM_11PoisonErrorBH_EE6unwrapB1K_.exit.i, label %bb.e, !prof !15

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9tree_node5InnerE4lockB15_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !397
  store ptr %i.f, ptr %i.b, align 8, !noalias !397
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.q, align 8, !noalias !397
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #25
          to label %bb.g unwind label %bb.f, !noalias !398

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCsgPparXX7oiu_10tokio_util4sync18cancellation_token9tree_node5InnerEEEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %common.resume.i unwind label %bb.h, !noalias !398

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
end_hunk_0
