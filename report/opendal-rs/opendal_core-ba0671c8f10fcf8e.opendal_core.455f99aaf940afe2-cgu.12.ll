Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.12?download=true
inline.NumInlined: 395
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registryNtB3_16OperatorRegistry8registerNtNtNtNtB9_8services6memory7backend13MemoryBuilderEB9_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.az = invoke noundef ptr @_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1z_8operator8OperatorNtNtB1B_5error5ErrorENtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull @_RINvNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry7factoryNtNtNtNtB8_8services6memory6config12MemoryConfigEB8_)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_(ptr nonnull %i.av, i8 %i.ax) #29
          to label %.thread unwind label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.bb = trunc nuw i8 %i.ax to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  br i1 %i.bb, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load atomic i64, ptr @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.be = and i64 %i.bd, 9223372036854775807
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !21

.noexc:                                           ; preds = %bb.l
  %i.bg = call noundef zeroext i1 @_RNvNtNtCs9k3SxhrAWiO_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.bg, label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.bc monotonic, align 4
  br label %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.l, %bb.k
  %i.bh = atomicrmw xchg ptr %i.av, i32 0 release, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_.exit, !prof !12

bb.n:                                             ; preds = %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.av)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB4_6result6ResultNtNtB2Y_8operator8OperatorNtNtB30_5error5ErrorEEEEB32_.exit: ; preds = %bb.n, %_RNvMNtNtCs9k3SxhrAWiO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.o:                                             ; preds = %bb.j, %.thread11
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

.thread:                                          ; preds = %bb.j, %.thread11
  %.pn10 = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %eh.lpad-body14, %.thread11 ]
  resume { ptr, i32 } %.pn10

.thread11:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body14 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.c ], [ %i.as, %bb.f ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #29
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsq_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCsgxBkk5gSRhY_4core6option6OptionTjjEEECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs76KlaVGnJsc_4http6header4name9parse_hdr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull dereferenceable(64) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256) @15)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !22, !noundef !9
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 2, ptr %0, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !196, !noalias !197, !noundef !9 ; 4 uses
  %i.j = icmp ult i64 %i.i, 88686269585142076
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !198 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.n = load i16, ptr %i.m, align 8, !alias.scope !196, !noalias !197, !noundef !9 ; 3 uses
  %i.o = and i16 %i.n, %i.l
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !196, !noalias !197, !noundef !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !196, !noalias !197, !nonnull !9
  %i.u = zext i16 %i.n to i64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !196, !noalias !197, !nonnull !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !23, !alias.scope !199, !noalias !200 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !199, !noalias !200 ; 5 uses
  %i.ab = load ptr, ptr %i.b, align 8, !alias.scope !199, !noalias !200 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not1.i.i.i = icmp eq i8 %i.y, 2
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %.not = icmp eq i64 %i.r, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i, %bb.d
  %.sroa.05.0.i.i.ph = phi i64 [ %i.au, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.av, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i.i.ph, %i.r    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ai, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.i.i.ph, i64 0 ; 9 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !198, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ak, -1
  br i1 %.not.i.i, label %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64                   ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noalias !198, !noundef !9 ; 2 uses
  %i.ao = and i16 %i.an, %i.n
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.u
  %i.as = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ar
  br i1 %i.as, label %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i16 %i.an, %i.l
  br i1 %i.at, label %bb.g, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i: ; preds = %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i, %.split.i.i, %bb.n, %bb.k, %.split11.i.i, %bb.j, %bb.i, %bb.f
  %i.au = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.av = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp samesign ugt i64 %i.i, %i.al
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.al ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !201, !noundef !9
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.y, label %bb.n [
    i8 2, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i
    i8 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.h
  br i1 %.not1.i.i.i, label %.split11.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

.split11.i.i:                                     ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !24, !noalias !201, !noundef !9
  %i.bc = icmp eq i8 %i.bb, %i.ag
  br i1 %i.bc, label %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !noalias !201, !noundef !9
  %.not.i.i.i.i = icmp eq i64 %i.be, %i.aa
  br i1 %.not.i.i.i.i, label %bb.l, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !201, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aa
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.bg, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull readonly %i.ab, ptr noundef nonnull readonly %i.ah), !noalias !201
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.bi = load i64, ptr %i.ad, align 8, !alias.scope !204, !noalias !202, !noundef !9 ; 3 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !204, !noalias !202 ; 3 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !203, !noalias !202, !nonnull !9
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !203, !noalias !202, !nonnull !9
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 %.promoted.i.i.i.i.i)
  %exitcond.not.i3.not.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.bi
  br i1 %exitcond.not.i3.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.sink.split.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = add i64 %i.bk, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bj, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.sink.split.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %i.bk = phi i64 [ %i.bj, %bb.m ], [ %.promoted.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.bk
  %.val.i.i.i.i.i = load i8, ptr %i.bl, align 1, !noalias !205, !noundef !9
  %.val7.i.i.i.i.i = load i8, ptr %i.bm, align 1, !noalias !205, !noundef !9
  %i.bn = zext i8 %.val7.i.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @15, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !206, !noundef !9
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, %i.bp
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i

bb.n:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noalias !201, !noundef !9
  %i.bs = icmp eq i64 %i.br, %i.aa
  br i1 %i.bs, label %.split.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !201, !noundef !9
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.bu, ptr nonnull %i.ab, i64 %i.aa), !noalias !201
  %i.bv = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bv, label %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not16.i.i = icmp ult i64 %i.bk, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  br i1 %.not16.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i, label %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit

