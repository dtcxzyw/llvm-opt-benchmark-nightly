Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileId3get:bb.a

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileId3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 72) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 72), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %.noexc unwind label %.body15.thread50

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit

bb.c:                                             ; preds = %.body
  br i1 %i.bl, label %.body15.thread, label %bb.ao

.body15.thread50:                                 ; preds = %bb.t, %bb.b, %bb.e, %bb.d, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body15.thread

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit: ; preds = %.noexc, %bb.a
  %i.i = cmpxchg weak ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !2049
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %.noexc22, label %bb.d, !prof !22

bb.d:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4 @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER)
          to label %.noexc22 unwind label %.body15.thread50

.noexc22:                                         ; preds = %bb.d, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit
  %i.k = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2049
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %.noexc22
  %i.n = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
          to label %.noexc23 unwind label %.body15.thread50

.noexc23:                                         ; preds = %bb.e
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %bb.f

bb.f:                                             ; preds = %.noexc23, %.noexc22
  %.sroa.01.0.i.i = phi i8 [ %i.p, %.noexc23 ], [ 0, %.noexc22 ] ; 3 uses
  %i.q = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 8) monotonic, align 8, !noalias !2049
  %.not.i.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.not, label %bb.k, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2050
  store ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, ptr %i.f, align 8, !noalias !2050
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.r, align 8, !noalias !2050
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #58
          to label %bb.i unwind label %bb.h, !noalias !2051

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEEB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #59
          to label %.body15.thread unwind label %bb.j, !noalias !2051

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !2051
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.u = trunc nuw i8 %.sroa.01.0.i.i to i1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 64), align 8, !alias.scope !2052, !noundef !19
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2053
  store i64 0, ptr %i.c, align 8, !noalias !2053
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherEBJ_(ptr nonnull readonly align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #63, !noalias !2052
  %.val.i.i = load i64, ptr %i.c, align 8, !noalias !2053, !noundef !19 ; 2 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %.val.i.i, i64 %.val.i.i, i64 26) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2053
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 48), align 8, !alias.scope !2056, !noundef !19 ; 2 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 40), align 8, !alias.scope !2056, !nonnull !19, !noundef !19 ; 2 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.au, %bb.o ]
  %.pn.i.i = phi i64 [ %i.x, %bb.l ], [ %i.av, %bb.o ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.aa     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !2057 ; 2 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ad
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.sroa.06.0.i31.i.i = phi i16 [ %i.at, %bb.n ], [ %i.ag, %bb.m ] ; 3 uses
  %i.ah = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.01.0.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.aa
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.an, align 8, !noalias !2058, !nonnull !19, !align !29, !noundef !19
  %i.ao = call fastcc noundef zeroext i1 @_RNvXsi_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_10RootedPathNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val2.i.i.i) #63, !noalias !2059
  br i1 %i.ao, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBR_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBP_EBT_.exit, label %bb.n, !prof !22

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %select.unfold, !prof !23

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.as = add i16 %.sroa.06.0.i31.i.i, -1
  %i.at = and i16 %i.as, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.au = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.av = add i64 %.sroa.01.0.i.i.i, %i.au
  br label %bb.m

bb.p:                                             ; preds = %bb.ai, %bb.aa, %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.bo, %bb.x ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_(ptr nonnull @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i8 %.sroa.01.0.i.i) #59
          to label %bb.c unwind label %bb.an

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBR_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBP_EBT_.exit: ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ay = load i16, ptr %i.ax, align 2, !range !43, !noundef !19
  br i1 %i.u, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBR_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBP_EBT_.exit
  %i.az = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ba = and i64 %i.az, 9223372036854775807
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.bc = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
          to label %.noexc24 unwind label %.body15.thread50

.noexc24:                                         ; preds = %bb.r
  br i1 %i.bc, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc24
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 8) monotonic, align 8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.s, %.noexc24, %bb.q, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBR_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBP_EBT_.exit
  %i.bd = atomicrmw add ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 -1073741823 release, align 4
  %i.be = add i32 %i.bd, -1073741823              ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.be, 1073741824
  br i1 %or.cond.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit, label %bb.t, !prof !39

bb.t:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 noundef %i.be)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit unwind label %.body15.thread50

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.k
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !noundef !19 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 1152921504606846976
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ugt i64 %i.bf, 65534
  %i.bi = trunc nuw nsw i64 %i.bf to i32
  %i.bj = shl nuw i32 %i.bi, 16
  %i.bk = add i32 %i.bj, 66560
  %.sroa.012.0.insert.insert = select i1 %i.bh, i32 513, i32 %i.bk ; 3 uses
  %i.bl = trunc i32 %.sroa.012.0.insert.insert to i1 ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.v, !prof !23

