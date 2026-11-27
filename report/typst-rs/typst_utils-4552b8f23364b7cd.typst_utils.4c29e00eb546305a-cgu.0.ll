Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-4552b8f23364b7cd.typst_utils.4c29e00eb546305a-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr6intern:bb.a
  store i8 %i.er, ptr %i.gj, align 1, !noalias !297
  %i.gk = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 56), align 8, !alias.scope !299
  %i.gl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gf, i64 0
  %i.gm = sub <2 x i64> %i.gk, %i.gl
  store <2 x i64> %i.gm, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 56), align 8, !alias.scope !299
  %i.gn = sub nsw i64 0, %.sroa.3.0.i.ph.i.i      ; 2 uses
  %i.go = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -24
  store ptr %i.ec, ptr %i.gp, align 8, !noalias !300
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.go, i64 -16
  store i64 %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !299
  br label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBT_.exit

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBT_.exit: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2a_11make_hasherBS_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0BY_.exit.i.i.i, %bb.aj
  %i.gq = phi i64 [ %i.gn, %bb.aj ], [ %i.fc, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BU_E0NCINvB2a_11make_hasherBS_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0E0BY_.exit.i.i.i ]
  %i.gr = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -8
  store i64 %i.bg, ptr %i.gs, align 8, !noalias !284
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.gt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 32), align 8, !alias.scope !301, !noundef !5 ; 3 uses
  %i.gu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 16), align 8, !range !17, !alias.scope !301, !noundef !5
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBT_.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 16)) #34
          to label %bb.al unwind label %.body, !noalias !302

bb.al:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReNtNtCs6xpQEr8gLsQ_11typst_utils4pico7PicoStrNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertBT_.exit, %bb.ak
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 24), align 8, !alias.scope !301, !nonnull !5, !noundef !5
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %i.gt ; 2 uses
  store ptr %i.ec, ptr %i.gx, align 8, !noalias !303, !captures !18
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %1, ptr %i.gy, align 8, !noalias !301
  %i.gz = add i64 %i.gt, 1
  store i64 %i.gz, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 32), align 8, !alias.scope !301
  br i1 %i.au, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i18, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ha = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.hb = and i64 %i.ha, 9223372036854775807
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i18, label %bb.an, !prof !9

bb.an:                                            ; preds = %bb.am
  %i.hd = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #34
  br i1 %i.hd, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i18, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 8) monotonic, align 8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i18

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i18: ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %i.he = atomicrmw add ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 -1073741823 release, align 4
  %i.hf = add i32 %i.he, -1073741823              ; 2 uses
  %or.cond.not.i.i19 = icmp ult i32 %i.hf, 1073741824
  br i1 %or.cond.not.i.i19, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1H_.exit, label %bb.ap, !prof !14

bb.ap:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i18
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 noundef %i.hf)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1H_.exit

bb.aq:                                            ; preds = %.body
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %1, 66
  br i1 %i.e, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %1, 9223372036854775807          ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = and i64 %1, 31
  %i.i = getelementptr inbounds nuw i8, ptr @108, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noalias !313, !noundef !5 ; 12 uses
  %i.k = lshr i64 %i.f, 5                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.lr.ph.preheader.i
  %i.m = and i64 %i.k, 31
  %i.n = getelementptr inbounds nuw i8, ptr @108, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !313, !noundef !5 ; 11 uses
  %i.p = lshr i64 %i.f, 10                        ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %.lr.ph.1.i
  %i.r = and i64 %i.p, 31
  %i.s = getelementptr inbounds nuw i8, ptr @108, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !313, !noundef !5 ; 10 uses
  %i.u = lshr i64 %i.f, 15                        ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %.lr.ph.2.i
  %i.w = and i64 %i.u, 31
  %i.x = getelementptr inbounds nuw i8, ptr @108, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !313, !noundef !5 ; 9 uses
  %i.z = lshr i64 %i.f, 20                        ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %.lr.ph.3.i
  %i.ab = and i64 %i.z, 31
  %i.ac = getelementptr inbounds nuw i8, ptr @108, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !313, !noundef !5 ; 8 uses
  %i.ae = lshr i64 %i.f, 25                       ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.5.i