bb.o:                                             ; preds = %bb.g
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #30, !noalias !198
  unreachable

.loopexit.sink.split.i.i:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  br label %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit

_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %.split11.i.i, %.split.i.i, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i, %.loopexit, %bb.e, %.loopexit.sink.split.i.i, %bb.c
  %.sroa.5.0 = phi i64 [ undef, %bb.c ], [ %i.al, %.loopexit.sink.split.i.i ], [ %i.al, %.split11.i.i ], [ %i.al, %.split.i.i ], [ %i.al, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i ], [ undef, %bb.e ], [ undef, %.loopexit ]
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %.sroa.0.0.i.i.ph.mux, %.loopexit.sink.split.i.i ], [ %.sroa.0.0.i.i.ph.mux, %bb.e ], [ %.sroa.0.0.i.i.ph.mux, %.loopexit ], [ %.sroa.0.0.i.i.ph.mux, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i ], [ %.sroa.0.0.i.i.ph.mux, %.split.i.i ], [ %.sroa.0.0.i.i.ph.mux, %.split11.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.c ], [ 1, %.loopexit.sink.split.i.i ], [ 1, %.split11.i.i ], [ 1, %.split.i.i ], [ 1, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i ], [ 0, %bb.e ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvXs4_NtNtNtCs76KlaVGnJsc_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsq_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrName11from_staticNCINvXs2_NtNtB8_3map16into_header_nameReNtB1e_6Sealed10try_insertNtNtB8_5value11HeaderValueE0INtNtCsgxBkk5gSRhY_4core6result6ResultINtNtB2F_6option6OptionB28_ENtB1g_14MaxSizeReachedEECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [104 x i8], align 8               ; 12 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [104 x i8], align 8               ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtNtCs76KlaVGnJsc_4http6header4name9parse_hdr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull dereferenceable(64) %i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256) @15)
          to label %bb.b unwind label %bb.be

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !22, !alias.scope !341, !noalias !342, !noundef !9
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #27
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !nonnull !9, !noundef !9 ; 13 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 13 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.m = invoke noundef zeroext i1 @_RNvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.sroa.0.0.copyload)
          to label %bb.e unwind label %.loopexit.split-lp.i.i, !noalias !348

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.n, align 8, !alias.scope !349, !noalias !350
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !351, !nonnull !9, !noundef !9
  call void %i.p(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload), !inline_history !225
  br label %_RNCINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map16into_header_nameReNtB8_6Sealed10try_insertNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit

bb.g:                                             ; preds = %bb.e
  %i.q = invoke noundef i16 @_RINvNtNtCs76KlaVGnJsc_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.h unwind label %.loopexit.split-lp.i.i, !noalias !352 ; 6 uses

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !alias.scope !346, !noalias !353, !noundef !9
  %i.t = and i16 %i.s, %i.q
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !23, !alias.scope !354, !noalias !355 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !354, !noalias !355 ; 5 uses
  %i.ad = load ptr, ptr %i.g, align 8, !alias.scope !354, !noalias !355 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.not1.i.i.i = icmp eq i8 %i.aa, 2
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  br label %.outer135

.outer135:                                        ; preds = %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i, %bb.h
  %.sroa.08.0.i.i.ph = phi i64 [ %i.cz, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i ], [ 0, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.da, %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.ak = load i64, ptr %i.w, align 8, !alias.scope !346, !noalias !353, !noundef !9
  %i.al = icmp ult i64 %.sroa.0.0.i.i.ph, %i.ak
  br i1 %i.al, label %.loopexit, label %.outer135.peel.newph

.outer135.peel.newph:                             ; preds = %.outer135
  %i.am = load i64, ptr %i.w, align 8, !alias.scope !346, !noalias !353, !noundef !9
  %.not = icmp eq i64 %i.am, 0
  br label %bb.i

bb.i:                                             ; preds = %.outer135.peel.newph, %bb.i
  br i1 %.not, label %bb.i, label %.loopexit, !llvm.loop !226

.loopexit:                                        ; preds = %bb.i, %.outer135
  %.sroa.0.0.i.i.lcssa = phi i64 [ %.sroa.0.0.i.i.ph, %.outer135 ], [ 0, %bb.i ] ; 7 uses
  %i.an = load ptr, ptr %i.v, align 8, !alias.scope !346, !noalias !353, !nonnull !9, !noundef !9
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0.0.i.i.lcssa ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !352, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, -1
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.ai
  unreachable

bb.k:                                             ; preds = %.loopexit
  %i.aq = zext i16 %i.ap to i64                   ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !noalias !352, !noundef !9 ; 2 uses
  %i.at = load i16, ptr %i.r, align 8, !alias.scope !346, !noalias !353, !noundef !9 ; 2 uses
  %i.au = and i16 %i.at, %i.as
  %i.av = zext i16 %i.au to i64
  %i.aw = sub i64 %.sroa.0.0.i.i.lcssa, %i.av
  %i.ax = zext i16 %i.at to i64
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = icmp samesign ult i64 %i.ay, %.sroa.08.0.i.i.ph
  br i1 %i.az, label %bb.z, label %bb.y

bb.l:                                             ; preds = %.loopexit
  %i.ba = load i64, ptr %i.x, align 8, !alias.scope !346, !noalias !353, !noundef !9 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 88686269585142076
end_hunk_0
begin_hunk_1_@_RINvMsq_NtNtCs76KlaVGnJsc_4http6header4nameNtB6_7HdrName11from_staticNCINvXs2_NtNtB8_3map16into_header_nameReNtB1e_6Sealed10try_insertNtNtB8_5value11HeaderValueE0INtNtCsgxBkk5gSRhY_4core6result6ResultINtNtB2F_6option6OptionB28_ENtB1g_14MaxSizeReachedEECs5XgW7KoffLW_12opendal_core:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !362
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i16 %i.q, ptr %i.bg, align 8, !noalias !362
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !363
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.4.0.copyload, ptr %i.bi, align 8, !noalias !364
  %.sroa.579.0..sroa_idx80.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.5.0.copyload, ptr %.sroa.579.0..sroa_idx80.i.i, align 8, !noalias !364
  %.sroa.682.0..sroa_idx83.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.682.0..sroa_idx83.i.i, align 8, !noalias !364
  %.sroa.785.0..sroa_idx86.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.785.0..sroa_idx86.i.i, align 8, !noalias !364
  %.sroa.888.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.8.0.copyload, ptr %.sroa.888.0..sroa_idx89.i.i, align 8, !noalias !364
  store i64 0, ptr %i.d, align 8, !noalias !362
  %i.bj = load i64, ptr %i.bf, align 8, !range !18, !alias.scope !365, !noalias !366, !noundef !9
  %i.bk = icmp eq i64 %i.bc, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.v unwind label %bb.o, !noalias !367

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.d) #29
          to label %.body.thread unwind label %bb.p, !noalias !368

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28, !noalias !367
  unreachable

