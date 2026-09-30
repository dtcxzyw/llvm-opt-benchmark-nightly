Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.13?download=true
inline.NumInlined: 395
inline.NumDeleted: 111
begin_hunk_0_@_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtNtB4_6handle6Handle15process_at_time:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit31 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB2_8WakeList8wake_all.exit: ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit
  %i.ah = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtB5_5Inner4lock(ptr noundef nonnull align 8 %0)
          to label %.outer unwind label %.body.loopexit

bb.r:                                             ; preds = %bb.g
  %i.ai = extractvalue { i64, i64 } %i.j, 0
  %i.aj = extractvalue { i64, i64 } %i.j, 1
  %i.ak = trunc nuw i64 %i.ai to i1
  %. = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %.sroa.07.0 = select i1 %i.ak, i64 %., i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 40
  store i64 %.sroa.07.0, ptr %i.al, align 8
  %i.am = cmpxchg ptr %.sroa.0.0.ph, i8 1, i8 0 release monotonic, align 1
  %i.an = extractvalue { i8, i1 } %i.am, 1
  br i1 %i.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit23, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.0.ph, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit23 unwind label %.body.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit23: ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.ao = load i64, ptr %i.b, align 8, !alias.scope !462, !noundef !7 ; 2 uses
  %.idx127 = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx127 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !462
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB2_8WakeList8wake_all.exit29, label %.lr.ph122

bb.t:                                             ; preds = %.lr.ph122
  %i.ar = icmp eq ptr %i.av, %i.ap
  br i1 %i.ar, label %_RNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB2_8WakeList8wake_all.exit29, label %.lr.ph122