bb.u:                                             ; preds = %select.unfold
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.012.0.insert.insert, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2060
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.b, align 1, !noalias !2060
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 15, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #62
          to label %.noexc26 unwind label %bb.p

.noexc26:                                         ; preds = %bb.u
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.t
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit37

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit37: ; preds = %bb.am, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit
  %.sroa.0.0 = phi i16 [ %i.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit ], [ %.sroa.5.0.extract.trunc.i, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33 ], [ %.sroa.5.0.extract.trunc.i, %bb.am ]
  ret i16 %.sroa.0.0

bb.v:                                             ; preds = %select.unfold
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.012.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16 ; 3 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !2061
  %i.bm = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !2061 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.w, label %bb.z, !prof !23

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #58
          to label %.noexc27 unwind label %bb.x

.noexc27:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) #59
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2063
  store i64 0, ptr %i.a, align 8, !noalias !2063
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtB8_4Hash4hashNtCsiUdj97bPFdy_10rustc_hash8FxHasherEBJ_(ptr nonnull readonly align 8 dereferenceable(72) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #63, !noalias !2064
  %.val.i.i28 = load i64, ptr %i.a, align 8, !noalias !2063, !noundef !19 ; 2 uses
  %i.bq = call noundef i64 @llvm.fshl.i64(i64 %.val.i.i28, i64 %.val.i.i28, i64 26) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2063
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 56), align 8, !alias.scope !2065, !noundef !19
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.aa, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i, !prof !23

bb.aa:                                            ; preds = %bb.z
  %i.bt = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 40), i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 72), i1 noundef zeroext true) #57
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i unwind label %bb.p ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.val.i6.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 40), align 8, !alias.scope !2066, !nonnull !19, !noundef !19 ; 9 uses
  %.val5.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 48), align 8, !alias.scope !2066, !noundef !19 ; 4 uses
  %i.bu = lshr i64 %i.bq, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 3 uses
  %i.bw = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.bq, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i ], [ %i.cw, %bb.ae ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.ae ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i ], [ %.sroa.04.122.i.i.i, %bb.ae ]
  %i.by = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBT_6FileIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBV_.exit.i.i ], [ %i.cv, %bb.ae ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.bz, align 1, !noalias !2067 ; 3 uses
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.bx
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.01.029.i.i.i = phi i16 [ %i.cl, %bb.ac ], [ %i.cb, %bb.ab ] ; 3 uses
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = add i64 %.sroa.0.017.i.i.i, %i.cd
  %i.cf = and i64 %i.ce, %.val5.i.i
  %i.cg = sub nsw i64 0, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds [16 x i8], ptr %.val.i6.i, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %.val2.i.i.i29 = load ptr, ptr %i.ci, align 8, !noalias !2068, !nonnull !19, !align !29, !noundef !19
  %i.cj = call fastcc noundef zeroext i1 @_RNvXsi_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_10RootedPathNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val2.i.i.i29) #63, !noalias !2069
  br i1 %i.cj, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBQ_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBS_.exit, label %bb.ac, !prof !22

._crit_edge.i.i.i:                                ; preds = %bb.ac, %bb.ab
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.ad, !prof !23

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.ck = add i16 %.sroa.01.029.i.i.i, -1
  %i.cl = and i16 %i.ck, %.sroa.01.029.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i.i.i, label %bb.ae, label %.thread24.i.i.i, !prof !23

.thread24.i.i.i:                                  ; preds = %bb.ad
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cn, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.0.017.i.i.i, %i.cp
  %i.cr = and i64 %i.cq, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.cr, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cs = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ct = bitcast <16 x i1> %i.cs to i16
  %i.cu = icmp eq i16 %i.ct, 0
  br i1 %i.cu, label %bb.ae, label %bb.af, !prof !23

bb.ae:                                            ; preds = %.thread.i.i.i, %bb.ad
  %.sroa.04.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.ad ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.ad ]
  %i.cv = add i64 %i.by, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.017.i.i.i
  br label %bb.ab

bb.af:                                            ; preds = %.thread.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 %.sroa.4.121.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !2070, !noundef !19 ; 2 uses
  %i.cz = icmp sgt i8 %i.cy, -1
  br i1 %i.cz, label %bb.ag, label %bb.ah, !prof !23