bb.q:                                             ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs76KlaVGnJsc_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCs5XgW7KoffLW_12opendal_core.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !369, !nonnull !9, !noundef !9
  invoke void %i.bo(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i.i.i unwind label %bb.s, !noalias !370, !inline_history !0

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.bp = load ptr, ptr %i.e, align 8, !alias.scope !373, !noalias !363, !noundef !9 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.noexc3, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !378, !noalias !363, !noundef !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !379, !nonnull !9, !noundef !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !378, !noalias !363, !noundef !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !378, !noalias !363, !noundef !9
  call void %i.bu(ptr noundef %i.bs, ptr noundef %i.bw, i64 noundef %i.by), !inline_history !225
  br label %.noexc3

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !382, !noalias !363, !noundef !9 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !387, !noalias !363, !noundef !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !388, !nonnull !9, !noundef !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !387, !noalias !363, !noundef !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !387, !noalias !363, !noundef !9
  invoke void %i.cf(ptr noundef %i.cd, ptr noundef %i.ch, i64 noundef %i.cj)
          to label %.body.thread unwind label %bb.u, !noalias !370, !inline_history !1

bb.u:                                             ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28, !noalias !370
  unreachable

.noexc3:                                          ; preds = %bb.r, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !357
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.cl, align 8, !alias.scope !349, !noalias !350
  br label %_RNCINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map16into_header_nameReNtB8_6Sealed10try_insertNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit

bb.v:                                             ; preds = %bb.n, %bb.m
  %i.cm = load ptr, ptr %i.y, align 8, !alias.scope !365, !noalias !366, !nonnull !9, !noundef !9
  %i.cn = getelementptr inbounds nuw [104 x i8], ptr %i.cm, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cn, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !368
  %i.co = add nuw nsw i64 %i.bc, 1
  store i64 %i.co, ptr %i.x, align 8, !alias.scope !365, !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !357
  %i.cp = load i64, ptr %i.w, align 8, !alias.scope !346, !noalias !353, !noundef !9 ; 2 uses
  %i.cq = icmp ult i64 %.sroa.0.0.i.i.lcssa, %i.cp
  br i1 %i.cq, label %bb.w, label %.noexc4

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.v, align 8, !alias.scope !346, !noalias !353, !nonnull !9, !noundef !9
  %i.cs = trunc i64 %i.ba to i16
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.0.0.i.i.lcssa ; 2 uses
  store i16 %i.cs, ptr %i.ct, align 2, !noalias !352
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i16 %i.q, ptr %i.cu, align 2, !noalias !352
  br label %bb.x

.noexc4:                                          ; preds = %bb.v
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i.lcssa, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.x:                                             ; preds = %.thread.i.i, %bb.w
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !349, !noalias !350
  br label %_RNCINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map16into_header_nameReNtB8_6Sealed10try_insertNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit

bb.y:                                             ; preds = %bb.k
  %i.cv = icmp eq i16 %i.as, %i.q
  br i1 %i.cv, label %bb.aa, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.z:                                             ; preds = %bb.k
  %i.cw = icmp samesign ugt i64 %.sroa.08.0.i.i.ph, 511
  %i.cx = load i64, ptr %.sroa.0.0.copyload, align 8, !range !25, !alias.scope !346, !noalias !353
  %i.cy = icmp ne i64 %i.cx, 2
  %.sroa.013.0.i.i = select i1 %i.cw, i1 %i.cy, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !357
  invoke void @_RNvXsr_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_7HdrNameE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs76KlaVGnJsc_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCs5XgW7KoffLW_12opendal_core.exit35.i.i unwind label %.loopexit.split-lp.i.i, !noalias !352

_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i: ; preds = %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i, %.split.i.i, %bb.ah, %bb.ae, %.split100.i.i, %bb.ad, %bb.ac, %bb.y
  %i.cz = add nuw nsw i64 %.sroa.08.0.i.i.ph, 1
  %i.da = add i64 %.sroa.0.0.i.i.lcssa, 1
  br label %.outer135

bb.aa:                                            ; preds = %bb.y
  %i.db = load i64, ptr %i.x, align 8, !alias.scope !346, !noalias !353, !noundef !9 ; 2 uses
  %i.dc = icmp ugt i64 %i.db, %i.aq
  br i1 %i.dc, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load ptr, ptr %i.y, align 8, !alias.scope !346, !noalias !353, !nonnull !9, !noundef !9
  %i.de = getelementptr inbounds nuw [104 x i8], ptr %i.dd, i64 %i.aq ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !389, !noundef !9
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.aa, label %bb.ah [
    i8 2, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i
    i8 0, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not1.i.i.i, label %.split100.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

.split100.i.i:                                    ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.di = load i8, ptr %i.dh, align 8, !range !24, !noalias !389, !noundef !9
  %i.dj = icmp eq i8 %i.di, %i.ai
  br i1 %i.dj, label %.loopexit107.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !389, !noundef !9
  %.not.i.i.i.i = icmp eq i64 %i.dl, %i.ac
  br i1 %.not.i.i.i.i, label %bb.af, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !389, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !390
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ac
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.dn, ptr noundef nonnull readonly %i.do, ptr noundef nonnull readonly %i.ad, ptr noundef nonnull readonly %i.aj)
          to label %.noexc36.i.i unwind label %.loopexit.i.i, !noalias !352

.noexc36.i.i:                                     ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.dp = load i64, ptr %i.af, align 8, !alias.scope !392, !noalias !390, !noundef !9 ; 3 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !392, !noalias !390 ; 3 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !391, !noalias !390, !nonnull !9
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !391, !noalias !390, !nonnull !9
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 %.promoted.i.i.i.i.i)
  %exitcond.not.i3.not.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.dp
  br i1 %exitcond.not.i3.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit107.sink.split.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dq = add i64 %i.dr, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dq, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit107.sink.split.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc36.i.i, %bb.ag
  %i.dr = phi i64 [ %i.dq, %bb.ag ], [ %.promoted.i.i.i.i.i, %.noexc36.i.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.dr
  %.val.i.i.i.i.i = load i8, ptr %i.ds, align 1, !noalias !393, !noundef !9
  %.val7.i.i.i.i.i = load i8, ptr %i.dt, align 1, !noalias !393, !noundef !9
  %i.du = zext i8 %.val7.i.i.i.i.i to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @15, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !394, !noundef !9
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, %i.dw
  br i1 %.not.i.i.i.i.i, label %bb.ag, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i

bb.ah:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !389, !noundef !9
  %i.dz = icmp eq i64 %i.dy, %i.ac
  br i1 %i.dz, label %.split.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !389, !noundef !9
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.eb, ptr nonnull %i.ad, i64 %i.ac), !noalias !389
  %i.ec = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ec, label %.loopexit107.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.ai:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
          to label %bb.j unwind label %.loopexit.split-lp.i.i, !noalias !352

