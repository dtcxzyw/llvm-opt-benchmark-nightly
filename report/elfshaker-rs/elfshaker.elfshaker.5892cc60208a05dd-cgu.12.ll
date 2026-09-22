Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.12?download=true
inline.NumInlined: 320
inline.NumDeleted: 185
begin_hunk_0_@_RINvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex13push_snapshotNtB6_9FileEntryINtNtCs1xwejQucwHj_5alloc3vec3VecB18_EECs7BtpbLEd5q3_9elfshaker:bb.a
bb.o:                                             ; preds = %._crit_edge, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit
  %i.al = phi ptr [ %.pre, %._crit_edge ], [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !145, !noalias !146, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ap = add i64 %i.ag, 1
  store i64 %i.ap, ptr %i.af, align 8, !alias.scope !145, !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !147, !noalias !148, !noundef !5 ; 3 uses
  %i.at = load i64, ptr %i.aq, align 8, !range !9, !alias.scope !147, !noalias !148, !noundef !5
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.s unwind label %bb.q, !noalias !148

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #26
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !147, !noalias !148, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.ba = add i64 %i.as, 1
  store i64 %i.ba, ptr %i.ar, align 8, !alias.scope !147, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.z, %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit
  ret void

.thread51:                                        ; preds = %bb.m, %.thread43
  %.sroa.02.250 = phi i1 [ true, %.thread43 ], [ false, %bb.m ]
  %.pn48 = phi { ptr, i32 } [ %i.aa, %.thread43 ], [ %i.aj, %bb.m ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #26
          to label %bb.ab unwind label %bb.t

bb.t:                                             ; preds = %bb.u, %.thread63, %bb.ad, %.thread51
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.u:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.thread63 unwind label %bb.t

bb.v:                                             ; preds = %bb.d
  %i.bd = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !11, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.be, label %bb.w, label %bb.x, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.bi = load i64, ptr %i.bh, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #24
          to label %bb.ac unwind label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bg, 8
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bj, ptr noundef nonnull align 1 dereferenceable(9) @17, i64 9, i1 false)
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.612.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 %i.bg, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9, ptr %.sroa.511.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit

bb.aa:                                            ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ab:                                            ; preds = %.thread51
  br i1 %.sroa.02.250, label %.thread63, label %common.resume

bb.ac:                                            ; preds = %bb.w
  unreachable

bb.ad:                                            ; preds = %bb.w, %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #26
          to label %.thread63 unwind label %bb.t

.thread63:                                        ; preds = %bb.b, %bb.ad, %bb.u, %bb.ab
  %.pn16.pn59 = phi { ptr, i32 } [ %i.bc, %bb.u ], [ %.pn48, %bb.ab ], [ %lpad.thr_comm.split-lp, %bb.b ], [ %lpad.thr_comm, %bb.ad ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #26
          to label %common.resume unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex17for_each_snapshotNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s_0uEB1k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [48 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = tail call noundef i64 @_RNvNtCsjdYVxJKtkyg_8foldhash4seed19gen_per_hasher_seed(), !noalias !174
  %i.m = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjdYVxJKtkyg_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !174
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsjdYVxJKtkyg_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #23, !noalias !174
  br label %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @27, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.w
  invoke void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E3newCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.p, ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, ptr noundef nonnull %i.x)
          to label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %bb.i, %.body11
  %.pn = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %i.az, %bb.f ], [ %i.bd, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx, i64 noundef 40, i64 noundef 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4u2a9tqgjUw_9hashbrown3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.u

.loopexit:                                        ; preds = %bb.s, %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.014.0.copyload = load ptr, ptr %i.j, align 8 ; 2 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.516.0.copyload = load ptr, ptr %.sroa.516.0..sroa_idx, align 8 ; 2 uses
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.617.0.copyload = load i64, ptr %.sroa.617.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.y = icmp ult i64 %.sroa.617.0.copyload, %.sroa.8.0.copyload
  br i1 %i.y, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.0.copyload), "nonnull"(ptr %.sroa.516.0.copyload) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.i.sroa.7.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx54.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.67.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %2, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.617.0114 = phi i64 [ %.sroa.617.0.copyload, %.lr.ph ], [ %i.ao, %bb.t ] ; 3 uses
  %i.ao = add i64 %.sroa.617.0114, 1              ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.sroa.014.0.copyload, i64 %.sroa.617.0114 ; 2 uses
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.516.0.copyload, i64 %.sroa.617.0114 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !176
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val39.i = load ptr, ptr %i.ar, align 8, !alias.scope !175, !noalias !177, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val40.i = load i64, ptr %i.as, align 8, !alias.scope !175, !noalias !177, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !178
  store ptr %1, ptr %i.e, align 8, !noalias !178, !captures !13
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %.val39.i, i64 %.val40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !178
  store ptr %.val39.i, ptr %i.d, align 8, !noalias !178
  store ptr %i.at, ptr %i.z, align 8, !noalias !178
  store ptr %i.e, ptr %i.aa, align 8, !noalias !178
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1y_NtB1y_9PackIndex23entry_refs_from_handlesB16_E0ENtB1y_12FileEntryRefINtNtB6_6result6ResultzNtB1y_9PackErrorENCINvXso_B3F_IB3D_INtNtCs1xwejQucwHj_5alloc3vec3VecB3i_EB3Z_EINtNtNtB4_6traits7collect12FromIteratorIB3D_B3i_B3Z_EE9from_iterBQ_E0B4y_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !178
  %i.au = load i64, ptr %i.g, align 8, !range !14, !noalias !176, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.au, -1
  %.sroa.6.i.sroa.0.0.copyload51 = load i64, ptr %i.ab, align 8, !noalias !176 ; 3 uses
  %.sroa.6.i.sroa.7.sroa.0.0.copyload58 = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !176 ; 3 uses
  %.sroa.6.i.sroa.7.sroa.7.0.copyload61 = load i64, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !176 ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.av = load <2 x i64>, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !176
  br label %.noexc9

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !176
  store i64 %.sroa.6.i.sroa.0.0.copyload51, ptr %i.h, align 8, !noalias !176
  store i64 %.sroa.6.i.sroa.7.sroa.0.0.copyload58, ptr %.sroa.6.i.sroa.7.0..sroa_idx54, align 8, !noalias !176
  store i64 %.sroa.6.i.sroa.7.sroa.7.0.copyload61, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx54.sroa_idx, align 8, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !176
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.val36.i = load ptr, ptr %i.aw, align 8, !alias.scope !175, !noalias !177, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.val37.i = load i64, ptr %i.ax, align 8, !alias.scope !175, !noalias !177, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !180
  store ptr %1, ptr %i.c, align 8, !noalias !180, !captures !13
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %.val36.i, i64 %.val37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180
  store ptr %.val36.i, ptr %i.b, align 8, !noalias !180
  store ptr %i.ay, ptr %i.ac, align 8, !noalias !180
  store ptr %i.c, ptr %i.ad, align 8, !noalias !180
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1y_NtB1y_9PackIndex23entry_refs_from_handlesB16_E0ENtB1y_12FileEntryRefINtNtB6_6result6ResultzNtB1y_9PackErrorENCINvXso_B3F_IB3D_INtNtCs1xwejQucwHj_5alloc3vec3VecB3i_EB3Z_EINtNtNtB4_6traits7collect12FromIteratorIB3D_B3i_B3Z_EE9from_iterBQ_E0B4y_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f, !noalias !176

bb.f:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #26
          to label %.body unwind label %bb.k, !noalias !176

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180
  %i.ba = load i64, ptr %i.f, align 8, !range !14, !noalias !176, !noundef !5 ; 2 uses
  %.not35.i = icmp eq i64 %i.ba, -1
  %i.bb = load <2 x i64>, ptr %i.ae, align 8, !noalias !176 ; 3 uses
  %.sroa.67.i.sroa.9.0.copyload76 = load i64, ptr %.sroa.67.i.sroa.9.0..sroa_idx, align 8, !noalias !176 ; 2 uses
  br i1 %.not35.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bc = load <2 x i64>, ptr %.sroa.528.0..sroa_idx.i, align 8, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !176
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.i, !noalias !176

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.j, !noalias !176

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !176
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.h
  %i.bf = extractelement <2 x i64> %i.bb, i64 0
  %i.bg = extractelement <2 x i64> %i.bb, i64 1
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc9 unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !176
  unreachable

.thread:                                          ; preds = %bb.t, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bi, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %.noexc9, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx, i64 noundef 40, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.noexc9:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.d
  %.sroa.12.sroa.8.sroa.8.0.ph = phi i64 [ %.sroa.6.i.sroa.7.sroa.7.0.copyload61, %bb.d ], [ %.sroa.67.i.sroa.9.0.copyload76, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.12.sroa.8.sroa.0.0.ph = phi i64 [ %.sroa.6.i.sroa.7.sroa.0.0.copyload58, %bb.d ], [ %i.bg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.12.sroa.0.0.ph = phi i64 [ %.sroa.6.i.sroa.0.0.copyload51, %bb.d ], [ %i.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.7.0.ph = phi i64 [ %i.au, %bb.d ], [ %i.ba, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %i.bj = phi <2 x i64> [ %i.av, %bb.d ], [ %i.bc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !176
  store i64 %.sroa.7.0.ph, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.sroa.0.0.ph, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.447.sroa.4.0..sroa.447.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.sroa.8.sroa.0.0.ph, ptr %.sroa.447.sroa.4.0..sroa.447.0..sroa_idx.sroa_idx, align 8
  %.sroa.447.sroa.5.0..sroa.447.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.sroa.8.sroa.8.0.ph, ptr %.sroa.447.sroa.5.0..sroa.447.0..sroa_idx.sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.bj, ptr %.sroa.548.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.l

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !176
  store i64 %.sroa.6.i.sroa.0.0.copyload51, ptr %i.i, align 8
  store i64 %.sroa.6.i.sroa.7.sroa.0.0.copyload58, ptr %.sroa.436.0..sroa_idx, align 8
  store i64 %.sroa.6.i.sroa.7.sroa.7.0.copyload61, ptr %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.bb, ptr %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.67.i.sroa.9.0.copyload76, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_12FileEntryRefECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvXsX_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_4KeysNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB1H_8adapters3map8map_foldRBL_yyNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s_00NCINvXsC_NtB1F_5accumyNtB4p_3Sum3sumINtB2H_3MapINtNtB8_3set4IterBL_EB3h_EE0E0EB3r_.exit.i, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.q, %bb.n
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.bk, %bb.n ], [ %i.cs, %bb.q ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_12FileEntryRefEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #26
          to label %.body unwind label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.bp = load i64, ptr %i.af, align 8, !alias.scope !181, !noalias !182, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.bq = load ptr, ptr %i.k, align 8, !alias.scope !184, !noalias !185, !nonnull !5, !noundef !5 ; 3 uses
  %.val24.i.i = load <16 x i8>, ptr %i.bq, align 16, !noalias !186
  %i.br = icmp sgt <16 x i8> %.val24.i.i, splat (i8 -1)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = bitcast <16 x i1> %i.br to i16
  br label %.outer.i.i.i.i

.outer.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i, %bb.o
  %i.bu = phi i16 [ %i.bz, %._crit_edge.i.i.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  %.lcssa2227.i.i.i.i = phi ptr [ %.lcssa2226.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.bs, %bb.o ] ; 2 uses
  %.lcssa2125.i.i.i.i = phi ptr [ %.lcssa2124.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.bq, %bb.o ] ; 2 uses
  %.sroa.02.0.ph.i.i.i.i = phi i64 [ %i.cf, %._crit_edge.i.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.cg, %._crit_edge.i.i.i.i ], [ %i.bp, %bb.o ] ; 2 uses
  %.not18.i.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not18.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.outer.i.i.i.i
  %i.bv = icmp eq i64 %.sroa.0.0.ph.i.i.i.i, 0
  br i1 %i.bv, label %_RINvXsX_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_4KeysNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB1H_8adapters3map8map_foldRBL_yyNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s_00NCINvXsC_NtB1F_5accumyNtB4p_3Sum3sumINtB2H_3MapINtNtB8_3set4IterBL_EB3h_EE0E0EB3r_.exit.i, label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.i, %.outer.i.i.i.i
  %.lcssa2226.i.i.i.i = phi ptr [ %.lcssa2227.i.i.i.i, %.outer.i.i.i.i ], [ %i.cl, %.lr.ph.split.i.i.i.i ]
  %.lcssa2124.i.i.i.i = phi ptr [ %.lcssa2125.i.i.i.i, %.outer.i.i.i.i ], [ %i.ck, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.bu, %.outer.i.i.i.i ], [ %.cast.i.i.i.i, %.lr.ph.split.i.i.i.i ] ; 3 uses
  %i.bw = add i16 %.lcssa.i.i.i.i, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.lcssa.i.i.i.i
  %i.ca = sub nsw i64 0, %i.by
  %i.cb = getelementptr inbounds [40 x i8], ptr %.lcssa2124.i.i.i.i, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -16
  %.val11.i.i.i.i = load ptr, ptr %i.cc, align 8, !noalias !187, !nonnull !5, !align !6, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !187, !noundef !5
  %i.cf = add i64 %i.ce, %.sroa.02.0.ph.i.i.i.i
  %i.cg = add i64 %.sroa.0.0.ph.i.i.i.i, -1
  br label %.outer.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.ch = phi ptr [ %i.cl, %.lr.ph.split.i.i.i.i ], [ %.lcssa2227.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ci = phi ptr [ %i.ck, %.lr.ph.split.i.i.i.i ], [ %.lcssa2125.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val1014.i.i.i.i = load <16 x i8>, ptr %i.ch, align 16, !noalias !187
  %i.cj = icmp sgt <16 x i8> %.val1014.i.i.i.i, splat (i8 -1)
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -640 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.cj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

_RINvXsX_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_4KeysNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB1H_8adapters3map8map_foldRBL_yyNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s_00NCINvXsC_NtB1F_5accumyNtB4p_3Sum3sumINtB2H_3MapINtNtB8_3set4IterBL_EB3h_EE0E0EB3r_.exit.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  %i.cm = load ptr, ptr %i.aj, align 8, !noalias !188, !nonnull !5, !noundef !5
  %i.cn = load i64, ptr %i.ak, align 8, !noalias !188, !noundef !5
  %i.co = load ptr, ptr %i.al, align 8, !noalias !188, !nonnull !5, !align !6, !noundef !5
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker4list19format_snapshot_row(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo, i64 noundef %.sroa.02.0.ph.i.i.i.i, i64 noundef %i.bp)
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %_RINvXsX_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_4KeysNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB1H_8adapters3map8map_foldRBL_yyNCNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s_00NCINvXsC_NtB1F_5accumyNtB4p_3Sum3sumINtB2H_3MapINtNtB8_3set4IterBL_EB3h_EE0E0EB3r_.exit.i
  %i.cp = load i64, ptr %i.am, align 8, !alias.scope !189, !noalias !190, !noundef !5 ; 3 uses
  %i.cq = load i64, ptr %i.ai, align 8, !range !9, !alias.scope !189, !noalias !190, !noundef !5
  %i.cr = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.noexc10
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaL1QbXo9JQH_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.s unwind label %bb.q, !noalias !190

bb.q:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #26
          to label %.body11 unwind label %bb.r, !noalias !181

bb.r:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !181
  unreachable

bb.s:                                             ; preds = %bb.p, %.noexc10
  %i.cu = load ptr, ptr %i.an, align 8, !alias.scope !189, !noalias !190, !nonnull !5, !noundef !5
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !181
  %i.cw = add i64 %i.cp, 1
  store i64 %i.cw, ptr %i.am, align 8, !alias.scope !189, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_12FileEntryRefEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.not = icmp eq i64 %i.ao, %.sroa.8.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.c

bb.u:                                             ; preds = %.body, %.body11
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4u2a9tqgjUw_9hashbrown3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex17for_each_snapshotNCNvNtCs7BtpbLEd5q3_9elfshaker4pack3runs0_0INtNtCs3oUPovFnLWP_4core6result6ResultuNtB6_9PackErrorEEB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef align 8 dereferenceable(264) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 12 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.5.i.sroa.9.i = alloca [24 x i8], align 8 ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.9.i = alloca [24 x i8], align 8          ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.x = tail call noundef i64 @_RNvNtCsjdYVxJKtkyg_8foldhash4seed19gen_per_hasher_seed(), !noalias !232
  %i.y = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjdYVxJKtkyg_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !232
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsjdYVxJKtkyg_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #23, !noalias !232
  br label %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @27, i64 32, i1 false)
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  store i64 %i.x, ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %i.ai
  invoke void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E3newCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj)
          to label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %bb.i, %.body17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.bi, %bb.f ], [ %i.bm, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.442.0..sroa_idx, i64 noundef 40, i64 noundef 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4u2a9tqgjUw_9hashbrown3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.ay

.loopexit:                                        ; preds = %bb.av, %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit145, %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.020.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.522.0.copyload = load ptr, ptr %.sroa.522.0..sroa_idx, align 8 ; 2 uses
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.623.0.copyload = load i64, ptr %.sroa.623.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.ak = icmp ult i64 %.sroa.623.0.copyload, %.sroa.8.0.copyload
  br i1 %i.ak, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload), "nonnull"(ptr %.sroa.522.0.copyload) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6.i.sroa.7.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx71.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.67.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.1024.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.i.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.i.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.i.sroa.9.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5.i.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.i.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.i.sroa.9.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ax
  %.sroa.623.0210 = phi i64 [ %.sroa.623.0.copyload, %.lr.ph ], [ %i.ax, %bb.ax ] ; 3 uses
  %i.ax = add i64 %.sroa.623.0210, 1              ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.sroa.020.0.copyload, i64 %.sroa.623.0210 ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %.sroa.522.0.copyload, i64 %.sroa.623.0210 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !234
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val39.i = load ptr, ptr %i.ba, align 8, !alias.scope !233, !noalias !235, !nonnull !5, !noundef !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val40.i = load i64, ptr %i.bb, align 8, !alias.scope !233, !noalias !235, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !236
  store ptr %1, ptr %i.q, align 8, !noalias !236, !captures !13
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %.val39.i, i64 %.val40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !236
  store ptr %.val39.i, ptr %i.p, align 8, !noalias !236
  store ptr %i.bc, ptr %i.al, align 8, !noalias !236
  store ptr %i.q, ptr %i.am, align 8, !noalias !236
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1y_NtB1y_9PackIndex23entry_refs_from_handlesB16_E0ENtB1y_12FileEntryRefINtNtB6_6result6ResultzNtB1y_9PackErrorENCINvXso_B3F_IB3D_INtNtCs1xwejQucwHj_5alloc3vec3VecB3i_EB3Z_EINtNtNtB4_6traits7collect12FromIteratorIB3D_B3i_B3Z_EE9from_iterBQ_E0B4y_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !236
  %i.bd = load i64, ptr %i.s, align 8, !range !14, !noalias !234, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.bd, -1
  %.sroa.6.i.sroa.0.0.copyload68 = load i64, ptr %i.an, align 8, !noalias !234 ; 3 uses
  %.sroa.6.i.sroa.7.sroa.0.0.copyload75 = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx, align 8, !noalias !234 ; 3 uses
  %.sroa.6.i.sroa.7.sroa.7.0.copyload78 = load i64, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !234 ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.be = load <2 x i64>, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !234
  br label %.noexc11

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !234
  store i64 %.sroa.6.i.sroa.0.0.copyload68, ptr %i.t, align 8, !noalias !234
  store i64 %.sroa.6.i.sroa.7.sroa.0.0.copyload75, ptr %.sroa.6.i.sroa.7.0..sroa_idx71, align 8, !noalias !234
  store i64 %.sroa.6.i.sroa.7.sroa.7.0.copyload78, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx71.sroa_idx, align 8, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !234
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.val36.i = load ptr, ptr %i.bf, align 8, !alias.scope !233, !noalias !235, !nonnull !5, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.val37.i = load i64, ptr %i.bg, align 8, !alias.scope !233, !noalias !235, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !238
  store ptr %1, ptr %i.o, align 8, !noalias !238, !captures !13
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %.val36.i, i64 %.val37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !238
  store ptr %.val36.i, ptr %i.n, align 8, !noalias !238
  store ptr %i.bh, ptr %i.ao, align 8, !noalias !238
  store ptr %i.o, ptr %i.ap, align 8, !noalias !238
  invoke void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENCINvMsd_B1y_NtB1y_9PackIndex23entry_refs_from_handlesB16_E0ENtB1y_12FileEntryRefINtNtB6_6result6ResultzNtB1y_9PackErrorENCINvXso_B3F_IB3D_INtNtCs1xwejQucwHj_5alloc3vec3VecB3i_EB3Z_EINtNtNtB4_6traits7collect12FromIteratorIB3D_B3i_B3Z_EE9from_iterBQ_E0B4y_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n)
          to label %bb.g unwind label %bb.f, !noalias !234

bb.f:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #26
          to label %.body unwind label %bb.k, !noalias !234

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !238
  %i.bj = load i64, ptr %i.r, align 8, !range !14, !noalias !234, !noundef !5 ; 2 uses
  %.not35.i = icmp eq i64 %i.bj, -1
  %i.bk = load <2 x i64>, ptr %i.aq, align 8, !noalias !234 ; 3 uses
  %.sroa.67.i.sroa.9.0.copyload93 = load i64, ptr %.sroa.67.i.sroa.9.0..sroa_idx, align 8, !noalias !234 ; 2 uses
  br i1 %.not35.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bl = load <2 x i64>, ptr %.sroa.528.0..sroa_idx.i, align 8, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !234
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.i, !noalias !234

bb.i:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.j, !noalias !234

bb.j:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !234
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.h
  %i.bo = extractelement <2 x i64> %i.bk, i64 0
  %i.bp = extractelement <2 x i64> %i.bk, i64 1
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.noexc11 unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !234
  unreachable

.thread:                                          ; preds = %bb.ax, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.br, align 8
  store i64 0, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %.noexc11, %bb.aw, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.442.0..sroa_idx, i64 noundef 40, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

.noexc11:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.d
  %.sroa.12.sroa.8.sroa.0.0.ph = phi i64 [ %.sroa.6.i.sroa.7.sroa.0.0.copyload75, %bb.d ], [ %i.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.12.sroa.0.0.ph = phi i64 [ %.sroa.6.i.sroa.0.0.copyload68, %bb.d ], [ %i.bo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.12.sroa.8.sroa.8.0.ph = phi i64 [ %.sroa.6.i.sroa.7.sroa.7.0.copyload78, %bb.d ], [ %.sroa.67.i.sroa.9.0.copyload93, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %.sroa.7.0.ph = phi i64 [ %i.bd, %bb.d ], [ %i.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  %i.bs = phi <2 x i64> [ %i.be, %bb.d ], [ %i.bl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !234
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.ph, ptr %i.bt, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.sroa.0.0.ph, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.sroa.8.sroa.0.0.ph, ptr %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx, align 8
  %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.12.sroa.8.sroa.8.0.ph, ptr %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.bs, ptr %.sroa.565.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.l

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !234
  store i64 %.sroa.6.i.sroa.0.0.copyload68, ptr %i.u, align 8
  store i64 %.sroa.6.i.sroa.7.sroa.0.0.copyload75, ptr %.sroa.453.0..sroa_idx, align 8
  store i64 %.sroa.6.i.sroa.7.sroa.7.0.copyload78, ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.bk, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.67.i.sroa.9.0.copyload93, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_12FileEntryRefECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
          to label %bb.n unwind label %.loopexit135

.loopexit135:                                     ; preds = %bb.m, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %lpad.loopexit137 = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.loopexit.split-lp136:                            ; preds = %bb.o, %.thread27.i
  %lpad.loopexit.split-lp138 = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %.loopexit135, %.loopexit.split-lp136, %bb.aa, %bb.aj, %bb.ap, %.thread65.i.i, %bb.as
end_hunk_0
begin_hunk_1_@_RINvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex17for_each_snapshotNCNvNtCs7BtpbLEd5q3_9elfshaker4pack3runs0_0INtNtCs3oUPovFnLWP_4core6result6ResultuNtB6_9PackErrorEEB1i_:bb.a

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %.thread.i unwind label %bb.aj, !noalias !261

bb.aj:                                            ; preds = %bb.ai
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #26
          to label %.body17 unwind label %bb.ak, !noalias !248

bb.ak:                                            ; preds = %bb.aj
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !248
  unreachable

.thread.i:                                        ; preds = %bb.ai, %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !260, !noalias !261, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw [48 x i8], ptr %i.eb, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !248
  %i.ed = add i64 %i.dv, 1
  store i64 %i.ed, ptr %i.du, align 8, !alias.scope !260, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !239
  br label %.thread122

.thread53.i.i:                                    ; preds = %bb.af, %.thread45.i.i
  %.sroa.02.252.i.i = phi i1 [ true, %.thread45.i.i ], [ false, %bb.af ]
  %.pn50.i.i = phi { ptr, i32 } [ %i.dd, %.thread45.i.i ], [ %i.dm, %bb.af ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #26
          to label %bb.ap unwind label %bb.al, !noalias !248

bb.al:                                            ; preds = %.thread65.i.i, %bb.ar, %bb.am, %.thread53.i.i
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !262
  unreachable

bb.am:                                            ; preds = %bb.ac
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.thread65.i.i unwind label %bb.al, !noalias !248

bb.an:                                            ; preds = %bb.w
  %i.eg = load i64, ptr %i.a, align 8, !range !10, !noalias !246, !noundef !5
  %i.eh = trunc nuw i64 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !range !11, !noalias !246, !noundef !5 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.eh, label %bb.ao, label %.thread27.i, !prof !7

bb.ao:                                            ; preds = %bb.an
  %i.el = load i64, ptr %i.ek, align 8, !noalias !246
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ej, i64 %i.el) #24
          to label %bb.aq unwind label %.loopexit.split-lp141, !noalias !248

.thread27.i:                                      ; preds = %bb.an
  %i.em = load ptr, ptr %i.ek, align 8, !noalias !246, !nonnull !5, !noundef !5 ; 2 uses
  %i.en = icmp samesign ugt i64 %i.ej, 8
  call void @llvm.assume(i1 %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.em, ptr noundef nonnull align 1 dereferenceable(9) @17, i64 9, i1 false), !noalias !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !alias.scope !263, !noalias !264
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  invoke void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef 40, i64 noundef 16)
          to label %.thread127 unwind label %.loopexit.split-lp136

.thread127:                                       ; preds = %.thread27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.loopexit145

bb.ap:                                            ; preds = %.thread53.i.i
  br i1 %.sroa.02.252.i.i, label %.thread65.i.i, label %.body17

bb.aq:                                            ; preds = %bb.ao
  unreachable

.loopexit140:                                     ; preds = %bb.s
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp141:                            ; preds = %bb.w, %bb.ao
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp141, %.loopexit140
  %lpad.phi144 = phi { ptr, i32 } [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp141 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  invoke void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef 40, i64 noundef 16)
          to label %.thread65.i.i unwind label %bb.al, !noalias !262

.thread65.i.i:                                    ; preds = %bb.ar, %bb.ap, %bb.am, %bb.t
  %.pn16.pn61.i.i = phi { ptr, i32 } [ %i.ef, %bb.am ], [ %.pn50.i.i, %bb.ap ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %lpad.phi144, %bb.ar ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #26
          to label %.body17 unwind label %bb.al, !noalias !262

bb.as:                                            ; preds = %bb.q
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #26
          to label %.body17 unwind label %bb.at, !noalias !240

bb.at:                                            ; preds = %bb.as
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !240
  unreachable

.thread122:                                       ; preds = %.thread.i, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.av

bb.au:                                            ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %.not9 = icmp eq i64 %.sroa.5.i.sroa.0.0.copyload5.i, -2
  br i1 %.not9, label %bb.av, label %.loopexit145

.loopexit145:                                     ; preds = %bb.au, %.thread127
  %.sroa.8.032.i134 = phi i64 [ 9, %.thread127 ], [ %.sroa.5.i.sroa.8.0.copyload13.i, %bb.au ]
  %.sroa.7.033.i133 = phi ptr [ %i.em, %.thread127 ], [ %.sroa.5.i.sroa.7.0.copyload9.i, %bb.au ]
  %.sroa.0.01634.i132 = phi i64 [ %i.ej, %.thread127 ], [ %.sroa.5.i.sroa.0.0.copyload5.i, %bb.au ]
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.640.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.01634.i132, ptr %i.er, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.033.i133, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.032.i134, ptr %.sroa.539.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_12FileEntryRefEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u)
          to label %bb.aw unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %.thread122, %bb.au
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBE_12FileEntryRefEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u)
          to label %bb.ax unwind label %.loopexit

bb.aw:                                            ; preds = %.loopexit145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.l

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %exitcond.not = icmp eq i64 %i.ax, %.sroa.8.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.c

bb.ay:                                            ; preds = %.body, %.body17
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4u2a9tqgjUw_9hashbrown3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex28for_each_snapshot_file_countNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0uEB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.k
  call void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E3newCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l)
  %.sroa.08.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0.copyload = load ptr, ptr %.sroa.49.0..sroa_idx, align 8 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.m = icmp ult i64 %.sroa.510.0.copyload, %.sroa.7.0.copyload
  br i1 %i.m, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.thread

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload), "nonnull"(ptr %.sroa.49.0.copyload) ]
  %i.n = load ptr, ptr %2, align 8, !noalias !271, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !271, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !271, !nonnull !5, !align !6, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph, %_RNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0B7_.exit
  %.sroa.0.016 = phi i64 [ 0, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph ], [ %i.af, %_RNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0B7_.exit ]
  %.sroa.510.015 = phi i64 [ %.sroa.510.0.copyload, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph ], [ %i.v, %_RNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0B7_.exit ] ; 3 uses
  %i.v = add i64 %.sroa.510.015, 1                ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.08.0.copyload, i64 %.sroa.510.015 ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %.sroa.49.0.copyload, i64 %.sroa.510.015 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 768614336404564651
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add i64 %i.z, %.sroa.0.016
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 768614336404564651
  call void @llvm.assume(i1 %i.ae)
  %i.af = sub i64 %i.ab, %i.ad                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !271
  %i.ak = load ptr, ptr %i.p, align 8, !noalias !271, !nonnull !5, !noundef !5
  %i.al = load i64, ptr %i.q, align 8, !noalias !271, !noundef !5
  %i.am = load ptr, ptr %i.s, align 8, !noalias !271, !nonnull !5, !align !6, !noundef !5
  call void @_RNvNtCs7BtpbLEd5q3_9elfshaker4list19format_snapshot_row(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, i64 noundef 0, i64 noundef %i.af)
  %i.an = load i64, ptr %i.t, align 8, !alias.scope !272, !noalias !273, !noundef !5 ; 3 uses
  %i.ao = load i64, ptr %i.n, align 8, !range !9, !alias.scope !272, !noalias !273, !noundef !5
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.b, label %_RNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0B7_.exit

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaL1QbXo9JQH_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0B7_.exit unwind label %bb.c, !noalias !273

bb.c:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.aq

_RNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0B7_.exit: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit, %bb.b
  %i.as = load ptr, ptr %i.u, align 8, !alias.scope !272, !noalias !273, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.au = add i64 %i.an, 1
  store i64 %i.au, ptr %i.t, align 8, !alias.scope !272, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !271
  %exitcond.not = icmp eq i64 %i.v, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEIBX_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB26_10FileHandleEEEINtB5_7ZipImplBW_B1Z_E4nextCs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %_RNCNCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0s0_0B7_.exit, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMse_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex4saveNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 15 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val15 = load i64, ptr %i.n, align 8, !noundef !5
  invoke void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs11create_fileRNtNtCsaL1QbXo9JQH_3std4path4PathECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val15, i32 noundef 0, i32 undef)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #26
          to label %common.resume unwind label %bb.aj

bb.c:                                             ; preds = %bb.ae, %bb.aa, %bb.f, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.l, align 8, !range !292, !noundef !5
  %i.q = trunc nuw i32 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 -9223372036854775802, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.u = load i32, ptr %i.t, align 4, !range !15, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE13with_capacityCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, i64 noundef 8192, i32 noundef %i.u)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.v = load i64, ptr %i.k, align 8, !range !9, !alias.scope !295, !noalias !296, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !295, !noalias !296, !noundef !5 ; 4 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = sub nsw i64 %i.v, %i.x
  %i.aa = icmp ugt i64 %i.z, 4
  br i1 %i.aa, label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.thread.i, label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.i, !prof !12

_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.thread.i: ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !298, !noalias !299, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x
  store i32 1397115973, ptr %i.ad, align 1, !noalias !298
  %i.ae = add nuw i64 %i.x, 4                     ; 2 uses
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !298, !noalias !299
  br label %bb.h

_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.g
  %i.af = invoke noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4) #23
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.i
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit._crit_edge.i, label %_RINvMse_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex11write_magicINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit.thread

_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit._crit_edge.i: ; preds = %.noexc
  %.pre.i = load i64, ptr %i.w, align 8, !alias.scope !300, !noalias !301
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit._crit_edge.i, %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.thread.i
  %i.ag = phi i64 [ %.pre.i, %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit._crit_edge.i ], [ %i.ae, %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !293
  store i32 33554432, ptr %i.i, align 4, !noalias !293
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.ah = load i64, ptr %i.k, align 8, !range !9, !alias.scope !300, !noalias !301, !noundef !5
  %i.ai = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nsw i64 %i.ah, %i.ag
  %i.ak = icmp ugt i64 %i.aj, 4
  br i1 %i.ak, label %_RINvMse_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex11write_magicINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit.thread69, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.al = invoke noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 4) #23
          to label %_RINvMse_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex11write_magicINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.j ; 2 uses

_RINvMse_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex11write_magicINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit.thread69: ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !304, !noalias !305, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag
  store i32 33554432, ptr %i.ao, align 1, !noalias !306
  %i.ap = add nuw i64 %i.ag, 4
  store i64 %i.ap, ptr %i.w, align 8, !alias.scope !304, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !293
  br label %bb.k

bb.j:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.bi, %bb.v ]
end_hunk_1