.lr.ph.5.i:                                       ; preds = %.lr.ph.4.i
  %i.ag = and i64 %i.ae, 31
  %i.ah = getelementptr inbounds nuw i8, ptr @108, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !313, !noundef !5 ; 7 uses
  %i.aj = lshr i64 %i.f, 30                       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %.lr.ph.5.i
  %i.al = and i64 %i.aj, 31
  %i.am = getelementptr inbounds nuw i8, ptr @108, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !313, !noundef !5 ; 6 uses
  %i.ao = lshr i64 %i.f, 35                       ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.7.i

.lr.ph.7.i:                                       ; preds = %.lr.ph.6.i
  %i.aq = and i64 %i.ao, 31
  %i.ar = getelementptr inbounds nuw i8, ptr @108, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !313, !noundef !5 ; 5 uses
  %i.at = lshr i64 %i.f, 40                       ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.8.i

.lr.ph.8.i:                                       ; preds = %.lr.ph.7.i
  %i.av = and i64 %i.at, 31
  %i.aw = getelementptr inbounds nuw i8, ptr @108, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !313, !noundef !5 ; 4 uses
  %i.ay = lshr i64 %i.f, 45                       ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.9.i

.lr.ph.9.i:                                       ; preds = %.lr.ph.8.i
  %i.ba = and i64 %i.ay, 31
  %i.bb = getelementptr inbounds nuw i8, ptr @108, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !313, !noundef !5 ; 3 uses
  %i.bd = lshr i64 %i.f, 50                       ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.10.i

.lr.ph.10.i:                                      ; preds = %.lr.ph.9.i
  %i.bf = and i64 %i.bd, 31
  %i.bg = getelementptr inbounds nuw i8, ptr @108, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !313, !noundef !5 ; 2 uses
  %i.bi = lshr i64 %i.f, 55                       ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.11.i

.lr.ph.11.i:                                      ; preds = %.lr.ph.10.i
  %i.bk = and i64 %i.bi, 31
  %i.bl = getelementptr inbounds nuw i8, ptr @108, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !313, !noundef !5
  %i.bn = icmp samesign ult i64 %i.f, 1152921504606846976
  br i1 %i.bn, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit, label %.lr.ph.12.i