_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not106.i.i = icmp ult i64 %i.dr, %i.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !390
  br i1 %.not106.i.i, label %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i, label %.loopexit107.i.i

.loopexit107.sink.split.i.i:                      ; preds = %.noexc36.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !390
  br label %.loopexit107.i.i

.loopexit107.i.i:                                 ; preds = %_RNvXss_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_10HeaderNameINtNtCsgxBkk5gSRhY_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i, %.split.i.i, %.split100.i.i, %.loopexit107.sink.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.ed = load i64, ptr %i.x, align 8, !alias.scope !396, !noalias !397, !noundef !9 ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, %i.aq
  br i1 %i.ee, label %bb.aj, label %.invoke.i.i.i

bb.aj:                                            ; preds = %.loopexit107.i.i
  %i.ef = load ptr, ptr %i.y, align 8, !alias.scope !396, !noalias !397, !nonnull !9, !noundef !9
  %i.eg = getelementptr inbounds nuw [104 x i8], ptr %i.ef, i64 %i.aq ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !range !10, !noalias !398, !noundef !9
  %i.ei = trunc nuw i64 %i.eh to i1
  br i1 %i.ei, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %.invoke.i.i.i, %bb.al
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !399, !nonnull !9, !noundef !9
  invoke void %i.el(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %.body.thread unwind label %bb.an, !noalias !400, !inline_history !0

bb.al:                                            ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.en = load i64, ptr %i.em, align 8, !noalias !398, !noundef !9
  invoke void @_RNvMs0_NtNtCs76KlaVGnJsc_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.sroa.0.0.copyload, i64 noundef %i.en)
          to label %._crit_edge.i.i.i unwind label %bb.ak, !noalias !400