bb.ag:                                            ; preds = %bb.af
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i6.i, align 16, !noalias !2070
  %i.da = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.db, 0
  %i.dc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 %i.dd
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !2071
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.de = phi i8 [ %.pre.i, %bb.ag ], [ %i.cy, %bb.af ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.dd, %bb.ag ], [ %.sroa.4.121.i.i.i, %bb.af ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 %.sroa.3.0.i.ph.i.i
  %i.dg = and i8 %i.de, 1
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.dj = and i64 %i.di, %.val5.i.i
  store i8 %i.bv, ptr %i.df, align 1, !noalias !2071
  %i.dk = getelementptr i8, ptr %.val.i6.i, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.bv, ptr %i.dl, align 1, !noalias !2071
  %i.dm = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 56), align 8, !alias.scope !2073
  %i.dn = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dh, i64 0
  %i.do = sub <2 x i64> %i.dm, %i.dn
  store <2 x i64> %i.do, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 56), align 8, !alias.scope !2073
  %i.dp = sub nsw i64 0, %.sroa.3.0.i.ph.i.i      ; 2 uses
  %i.dq = getelementptr inbounds [16 x i8], ptr %.val.i6.i, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -16
  store ptr %i.bm, ptr %i.dr, align 8, !noalias !2071
  br label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBQ_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBS_.exit

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBQ_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBS_.exit: ; preds = %.lr.ph.i.i.i, %bb.ah
  %i.ds = phi i64 [ %i.dp, %bb.ah ], [ %i.cg, %.lr.ph.i.i.i ]
  %i.dt = getelementptr inbounds [16 x i8], ptr %.val.i6.i, i64 %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  store i16 %.sroa.5.0.extract.trunc.i, ptr %i.du, align 8, !noalias !19
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.dv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !alias.scope !2074, !noundef !19 ; 3 uses
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 16), align 8, !range !33, !alias.scope !2074, !noundef !19
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBQ_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBS_.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 16)) #57
          to label %bb.aj unwind label %bb.p

bb.aj:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathNtBQ_6FileIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBS_.exit, %bb.ai
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 24), align 8, !alias.scope !2074, !nonnull !19, !noundef !19
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  store ptr %i.bm, ptr %i.dz, align 8, !noalias !2075, !captures !34
  %i.ea = add i64 %i.dv, 1
  store i64 %i.ea, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !alias.scope !2074
  br i1 %i.u, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ec = and i64 %i.eb, 9223372036854775807
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33, label %.noexc35, !prof !22

.noexc35:                                         ; preds = %bb.ak
  %i.ee = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
  br i1 %i.ee, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33, label %bb.al

bb.al:                                            ; preds = %.noexc35
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 8) monotonic, align 8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33: ; preds = %bb.al, %.noexc35, %bb.ak, %bb.aj
  %i.ef = atomicrmw add ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 -1073741823 release, align 4
  %i.eg = add i32 %i.ef, -1073741823              ; 2 uses
  %or.cond.not.i.i34 = icmp ult i32 %i.eg, 1073741824
  br i1 %or.cond.not.i.i34, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit37, label %bb.am, !prof !39

bb.am:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i33
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 noundef %i.eg)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit37

bb.an:                                            ; preds = %.body, %.body15.thread
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.ao:                                            ; preds = %.body15.thread, %bb.c
  %.pn46 = phi { ptr, i32 } [ %eh.lpad-body, %bb.c ], [ %.pn47, %.body15.thread ]
  resume { ptr, i32 } %.pn46

.body15.thread:                                   ; preds = %bb.h, %.body15.thread50, %bb.c
  %.pn47 = phi { ptr, i32 } [ %lpad.thr_comm, %.body15.thread50 ], [ %eh.lpad-body, %bb.c ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #59
          to label %bb.ao unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileId6unique(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 72) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 72), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %.noexc unwind label %.body11.thread31

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit

bb.c:                                             ; preds = %.body
  br i1 %i.z, label %.body11.thread, label %bb.y

.body11.thread31:                                 ; preds = %bb.b, %bb.e, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body11.thread

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit: ; preds = %.noexc, %bb.a
  %i.g = cmpxchg weak ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !2088
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %.noexc16, label %bb.d, !prof !22

bb.d:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4 @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER)
          to label %.noexc16 unwind label %.body11.thread31

.noexc16:                                         ; preds = %bb.d, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0EB2c_.exit
  %i.i = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2088
  %i.j = and i64 %i.i, 9223372036854775807
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %.noexc16
  %i.l = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
          to label %.noexc17 unwind label %.body11.thread31

.noexc17:                                         ; preds = %bb.e
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i8
  br label %bb.f

bb.f:                                             ; preds = %.noexc17, %.noexc16
  %.sroa.01.0.i.i = phi i8 [ %i.n, %.noexc17 ], [ 0, %.noexc16 ] ; 3 uses
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 8) monotonic, align 8, !noalias !2088
  %.not.i.i.not = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.not, label %bb.k, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2089
  store ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, ptr %i.d, align 8, !noalias !2089
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.p, align 8, !noalias !2089
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #58
          to label %bb.i unwind label %bb.h, !noalias !2090

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEEB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %.body11.thread unwind label %bb.j, !noalias !2090

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !2090
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.s = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !noundef !19 ; 3 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ugt i64 %i.t, 65534
  %i.w = trunc nuw nsw i64 %i.t to i32
  %i.x = shl nuw i32 %i.w, 16
  %i.y = add i32 %i.x, 66560
  %.sroa.08.0.insert.insert = select i1 %i.v, i32 513, i32 %i.y ; 3 uses
  %i.z = trunc i32 %.sroa.08.0.insert.insert to i1 ; 2 uses
  br i1 %i.z, label %bb.l, label %bb.n, !prof !23