.lr.ph.12.i:                                      ; preds = %.lr.ph.11.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 12, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #36, !noalias !313
  unreachable

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit: ; preds = %bb.c, %.lr.ph.preheader.i, %.lr.ph.1.i, %.lr.ph.2.i, %.lr.ph.3.i, %.lr.ph.4.i, %.lr.ph.5.i, %.lr.ph.6.i, %.lr.ph.7.i, %.lr.ph.8.i, %.lr.ph.9.i, %.lr.ph.10.i, %.lr.ph.11.i
  %.sroa.0.0.i = phi i8 [ 0, %bb.c ], [ %i.j, %.lr.ph.11.i ], [ %i.j, %.lr.ph.10.i ], [ %i.j, %.lr.ph.9.i ], [ %i.j, %.lr.ph.8.i ], [ %i.j, %.lr.ph.7.i ], [ %i.j, %.lr.ph.6.i ], [ %i.j, %.lr.ph.5.i ], [ %i.j, %.lr.ph.4.i ], [ %i.j, %.lr.ph.3.i ], [ %i.j, %.lr.ph.2.i ], [ %i.j, %.lr.ph.1.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.sroa.3.0.i = phi i8 [ 0, %bb.c ], [ %i.o, %.lr.ph.11.i ], [ %i.o, %.lr.ph.10.i ], [ %i.o, %.lr.ph.9.i ], [ %i.o, %.lr.ph.8.i ], [ %i.o, %.lr.ph.7.i ], [ %i.o, %.lr.ph.6.i ], [ %i.o, %.lr.ph.5.i ], [ %i.o, %.lr.ph.4.i ], [ %i.o, %.lr.ph.3.i ], [ %i.o, %.lr.ph.2.i ], [ %i.o, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.4.0.i = phi i8 [ 0, %bb.c ], [ %i.t, %.lr.ph.11.i ], [ %i.t, %.lr.ph.10.i ], [ %i.t, %.lr.ph.9.i ], [ %i.t, %.lr.ph.8.i ], [ %i.t, %.lr.ph.7.i ], [ %i.t, %.lr.ph.6.i ], [ %i.t, %.lr.ph.5.i ], [ %i.t, %.lr.ph.4.i ], [ %i.t, %.lr.ph.3.i ], [ %i.t, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.513.0.i = phi i8 [ 0, %bb.c ], [ %i.y, %.lr.ph.11.i ], [ %i.y, %.lr.ph.10.i ], [ %i.y, %.lr.ph.9.i ], [ %i.y, %.lr.ph.8.i ], [ %i.y, %.lr.ph.7.i ], [ %i.y, %.lr.ph.6.i ], [ %i.y, %.lr.ph.5.i ], [ %i.y, %.lr.ph.4.i ], [ %i.y, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.6.0.i = phi i8 [ 0, %bb.c ], [ %i.ad, %.lr.ph.11.i ], [ %i.ad, %.lr.ph.10.i ], [ %i.ad, %.lr.ph.9.i ], [ %i.ad, %.lr.ph.8.i ], [ %i.ad, %.lr.ph.7.i ], [ %i.ad, %.lr.ph.6.i ], [ %i.ad, %.lr.ph.5.i ], [ %i.ad, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.7.0.i = phi i8 [ 0, %bb.c ], [ %i.ai, %.lr.ph.11.i ], [ %i.ai, %.lr.ph.10.i ], [ %i.ai, %.lr.ph.9.i ], [ %i.ai, %.lr.ph.8.i ], [ %i.ai, %.lr.ph.7.i ], [ %i.ai, %.lr.ph.6.i ], [ %i.ai, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.8.0.i = phi i8 [ 0, %bb.c ], [ %i.an, %.lr.ph.11.i ], [ %i.an, %.lr.ph.10.i ], [ %i.an, %.lr.ph.9.i ], [ %i.an, %.lr.ph.8.i ], [ %i.an, %.lr.ph.7.i ], [ %i.an, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.9.0.i = phi i8 [ 0, %bb.c ], [ %i.as, %.lr.ph.11.i ], [ %i.as, %.lr.ph.10.i ], [ %i.as, %.lr.ph.9.i ], [ %i.as, %.lr.ph.8.i ], [ %i.as, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.10.0.i = phi i8 [ 0, %bb.c ], [ %i.ax, %.lr.ph.11.i ], [ %i.ax, %.lr.ph.10.i ], [ %i.ax, %.lr.ph.9.i ], [ %i.ax, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.11.0.i = phi i8 [ 0, %bb.c ], [ %i.bc, %.lr.ph.11.i ], [ %i.bc, %.lr.ph.10.i ], [ %i.bc, %.lr.ph.9.i ], [ 0, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.12.0.i = phi i8 [ 0, %bb.c ], [ %i.bh, %.lr.ph.11.i ], [ %i.bh, %.lr.ph.10.i ], [ 0, %.lr.ph.9.i ], [ 0, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.13.0.i = phi i8 [ 0, %bb.c ], [ %i.bm, %.lr.ph.11.i ], [ 0, %.lr.ph.10.i ], [ 0, %.lr.ph.9.i ], [ 0, %.lr.ph.8.i ], [ 0, %.lr.ph.7.i ], [ 0, %.lr.ph.6.i ], [ 0, %.lr.ph.5.i ], [ 0, %.lr.ph.4.i ], [ 0, %.lr.ph.3.i ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.1.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.03.0.lcssa.i = phi i8 [ 0, %bb.c ], [ 12, %.lr.ph.11.i ], [ 11, %.lr.ph.10.i ], [ 10, %.lr.ph.9.i ], [ 9, %.lr.ph.8.i ], [ 8, %.lr.ph.7.i ], [ 7, %.lr.ph.6.i ], [ 6, %.lr.ph.5.i ], [ 5, %.lr.ph.4.i ], [ 4, %.lr.ph.3.i ], [ 3, %.lr.ph.2.i ], [ 2, %.lr.ph.1.i ], [ 1, %.lr.ph.preheader.i ]
  store i8 0, ptr %0, align 8, !alias.scope !313
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.03.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !313
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !alias.scope !313
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.3.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !313
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.4.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !313
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %.sroa.513.0.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !313
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.sroa.6.0.i, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !313
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.7.0.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !313
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.8.0.i, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !313
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.9.0.i, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !313
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.10.0.i, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !313
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %.sroa.11.0.i, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !313
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.12.0.i, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !313
  %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.13.0.i, ptr %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !313
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.bo = add nsw i64 %1, -66                     ; 3 uses
  %i.bp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 72) acquire, align 8
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 72), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit: ; preds = %bb.d, %bb.e
  %i.br = load atomic i32, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER monotonic, align 8 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.br, 1073741822
  br i1 %or.cond3.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = cmpxchg weak ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 %i.br, i32 %i.bs acquire monotonic, align 4
  %i.bu = extractvalue { i32, i1 } %i.bt, 1
  br i1 %i.bu, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtNtB8_6poison6rwlock6RwLockNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEE5force0EB2c_.exit
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.f, %bb.g
  %i.bv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 8) monotonic, align 8, !noalias !314
  %.not.i.not = icmp eq i8 %i.bv, 0
  br i1 %.not.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit, label %bb.h, !prof !9

bb.h:                                             ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !315
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 16), ptr %i.c, align 8, !noalias !315
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, ptr %i.bw, align 8, !noalias !315
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #32
          to label %bb.k unwind label %bb.i, !noalias !316

bb.i:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %.val.i = load ptr, ptr %i.bw, align 8, !alias.scope !317, !noalias !316, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.by = atomicrmw add ptr %.val.i, i32 -1 release, align 4, !noalias !318
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  %i.ca = and i32 %i.bz, -1073741825
  %or.cond.i.i.i = icmp eq i32 %i.ca, -2147483648
  br i1 %or.cond.i.i.i, label %bb.j, label %common.resume, !prof !11

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val.i, i32 noundef %i.bz)
          to label %common.resume unwind label %bb.l, !noalias !318

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !316
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.q, %bb.j, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.bx, %bb.i ], [ %i.cr, %bb.q ], [ %i.cr, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit: ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 32), align 8, !noundef !5 ; 2 uses
  %i.cd = icmp ult i64 %i.bo, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.b
  %i.ce = getelementptr [16 x i8], ptr @90, i64 %1 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ch = getelementptr i8, ptr %i.ce, i64 -8
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

bb.n:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 24), align 8, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.bo ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !5 ; 2 uses
  %i.co = atomicrmw add ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 -1 release, align 4
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  %i.cq = and i32 %i.cp, -1073741825
  %or.cond.i.i = icmp eq i32 %i.cq, -2147483648
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 noundef %i.cp)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

bb.p:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = atomicrmw add ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 -1 release, align 4
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  %i.cu = and i32 %i.ct, -1073741825
  %or.cond.i.i11 = icmp eq i32 %i.cu, -2147483648
  br i1 %or.cond.i.i11, label %bb.r, label %common.resume, !prof !11

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 noundef %i.ct)
          to label %common.resume unwind label %bb.t

bb.s:                                             ; preds = %bb.p
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit: ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.3.0 = phi i64 [ %i.ci, %bb.m ], [ %i.cn, %bb.n ], [ %i.cn, %bb.o ]
  %.sroa.01.0 = phi ptr [ %i.cg, %bb.m ], [ %i.cl, %bb.n ], [ %i.cl, %bb.o ]
  store i8 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr8constant(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.a = icmp ult i64 %1, 13                      ; 2 uses
  br i1 %i.a, label %.preheader.split.i.i, label %.loopexit.i

.preheader.split.i.i:                             ; preds = %bb.a
  %.not11.i.i = icmp eq i64 %1, 0
  br i1 %.not11.i.i, label %bb.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.split.i.i, %bb.b
  %.sroa.0.013.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %.preheader.split.i.i ]
  %.sroa.03.012.i.i = phi i64 [ %i.b, %bb.b ], [ %1, %.preheader.split.i.i ]
  %i.b = add nsw i64 %.sroa.03.012.i.i, -1        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !332, !noundef !5
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @110, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !noalias !333, !noundef !5 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = shl i64 %.sroa.0.013.i.i, 5
  %i.j = zext i8 %i.g to i64
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  br label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i, %.loopexit.i
  %.sroa.01.014.i.i = phi i64 [ 0, %.loopexit.i ], [ %.sroa.01.1.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i ] ; 3 uses
  %.sroa.03.013.i.i = phi i64 [ 65, %.loopexit.i ], [ %.sroa.03.1.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i ] ; 2 uses
  %i.l = add i64 %.sroa.03.013.i.i, %.sroa.01.014.i.i ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 6 uses
  %i.n = icmp ult i64 %i.l, 130
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [16 x i8], ptr @90, i64 %i.m ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !335, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !335, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.r) ; 2 uses
  %.not.i.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.02.021.i.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.021.i.i.i
end_hunk_0