._crit_edge.i.i.i:                                ; preds = %bb.al
  %.pre.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !396, !noalias !397
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i.i, %bb.aj
  %i.eo = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ed, %bb.aj ] ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, %i.aq
  br i1 %i.ep, label %bb.ao, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.am, %.loopexit107.i.i
  %i.eq = phi i64 [ %i.eo, %bb.am ], [ %i.ed, %.loopexit107.i.i ]
  %i.er = phi ptr [ @40, %bb.am ], [ @39, %.loopexit107.i.i ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.aq, i64 noundef %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er) #27
          to label %.cont.i.i.i unwind label %bb.ak, !noalias !400

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28, !noalias !400
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.y, align 8, !alias.scope !396, !noalias !397, !nonnull !9, !noundef !9
  %i.eu = getelementptr inbounds nuw [104 x i8], ptr %i.et, i64 %i.aq ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ev, i64 32, i1 false), !noalias !401
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 56 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !402
  %.sroa.562.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 57
  %.sroa.5.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.562.0..sroa_idx.i.i, i64 7, i1 false), !noalias !401
  store ptr %.sroa.4.0.copyload, ptr %i.ev, align 8, !noalias !403
  %.sroa.565.0..sroa_idx66.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr %.sroa.5.0.copyload, ptr %.sroa.565.0..sroa_idx66.i.i, align 8, !noalias !403
  %.sroa.668.0..sroa_idx69.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.668.0..sroa_idx69.i.i, align 8, !noalias !403
  %.sroa.771.0..sroa_idx72.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.771.0..sroa_idx72.i.i, align 8, !noalias !403
  store i64 %.sroa.8.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !403
  %.sroa.3.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx17.i.i, align 8, !alias.scope !349, !noalias !350
  br label %_RNCINvXs2_NtNtNtCs76KlaVGnJsc_4http6header3map16into_header_nameReNtB8_6Sealed10try_insertNtNtBc_5value11HeaderValueE0Cs5XgW7KoffLW_12opendal_core.exit