bb.l:                                             ; preds = %bb.k
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.08.0.insert.insert, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2091
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1, !noalias !2091
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #62
          to label %.noexc18 unwind label %bb.m

.noexc18:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.s, %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.ad, %bb.p ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_(ptr nonnull @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i8 %.sroa.01.0.i.i) #59
          to label %bb.c unwind label %bb.x

bb.n:                                             ; preds = %bb.k
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !2092
  %i.ab = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !2092 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.o, label %bb.r, !prof !23

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #58
          to label %.noexc19 unwind label %bb.p

.noexc19:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) #59
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !alias.scope !2093, !noundef !19 ; 3 uses
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 16), align 8, !range !33, !alias.scope !2093, !noundef !19
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 16)) #57
          to label %bb.t unwind label %bb.m

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 24), align 8, !alias.scope !2093, !nonnull !19, !noundef !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.af
  store ptr %i.ab, ptr %i.aj, align 8, !noalias !2094, !captures !34
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !alias.scope !2093
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.am = and i64 %i.al, 9223372036854775807
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc21, !prof !22

.noexc21:                                         ; preds = %bb.u
  %i.ao = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
  br i1 %i.ao, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc21
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 8) monotonic, align 8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.v, %.noexc21, %bb.u, %bb.t
  %i.ap = atomicrmw add ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 -1073741823 release, align 4
  %i.aq = add i32 %i.ap, -1073741823              ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.aq, 1073741824
  br i1 %or.cond.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit, label %bb.w, !prof !39

bb.w:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 noundef %i.aq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit: ; preds = %bb.w, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.08.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  ret i16 %.sroa.5.0.extract.trunc.i

bb.x:                                             ; preds = %.body, %.body11.thread
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.y:                                             ; preds = %.body11.thread, %bb.c
  %.pn27 = phi { ptr, i32 } [ %eh.lpad-body, %bb.c ], [ %.pn28, %.body11.thread ]
  resume { ptr, i32 } %.pn27

.body11.thread:                                   ; preds = %bb.h, %.body11.thread31, %bb.c
  %.pn28 = phi { ptr, i32 } [ %lpad.thr_comm, %.body11.thread31 ], [ %eh.lpad-body, %bb.c ], [ %i.q, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #59
          to label %bb.y unwind label %bb.x
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer13block_comment(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2101, !nonnull !19, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2101, !noundef !19 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2102, !noundef !19 ; 2 uses
  %.not.i18 = icmp samesign eq i64 %i.f, %i.d
  br i1 %.not.i18, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.g = phi i64 [ %i.aw, %bb.i ], [ %i.f, %bb.a ] ; 5 uses
  %.sroa.0.020 = phi i32 [ %.sroa.07.0, %bb.i ], [ 95, %bb.a ]
  %.sroa.01.019 = phi i32 [ %.sroa.01.1, %bb.i ], [ 1, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  %i.i = load i8, ptr %i.h, align 1, !noalias !2103, !noundef !19 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = add nuw nsw i64 %i.g, 1
  %i.o = icmp samesign ne i64 %i.n, %i.d
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load i8, ptr %i.k, align 1, !noalias !2103, !noundef !19
  %i.q = shl nuw nsw i32 %i.m, 6
  %i.r = and i8 %i.p, 63
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp samesign ugt i8 %i.i, -33
  br i1 %i.u, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.v = zext nneg i8 %i.i to i32
  br label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.x = add nuw nsw i64 %i.g, 2
  %i.y = icmp samesign ne i64 %i.x, %i.d
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.w, align 1, !noalias !2103, !noundef !19
  %i.aa = shl nuw nsw i32 %i.s, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %i.ae = shl nuw nsw i32 %i.m, 12
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ag, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %bb.b

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ai = add nuw nsw i64 %i.g, 3
  %i.aj = icmp samesign ne i64 %i.ai, %i.d
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !2103, !noundef !19
  %i.al = shl nuw nsw i32 %i.m, 18
  %i.am = and i32 %i.al, 1835008
  %i.an = shl nuw nsw i32 %i.ad, 6
  %i.ao = and i8 %i.ak, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.am
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.af, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.t, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ] ; 7 uses
  %i.as = icmp samesign ult i32 %spec.select.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %spec.select.i.ph, 128
  br i1 %i.at, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = icmp samesign ult i32 %spec.select.i.ph, 2048
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