.lr.ph122:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit23, %bb.t
  %.sroa.0.0.i24121 = phi ptr [ %i.av, %bb.t ], [ %i.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit23 ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.0.i24121, align 8, !alias.scope !462, !nonnull !7, !align !11, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i24121, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !462, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i24121, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !462, !nonnull !7, !noundef !7
  invoke void %i.ax(ptr noundef %i.au)
          to label %bb.t unwind label %bb.u, !noalias !462

bb.u:                                             ; preds = %.lr.ph122
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtBG_8WakeList8wake_all9DropGuardEBK_(ptr nonnull %i.av, ptr nonnull %i.ap) #15
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit31 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB2_8WakeList8wake_all.exit29: ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit23
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.ba = load i64, ptr %i.b, align 8, !alias.scope !465, !noundef !7 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4util9wake_list8WakeListEBH_.exit, label %.lr.ph124

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i.i.i: ; preds = %.lr.ph124
  %i.bc = icmp eq i64 %i.be, %i.ba
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4util9wake_list8WakeListEBH_.exit, label %.lr.ph124

.lr.ph124:                                        ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB2_8WakeList8wake_all.exit29, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i.i.i
  %.sroa.0.0.i.i.i123 = phi i64 [ %i.be, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i.i.i ], [ 0, %_RNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB2_8WakeList8wake_all.exit29 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.0.i.i.i123 ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0.0.i.i.i123, 1  ; 4 uses
  %.val8.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !467, !nonnull !7, !align !11, !noundef !7
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val9.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !467, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val8.i.i.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !467, !nonnull !7, !noundef !7
  invoke void %i.bh(ptr noundef %.val9.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i.i.i unwind label %bb.w, !noalias !467, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i.i.i: ; preds = %.lr.ph126
  %i.bi = add nuw nsw i64 %.sroa.0.1.i.i.i125, 1  ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.ba
  br i1 %i.bj, label %common.resume, label %.lr.ph126

bb.w:                                             ; preds = %.lr.ph124
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = icmp eq i64 %i.be, %i.ba
  br i1 %i.bl, label %common.resume, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i.i.i
  %.sroa.0.1.i.i.i125 = phi i64 [ %i.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i.i.i ], [ %i.be, %bb.w ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.1.i.i.i125 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !467, !nonnull !7, !align !11, !noundef !7
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %.val7.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !467, !noundef !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !467, !nonnull !7, !noundef !7
  invoke void %i.bp(ptr noundef %.val7.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i.i.i unwind label %bb.x, !noalias !467, !inline_history !0

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i.i.i, %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit31
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit31 ], [ %i.bk, %bb.w ], [ %i.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %.lr.ph126
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !467
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio4util9wake_list8WakeListEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i.i.i, %_RNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB2_8WakeList8wake_all.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.loopexit:                                        ; preds = %bb.f, %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.g, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.br = cmpxchg ptr %.sroa.0.0.ph, i8 1, i8 0 release monotonic, align 1
  %i.bs = extractvalue { i8, i1 } %i.br, 1
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit31, label %bb.z, !prof !6

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.0.ph, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit31 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_7runtime4time10InnerStateEEBK_.exit31
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtNtB4_6handle6Handle7process(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time6sourceNtB2_10TimeSource3now(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %1)
  tail call void @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime4timeNtNtB4_6handle6Handle15process_at_time(ptr noundef nonnull align 8 %0, i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4time5clock5pause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !474
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle11try_current(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e), !noalias !474
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noalias !474, !noundef !7 ; 4 uses
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !17, !noalias !474, !noundef !7
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.k, !prof !6

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !474
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !474, !nonnull !7, !noundef !7 ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !474
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !noalias !474
  %i.n = trunc nuw i64 %i.f to i1
  %i.o = select i1 %i.n, i64 432, i64 640
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = invoke fastcc { ptr, i64 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time5clockNtB2_5Clock5pause(ptr noundef nonnull align 8 %i.p)
          to label %bb.e unwind label %bb.d, !noalias !474

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #15
          to label %bb.m unwind label %bb.j, !noalias !474

bb.e:                                             ; preds = %bb.c
  %1 = icmp eq i64 %i.f, 0
  %i.s = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !475
  %i.t = icmp eq i64 %i.s, 1                      ; 2 uses
  br i1 %1, label %bb.f, label %2

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14, !noalias !474
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

2:                                                ; preds = %bb.e
  br i1 %i.t, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

bb.h:                                             ; preds = %2
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14, !noalias !474
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i: ; preds = %bb.h, %2, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !474
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i, %bb.b
  %.pn.i = phi { ptr, i64 } [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i ], [ { ptr @5, i64 52 }, %bb.b ] ; 2 uses
  %.sroa.0.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !474
  %.not.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i, label %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockuNCNvB2_5pause0EB6_.exit, label %bb.l, !prof !6

bb.j:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !474
  unreachable

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !474
  store ptr @1, ptr %i.b, align 8, !noalias !474
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !474
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #19
  unreachable

bb.l:                                             ; preds = %bb.i
  %.sroa.6.0.i = extractvalue { ptr, i64 } %.pn.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !474
  store ptr %.sroa.0.0.i, ptr %i.c, align 8, !noalias !474, !captures !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.i, ptr %i.v, align 8, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  store ptr %i.c, ptr %i.a, align 8, !noalias !474
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !474
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #19
  unreachable

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.r

_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockuNCNvB2_5pause0EB6_.exit: ; preds = %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslghKHtsL3a4_5tokio4time5clock6resume(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !490
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle11try_current(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e), !noalias !490
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noalias !490, !noundef !7 ; 3 uses
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !17, !noalias !490, !noundef !7
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.q, label %bb.s, !prof !6

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !490
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !490, !nonnull !7, !noundef !7 ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !490
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.l, ptr %i.m, align 8, !noalias !490
  %i.n = trunc nuw i64 %i.f to i1
  %i.o = select i1 %i.n, i64 432, i64 640
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 9 uses
  %i.q = cmpxchg weak ptr %i.p, i8 0, i8 1 acquire monotonic, align 1, !noalias !490
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %.noexc17.i, label %bb.d, !prof !6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4time5clock5InnerEEBK_.exit.sink.split.i.i: ; preds = %bb.i, %bb.f
  %.sroa.02.0.ph.i.i = phi ptr [ @6, %bb.f ], [ null, %bb.i ]
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.p, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.k, !noalias !490

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef zeroext i1 @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.p, i64 undef, i32 noundef -1)
          to label %.noexc17.i unwind label %bb.k, !noalias !490 ; 0 uses

.noexc17.i:                                       ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !range !18, !noalias !490, !noundef !7
  %.not5.i.i = icmp eq i32 %i.u, -1
  br i1 %.not5.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc17.i
  %i.v = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.i unwind label %bb.g, !noalias !490 ; 2 uses

bb.f:                                             ; preds = %.noexc17.i
  %i.w = cmpxchg ptr %i.p, i8 1, i8 0 release monotonic, align 1, !noalias !490
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4time5clock5InnerEEBK_.exit.sink.split.i.i, !prof !6

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = cmpxchg ptr %i.p, i8 1, i8 0 release monotonic, align 1, !noalias !490
  %i.aa = extractvalue { i8, i1 } %i.z, 1
  br i1 %i.aa, label %.body.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs1_NtCsfC2LXmwPSoN_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.p, i1 noundef zeroext false)
          to label %.body.i unwind label %bb.j, !noalias !490

bb.i:                                             ; preds = %bb.e
  %i.ab = extractvalue { i64, i32 } %i.v, 0
  %i.ac = extractvalue { i64, i32 } %i.v, 1       ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 1000000000
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.ab, ptr %i.ae, align 8, !noalias !490
  store i32 %i.ac, ptr %i.t, align 8, !noalias !490
  %i.af = cmpxchg ptr %i.p, i8 1, i8 0 release monotonic, align 1, !noalias !490
  %i.ag = extractvalue { i8, i1 } %i.af, 1
  br i1 %i.ag, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4time5clock5InnerEEBK_.exit.sink.split.i.i, !prof !6

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !490
  unreachable

bb.k:                                             ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4time5clock5InnerEEBK_.exit.sink.split.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %i.y, %bb.h ], [ %i.y, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #15
          to label %bb.u unwind label %bb.r, !noalias !490

bb.l:                                             ; preds = %bb.i, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4time5clock5InnerEEBK_.exit.sink.split.i.i
  %.sroa.02.0.i.i = phi ptr [ @6, %bb.f ], [ null, %bb.i ], [ %.sroa.02.0.ph.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot10MutexGuardNtNtNtBK_4time5clock5InnerEEBK_.exit.sink.split.i.i ]
  %i.aj = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0.i.i, 0
  %i.ak = insertvalue { ptr, i64 } %i.aj, i64 18, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.al = load i64, ptr %i.d, align 8, !range !15, !alias.scope !493, !noalias !490, !noundef !7
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.an = load ptr, ptr %i.m, align 8, !alias.scope !496, !noalias !490, !nonnull !7, !noundef !7
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !497
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14, !noalias !490
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.aq = load ptr, ptr %i.m, align 8, !alias.scope !500, !noalias !490, !nonnull !7, !noundef !7
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !501
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14, !noalias !490
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !490
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i, %bb.b
  %.pn.i = phi { ptr, i64 } [ %i.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i ], [ { ptr @5, i64 52 }, %bb.b ] ; 2 uses
  %.sroa.0.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !490
  %.not.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i, label %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockuNCNvB2_6resume0EB6_.exit, label %bb.t, !prof !6

bb.r:                                             ; preds = %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !490
  unreachable

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !490
  store ptr @1, ptr %i.b, align 8, !noalias !490
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !490
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #19
  unreachable

bb.t:                                             ; preds = %bb.q
  %.sroa.6.0.i = extractvalue { ptr, i64 } %.pn.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !490
  store ptr %.sroa.0.0.i, ptr %i.c, align 8, !noalias !490, !captures !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.i, ptr %i.au, align 8, !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !490
  store ptr %i.c, ptr %i.a, align 8, !noalias !490
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !490
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #19
  unreachable

bb.u:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockuNCNvB2_6resume0EB6_.exit: ; preds = %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RNvNtNtNtCslghKHtsL3a4_5tokio4time7instant7variant3now() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = load atomic i8, ptr @_RNvNtNtCslghKHtsL3a4_5tokio4time5clock15DID_PAUSE_CLOCK.0 acquire, align 1
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
  br label %_RNvNtNtCslghKHtsL3a4_5tokio4time5clock3now.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle11try_current(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c)
  %i.f = load i64, ptr %i.c, align 8, !range !8, !noundef !7 ; 4 uses
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !17, !noundef !7
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.l, !prof !6

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 3 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = trunc nuw i64 %i.f to i1
  %i.o = select i1 %i.n, i64 432, i64 640
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = invoke { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time5clockNtB2_5Clock3now(ptr noundef nonnull align 8 %i.p)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #15
          to label %bb.n unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  %0 = icmp eq i64 %i.f, 0
  %i.s = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !508
  %i.t = icmp eq i64 %i.s, 1                      ; 2 uses
  br i1 %0, label %bb.h, label %1

bb.h:                                             ; preds = %bb.g
  br i1 %i.t, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

1:                                                ; preds = %bb.g
  br i1 %i.t, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

bb.j:                                             ; preds = %1
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i: ; preds = %bb.j, %1, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #19
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.v = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now(), !noalias !509
  br label %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i

bb.n:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.r

_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i
  %.pn.i.i = phi { i64, i32 } [ %i.v, %bb.m ], [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCslghKHtsL3a4_5tokio4time5clock3now.exit

_RNvNtNtCslghKHtsL3a4_5tokio4time5clock3now.exit: ; preds = %bb.b, %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i
  %.pn.i = phi { i64, i32 } [ %.pn.i.i, %_RINvNtNtCslghKHtsL3a4_5tokio4time5clock10with_clockNtNtB4_7instant7InstantNCNvB2_3now0EB6_.exit.i ], [ %i.e, %bb.b ]
  ret { i64, i32 } %.pn.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMNtNtCslghKHtsL3a4_5tokio4util9wake_listNtB5_8WakeList8wake_allNtB2_9DropGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !7   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.h = icmp eq ptr %i.b, %i.c
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.0.i1 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %.val8.i = load ptr, ptr %i.j, align 8, !alias.scope !512, !nonnull !7, !align !11, !noundef !7
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val9.i = load ptr, ptr %i.l, align 8, !alias.scope !512, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !512, !nonnull !7, !noundef !7
  invoke void %i.n(ptr noundef %.val9.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i unwind label %bb.b, !noalias !512, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i: ; preds = %.lr.ph3
  %i.o = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.k, %i.g
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i
  %.sroa.0.1.i2 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.1.i2 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !512, !nonnull !7, !align !11, !noundef !7
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val7.i = load ptr, ptr %i.t, align 8, !alias.scope !512, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !512, !nonnull !7, !noundef !7
  invoke void %i.v(ptr noundef %.val7.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i unwind label %bb.c, !noalias !512, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit10.i, %bb.b
  resume { ptr, i32 } %i.q

bb.c:                                             ; preds = %.lr.ph3
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !512
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECslghKHtsL3a4_5tokio.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -1) i32 @_RNvXs0_NtNtCslghKHtsL3a4_5tokio7process3sysNtB7_10ChildStdinNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_RNvXsf_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdioNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %or.cond.not = icmp eq i32 %i.a, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  ret i32 %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -1) i32 @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix6socketNtB5_10UnixSocketNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !16, !noundef !7
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7process3imp4reapINtB5_6ReaperNtNtCsaL1QbXo9JQH_3std7process5ChildNtB7_17GlobalOrphanQueueNtNtNtBb_6signal4unix6SignalENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.e = call noundef i8 @_RNvXs6_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB5_6SignalNtB5_14InternalStream9poll_recv(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %.not = icmp eq i8 %i.e, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i32, ptr %i.b, align 8, !range !9, !noundef !7
  %.not10 = icmp eq i32 %i.f, 2
  br i1 %.not10, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvXNtNtCslghKHtsL3a4_5tokio7process3impNtNtCsaL1QbXo9JQH_3std7process5ChildNtNtB2_6orphan4Wait8try_wait(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.b)
  %i.g = load i32, ptr %i.a, align 8, !range !14, !noundef !7
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.49.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.c, align 4, !range !14, !noundef !7
  %i.k = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = trunc nuw i32 %i.j to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %.not, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCslghKHtsL3a4_5tokio2io8interestNtB5_8InterestNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !7   ; 7 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 2
  %.not104 = icmp eq i64 %i.c, 0
  br i1 %.not104, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %1, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre110 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %.pre110, i64 24
  %.pre112 = load ptr, ptr %.phi.trans.insert111, align 8, !invariant.load !7
  br label %bb.i
end_hunk_0