_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs76KlaVGnJsc_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCs5XgW7KoffLW_12opendal_core.exit35.i.i: ; preds = %bb.z
  %i.ew = load i64, ptr %i.x, align 8, !alias.scope !404, !noalias !405, !noundef !9 ; 6 uses
  %i.ex = icmp ult i64 %i.ew, 88686269585142076
  call void @llvm.assume(i1 %i.ex)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.ey = icmp samesign ugt i64 %i.ew, 32767
  br i1 %i.ey, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs76KlaVGnJsc_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCs5XgW7KoffLW_12opendal_core.exit35.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !408
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.q, ptr %i.fa, align 8, !noalias !408
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !409
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.4.0.copyload, ptr %i.fc, align 8, !noalias !410
  %.sroa.552.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.5.0.copyload, ptr %.sroa.552.0..sroa_idx53.i.i, align 8, !noalias !410
  %.sroa.6.0..sroa_idx55.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx55.i.i, align 8, !noalias !410
  %.sroa.7.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx57.i.i, align 8, !noalias !410
  %.sroa.8.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx59.i.i, align 8, !noalias !410
  store i64 0, ptr %i.b, align 8, !noalias !408
  %i.fd = load i64, ptr %i.ez, align 8, !range !18, !alias.scope !411, !noalias !412, !noundef !9
  %i.fe = icmp eq i64 %i.ew, %i.fd
  br i1 %i.fe, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %bb.ay unwind label %bb.ar, !noalias !413

bb.ar:                                            ; preds = %bb.aq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #29
          to label %.body.thread unwind label %bb.as, !noalias !414

bb.as:                                            ; preds = %bb.ar
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28, !noalias !413
  unreachable

bb.at:                                            ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs76KlaVGnJsc_4http6header4name7HdrNameINtB5_4IntoNtBA_10HeaderNameE4intoCs5XgW7KoffLW_12opendal_core.exit35.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !415, !nonnull !9, !noundef !9
  invoke void %i.fi(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i45.i.i unwind label %bb.av, !noalias !416, !inline_history !0

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i45.i.i: ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.fj = load ptr, ptr %i.f, align 8, !alias.scope !419, !noalias !409, !noundef !9 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %.noexc5, label %bb.au

bb.au:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs76KlaVGnJsc_4http6header5value11HeaderValueECs5XgW7KoffLW_12opendal_core.exit.i45.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !424, !noalias !409, !noundef !9
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !425, !nonnull !9, !noundef !9
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !424, !noalias !409, !noundef !9
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !424, !noalias !409, !noundef !9
  call void %i.fo(ptr noundef %i.fm, ptr noundef %i.fq, i64 noundef %i.fs), !inline_history !225
  br label %.noexc5

bb.av:                                            ; preds = %bb.at
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs9k3SxhrAWiO_3std3sys12thread_local6native5eager7destroyNtNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7ContextECs5XgW7KoffLW_12opendal_core:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !511
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtNtCs9k3SxhrAWiO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7ContextE0ECs5XgW7KoffLW_12opendal_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtNtCs9k3SxhrAWiO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7ContextE0ECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs9k3SxhrAWiO_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop() #26
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtNtCs9k3SxhrAWiO_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7ContextE0ECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs2_NtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iterINtB6_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB27_8adapters3map8map_foldRB18_jjNCNvMNtNtNtNtB1e_3raw3oio3buf9queue_bufNtB3N_8QueueBuf3len0NCINvXsK_NtB25_5accumjNtB4O_3Sum3sumINtB37_3MapBX_B3I_EE0E0EB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !516
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 40
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %1, %bb.b ], [ %i.m, %bb.c ]
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.m = call noundef i64 @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferjjNCNvMNtNtNtNtB1A_3raw3oio3buf9queue_bufNtB2t_8QueueBuf3len0NCINvXsK_NtNtBX_6traits5accumjNtB3u_3Sum3sumINtBT_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1u_EB2o_EE0E0INtB7_5FnMutTjB1t_EE8call_mutB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %.sroa.02.0.i, ptr noundef nonnull align 8 %i.l) ; 2 uses
  %i.n = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.k
  br i1 %i.o, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit, label %bb.c

_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !9, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !517
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit4, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 40
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i1 = phi i64 [ 0, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.sroa.02.0.i2 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.z, %bb.e ]
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %.sroa.04.0.i1
  %i.z = call noundef i64 @_RNvXs1_NtNtNtCsgxBkk5gSRhY_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferjjNCNvMNtNtNtNtB1A_3raw3oio3buf9queue_bufNtB2t_8QueueBuf3len0NCINvXsK_NtNtBX_6traits5accumjNtB3u_3Sum3sumINtBT_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterB1u_EB2o_EE0E0INtB7_5FnMutTjB1t_EE8call_mutB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %.sroa.02.0.i2, ptr noundef nonnull align 8 %i.y) ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i1, 1           ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit4, label %bb.e

_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit4: ; preds = %bb.e, %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit
  %.sroa.0.0.i3 = phi i64 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1P_8adapters3map8map_foldRBQ_jjNCNvMNtNtNtNtBW_3raw3oio3buf9queue_bufNtB3f_8QueueBuf3len0NCINvXsK_NtB1N_5accumjNtB4f_3Sum3sumINtB2A_3MapINtNtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque4iter4IterBQ_EB3a_EE0E0EBW_.exit ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i3
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCskkYVyhWgx5W_10serde_core2de5implsNtNtCs6i54tJFfzR_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtNtCs5XgW7KoffLW_12opendal_core3raw10serde_util4PairEB1V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw10serde_utilNtB6_4PairNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer15deserialize_anyNtNtB14_5impls13StringVisitorEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry16OperatorRegistryE5force0E0B1N_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !19, !noundef !9 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !19, !noundef !9 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !20, !noundef !9
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry16OperatorRegistryE5force0B12_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs9k3SxhrAWiO_3std4sync9lazy_lock14panic_poisoned() #30
  unreachable

_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry16OperatorRegistryE5force0B12_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a), !inline_history !518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCs5XgW7KoffLW_12opendal_core5types11bytes_rangeNtB6_10BytesRange16to_content_ranges1_0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, i8 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 28)
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %1, align 8, !nonnull !9, !align !19, !noundef !9
  %i.f = load i64, ptr %i.e, align 8, !noundef !9
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 6, i64 noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !align !19, !noundef !9
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, i64 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !align !19, !noundef !9
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  call void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextjEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 14, i64 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsgxBkk5gSRhY_4core3str7pattern13simd_containss0_0Cs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !9 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !524 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !524 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !524 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !524 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us, i64 %.sroa.619.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us.preheader, label %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !9
  %i.t = load i8, ptr %i.r, align 1, !noundef !9
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5XgW7KoffLW_12opendal_core.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !522, !noalias !523
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !523, !noalias !522
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !522, !noalias !523
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !523, !noalias !522
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCsgxBkk5gSRhY_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry16OperatorRegistryE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1S_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !19, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !530, !noalias !531, !align !19, !noundef !9 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !530, !noalias !531
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !20, !noalias !532, !noundef !9
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry16OperatorRegistryE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs9k3SxhrAWiO_3std4sync9lazy_lock14panic_poisoned() #30, !noalias !532
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30, !noalias !532
  unreachable

_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator8registry16OperatorRegistryE5force0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Q_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !532, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !532
  call void %i.f(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a), !noalias !532, !inline_history !529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !532
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsgxBkk5gSRhY_4core5sliceSINtNtNtB4_3ops5range5RangeyE14swap_uncheckedCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsgxBkk5gSRhY_4core5sliceSTNtNtCs6i54tJFfzR_5alloc6string6StringBv_E14swap_uncheckedCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvMNtNtCs6i54tJFfzR_5alloc3vec13in_place_dropINtB2_11InPlaceDropTNtNtB6_6string6StringB12_EE3lenCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9
  %i.c = load ptr, ptr %0, align 8, !noundef !9
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util3uriNtB2_16QueryPairsWriter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 256, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !10, !noundef !9
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !11, !noundef !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.j = icmp samesign ugt i64 %i.f, 255
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.k = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !535, !noundef !9 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.f, label %bb.d

end_hunk_2
